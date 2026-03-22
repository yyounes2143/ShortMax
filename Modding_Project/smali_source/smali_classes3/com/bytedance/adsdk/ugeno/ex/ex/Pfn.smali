.class public Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;
.super Lcom/bytedance/adsdk/ugeno/ex/ex/tB;
.source "SourceFile"


# instance fields
.field private BTZ:F

.field private PiB:I

.field private Ry:Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;

.field private WcQ:I

.field private awB:I

.field private dLZ:F

.field private eZI:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private si:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->PiB:I

    .line 6
    .line 7
    const p1, 0x7fffffff

    .line 8
    .line 9
    .line 10
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->WcQ:I

    .line 11
    .line 12
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->awB:I

    .line 13
    .line 14
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->eZI:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 21
    .line 22
    const-string p1, "up"

    .line 23
    .line 24
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->si:Ljava/lang/String;

    .line 25
    .line 26
    return-void
.end method

.method private ZYk(Lcom/bytedance/adsdk/ugeno/ZYk/tB;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->Ry:Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "GesThrough_UGSlideEvent"

    .line 6
    .line 7
    const-string v1, "need gesture through, replayGestureMotions"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->Ry:Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method private oJ()V
    .locals 4

    .line 16
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->awB:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ZYk:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    if-nez v0, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 18
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ZYk:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->Xe()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->awB:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 19
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->eZI:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 20
    const-string v0, "GesThrough_UGSlideEvent"

    const-string v1, "inEffectiveDuation -> false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Landroid/view/MotionEvent;)Z
    .locals 10

    .line 21
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->Ry:Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;

    const/4 v1, 0x0

    const-string v2, "GesThrough_UGSlideEvent"

    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {v0, p2}, Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;->oJ(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    const-string p1, "mockEvent\uff0cskip"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->Ry:Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Landroid/view/MotionEvent;)V

    .line 25
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x1

    if-eqz v0, :cond_a

    const/4 v4, 0x3

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_2

    goto/16 :goto_3

    .line 26
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 27
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    .line 28
    iget v5, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->PiB:I

    if-nez v5, :cond_3

    .line 29
    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->oJ:Lcom/bytedance/adsdk/ugeno/ex/dLZ;

    if-eqz v5, :cond_3

    .line 30
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->tB(Lcom/bytedance/adsdk/ugeno/ZYk/tB;)V

    return v3

    .line 31
    :cond_3
    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->kkU:Landroid/content/Context;

    iget v6, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->dLZ:F

    sub-float/2addr v0, v6

    invoke-static {v5, v0}, Lcom/bytedance/adsdk/ugeno/cFZ/so;->ZYk(Landroid/content/Context;F)I

    move-result v0

    .line 32
    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->kkU:Landroid/content/Context;

    iget v6, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->BTZ:F

    sub-float/2addr p2, v6

    invoke-static {v5, p2}, Lcom/bytedance/adsdk/ugeno/cFZ/so;->ZYk(Landroid/content/Context;F)I

    move-result p2

    .line 33
    iget-object v5, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->si:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, 0x2

    sparse-switch v6, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v6, "right"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v4

    goto :goto_1

    :sswitch_1
    const-string v6, "left"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v7

    goto :goto_1

    :sswitch_2
    const-string v6, "down"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v3

    goto :goto_1

    :sswitch_3
    const-string v6, "all"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v5, 0x4

    goto :goto_1

    :sswitch_4
    const-string v6, "up"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v5, v1

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v5, -0x1

    :goto_1
    if-eqz v5, :cond_7

    if-eq v5, v3, :cond_6

    if-eq v5, v7, :cond_5

    if-eq v5, v4, :cond_8

    int-to-double v4, v0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 34
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    int-to-double v8, p2

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    double-to-int v0, v4

    goto :goto_2

    :cond_5
    neg-int v0, v0

    goto :goto_2

    :cond_6
    move v0, p2

    goto :goto_2

    :cond_7
    neg-int v0, p2

    .line 35
    :cond_8
    :goto_2
    iget p2, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->PiB:I

    if-lt v0, p2, :cond_9

    .line 36
    const-string p2, "Slide event, direct handling"

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object p2, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->oJ:Lcom/bytedance/adsdk/ugeno/ex/dLZ;

    if-eqz p2, :cond_b

    const/4 p2, 0x0

    .line 38
    iput p2, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->dLZ:F

    .line 39
    iput p2, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->BTZ:F

    .line 40
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->tB(Lcom/bytedance/adsdk/ugeno/ZYk/tB;)V

    return v3

    .line 41
    :cond_9
    const-string p2, "Non-slide event"

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->ZYk(Lcom/bytedance/adsdk/ugeno/ZYk/tB;)V

    return v1

    .line 43
    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->dLZ:F

    .line 44
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->BTZ:F

    :cond_b
    :goto_3
    return v3

    :sswitch_data_0
    .sparse-switch
        0xe9b -> :sswitch_4
        0x179a1 -> :sswitch_3
        0x2f24a2 -> :sswitch_2
        0x32a007 -> :sswitch_1
        0x677c21c -> :sswitch_0
    .end sparse-switch
.end method

.method private tB(Lcom/bytedance/adsdk/ugeno/ZYk/tB;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->WcQ:I

    .line 2
    .line 3
    const-string v1, "GesThrough_UGSlideEvent"

    .line 4
    .line 5
    if-gtz v0, :cond_0

    .line 6
    .line 7
    const-string v0, "frequency <= 0, no trigger slide"

    .line 8
    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->ZYk(Lcom/bytedance/adsdk/ugeno/ZYk/tB;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->eZI:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const-string v0, "not in effective duration, no trigger slide"

    .line 25
    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p1}, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->ZYk(Lcom/bytedance/adsdk/ugeno/ZYk/tB;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->oJ:Lcom/bytedance/adsdk/ugeno/ex/dLZ;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ba:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->tB:Lcom/bytedance/adsdk/ugeno/ex/ba;

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/bytedance/adsdk/ugeno/ex/ba;->ZYk()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-interface {v0, p1, v1, v2}, Lcom/bytedance/adsdk/ugeno/ex/dLZ;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Ljava/lang/String;Ljava/util/List;)V

    .line 44
    .line 45
    .line 46
    iget p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->WcQ:I

    .line 47
    .line 48
    const v0, 0x7fffffff

    .line 49
    .line 50
    .line 51
    if-eq p1, v0, :cond_2

    .line 52
    .line 53
    add-int/lit8 p1, p1, -0x1

    .line 54
    .line 55
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->WcQ:I

    .line 56
    .line 57
    :cond_2
    return-void
.end method


# virtual methods
.method public varargs oJ([Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 1
    array-length v1, p1

    if-gtz v1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->Pfn:Ljava/util/Map;

    if-eqz v1, :cond_4

    .line 3
    const-string v2, "direction"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "all"

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->Pfn:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    iput-object v1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->si:Ljava/lang/String;

    .line 4
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->Pfn:Ljava/util/Map;

    const-string v2, "distance"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->PiB:I

    .line 5
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->WcQ:I

    const v2, 0x7fffffff

    if-ne v1, v2, :cond_2

    .line 6
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->Pfn:Ljava/util/Map;

    const-string v3, "frequency"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->WcQ:I

    .line 7
    :cond_2
    iget v1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->awB:I

    if-ne v1, v2, :cond_3

    .line 8
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->Pfn:Ljava/util/Map;

    const-string v3, "effectiveDuration"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/bytedance/adsdk/ugeno/cFZ/tB;->oJ(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->awB:I

    .line 9
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mFrequency: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->WcQ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mEffectiveDuration: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->awB:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", inEffectiveDuation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->eZI:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GesThrough_UGSlideEvent"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_4
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ZYk:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/bytedance/adsdk/ugeno/ZYk/tB;->oTd()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    iget-object v1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->Ry:Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;

    if-nez v1, :cond_5

    .line 12
    new-instance v1, Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;

    invoke-direct {v1}, Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;-><init>()V

    iput-object v1, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->Ry:Lcom/bytedance/adsdk/ugeno/core/ZYk/oJ;

    .line 13
    :cond_5
    aget-object p1, p1, v0

    check-cast p1, Landroid/view/MotionEvent;

    .line 14
    invoke-direct {p0}, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->oJ()V

    .line 15
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/ex/ex/tB;->ZYk:Lcom/bytedance/adsdk/ugeno/ZYk/tB;

    invoke-direct {p0, v0, p1}, Lcom/bytedance/adsdk/ugeno/ex/ex/Pfn;->oJ(Lcom/bytedance/adsdk/ugeno/ZYk/tB;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_6
    :goto_1
    return v0
.end method
