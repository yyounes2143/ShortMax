.class Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex;->tB()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex;

.field final synthetic oJ:Landroid/animation/ObjectAnimator;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex;Landroid/animation/ObjectAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex$1;->ZYk:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex$1;->oJ:Landroid/animation/ObjectAnimator;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex$1;->oJ:Landroid/animation/ObjectAnimator;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/animation/Animator;->pause()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex$oJ;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex$1;->ZYk:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex$1;->oJ:Landroid/animation/ObjectAnimator;

    .line 11
    .line 12
    invoke-direct {p1, v0, v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex$oJ;-><init>(Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex;Landroid/animation/ObjectAnimator;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex$1;->ZYk:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex;->ZYk:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/oJ;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/oJ;->si()D

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 24
    .line 25
    .line 26
    .line 27
    .line 28
    mul-double/2addr v0, v2

    .line 29
    double-to-long v0, v0

    .line 30
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 31
    .line 32
    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/component/adexpress/ex/ex;->oJ(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex$oJ;->oJ(Ljava/util/concurrent/ScheduledFuture;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex$1;->ZYk:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex;->oJ(Lcom/bytedance/sdk/component/adexpress/dynamic/animation/oJ/ex;)Ljava/util/Set;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
.end method
