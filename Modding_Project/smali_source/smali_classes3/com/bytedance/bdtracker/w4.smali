.class public Lcom/bytedance/bdtracker/w4;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lcom/bytedance/bdtracker/j4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/bdtracker/j4<",
            "Landroid/content/SharedPreferences;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/bdtracker/w4$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/bytedance/bdtracker/w4$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bytedance/bdtracker/w4;->a:Lcom/bytedance/bdtracker/j4;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    .line 2
    sget-object v0, Lcom/bytedance/bdtracker/x;->a:Ljava/util/concurrent/ExecutorService;

    .line 3
    new-instance v1, Lcom/bytedance/bdtracker/w4$b;

    invoke-direct {v1, p0}, Lcom/bytedance/bdtracker/w4$b;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static a()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method
