.class public final Lcom/bytedance/bdtracker/x0;
.super Lcom/bytedance/bdtracker/v0;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field public volatile b:Z

.field public final c:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "checkTask"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/bytedance/bdtracker/v0;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/bytedance/bdtracker/x0;->c:Ljava/lang/Runnable;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lcom/bytedance/bdtracker/x0;->b:Z

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/bdtracker/x0;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/bytedance/bdtracker/x0;->b:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/bytedance/bdtracker/v0;->a:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/bytedance/bdtracker/x0;->c:Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/bytedance/bdtracker/v0;->a:Landroid/os/Handler;

    .line 16
    .line 17
    new-instance v1, Lcom/bytedance/bdtracker/x0$a;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/bytedance/bdtracker/x0$a;-><init>(Lcom/bytedance/bdtracker/x0;)V

    .line 20
    .line 21
    .line 22
    const-wide/16 v2, 0x1f4

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
