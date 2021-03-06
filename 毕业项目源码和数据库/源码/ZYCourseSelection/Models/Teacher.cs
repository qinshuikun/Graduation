//------------------------------------------------------------------------------
// <auto-generated>
//     此代码已从模板生成。
//
//     手动更改此文件可能导致应用程序出现意外的行为。
//     如果重新生成代码，将覆盖对此文件的手动更改。
// </auto-generated>
//------------------------------------------------------------------------------

namespace ZYCourseSelection.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Teacher
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Teacher()
        {
            this.SelectCourse = new HashSet<SelectCourse>();
            this.Tea_Grade = new HashSet<Tea_Grade>();
        }
    
        public int TeacherID { get; set; }
        public string TeacherName { get; set; }
        public bool TeacherSex { get; set; }
        public int TeacherAge { get; set; }
        public System.DateTime TeacherBirthday { get; set; }
        public int TeacherPhone { get; set; }
        public Nullable<int> MajorID { get; set; }
    
        public virtual Major Major { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SelectCourse> SelectCourse { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Tea_Grade> Tea_Grade { get; set; }
    }
}
