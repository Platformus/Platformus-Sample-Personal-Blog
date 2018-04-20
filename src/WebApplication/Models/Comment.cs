// Copyright © 2018 Dmitry Sikorsky. All rights reserved.
// Licensed under the Apache License, Version 2.0. See License.txt in the project root for license information.

using System;

namespace WebApplication.Models
{
  public class Comment
  {
    public string Author { get; set; }
    public string Text { get; set; }
    public DateTime Created { get; set; }
  }
}