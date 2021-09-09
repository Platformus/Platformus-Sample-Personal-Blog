// Copyright © 2018 Dmitry Sikorsky. All rights reserved.
// Licensed under the Apache License, Version 2.0. See License.txt in the project root for license information.

using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Magicalizer.Data.Repositories.Abstractions;
using Magicalizer.Filters.Abstractions;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Platformus;
using Platformus.Core.Data.Entities;
using Platformus.Core.Filters;
using Platformus.Core.Frontend;
using Platformus.Core.Parameters;
using Platformus.Website.Data.Entities;
using Platformus.Website.Filters;
using Platformus.Website.FormHandlers;

namespace WebApplication.FormHandlers
{
  public class WriteCommentFormHandler : IFormHandler
  {
    public IEnumerable<ParameterGroup> ParameterGroups => new ParameterGroup[] { };

    public string Description => string.Empty;

    // TODO: this code is ugly and must be rewritten using the strongly-typed mapper (when it is done)
    public async Task<IActionResult> HandleAsync(HttpContext httpContext, string origin, Form form, IDictionary<Field, string> valuesByFields, IDictionary<string, byte[]> attachmentsByFilenames)
    {
      Class @class = (await httpContext.GetStorage().GetRepository<int, Class, ClassFilter>().GetAllAsync(
        new ClassFilter() { Code = "Comment" },
        inclusions: new Inclusion<Class>(c => c.Members)
      )).FirstOrDefault();

      Object commentObject = new Object();

      commentObject.ClassId = @class.Id;
      httpContext.GetStorage().GetRepository<int, Object, ObjectFilter>().Create(commentObject);
      await httpContext.GetStorage().SaveAsync();

      Property authorProperty = new Property();

      authorProperty.ObjectId = commentObject.Id;
      authorProperty.MemberId = @class.Members.First(m => m.Code == "Author").Id;
      authorProperty.StringValue = new Dictionary() { Localizations = new[] { new Localization() { CultureId = "__", Value = this.GetValueByFieldCode(valuesByFields, "Name") } } };
      httpContext.GetStorage().GetRepository<int, Property, PropertyFilter>().Create(authorProperty);

      Property textProperty = new Property();

      textProperty.ObjectId = commentObject.Id;
      textProperty.MemberId = @class.Members.First(m => m.Code == "Text").Id;
      textProperty.StringValue = new Dictionary() { Localizations = new[] { new Localization() { CultureId = "__", Value = this.GetValueByFieldCode(valuesByFields, "Comment") } } };
      httpContext.GetStorage().GetRepository<int, Property, PropertyFilter>().Create(textProperty);

      Property createdProperty = new Property();

      createdProperty.ObjectId = commentObject.Id;
      createdProperty.MemberId = @class.Members.First(m => m.Code == "Created").Id;
      createdProperty.DateTimeValue = System.DateTime.Now;
      httpContext.GetStorage().GetRepository<int, Property, PropertyFilter>().Create(createdProperty);

      Object postPageObject = (await httpContext.GetStorage().GetRepository<int, Object, ObjectFilter>().GetAllAsync(
        new ObjectFilter() { StringValue = new LocalizationFilter() { Value = new StringFilter() { Equals = origin } } },
        inclusions: new Inclusion<Object>[]
        {
          new Inclusion<Object>(o => o.Class.Members)
        }
      )).FirstOrDefault();

      Relation relation = new Relation();

      relation.MemberId = postPageObject.Class.Members.First(m => m.Code == "Comments").Id;
      relation.PrimaryId = commentObject.Id;
      relation.ForeignId = postPageObject.Id;
      httpContext.GetStorage().GetRepository<int, Relation, RelationFilter>().Create(relation);
      await httpContext.GetStorage().SaveAsync();
      return new RedirectResult(GlobalizedUrlFormatter.Format(httpContext, origin));
    }

    private string GetValueByFieldCode(IDictionary<Field, string> valuesByFields, string code)
    {
      return valuesByFields.FirstOrDefault(x => x.Key.Code == code).Value;
    }
  }
}