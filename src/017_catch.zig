const std = @import("std");

const MyNumberError = error{TooSmall};
pub fn main() !void {
    // case 1: 正常运行
    // addTwenty(44)返回64，catch不会被触发

    const a: u32 = addTwenty(44) catch 42;

    // case 2: 发生错误
    // addTwenty(4) 返回 error.TooSmall
    // catch 捕获到错误，并将其替换为默认值 42
    const b: u32 = addTwenty(4) catch 42;
    std.debug.print("a = {}, b = {}", .{ a, b });
}

fn addTwenty(n: u32) MyNumberError!u32 {
    if (n < 5) {
        return MyNumberError.TooSmall;
    } else {
        return n + 20;
    }
}
