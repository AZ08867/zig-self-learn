const std = @import("std");

pub fn main() !void {
    // Fizz Buzz
    var i: u8 = 1;
    const stop_at: u8 = 16;

    while (i <= stop_at) : (i += 1) {
        if (i % 3 == 0) std.debug.print("Fizz", .{});
        if (i % 5 == 0) std.debug.print("Buzz", .{});

        // 如果不是3 也不是 5的倍数 则打印数字
        // 注意！ Zig使用 and 而不是 &&
        // 使用 ！表示非

        if (!(i % 3 == 0) and (i % 5 == 0)) {
            std.debug.print("{}", .{i});
        }

        // way 2
        // if (!((i % 3 == 0) or (i % 5 == 0))) {
        //     std.debug.print("{}", .{i});
        // }
        // std.debug.print(", ", .{});
    }
    std.debug.print("\n", .{});
}
