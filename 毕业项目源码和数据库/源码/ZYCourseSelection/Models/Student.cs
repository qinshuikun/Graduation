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
    
    public partial class Student
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Student()
        {
            this.Message = new HashSet<Message>();
            this.SelectCourse = new HashSet<SelectCourse>();
            this.Tea_Grade = new HashSet<Tea_Grade>();
        }
    
        public int StudentID { get; set; }
        public string StudentName { get; set; }
        public bool StudentSex { get; set; }
        public int StudentAge { get; set; }
        public System.DateTime StudentBirthday { get; set; }
        public Nullable<int> StudentPhone { get; set; }
        public string StudentPassword { get; set; }
        public Nullable<int> GradeID { get; set; }
    
        public virtual Grade Grade { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Message> Message { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<SelectCourse> SelectCourse { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Tea_Grade> Tea_Grade { get; set; }
    }
}
