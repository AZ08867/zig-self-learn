const std = @import("std");

pub fn main() !void {
    const story = [_]u8{ 'h', 'h', 's', 'n', 'h' };

    std.debug.print("A Dramatic Story: ", .{});

    // 核心语法：for (数组) |元素|
    // 这种|variable|写法，称之为“捕获 ”

    for (story) |scene| {
        if (scene == 'h') std.debug.print(":-) ", .{});
        if (scene == 's') std.debug.print(":-( ", .{});
        if (scene == 'n') std.debug.print(":-| ", .{});
    }
    std.debug.print("The End.\n", .{});
}
