.class public Lcom/bytedance/sdk/openadsdk/component/reward/oJ/awB;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

.field private final ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field private ba:Lcom/bytedance/sdk/openadsdk/core/widget/cFZ;

.field private cFZ:Landroid/animation/AnimatorSet;

.field private final ex:I

.field oJ:Lcom/bytedance/sdk/openadsdk/core/widget/so;

.field private final tB:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Rl:Landroid/content/Context;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/awB;->tB:Landroid/content/Context;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/awB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 11
    .line 12
    iget v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oTd:I

    .line 13
    .line 14
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/awB;->ex:I

    .line 15
    .line 16
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/awB;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public ZYk()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x50

    .line 3
    .line 4
    filled-new-array {v0, v1}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-wide/16 v1, 0x7d0

    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 15
    .line 16
    .line 17
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/awB$1;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/awB$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/awB;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 23
    .line 24
    .line 25
    const/16 v1, 0x51

    .line 26
    .line 27
    const/16 v2, 0x63

    .line 28
    .line 29
    filled-new-array {v1, v2}, [I

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const-wide/16 v2, 0xbb8

    .line 38
    .line 39
    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 40
    .line 41
    .line 42
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/awB$2;

    .line 43
    .line 44
    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/awB$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/awB;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 48
    .line 49
    .line 50
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 51
    .line 52
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/awB;->cFZ:Landroid/animation/AnimatorSet;

    .line 56
    .line 57
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 62
    .line 63
    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/awB;->cFZ:Landroid/animation/AnimatorSet;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public ex()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/awB;->ba:Lcom/bytedance/sdk/openadsdk/core/widget/cFZ;

    .line 2
    .line 3
    return-object v0
.end method

.method public oJ()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/awB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/cFZ;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/awB;->tB:Landroid/content/Context;

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/cFZ;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/awB;->ba:Lcom/bytedance/sdk/openadsdk/core/widget/cFZ;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/cFZ;->getLoadingProgressBar()Lcom/bytedance/sdk/openadsdk/core/widget/so;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/awB;->oJ:Lcom/bytedance/sdk/openadsdk/core/widget/so;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/awB;->ba:Lcom/bytedance/sdk/openadsdk/core/widget/cFZ;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/cFZ;->getDownloadButton()Lcom/bytedance/sdk/openadsdk/core/Pfn/so;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/awB;->Pfn:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 34
    .line 35
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->IUZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->Pfn()Lcom/bytedance/sdk/openadsdk/core/ZYk/Pfn;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/awB;->ba:Lcom/bytedance/sdk/openadsdk/core/widget/cFZ;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/awB;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 47
    .line 48
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/awB;->ex:I

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    :catchall_0
    return-void
.end method

.method public tB()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/awB;->cFZ:Landroid/animation/AnimatorSet;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
