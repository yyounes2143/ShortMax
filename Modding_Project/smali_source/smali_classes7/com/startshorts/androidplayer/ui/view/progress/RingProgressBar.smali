.class public final Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;
.super Landroid/view/View;
.source "RingProgressBar.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRingProgressBar.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RingProgressBar.kt\ncom/startshorts/androidplayer/ui/view/progress/RingProgressBar\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,385:1\n1#2:386\n*E\n"
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:I

.field private c:I

.field private d:I

.field private e:F

.field private f:I

.field private g:I

.field private h:I

.field private i:F

.field private j:F

.field private k:I

.field private l:I

.field private m:Z

.field private n:I

.field private final o:I

.field private final p:I

.field private q:I

.field private r:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->p:I

    .line 11
    .line 12
    new-instance v1, Landroid/graphics/Paint;

    .line 13
    .line 14
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->a:Landroid/graphics/Paint;

    .line 18
    .line 19
    const/16 v1, 0x64

    .line 20
    .line 21
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->a(I)I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    iput v2, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->d:I

    .line 26
    .line 27
    sget-object v2, Lcom/startshorts/androidplayer/R$styleable;->RingProgressBar:[I

    .line 28
    .line 29
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const-string p2, "obtainStyledAttributes(...)"

    .line 34
    .line 35
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget p2, Lcom/startshorts/androidplayer/R$styleable;->RingProgressBar_ringColor:I

    .line 39
    .line 40
    const/high16 v2, -0x1000000

    .line 41
    .line 42
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    iput p2, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->f:I

    .line 47
    .line 48
    sget p2, Lcom/startshorts/androidplayer/R$styleable;->RingProgressBar_ringProgressColor:I

    .line 49
    .line 50
    const/4 v3, -0x1

    .line 51
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    iput p2, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->g:I

    .line 56
    .line 57
    sget p2, Lcom/startshorts/androidplayer/R$styleable;->RingProgressBar_textColor:I

    .line 58
    .line 59
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 60
    .line 61
    .line 62
    move-result p2

    .line 63
    iput p2, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->h:I

    .line 64
    .line 65
    sget p2, Lcom/startshorts/androidplayer/R$styleable;->RingProgressBar_textSize:I

    .line 66
    .line 67
    const/high16 v2, 0x41800000    # 16.0f

    .line 68
    .line 69
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    iput p2, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->i:F

    .line 74
    .line 75
    sget p2, Lcom/startshorts/androidplayer/R$styleable;->RingProgressBar_ringWidth:I

    .line 76
    .line 77
    const/high16 v2, 0x40a00000    # 5.0f

    .line 78
    .line 79
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    iput p2, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->j:F

    .line 84
    .line 85
    sget p2, Lcom/startshorts/androidplayer/R$styleable;->RingProgressBar_max:I

    .line 86
    .line 87
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 88
    .line 89
    .line 90
    move-result p2

    .line 91
    iput p2, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->k:I

    .line 92
    .line 93
    sget p2, Lcom/startshorts/androidplayer/R$styleable;->RingProgressBar_textIsShow:I

    .line 94
    .line 95
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    iput-boolean p2, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->m:Z

    .line 100
    .line 101
    sget p2, Lcom/startshorts/androidplayer/R$styleable;->RingProgressBar_style:I

    .line 102
    .line 103
    const/4 v0, 0x0

    .line 104
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    iput p2, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->n:I

    .line 109
    .line 110
    sget p2, Lcom/startshorts/androidplayer/R$styleable;->RingProgressBar_progress:I

    .line 111
    .line 112
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 113
    .line 114
    .line 115
    move-result p2

    .line 116
    iput p2, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->l:I

    .line 117
    .line 118
    sget p2, Lcom/startshorts/androidplayer/R$styleable;->RingProgressBar_ringPadding:I

    .line 119
    .line 120
    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    iput p2, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->e:F

    .line 125
    .line 126
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 127
    .line 128
    .line 129
    return-void
.end method

.method private final b(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->a:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->f:I

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->a:Landroid/graphics/Paint;

    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->a:Landroid/graphics/Paint;

    .line 22
    .line 23
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->j:F

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->a:Landroid/graphics/Paint;

    .line 32
    .line 33
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x1

    .line 37
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 38
    .line 39
    .line 40
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->q:I

    .line 41
    .line 42
    int-to-float v1, v0

    .line 43
    int-to-float v0, v0

    .line 44
    iget v2, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->r:I

    .line 45
    .line 46
    int-to-float v2, v2

    .line 47
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->a:Landroid/graphics/Paint;

    .line 48
    .line 49
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method private final c(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->a:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->j:F

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->a:Landroid/graphics/Paint;

    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->g:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    .line 20
    .line 21
    new-instance v3, Landroid/graphics/RectF;

    .line 22
    .line 23
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->q:I

    .line 24
    .line 25
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->r:I

    .line 26
    .line 27
    sub-int v2, v0, v1

    .line 28
    .line 29
    int-to-float v2, v2

    .line 30
    sub-int v4, v0, v1

    .line 31
    .line 32
    int-to-float v4, v4

    .line 33
    add-int v5, v0, v1

    .line 34
    .line 35
    int-to-float v5, v5

    .line 36
    add-int/2addr v0, v1

    .line 37
    int-to-float v0, v0

    .line 38
    invoke-direct {v3, v2, v4, v5, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 39
    .line 40
    .line 41
    new-instance v7, Landroid/graphics/RectF;

    .line 42
    .line 43
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->q:I

    .line 44
    .line 45
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->r:I

    .line 46
    .line 47
    sub-int v2, v0, v1

    .line 48
    .line 49
    int-to-float v2, v2

    .line 50
    iget v4, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->j:F

    .line 51
    .line 52
    add-float/2addr v2, v4

    .line 53
    iget v5, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->e:F

    .line 54
    .line 55
    add-float/2addr v2, v5

    .line 56
    sub-int v6, v0, v1

    .line 57
    .line 58
    int-to-float v6, v6

    .line 59
    add-float/2addr v6, v4

    .line 60
    add-float/2addr v6, v5

    .line 61
    add-int v8, v0, v1

    .line 62
    .line 63
    int-to-float v8, v8

    .line 64
    sub-float/2addr v8, v4

    .line 65
    sub-float/2addr v8, v5

    .line 66
    add-int/2addr v0, v1

    .line 67
    int-to-float v0, v0

    .line 68
    sub-float/2addr v0, v4

    .line 69
    sub-float/2addr v0, v5

    .line 70
    invoke-direct {v7, v2, v6, v8, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 71
    .line 72
    .line 73
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->n:I

    .line 74
    .line 75
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->o:I

    .line 76
    .line 77
    if-ne v0, v1, :cond_0

    .line 78
    .line 79
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->a:Landroid/graphics/Paint;

    .line 80
    .line 81
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 82
    .line 83
    .line 84
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->a:Landroid/graphics/Paint;

    .line 90
    .line 91
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 92
    .line 93
    .line 94
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 97
    .line 98
    .line 99
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->l:I

    .line 100
    .line 101
    mul-int/lit16 v0, v0, 0x168

    .line 102
    .line 103
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->k:I

    .line 104
    .line 105
    div-int/2addr v0, v1

    .line 106
    int-to-float v5, v0

    .line 107
    iget-object v7, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->a:Landroid/graphics/Paint;

    .line 108
    .line 109
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    const/high16 v4, -0x3d4c0000    # -90.0f

    .line 113
    .line 114
    const/4 v6, 0x0

    .line 115
    move-object v2, p1

    .line 116
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :cond_0
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->p:I

    .line 121
    .line 122
    if-ne v0, v1, :cond_1

    .line 123
    .line 124
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->a:Landroid/graphics/Paint;

    .line 125
    .line 126
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 132
    .line 133
    .line 134
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->a:Landroid/graphics/Paint;

    .line 135
    .line 136
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 142
    .line 143
    .line 144
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->l:I

    .line 145
    .line 146
    if-eqz v0, :cond_1

    .line 147
    .line 148
    mul-int/lit16 v0, v0, 0x168

    .line 149
    .line 150
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->k:I

    .line 151
    .line 152
    div-int/2addr v0, v1

    .line 153
    int-to-float v9, v0

    .line 154
    iget-object v11, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->a:Landroid/graphics/Paint;

    .line 155
    .line 156
    invoke-static {v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 157
    .line 158
    .line 159
    const/high16 v8, -0x3d4c0000    # -90.0f

    .line 160
    .line 161
    const/4 v10, 0x1

    .line 162
    move-object v6, p1

    .line 163
    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 164
    .line 165
    .line 166
    :cond_1
    :goto_0
    return-void
.end method

.method private final d(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->a:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->a:Landroid/graphics/Paint;

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->h:I

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->a:Landroid/graphics/Paint;

    .line 21
    .line 22
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->i:F

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->a:Landroid/graphics/Paint;

    .line 31
    .line 32
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 38
    .line 39
    .line 40
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->l:I

    .line 41
    .line 42
    int-to-float v0, v0

    .line 43
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->k:I

    .line 44
    .line 45
    int-to-float v1, v1

    .line 46
    div-float/2addr v0, v1

    .line 47
    const/16 v1, 0x64

    .line 48
    .line 49
    int-to-float v1, v1

    .line 50
    mul-float/2addr v0, v1

    .line 51
    float-to-int v0, v0

    .line 52
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->a:Landroid/graphics/Paint;

    .line 53
    .line 54
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const/16 v3, 0x25

    .line 66
    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    iget-boolean v2, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->m:Z

    .line 79
    .line 80
    if-eqz v2, :cond_0

    .line 81
    .line 82
    if-eqz v0, :cond_0

    .line 83
    .line 84
    iget v2, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->n:I

    .line 85
    .line 86
    iget v4, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->o:I

    .line 87
    .line 88
    if-ne v2, v4, :cond_0

    .line 89
    .line 90
    new-instance v2, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iget v2, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->q:I

    .line 106
    .line 107
    int-to-float v3, v2

    .line 108
    const/4 v4, 0x2

    .line 109
    int-to-float v4, v4

    .line 110
    div-float/2addr v1, v4

    .line 111
    sub-float/2addr v3, v1

    .line 112
    int-to-float v1, v2

    .line 113
    iget v2, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->i:F

    .line 114
    .line 115
    div-float/2addr v2, v4

    .line 116
    add-float/2addr v1, v2

    .line 117
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->a:Landroid/graphics/Paint;

    .line 118
    .line 119
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 123
    .line 124
    .line 125
    :cond_0
    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 14
    .line 15
    int-to-float p1, p1

    .line 16
    mul-float/2addr p1, v0

    .line 17
    const/high16 v0, 0x3f000000    # 0.5f

    .line 18
    .line 19
    add-float/2addr p1, v0

    .line 20
    float-to-int p1, p1

    .line 21
    return p1
.end method

.method public final getFILL()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public final declared-synchronized getMax()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public final declared-synchronized getProgress()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    throw v0
.end method

.method public final getRingColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRingProgressColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->g:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRingWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->j:F

    .line 2
    .line 3
    return v0
.end method

.method public final getSTROKE()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->o:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTextColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTextSize()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->i:F

    .line 2
    .line 3
    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    .line 1
    const-string v0, "canvas"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x2

    .line 14
    div-int/2addr v0, v1

    .line 15
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->q:I

    .line 16
    .line 17
    int-to-float v0, v0

    .line 18
    iget v2, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->j:F

    .line 19
    .line 20
    int-to-float v1, v1

    .line 21
    div-float/2addr v2, v1

    .line 22
    sub-float/2addr v0, v2

    .line 23
    float-to-int v0, v0

    .line 24
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->r:I

    .line 25
    .line 26
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->b(Landroid/graphics/Canvas;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->d(Landroid/graphics/Canvas;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->c(Landroid/graphics/Canvas;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    const/high16 v2, -0x80000000

    .line 21
    .line 22
    if-ne v0, v2, :cond_0

    .line 23
    .line 24
    iget p1, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->d:I

    .line 25
    .line 26
    :cond_0
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->b:I

    .line 27
    .line 28
    if-ne v1, v2, :cond_1

    .line 29
    .line 30
    iget p2, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->d:I

    .line 31
    .line 32
    :cond_1
    iput p2, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->c:I

    .line 33
    .line 34
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->b:I

    .line 5
    .line 6
    iput p2, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->c:I

    .line 7
    .line 8
    return-void
.end method

.method public final declared-synchronized setMax(I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-ltz p1, :cond_0

    .line 3
    .line 4
    :try_start_0
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->k:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :catchall_0
    move-exception p1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_1
    const-string p1, "The max progress of 0"

    .line 11
    .line 12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 13
    .line 14
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v0

    .line 18
    :goto_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    throw p1
.end method

.method public final setOnProgressListener(Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar$a;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar$a;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public final declared-synchronized setProgress(I)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    if-ltz p1, :cond_2

    .line 3
    .line 4
    :try_start_0
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->k:I

    .line 5
    .line 6
    if-le p1, v0, :cond_0

    .line 7
    .line 8
    move p1, v0

    .line 9
    :cond_0
    if-gt p1, v0, :cond_1

    .line 10
    .line 11
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->l:I

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    monitor-exit p0

    .line 20
    return-void

    .line 21
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string v0, "The progress of 0"

    .line 24
    .line 25
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw p1

    .line 29
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw p1
.end method

.method public final setRingColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->f:I

    .line 2
    .line 3
    return-void
.end method

.method public final setRingProgressColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public final setRingWidth(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->j:F

    .line 2
    .line 3
    return-void
.end method

.method public final setTextColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->h:I

    .line 2
    .line 3
    return-void
.end method

.method public final setTextSize(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/progress/RingProgressBar;->i:F

    .line 2
    .line 3
    return-void
.end method
