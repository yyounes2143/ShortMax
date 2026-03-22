.class public Lcom/bytedance/adsdk/ugeno/ex/ex/jFA;
.super Lcom/bytedance/adsdk/ugeno/ex/ex/tB;
.source "SourceFile"


# instance fields
.field private BTZ:F

.field private PiB:Z

.field private WcQ:Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;

.field private dLZ:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Landroid/view/MotionEvent;)Z
    .locals 8

    .line 7
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/jFA;->WcQ:Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;

    const-string v1, "GesThrough_UGTapEvent"

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0, p2}, Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;->oJ(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    const-string p1, "mockEvent\uff0cskip"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/jFA;->WcQ:Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Landroid/view/MotionEvent;)V

    .line 11
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_a

    const/high16 v4, 0x41700000    # 15.0f

    if-eq v0, v3, :cond_5

    const/4 p1, 0x2

    if-eq v0, p1, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto/16 :goto_1

    .line 12
    :cond_2
    iput-boolean v2, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/jFA;->PiB:Z

    goto/16 :goto_1

    .line 13
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    .line 14
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    .line 15
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/jFA;->dLZ:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v4

    if-gez p1, :cond_4

    iget p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/jFA;->BTZ:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v4

    if-ltz p1, :cond_b

    .line 16
    :cond_4
    iput-boolean v3, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/jFA;->PiB:Z

    goto :goto_1

    .line 17
    :cond_5
    iget-boolean v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/jFA;->PiB:Z

    const-string v5, "Non-tap event, need gesture through"

    const/4 v6, 0x0

    if-eqz v0, :cond_7

    .line 18
    iput-boolean v2, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/jFA;->PiB:Z

    .line 19
    iput v6, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/jFA;->dLZ:F

    .line 20
    iput v6, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/jFA;->BTZ:F

    .line 21
    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/jFA;->WcQ:Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;

    if-eqz p2, :cond_6

    .line 22
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/jFA;->WcQ:Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;

    invoke-virtual {p2, p1}, Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;)V

    :cond_6
    return v2

    .line 24
    :cond_7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 25
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    .line 26
    iget v7, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/jFA;->dLZ:F

    sub-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v4

    if-gez v0, :cond_9

    iget v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/jFA;->BTZ:F

    sub-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    cmpl-float p2, p2, v4

    if-ltz p2, :cond_8

    goto :goto_0

    .line 27
    :cond_8
    const-string p2, "Tap event, direct handling"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->oJ:Lcom/bytedance/adsdk/ugeno/ex/dLZ;

    if-eqz p2, :cond_b

    .line 29
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ba:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->tB:Lcom/bytedance/adsdk/ugeno/ex/ba;

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/ex/ba;->ZYk()Ljava/util/List;

    move-result-object v1

    invoke-interface {p2, p1, v0, v1}, Lcom/bytedance/adsdk/ugeno/ex/dLZ;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Ljava/lang/String;Ljava/util/List;)V

    .line 30
    iput v6, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/jFA;->dLZ:F

    .line 31
    iput v6, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/jFA;->BTZ:F

    return v3

    .line 32
    :cond_9
    :goto_0
    iput-boolean v2, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/jFA;->PiB:Z

    .line 33
    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/jFA;->WcQ:Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;

    if-eqz p2, :cond_b

    .line 34
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/jFA;->WcQ:Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;

    invoke-virtual {p2, p1}, Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;)V

    goto :goto_1

    .line 36
    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/jFA;->dLZ:F

    .line 37
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/jFA;->BTZ:F

    :cond_b
    :goto_1
    return v3
.end method

.method public varargs oJ([Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    array-length v1, p1

    if-gtz v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ZYk:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->oTd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/jFA;->WcQ:Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;

    if-nez v1, :cond_1

    .line 4
    new-instance v1, Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;

    invoke-direct {v1}, Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;-><init>()V

    iput-object v1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/jFA;->WcQ:Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;

    .line 5
    :cond_1
    aget-object p1, p1, v0

    check-cast p1, Landroid/view/MotionEvent;

    .line 6
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ZYk:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/adsdk/ugeno/ex/ex/jFA;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    return v0
.end method
