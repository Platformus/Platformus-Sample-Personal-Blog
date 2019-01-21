// Copyright © 2018 Dmitry Sikorsky. All rights reserved.
// Licensed under the Apache License, Version 2.0. See License.txt in the project root for license information.

using System;
using System.Globalization;
using System.Linq;
using Microsoft.AspNetCore.Mvc;
using Platformus;
using Platformus.Domain;
using Platformus.Domain.Data.Abstractions;
using Platformus.Domain.Data.Entities;
using Platformus.Forms.FormHandlers;
using Platformus.Globalization.Services.Abstractions;
using WebApplication.Models;

namespace WebApplication.FormHandlers
{
  public class WriteCommentFormHandler : FormHandlerBase
  {
    protected override IActionResult Handle()
    {
      Comment comment = new Comment();

      comment.Author = this.GetValueByFieldCode("Name");
      comment.Text = this.GetValueByFieldCode("Comment");
      comment.Created = DateTime.Now;

      int commentId = new StronglyTypedObjectMapper(this.requestHandler).Create(comment).Id;
      string referer = this.requestHandler.HttpContext.Request.Headers["Referer"];
      string url = referer.Substring(referer.IndexOf($"/{CultureInfo.CurrentUICulture.TwoLetterISOLanguageName}/") + 3);
      SerializedObject blogPostPage = this.requestHandler.Storage.GetRepository<ISerializedObjectRepository>().WithCultureIdAndUrlPropertyStringValue(
        this.requestHandler.GetService<ICultureManager>().GetCurrentCulture().Id, url
      );

      Relation relation = new Relation();

      relation.MemberId = this.requestHandler.Storage.GetRepository<IMemberRepository>().WithClassIdAndCode(blogPostPage.ClassId, "Comments").Id;
      relation.PrimaryId = commentId;
      relation.ForeignId = blogPostPage.ObjectId;
      this.requestHandler.Storage.GetRepository<IRelationRepository>().Create(relation);
      this.requestHandler.Storage.Save();
      return (this.requestHandler as Controller).Redirect(referer);
    }

    private string GetValueByFieldCode(string code)
    {
      return this.valuesByFields.FirstOrDefault(x => string.Equals(x.Key.Code, code, StringComparison.OrdinalIgnoreCase)).Value;
    }
  }
}