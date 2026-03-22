.class Lcom/bytedance/sdk/openadsdk/activity/ZYk$ex;
.super Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/activity/ZYk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ex"
.end annotation


# instance fields
.field private dLZ:Z

.field private final jFA:I

.field private kkU:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/component/reward/top/tB;)V

    .line 2
    .line 3
    .line 4
    const/16 p1, 0x64

    .line 5
    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->MoK()I

    .line 9
    .line 10
    .line 11
    move-result p3

    .line 12
    if-ltz p3, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->MoK()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ex;->jFA:I

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uv()I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->Xe(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget p1, p1, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->ba:I

    .line 42
    .line 43
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ex;->jFA:I

    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ex;->jFA:I

    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ex;->dLZ:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ex:I

    .line 7
    .line 8
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ex;->kkU:I

    .line 9
    .line 10
    if-gt v0, v2, :cond_0

    .line 11
    .line 12
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ex;->dLZ:Z

    .line 13
    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->so()Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->nQI()V

    .line 23
    .line 24
    .line 25
    :cond_0
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->handleMessage(Landroid/os/Message;)Z

    .line 26
    .line 27
    .line 28
    return v1
.end method

.method protected oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->wM()I

    move-result p1

    return p1

    :cond_0
    const/16 p1, 0x1e

    return p1
.end method

.method public oJ(ILcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 3

    .line 2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->Pfn:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ex:I

    .line 4
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->oJ(ILcom/bytedance/sdk/openadsdk/core/model/cY;)V

    const/high16 p1, 0x42c80000    # 100.0f

    const/high16 p2, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    .line 5
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->Pfn:I

    if-ne v0, v1, :cond_1

    const/4 p1, 0x3

    .line 6
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ex;->kkU:I

    goto :goto_1

    .line 7
    :cond_1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ex;->jFA:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    sub-float/2addr p2, v0

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->tB:F

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ex;->kkU:I

    .line 8
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/dLZ;

    if-eqz p1, :cond_3

    .line 9
    iget p2, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ex:I

    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/dLZ;->oJ(J)V

    return-void

    .line 10
    :cond_2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->tB:F

    int-to-float v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 11
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ex;->jFA:I

    int-to-float v0, v0

    div-float/2addr v0, p1

    sub-float/2addr p2, v0

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ZYk;->ex:I

    int-to-float p1, p1

    mul-float/2addr p2, p1

    float-to-int p1, p2

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$ex;->kkU:I

    :cond_3
    return-void
.end method
