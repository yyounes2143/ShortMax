.class public Lcom/bytedance/bdtracker/x4;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lcom/bytedance/bdtracker/j4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/bdtracker/j4<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/bdtracker/x4$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/bdtracker/x4$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bytedance/bdtracker/x4;->a:Lcom/bytedance/bdtracker/j4;

    .line 7
    .line 8
    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/bytedance/bdtracker/x4;->a:Lcom/bytedance/bdtracker/j4;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lcom/bytedance/bdtracker/j4;->b([Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Ljava/lang/String;

    .line 11
    .line 12
    return-object v0
.end method
