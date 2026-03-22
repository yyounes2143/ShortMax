.class public Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex$oJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "oJ"
.end annotation


# instance fields
.field ZYk:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field oJ:Landroid/animation/ObjectAnimator;

.field final synthetic tB:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex;Landroid/animation/ObjectAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex$oJ;->tB:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex$oJ;->oJ:Landroid/animation/ObjectAnimator;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public oJ(Ljava/util/concurrent/ScheduledFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex$oJ;->ZYk:Ljava/util/concurrent/ScheduledFuture;

    .line 2
    .line 3
    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;->oJ()Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;->tB()Lcom/bytedance/sdk/component/adexpress/oJ/oJ/tB;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;->oJ()Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;->tB()Lcom/bytedance/sdk/component/adexpress/oJ/oJ/tB;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/oJ/oJ/tB;->tB()Landroid/os/Handler;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex$oJ$1;

    .line 24
    .line 25
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex$oJ$1;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex$oJ;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex$oJ;->ZYk:Ljava/util/concurrent/ScheduledFuture;

    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex$oJ;->tB:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex;->oJ(Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex;)Ljava/util/Set;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex$oJ;->ZYk:Ljava/util/concurrent/ScheduledFuture;

    .line 42
    .line 43
    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    :cond_0
    return-void
.end method
