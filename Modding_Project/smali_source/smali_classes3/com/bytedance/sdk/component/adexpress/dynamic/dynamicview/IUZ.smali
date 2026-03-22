.class public Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/IUZ;
.super Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/ba;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/dynamic/tB;


# instance fields
.field private Id:Z

.field private QSm:I

.field ZYk:Z

.field oJ:I

.field private oq:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/ba;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/IUZ;->oq:I

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->getClickArea()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/IUZ;->oJ()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;->setTimeOutListener(Lcom/bytedance/sdk/component/adexpress/dynamic/tB;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;->getRenderRequest()Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    if-eqz p1, :cond_1

    .line 29
    .line 30
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;->getRenderRequest()Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->tb()Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    if-nez p1, :cond_1

    .line 39
    .line 40
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->awB:Landroid/view/View;

    .line 41
    .line 42
    const/16 p2, 0x8

    .line 43
    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method private oJ()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->PiB:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;->dLZ()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;

    .line 4
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;->kkU()Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/Pfn;->ZYk()Ljava/lang/String;

    move-result-object v2

    const-string v3, "skip-with-time-skip-btn"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/ex;->ZYk()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;->PiB()I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->dLZ:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/so;->so()F

    move-result v1

    int-to-float v0, v0

    add-float/2addr v1, v0

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/adexpress/ex/cFZ;->oJ(Landroid/content/Context;F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/IUZ;->QSm:I

    .line 8
    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->cFZ:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/IUZ;->oJ:I

    .line 9
    :cond_3
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->cFZ:I

    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/IUZ;->oJ:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/IUZ;->oq:I

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public ba()V
    .locals 4

    .line 1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    iget-boolean v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/IUZ;->ZYk:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->jFA:I

    .line 12
    .line 13
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->jFA:I

    .line 17
    .line 18
    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/IUZ;->oq:I

    .line 19
    .line 20
    add-int/2addr v1, v2

    .line 21
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 22
    .line 23
    :goto_0
    iget-boolean v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/IUZ;->Id:Z

    .line 24
    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->BTZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 28
    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->jFA:I

    .line 32
    .line 33
    iget v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/IUZ;->oq:I

    .line 34
    .line 35
    add-int/2addr v1, v2

    .line 36
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/ex;->oJ()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->BTZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 41
    .line 42
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->tB()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    int-to-float v3, v3

    .line 47
    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/adexpress/ex/cFZ;->oJ(Landroid/content/Context;F)F

    .line 48
    .line 49
    .line 50
    move-result v2

    .line 51
    float-to-int v2, v2

    .line 52
    sub-int/2addr v1, v2

    .line 53
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/ex;->oJ()Landroid/content/Context;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->BTZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 58
    .line 59
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->ex()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    int-to-float v3, v3

    .line 64
    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/adexpress/ex/cFZ;->oJ(Landroid/content/Context;F)F

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    float-to-int v2, v2

    .line 69
    sub-int/2addr v1, v2

    .line 70
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 71
    .line 72
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/ex;->ZYk()Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_2

    .line 77
    .line 78
    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->kkU:I

    .line 79
    .line 80
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/ex;->oJ()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->BTZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 85
    .line 86
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->ZYk()I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    int-to-float v3, v3

    .line 91
    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/adexpress/ex/cFZ;->oJ(Landroid/content/Context;F)F

    .line 92
    .line 93
    .line 94
    move-result v2

    .line 95
    float-to-int v2, v2

    .line 96
    sub-int/2addr v1, v2

    .line 97
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_2
    iget v1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->kkU:I

    .line 101
    .line 102
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 103
    .line 104
    :goto_1
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 107
    .line 108
    .line 109
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 110
    .line 111
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    .line 116
    .line 117
    return-void
.end method

.method protected getWidgetLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 2
    .line 3
    const/4 v1, -0x2

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public jFA()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->WcQ:Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/DynamicRootView;->getRenderRequest()Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->ex()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/ex/ba;->ZYk(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/ba;->jFA()Z

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/ex;->oJ()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->BTZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->tB()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    int-to-float v2, v2

    .line 33
    invoke-static {v0, v2}, Lcom/bytedance/sdk/component/adexpress/ex/cFZ;->oJ(Landroid/content/Context;F)F

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    float-to-int v0, v0

    .line 38
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/ex;->oJ()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iget-object v3, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->BTZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->ZYk()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    int-to-float v3, v3

    .line 49
    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/adexpress/ex/cFZ;->oJ(Landroid/content/Context;F)F

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    float-to-int v2, v2

    .line 54
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/ex;->oJ()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    iget-object v4, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->BTZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 59
    .line 60
    invoke-virtual {v4}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->ex()I

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    int-to-float v4, v4

    .line 65
    invoke-static {v3, v4}, Lcom/bytedance/sdk/component/adexpress/ex/cFZ;->oJ(Landroid/content/Context;F)F

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    float-to-int v3, v3

    .line 70
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/ex;->oJ()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    iget-object v5, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->BTZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 75
    .line 76
    invoke-virtual {v5}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->oJ()I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    int-to-float v5, v5

    .line 81
    invoke-static {v4, v5}, Lcom/bytedance/sdk/component/adexpress/ex/cFZ;->oJ(Landroid/content/Context;F)F

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    float-to-int v4, v4

    .line 86
    invoke-virtual {p0, v0, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 87
    .line 88
    .line 89
    return v1
.end method

.method public oJ(Ljava/lang/CharSequence;ZIZ)V
    .locals 0

    if-eqz p4, :cond_0

    .line 10
    iget-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/IUZ;->Id:Z

    if-eq p1, p4, :cond_0

    .line 11
    iput-boolean p4, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/IUZ;->Id:Z

    .line 12
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/IUZ;->ba()V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 13
    iget-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/IUZ;->ZYk:Z

    if-eq p1, p2, :cond_1

    .line 14
    iput-boolean p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/IUZ;->ZYk:Z

    .line 15
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/IUZ;->ba()V

    .line 16
    :cond_1
    iput-boolean p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/IUZ;->ZYk:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    iget-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/IUZ;->Id:Z

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->BTZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/IUZ;->QSm:I

    .line 13
    .line 14
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/ex;->oJ()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->BTZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->tB()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    int-to-float v0, v0

    .line 25
    invoke-static {p2, v0}, Lcom/bytedance/sdk/component/adexpress/ex/cFZ;->oJ(Landroid/content/Context;F)F

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    float-to-int p2, p2

    .line 30
    add-int/2addr p1, p2

    .line 31
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/ex;->oJ()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->BTZ:Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/ex/cFZ;->ex()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    int-to-float v0, v0

    .line 42
    invoke-static {p2, v0}, Lcom/bytedance/sdk/component/adexpress/ex/cFZ;->oJ(Landroid/content/Context;F)F

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    float-to-int p2, p2

    .line 47
    add-int/2addr p1, p2

    .line 48
    iget p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->so:I

    .line 49
    .line 50
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_0
    iget-boolean p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/IUZ;->ZYk:Z

    .line 55
    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    iget p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->cFZ:I

    .line 59
    .line 60
    iget p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->so:I

    .line 61
    .line 62
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_1
    iget p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/IUZ;->oJ:I

    .line 67
    .line 68
    iget p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/dynamicview/Pfn;->so:I

    .line 69
    .line 70
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 71
    .line 72
    .line 73
    return-void
.end method
