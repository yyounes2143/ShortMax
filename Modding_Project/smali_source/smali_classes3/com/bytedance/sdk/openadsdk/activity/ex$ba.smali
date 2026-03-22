.class abstract Lcom/bytedance/sdk/openadsdk/activity/ex$ba;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/activity/ex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ba"
.end annotation


# instance fields
.field private final ZYk:J

.field private ex:J

.field private final oJ:Landroid/os/Handler;

.field private tB:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$ba;->oJ:Landroid/os/Handler;

    .line 14
    .line 15
    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$ba;->ZYk:J

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public Pfn()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$ba;->oJ:Landroid/os/Handler;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$ba;->ZYk:J

    .line 4
    .line 5
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v0

    .line 12
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$ba;->tB:J

    .line 13
    .line 14
    return-void
.end method

.method public ZYk()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$ba;->oJ:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$ba;->ex:J

    .line 7
    .line 8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    .line 10
    .line 11
    move-result-wide v2

    .line 12
    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$ba;->tB:J

    .line 13
    .line 14
    sub-long/2addr v2, v4

    .line 15
    add-long/2addr v0, v2

    .line 16
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$ba;->ex:J

    .line 17
    .line 18
    return-void
.end method

.method public ex()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$ba;->oJ:Landroid/os/Handler;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method abstract oJ()V
.end method

.method public run()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/ex$ba;->oJ()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public tB()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$ba;->ZYk:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$ba;->ex:J

    .line 4
    .line 5
    sub-long/2addr v0, v2

    .line 6
    const-wide/16 v2, 0x0

    .line 7
    .line 8
    cmp-long v2, v0, v2

    .line 9
    .line 10
    if-gez v2, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$ba;->oJ:Landroid/os/Handler;

    .line 14
    .line 15
    invoke-virtual {v2, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$ba;->oJ:Landroid/os/Handler;

    .line 19
    .line 20
    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    .line 22
    .line 23
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ex$ba;->tB:J

    .line 28
    .line 29
    return-void
.end method
