.class public final Lcom/startshorts/androidplayer/ui/view/refresh/BallPulseFooter;
.super Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;
.source "BallPulseFooter.kt"

# interfaces
.implements Lsc/c;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private d:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private e:I

.field private f:I

.field private g:F

.field private h:J

.field private i:Z

.field private j:Landroid/animation/TimeInterpolator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private k:Lcom/scwang/smart/refresh/layout/constant/RefreshState;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/startshorts/androidplayer/ui/view/refresh/BallPulseFooter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p1, -0x111112

    .line 3
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/refresh/BallPulseFooter;->e:I

    const p1, -0x18a6ba

    .line 4
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/refresh/BallPulseFooter;->f:I

    .line 5
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/refresh/BallPulseFooter;->j:Landroid/animation/TimeInterpolator;

    const/high16 p1, 0x42700000    # 60.0f

    .line 6
    invoke-static {p1}, Lxc/b;->c(F)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 7
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const/4 p2, -0x1

    .line 8
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 p2, 0x1

    .line 10
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 11
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/refresh/BallPulseFooter;->d:Landroid/graphics/Paint;

    .line 12
    sget-object p1, Ltc/b;->d:Ltc/b;

    iput-object p1, p0, Lcom/scwang/smart/refresh/layout/simple/SimpleComponent;->b:Ltc/b;

    const/high16 p1, 0x40800000    # 4.0f

    .line 13
    invoke-static {p1}, Lxc/b;->c(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/refresh/BallPulseFooter;->g:F

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 14
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/refresh/BallPulseFooter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public a(Lsc/f;II)V
    .locals 0
    .param p1    # Lsc/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p2, "layout"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/refresh/BallPulseFooter;->i:Z

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/refresh/BallPulseFooter;->i:Z

    .line 15
    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide p1

    .line 20
    iput-wide p1, p0, Lcom/startshorts/androidplayer/ui/view/refresh/BallPulseFooter;->h:J

    .line 21
    .line 22
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/refresh/BallPulseFooter;->d:Landroid/graphics/Paint;

    .line 23
    .line 24
    iget p2, p0, Lcom/startshorts/androidplayer/ui/view/refresh/BallPulseFooter;->f:I

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-void
.end method

.method public c(Lsc/f;Z)I
    .locals 2
    .param p1    # Lsc/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p2, "layout"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/refresh/BallPulseFooter;->i:Z

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/startshorts/androidplayer/ui/view/refresh/BallPulseFooter;->h:J

    .line 12
    .line 13
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/view/refresh/BallPulseFooter;->d:Landroid/graphics/Paint;

    .line 14
    .line 15
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/refresh/BallPulseFooter;->e:I

    .line 16
    .line 17
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    .line 19
    .line 20
    return p1
.end method

.method public d(Lsc/f;Lcom/scwang/smart/refresh/layout/constant/RefreshState;Lcom/scwang/smart/refresh/layout/constant/RefreshState;)V
    .locals 1
    .param p1    # Lsc/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/scwang/smart/refresh/layout/constant/RefreshState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/scwang/smart/refresh/layout/constant/RefreshState;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "refreshLayout"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "oldState"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "newState"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/view/refresh/BallPulseFooter;->k:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 17
    .line 18
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    const-string v2, "canvas"

    .line 6
    .line 7
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    const/high16 v4, 0x40c00000    # 6.0f

    .line 19
    .line 20
    invoke-static {v4}, Lxc/b;->c(F)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    int-to-float v4, v4

    .line 25
    int-to-float v2, v2

    .line 26
    const/high16 v5, 0x40000000    # 2.0f

    .line 27
    .line 28
    div-float/2addr v2, v5

    .line 29
    mul-float v6, v4, v5

    .line 30
    .line 31
    iget v7, v0, Lcom/startshorts/androidplayer/ui/view/refresh/BallPulseFooter;->g:F

    .line 32
    .line 33
    add-float/2addr v7, v6

    .line 34
    sub-float/2addr v2, v7

    .line 35
    int-to-float v3, v3

    .line 36
    div-float/2addr v3, v5

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 38
    .line 39
    .line 40
    move-result-wide v7

    .line 41
    const/4 v9, 0x0

    .line 42
    :goto_0
    const/4 v10, 0x3

    .line 43
    if-ge v9, v10, :cond_2

    .line 44
    .line 45
    iget-wide v10, v0, Lcom/startshorts/androidplayer/ui/view/refresh/BallPulseFooter;->h:J

    .line 46
    .line 47
    sub-long v10, v7, v10

    .line 48
    .line 49
    add-int/lit8 v12, v9, 0x1

    .line 50
    .line 51
    mul-int/lit8 v13, v12, 0x78

    .line 52
    .line 53
    int-to-long v13, v13

    .line 54
    sub-long/2addr v10, v13

    .line 55
    const-wide/16 v13, 0x0

    .line 56
    .line 57
    cmp-long v13, v10, v13

    .line 58
    .line 59
    if-lez v13, :cond_0

    .line 60
    .line 61
    const-wide/16 v15, 0x2ee

    .line 62
    .line 63
    rem-long/2addr v10, v15

    .line 64
    long-to-float v10, v10

    .line 65
    const v11, 0x443b8000    # 750.0f

    .line 66
    .line 67
    .line 68
    div-float/2addr v10, v11

    .line 69
    goto :goto_1

    .line 70
    :cond_0
    const/4 v10, 0x0

    .line 71
    :goto_1
    iget-object v11, v0, Lcom/startshorts/androidplayer/ui/view/refresh/BallPulseFooter;->j:Landroid/animation/TimeInterpolator;

    .line 72
    .line 73
    invoke-interface {v11, v10}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    .line 74
    .line 75
    .line 76
    move-result v10

    .line 77
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 78
    .line 79
    .line 80
    int-to-float v9, v9

    .line 81
    mul-float v11, v6, v9

    .line 82
    .line 83
    add-float/2addr v11, v2

    .line 84
    iget v13, v0, Lcom/startshorts/androidplayer/ui/view/refresh/BallPulseFooter;->g:F

    .line 85
    .line 86
    mul-float/2addr v13, v9

    .line 87
    add-float/2addr v11, v13

    .line 88
    invoke-virtual {v1, v11, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 89
    .line 90
    .line 91
    float-to-double v14, v10

    .line 92
    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    .line 93
    .line 94
    cmpg-double v11, v14, v16

    .line 95
    .line 96
    const v13, 0x3f333333    # 0.7f

    .line 97
    .line 98
    .line 99
    if-gez v11, :cond_1

    .line 100
    .line 101
    mul-float/2addr v10, v5

    .line 102
    mul-float/2addr v10, v13

    .line 103
    const/high16 v11, 0x3f800000    # 1.0f

    .line 104
    .line 105
    sub-float/2addr v11, v10

    .line 106
    invoke-virtual {v1, v11, v11}, Landroid/graphics/Canvas;->scale(FF)V

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :cond_1
    mul-float/2addr v10, v5

    .line 111
    mul-float/2addr v10, v13

    .line 112
    const v11, 0x3ecccccd    # 0.4f

    .line 113
    .line 114
    .line 115
    sub-float/2addr v10, v11

    .line 116
    invoke-virtual {v1, v10, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 117
    .line 118
    .line 119
    :goto_2
    iget-object v10, v0, Lcom/startshorts/androidplayer/ui/view/refresh/BallPulseFooter;->d:Landroid/graphics/Paint;

    .line 120
    .line 121
    const/4 v9, 0x0

    .line 122
    invoke-virtual {v1, v9, v9, v4, v10}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 126
    .line 127
    .line 128
    move v9, v12

    .line 129
    goto :goto_0

    .line 130
    :cond_2
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 131
    .line 132
    .line 133
    iget-boolean v1, v0, Lcom/startshorts/androidplayer/ui/view/refresh/BallPulseFooter;->i:Z

    .line 134
    .line 135
    if-eqz v1, :cond_3

    .line 136
    .line 137
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->invalidate()V

    .line 138
    .line 139
    .line 140
    :cond_3
    return-void
.end method

.method public final getMState()Lcom/scwang/smart/refresh/layout/constant/RefreshState;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/refresh/BallPulseFooter;->k:Lcom/scwang/smart/refresh/layout/constant/RefreshState;

    .line 2
    .line 3
    return-object v0
.end method
