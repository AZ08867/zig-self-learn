const std = @import("std");

const MyNumberError = error{
    TooBig,
    TooSmall,
    TooFour,
};

const MyNumberError2 = error{TooSmall};

pub fn main() void {
    const nums = [_]u8{ 2, 3, 4, 5, 6 };

    for (nums) |n| {
        std.debug.print("{}", .{n});

        // 调用函数获取错误值
        const number_error = numberFail(n);

        // 像比较普通数值一样比较错误
        if (number_error == MyNumberError.TooBig) {
            std.debug.print(">4. ", .{});
        }
        if (number_error == MyNumberError.TooSmall) {
            std.debug.print("<4. ", .{});
        }
        if (number_error == MyNumberError.TooFour) {
            std.debug.print("=4. ", .{});
        }
    }

    std.debug.print("\n", .{});

    // Error unions
    // new grammar:
    // MyNumberError2!u8 -> MyNumberError2 or u8
    var my_number: MyNumberError2!u8 = 5; // 现在存储的是 5

    my_number = MyNumberError2.TooSmall; // 现在存储的是错误TooSmall

    std.debug.print("I compiled!\n", .{});
}

fn numberFail(n: u8) MyNumberError {
    if (n > 4) return MyNumberError.TooBig;
    if (n < 4) return MyNumberError.TooSmall;
    return MyNumberError.TooFour;
}
