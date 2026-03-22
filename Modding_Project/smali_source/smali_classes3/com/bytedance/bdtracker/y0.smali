.class public final synthetic Lcom/bytedance/bdtracker/y0;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final synthetic a:[I


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/bytedance/bdtracker/q0;->values()[Lcom/bytedance/bdtracker/q0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    new-array v0, v0, [I

    .line 7
    .line 8
    sput-object v0, Lcom/bytedance/bdtracker/y0;->a:[I

    .line 9
    .line 10
    sget-object v1, Lcom/bytedance/bdtracker/q0;->a:Lcom/bytedance/bdtracker/q0;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x1

    .line 17
    aput v2, v0, v1

    .line 18
    .line 19
    return-void
.end method
