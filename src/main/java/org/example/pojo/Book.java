package org.example.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class Book {

    // 书籍编号
    private Integer BookID;

    // 书籍名称
    private String bookName;

    // 书籍数量
    private Integer bookCount;

    // 书籍详情
    private String detail;

    @DateTimeFormat(pattern = "yyyy-MM-dd")
    @JsonFormat(pattern = "yyyy-MM-dd", timezone = "GMT+8")
    // 出版时间
    private Date bookDate;
}
