.class public final Lcom/bytedance/bdtracker/w0;
.super Lcom/bytedance/bdtracker/v0;
.source ""


# instance fields
.field public final b:Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/bytedance/bdtracker/w0;->b:Ljava/lang/Runnable;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/v0;->a:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/bdtracker/w0;->b:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/bytedance/bdtracker/v0;->a:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/bytedance/bdtracker/w0;->b:Ljava/lang/Runnable;

    .line 11
    .line 12
    const-wide/16 v2, 0x64

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method
