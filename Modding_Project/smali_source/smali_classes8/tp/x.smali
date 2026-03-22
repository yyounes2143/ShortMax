.class public final Ltp/x;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltp/x$a;,
        Ltp/x$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final u:Ltp/x$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final v:Landroid/widget/ImageView$ScaleType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Landroid/graphics/Bitmap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:I

.field private final e:I

.field private final f:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final g:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final h:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final i:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final j:Landroid/graphics/Matrix;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final k:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private l:Landroid/graphics/Shader$TileMode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private m:Landroid/graphics/Shader$TileMode;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private n:Z

.field private o:F

.field private final p:[Z
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private q:Z

.field private r:F

.field private s:Landroid/content/res/ColorStateList;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private t:Landroid/widget/ImageView$ScaleType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ltp/x$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ltp/x$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ltp/x;->u:Ltp/x$a;

    .line 8
    .line 9
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    .line 10
    .line 11
    sput-object v0, Ltp/x;->v:Landroid/widget/ImageView$ScaleType;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "bitmap"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Ltp/x;->a:Landroid/graphics/Bitmap;

    .line 10
    .line 11
    new-instance v0, Landroid/graphics/RectF;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Ltp/x;->b:Landroid/graphics/RectF;

    .line 17
    .line 18
    new-instance v0, Landroid/graphics/RectF;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Ltp/x;->c:Landroid/graphics/RectF;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    iput v0, p0, Ltp/x;->d:I

    .line 30
    .line 31
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iput p1, p0, Ltp/x;->e:I

    .line 36
    .line 37
    new-instance v1, Landroid/graphics/RectF;

    .line 38
    .line 39
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 40
    .line 41
    .line 42
    int-to-float v0, v0

    .line 43
    int-to-float p1, p1

    .line 44
    const/4 v2, 0x0

    .line 45
    invoke-virtual {v1, v2, v2, v0, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Ltp/x;->f:Landroid/graphics/RectF;

    .line 49
    .line 50
    new-instance p1, Landroid/graphics/Paint;

    .line 51
    .line 52
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 53
    .line 54
    .line 55
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    .line 59
    .line 60
    const/4 v0, 0x1

    .line 61
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 62
    .line 63
    .line 64
    iput-object p1, p0, Ltp/x;->g:Landroid/graphics/Paint;

    .line 65
    .line 66
    new-instance p1, Landroid/graphics/RectF;

    .line 67
    .line 68
    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object p1, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 72
    .line 73
    new-instance p1, Landroid/graphics/Paint;

    .line 74
    .line 75
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 76
    .line 77
    .line 78
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 79
    .line 80
    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    .line 85
    .line 86
    iput-object p1, p0, Ltp/x;->i:Landroid/graphics/Paint;

    .line 87
    .line 88
    new-instance v1, Landroid/graphics/Matrix;

    .line 89
    .line 90
    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 91
    .line 92
    .line 93
    iput-object v1, p0, Ltp/x;->j:Landroid/graphics/Matrix;

    .line 94
    .line 95
    new-instance v1, Landroid/graphics/RectF;

    .line 96
    .line 97
    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .line 98
    .line 99
    .line 100
    iput-object v1, p0, Ltp/x;->k:Landroid/graphics/RectF;

    .line 101
    .line 102
    sget-object v1, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 103
    .line 104
    iput-object v1, p0, Ltp/x;->l:Landroid/graphics/Shader$TileMode;

    .line 105
    .line 106
    iput-object v1, p0, Ltp/x;->m:Landroid/graphics/Shader$TileMode;

    .line 107
    .line 108
    iput-boolean v0, p0, Ltp/x;->n:Z

    .line 109
    .line 110
    const/4 v0, 0x4

    .line 111
    new-array v0, v0, [Z

    .line 112
    .line 113
    fill-array-data v0, :array_0

    .line 114
    .line 115
    .line 116
    iput-object v0, p0, Ltp/x;->p:[Z

    .line 117
    .line 118
    const/4 v0, 0x0

    .line 119
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    const-string v2, "valueOf(DEFAULT_BORDER_COLOR)"

    .line 124
    .line 125
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iput-object v1, p0, Ltp/x;->s:Landroid/content/res/ColorStateList;

    .line 129
    .line 130
    sget-object v2, Ltp/x;->v:Landroid/widget/ImageView$ScaleType;

    .line 131
    .line 132
    iput-object v2, p0, Ltp/x;->t:Landroid/widget/ImageView$ScaleType;

    .line 133
    .line 134
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-virtual {v1, v2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    .line 144
    .line 145
    iget v0, p0, Ltp/x;->r:F

    .line 146
    .line 147
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 148
    .line 149
    .line 150
    return-void

    .line 151
    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method private final f()V
    .locals 7

    .line 1
    iget-object v0, p0, Ltp/x;->t:Landroid/widget/ImageView$ScaleType;

    .line 2
    .line 3
    sget-object v1, Ltp/x$b;->a:[I

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    aget v0, v1, v0

    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    const/high16 v2, 0x3f000000    # 0.5f

    .line 13
    .line 14
    packed-switch v0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 18
    .line 19
    iget-object v2, p0, Ltp/x;->f:Landroid/graphics/RectF;

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Ltp/x;->j:Landroid/graphics/Matrix;

    .line 25
    .line 26
    iget-object v2, p0, Ltp/x;->f:Landroid/graphics/RectF;

    .line 27
    .line 28
    iget-object v3, p0, Ltp/x;->b:Landroid/graphics/RectF;

    .line 29
    .line 30
    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    .line 31
    .line 32
    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Ltp/x;->j:Landroid/graphics/Matrix;

    .line 36
    .line 37
    iget-object v2, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 43
    .line 44
    iget v2, p0, Ltp/x;->r:F

    .line 45
    .line 46
    int-to-float v1, v1

    .line 47
    div-float/2addr v2, v1

    .line 48
    invoke-virtual {v0, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Ltp/x;->j:Landroid/graphics/Matrix;

    .line 52
    .line 53
    iget-object v1, p0, Ltp/x;->f:Landroid/graphics/RectF;

    .line 54
    .line 55
    iget-object v2, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 56
    .line 57
    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    .line 58
    .line 59
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 60
    .line 61
    .line 62
    goto/16 :goto_2

    .line 63
    .line 64
    :pswitch_0
    iget-object v0, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 65
    .line 66
    iget-object v2, p0, Ltp/x;->b:Landroid/graphics/RectF;

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 72
    .line 73
    iget v2, p0, Ltp/x;->r:F

    .line 74
    .line 75
    int-to-float v1, v1

    .line 76
    div-float/2addr v2, v1

    .line 77
    invoke-virtual {v0, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Ltp/x;->j:Landroid/graphics/Matrix;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Ltp/x;->j:Landroid/graphics/Matrix;

    .line 86
    .line 87
    iget-object v1, p0, Ltp/x;->f:Landroid/graphics/RectF;

    .line 88
    .line 89
    iget-object v2, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 90
    .line 91
    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    .line 92
    .line 93
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 94
    .line 95
    .line 96
    goto/16 :goto_2

    .line 97
    .line 98
    :pswitch_1
    iget-object v0, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 99
    .line 100
    iget-object v2, p0, Ltp/x;->f:Landroid/graphics/RectF;

    .line 101
    .line 102
    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 103
    .line 104
    .line 105
    iget-object v0, p0, Ltp/x;->j:Landroid/graphics/Matrix;

    .line 106
    .line 107
    iget-object v2, p0, Ltp/x;->f:Landroid/graphics/RectF;

    .line 108
    .line 109
    iget-object v3, p0, Ltp/x;->b:Landroid/graphics/RectF;

    .line 110
    .line 111
    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->START:Landroid/graphics/Matrix$ScaleToFit;

    .line 112
    .line 113
    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Ltp/x;->j:Landroid/graphics/Matrix;

    .line 117
    .line 118
    iget-object v2, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 119
    .line 120
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 124
    .line 125
    iget v2, p0, Ltp/x;->r:F

    .line 126
    .line 127
    int-to-float v1, v1

    .line 128
    div-float/2addr v2, v1

    .line 129
    invoke-virtual {v0, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Ltp/x;->j:Landroid/graphics/Matrix;

    .line 133
    .line 134
    iget-object v1, p0, Ltp/x;->f:Landroid/graphics/RectF;

    .line 135
    .line 136
    iget-object v2, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 137
    .line 138
    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    .line 139
    .line 140
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 141
    .line 142
    .line 143
    goto/16 :goto_2

    .line 144
    .line 145
    :pswitch_2
    iget-object v0, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 146
    .line 147
    iget-object v2, p0, Ltp/x;->f:Landroid/graphics/RectF;

    .line 148
    .line 149
    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 150
    .line 151
    .line 152
    iget-object v0, p0, Ltp/x;->j:Landroid/graphics/Matrix;

    .line 153
    .line 154
    iget-object v2, p0, Ltp/x;->f:Landroid/graphics/RectF;

    .line 155
    .line 156
    iget-object v3, p0, Ltp/x;->b:Landroid/graphics/RectF;

    .line 157
    .line 158
    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->END:Landroid/graphics/Matrix$ScaleToFit;

    .line 159
    .line 160
    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 161
    .line 162
    .line 163
    iget-object v0, p0, Ltp/x;->j:Landroid/graphics/Matrix;

    .line 164
    .line 165
    iget-object v2, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 166
    .line 167
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 171
    .line 172
    iget v2, p0, Ltp/x;->r:F

    .line 173
    .line 174
    int-to-float v1, v1

    .line 175
    div-float/2addr v2, v1

    .line 176
    invoke-virtual {v0, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Ltp/x;->j:Landroid/graphics/Matrix;

    .line 180
    .line 181
    iget-object v1, p0, Ltp/x;->f:Landroid/graphics/RectF;

    .line 182
    .line 183
    iget-object v2, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 184
    .line 185
    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    .line 186
    .line 187
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 188
    .line 189
    .line 190
    goto/16 :goto_2

    .line 191
    .line 192
    :pswitch_3
    iget-object v0, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 193
    .line 194
    iget-object v2, p0, Ltp/x;->f:Landroid/graphics/RectF;

    .line 195
    .line 196
    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 197
    .line 198
    .line 199
    iget-object v0, p0, Ltp/x;->j:Landroid/graphics/Matrix;

    .line 200
    .line 201
    iget-object v2, p0, Ltp/x;->f:Landroid/graphics/RectF;

    .line 202
    .line 203
    iget-object v3, p0, Ltp/x;->b:Landroid/graphics/RectF;

    .line 204
    .line 205
    sget-object v4, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    .line 206
    .line 207
    invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 208
    .line 209
    .line 210
    iget-object v0, p0, Ltp/x;->j:Landroid/graphics/Matrix;

    .line 211
    .line 212
    iget-object v2, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 213
    .line 214
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 215
    .line 216
    .line 217
    iget-object v0, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 218
    .line 219
    iget v2, p0, Ltp/x;->r:F

    .line 220
    .line 221
    int-to-float v1, v1

    .line 222
    div-float/2addr v2, v1

    .line 223
    invoke-virtual {v0, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 224
    .line 225
    .line 226
    iget-object v0, p0, Ltp/x;->j:Landroid/graphics/Matrix;

    .line 227
    .line 228
    iget-object v1, p0, Ltp/x;->f:Landroid/graphics/RectF;

    .line 229
    .line 230
    iget-object v2, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 231
    .line 232
    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    .line 233
    .line 234
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 235
    .line 236
    .line 237
    goto/16 :goto_2

    .line 238
    .line 239
    :pswitch_4
    iget-object v0, p0, Ltp/x;->j:Landroid/graphics/Matrix;

    .line 240
    .line 241
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 242
    .line 243
    .line 244
    iget v0, p0, Ltp/x;->d:I

    .line 245
    .line 246
    int-to-float v0, v0

    .line 247
    iget-object v3, p0, Ltp/x;->b:Landroid/graphics/RectF;

    .line 248
    .line 249
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 250
    .line 251
    .line 252
    move-result v3

    .line 253
    cmpg-float v0, v0, v3

    .line 254
    .line 255
    if-gtz v0, :cond_0

    .line 256
    .line 257
    iget v0, p0, Ltp/x;->e:I

    .line 258
    .line 259
    int-to-float v0, v0

    .line 260
    iget-object v3, p0, Ltp/x;->b:Landroid/graphics/RectF;

    .line 261
    .line 262
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 263
    .line 264
    .line 265
    move-result v3

    .line 266
    cmpg-float v0, v0, v3

    .line 267
    .line 268
    if-gtz v0, :cond_0

    .line 269
    .line 270
    const/high16 v0, 0x3f800000    # 1.0f

    .line 271
    .line 272
    goto :goto_0

    .line 273
    :cond_0
    iget-object v0, p0, Ltp/x;->b:Landroid/graphics/RectF;

    .line 274
    .line 275
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 276
    .line 277
    .line 278
    move-result v0

    .line 279
    iget v3, p0, Ltp/x;->d:I

    .line 280
    .line 281
    int-to-float v3, v3

    .line 282
    div-float/2addr v0, v3

    .line 283
    iget-object v3, p0, Ltp/x;->b:Landroid/graphics/RectF;

    .line 284
    .line 285
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 286
    .line 287
    .line 288
    move-result v3

    .line 289
    iget v4, p0, Ltp/x;->e:I

    .line 290
    .line 291
    int-to-float v4, v4

    .line 292
    div-float/2addr v3, v4

    .line 293
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    :goto_0
    iget-object v3, p0, Ltp/x;->b:Landroid/graphics/RectF;

    .line 298
    .line 299
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 300
    .line 301
    .line 302
    move-result v3

    .line 303
    iget v4, p0, Ltp/x;->d:I

    .line 304
    .line 305
    int-to-float v4, v4

    .line 306
    mul-float/2addr v4, v0

    .line 307
    sub-float/2addr v3, v4

    .line 308
    mul-float/2addr v3, v2

    .line 309
    add-float/2addr v3, v2

    .line 310
    iget-object v4, p0, Ltp/x;->b:Landroid/graphics/RectF;

    .line 311
    .line 312
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 313
    .line 314
    .line 315
    move-result v4

    .line 316
    iget v5, p0, Ltp/x;->e:I

    .line 317
    .line 318
    int-to-float v5, v5

    .line 319
    mul-float/2addr v5, v0

    .line 320
    sub-float/2addr v4, v5

    .line 321
    mul-float/2addr v4, v2

    .line 322
    add-float/2addr v4, v2

    .line 323
    iget-object v2, p0, Ltp/x;->j:Landroid/graphics/Matrix;

    .line 324
    .line 325
    invoke-virtual {v2, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 326
    .line 327
    .line 328
    iget-object v0, p0, Ltp/x;->j:Landroid/graphics/Matrix;

    .line 329
    .line 330
    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 331
    .line 332
    .line 333
    iget-object v0, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 334
    .line 335
    iget-object v2, p0, Ltp/x;->f:Landroid/graphics/RectF;

    .line 336
    .line 337
    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 338
    .line 339
    .line 340
    iget-object v0, p0, Ltp/x;->j:Landroid/graphics/Matrix;

    .line 341
    .line 342
    iget-object v2, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 343
    .line 344
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 345
    .line 346
    .line 347
    iget-object v0, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 348
    .line 349
    iget v2, p0, Ltp/x;->r:F

    .line 350
    .line 351
    int-to-float v1, v1

    .line 352
    div-float/2addr v2, v1

    .line 353
    invoke-virtual {v0, v2, v2}, Landroid/graphics/RectF;->inset(FF)V

    .line 354
    .line 355
    .line 356
    iget-object v0, p0, Ltp/x;->j:Landroid/graphics/Matrix;

    .line 357
    .line 358
    iget-object v1, p0, Ltp/x;->f:Landroid/graphics/RectF;

    .line 359
    .line 360
    iget-object v2, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 361
    .line 362
    sget-object v3, Landroid/graphics/Matrix$ScaleToFit;->FILL:Landroid/graphics/Matrix$ScaleToFit;

    .line 363
    .line 364
    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 365
    .line 366
    .line 367
    goto/16 :goto_2

    .line 368
    .line 369
    :pswitch_5
    iget-object v0, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 370
    .line 371
    iget-object v3, p0, Ltp/x;->b:Landroid/graphics/RectF;

    .line 372
    .line 373
    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 374
    .line 375
    .line 376
    iget-object v0, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 377
    .line 378
    iget v3, p0, Ltp/x;->r:F

    .line 379
    .line 380
    int-to-float v1, v1

    .line 381
    div-float/2addr v3, v1

    .line 382
    invoke-virtual {v0, v3, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 383
    .line 384
    .line 385
    iget-object v0, p0, Ltp/x;->j:Landroid/graphics/Matrix;

    .line 386
    .line 387
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 388
    .line 389
    .line 390
    iget v0, p0, Ltp/x;->d:I

    .line 391
    .line 392
    int-to-float v0, v0

    .line 393
    iget-object v3, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 394
    .line 395
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 396
    .line 397
    .line 398
    move-result v3

    .line 399
    mul-float/2addr v0, v3

    .line 400
    iget-object v3, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 401
    .line 402
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 403
    .line 404
    .line 405
    move-result v3

    .line 406
    iget v4, p0, Ltp/x;->e:I

    .line 407
    .line 408
    int-to-float v4, v4

    .line 409
    mul-float/2addr v3, v4

    .line 410
    cmpl-float v0, v0, v3

    .line 411
    .line 412
    const/4 v3, 0x0

    .line 413
    if-lez v0, :cond_1

    .line 414
    .line 415
    iget-object v0, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 416
    .line 417
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    .line 418
    .line 419
    .line 420
    move-result v0

    .line 421
    iget v4, p0, Ltp/x;->e:I

    .line 422
    .line 423
    int-to-float v4, v4

    .line 424
    div-float/2addr v0, v4

    .line 425
    iget-object v4, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 426
    .line 427
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    .line 428
    .line 429
    .line 430
    move-result v4

    .line 431
    iget v5, p0, Ltp/x;->d:I

    .line 432
    .line 433
    int-to-float v5, v5

    .line 434
    mul-float/2addr v5, v0

    .line 435
    sub-float/2addr v4, v5

    .line 436
    mul-float/2addr v4, v2

    .line 437
    goto :goto_1

    .line 438
    :cond_1
    iget-object v0, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 439
    .line 440
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 441
    .line 442
    .line 443
    move-result v0

    .line 444
    iget v4, p0, Ltp/x;->d:I

    .line 445
    .line 446
    int-to-float v4, v4

    .line 447
    div-float/2addr v0, v4

    .line 448
    iget-object v4, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 449
    .line 450
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    .line 451
    .line 452
    .line 453
    move-result v4

    .line 454
    iget v5, p0, Ltp/x;->e:I

    .line 455
    .line 456
    int-to-float v5, v5

    .line 457
    mul-float/2addr v5, v0

    .line 458
    sub-float/2addr v4, v5

    .line 459
    mul-float/2addr v4, v2

    .line 460
    move v6, v4

    .line 461
    move v4, v3

    .line 462
    move v3, v6

    .line 463
    :goto_1
    iget-object v5, p0, Ltp/x;->j:Landroid/graphics/Matrix;

    .line 464
    .line 465
    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 466
    .line 467
    .line 468
    iget-object v0, p0, Ltp/x;->j:Landroid/graphics/Matrix;

    .line 469
    .line 470
    add-float/2addr v4, v2

    .line 471
    float-to-int v4, v4

    .line 472
    int-to-float v4, v4

    .line 473
    iget v5, p0, Ltp/x;->r:F

    .line 474
    .line 475
    div-float/2addr v5, v1

    .line 476
    add-float/2addr v4, v5

    .line 477
    add-float/2addr v3, v2

    .line 478
    float-to-int v1, v3

    .line 479
    int-to-float v1, v1

    .line 480
    add-float/2addr v1, v5

    .line 481
    invoke-virtual {v0, v4, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 482
    .line 483
    .line 484
    goto :goto_2

    .line 485
    :pswitch_6
    iget-object v0, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 486
    .line 487
    iget-object v3, p0, Ltp/x;->b:Landroid/graphics/RectF;

    .line 488
    .line 489
    invoke-virtual {v0, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 490
    .line 491
    .line 492
    iget-object v0, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 493
    .line 494
    iget v3, p0, Ltp/x;->r:F

    .line 495
    .line 496
    int-to-float v1, v1

    .line 497
    div-float/2addr v3, v1

    .line 498
    invoke-virtual {v0, v3, v3}, Landroid/graphics/RectF;->inset(FF)V

    .line 499
    .line 500
    .line 501
    iget-object v0, p0, Ltp/x;->j:Landroid/graphics/Matrix;

    .line 502
    .line 503
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 504
    .line 505
    .line 506
    iget-object v0, p0, Ltp/x;->j:Landroid/graphics/Matrix;

    .line 507
    .line 508
    iget-object v1, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 509
    .line 510
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 511
    .line 512
    .line 513
    move-result v1

    .line 514
    iget v3, p0, Ltp/x;->d:I

    .line 515
    .line 516
    int-to-float v3, v3

    .line 517
    sub-float/2addr v1, v3

    .line 518
    mul-float/2addr v1, v2

    .line 519
    add-float/2addr v1, v2

    .line 520
    iget-object v3, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 521
    .line 522
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 523
    .line 524
    .line 525
    move-result v3

    .line 526
    iget v4, p0, Ltp/x;->e:I

    .line 527
    .line 528
    int-to-float v4, v4

    .line 529
    sub-float/2addr v3, v4

    .line 530
    mul-float/2addr v3, v2

    .line 531
    add-float/2addr v3, v2

    .line 532
    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 533
    .line 534
    .line 535
    :goto_2
    iget-object v0, p0, Ltp/x;->c:Landroid/graphics/RectF;

    .line 536
    .line 537
    iget-object v1, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 538
    .line 539
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 540
    .line 541
    .line 542
    const/4 v0, 0x1

    .line 543
    iput-boolean v0, p0, Ltp/x;->n:Z

    .line 544
    .line 545
    return-void

    .line 546
    nop

    .line 547
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final g(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-object v0, p0, Ltp/x;->p:[Z

    .line 2
    .line 3
    invoke-direct {p0, v0}, Ltp/x;->h([Z)Z

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
    iget v0, p0, Ltp/x;->o:F

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    cmpg-float v0, v0, v1

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    iget-object v0, p0, Ltp/x;->c:Landroid/graphics/RectF;

    .line 19
    .line 20
    iget v1, v0, Landroid/graphics/RectF;->left:F

    .line 21
    .line 22
    iget v2, v0, Landroid/graphics/RectF;->top:F

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    add-float/2addr v0, v1

    .line 29
    iget-object v3, p0, Ltp/x;->c:Landroid/graphics/RectF;

    .line 30
    .line 31
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    add-float/2addr v3, v2

    .line 36
    iget v4, p0, Ltp/x;->o:F

    .line 37
    .line 38
    iget-object v5, p0, Ltp/x;->p:[Z

    .line 39
    .line 40
    const/4 v6, 0x0

    .line 41
    aget-boolean v5, v5, v6

    .line 42
    .line 43
    if-nez v5, :cond_2

    .line 44
    .line 45
    iget-object v5, p0, Ltp/x;->k:Landroid/graphics/RectF;

    .line 46
    .line 47
    add-float v6, v1, v4

    .line 48
    .line 49
    add-float v7, v2, v4

    .line 50
    .line 51
    invoke-virtual {v5, v1, v2, v6, v7}, Landroid/graphics/RectF;->set(FFFF)V

    .line 52
    .line 53
    .line 54
    iget-object v5, p0, Ltp/x;->k:Landroid/graphics/RectF;

    .line 55
    .line 56
    iget-object v6, p0, Ltp/x;->g:Landroid/graphics/Paint;

    .line 57
    .line 58
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    iget-object v5, p0, Ltp/x;->p:[Z

    .line 62
    .line 63
    const/4 v6, 0x1

    .line 64
    aget-boolean v5, v5, v6

    .line 65
    .line 66
    if-nez v5, :cond_3

    .line 67
    .line 68
    iget-object v5, p0, Ltp/x;->k:Landroid/graphics/RectF;

    .line 69
    .line 70
    sub-float v6, v0, v4

    .line 71
    .line 72
    invoke-virtual {v5, v6, v2, v0, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 73
    .line 74
    .line 75
    iget-object v2, p0, Ltp/x;->k:Landroid/graphics/RectF;

    .line 76
    .line 77
    iget-object v5, p0, Ltp/x;->g:Landroid/graphics/Paint;

    .line 78
    .line 79
    invoke-virtual {p1, v2, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 80
    .line 81
    .line 82
    :cond_3
    iget-object v2, p0, Ltp/x;->p:[Z

    .line 83
    .line 84
    const/4 v5, 0x2

    .line 85
    aget-boolean v2, v2, v5

    .line 86
    .line 87
    if-nez v2, :cond_4

    .line 88
    .line 89
    iget-object v2, p0, Ltp/x;->k:Landroid/graphics/RectF;

    .line 90
    .line 91
    sub-float v5, v0, v4

    .line 92
    .line 93
    sub-float v6, v3, v4

    .line 94
    .line 95
    invoke-virtual {v2, v5, v6, v0, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Ltp/x;->k:Landroid/graphics/RectF;

    .line 99
    .line 100
    iget-object v2, p0, Ltp/x;->g:Landroid/graphics/Paint;

    .line 101
    .line 102
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 103
    .line 104
    .line 105
    :cond_4
    iget-object v0, p0, Ltp/x;->p:[Z

    .line 106
    .line 107
    const/4 v2, 0x3

    .line 108
    aget-boolean v0, v0, v2

    .line 109
    .line 110
    if-nez v0, :cond_5

    .line 111
    .line 112
    iget-object v0, p0, Ltp/x;->k:Landroid/graphics/RectF;

    .line 113
    .line 114
    sub-float v2, v3, v4

    .line 115
    .line 116
    add-float/2addr v4, v1

    .line 117
    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Ltp/x;->k:Landroid/graphics/RectF;

    .line 121
    .line 122
    iget-object v1, p0, Ltp/x;->g:Landroid/graphics/Paint;

    .line 123
    .line 124
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 125
    .line 126
    .line 127
    :cond_5
    return-void
.end method

.method private final h([Z)Z
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget-boolean v3, p1, v2

    .line 7
    .line 8
    if-eqz v3, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    const/4 p1, 0x1

    .line 15
    return p1
.end method

.method private final j(Landroid/graphics/Canvas;)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Ltp/x;->p:[Z

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ltp/x;->h([Z)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget v1, v0, Ltp/x;->o:F

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    cmpg-float v1, v1, v2

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    iget-object v1, v0, Ltp/x;->c:Landroid/graphics/RectF;

    .line 21
    .line 22
    iget v8, v1, Landroid/graphics/RectF;->left:F

    .line 23
    .line 24
    iget v9, v1, Landroid/graphics/RectF;->top:F

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    add-float/2addr v1, v8

    .line 31
    iget-object v2, v0, Ltp/x;->c:Landroid/graphics/RectF;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    add-float v16, v9, v2

    .line 38
    .line 39
    iget v15, v0, Ltp/x;->o:F

    .line 40
    .line 41
    iget v2, v0, Ltp/x;->r:F

    .line 42
    .line 43
    const/4 v10, 0x2

    .line 44
    int-to-float v3, v10

    .line 45
    div-float v17, v2, v3

    .line 46
    .line 47
    iget-object v2, v0, Ltp/x;->p:[Z

    .line 48
    .line 49
    const/4 v3, 0x0

    .line 50
    aget-boolean v2, v2, v3

    .line 51
    .line 52
    if-nez v2, :cond_2

    .line 53
    .line 54
    sub-float v3, v8, v17

    .line 55
    .line 56
    add-float v5, v8, v15

    .line 57
    .line 58
    iget-object v7, v0, Ltp/x;->i:Landroid/graphics/Paint;

    .line 59
    .line 60
    move-object/from16 v2, p1

    .line 61
    .line 62
    move v4, v9

    .line 63
    move v6, v9

    .line 64
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 65
    .line 66
    .line 67
    sub-float v4, v9, v17

    .line 68
    .line 69
    add-float v6, v9, v15

    .line 70
    .line 71
    iget-object v7, v0, Ltp/x;->i:Landroid/graphics/Paint;

    .line 72
    .line 73
    move v3, v8

    .line 74
    move v5, v8

    .line 75
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 76
    .line 77
    .line 78
    :cond_2
    iget-object v2, v0, Ltp/x;->p:[Z

    .line 79
    .line 80
    const/4 v3, 0x1

    .line 81
    aget-boolean v2, v2, v3

    .line 82
    .line 83
    if-nez v2, :cond_3

    .line 84
    .line 85
    sub-float v2, v1, v15

    .line 86
    .line 87
    sub-float v3, v2, v17

    .line 88
    .line 89
    iget-object v7, v0, Ltp/x;->i:Landroid/graphics/Paint;

    .line 90
    .line 91
    move-object/from16 v2, p1

    .line 92
    .line 93
    move v4, v9

    .line 94
    move v5, v1

    .line 95
    move v6, v9

    .line 96
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 97
    .line 98
    .line 99
    sub-float v4, v9, v17

    .line 100
    .line 101
    add-float v6, v9, v15

    .line 102
    .line 103
    iget-object v7, v0, Ltp/x;->i:Landroid/graphics/Paint;

    .line 104
    .line 105
    move v3, v1

    .line 106
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 107
    .line 108
    .line 109
    :cond_3
    iget-object v2, v0, Ltp/x;->p:[Z

    .line 110
    .line 111
    aget-boolean v2, v2, v10

    .line 112
    .line 113
    if-nez v2, :cond_4

    .line 114
    .line 115
    sub-float v2, v1, v15

    .line 116
    .line 117
    sub-float v11, v2, v17

    .line 118
    .line 119
    add-float v13, v1, v17

    .line 120
    .line 121
    iget-object v2, v0, Ltp/x;->i:Landroid/graphics/Paint;

    .line 122
    .line 123
    move-object/from16 v10, p1

    .line 124
    .line 125
    move/from16 v12, v16

    .line 126
    .line 127
    move/from16 v14, v16

    .line 128
    .line 129
    move v9, v15

    .line 130
    move-object v15, v2

    .line 131
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 132
    .line 133
    .line 134
    sub-float v4, v16, v9

    .line 135
    .line 136
    iget-object v7, v0, Ltp/x;->i:Landroid/graphics/Paint;

    .line 137
    .line 138
    move-object/from16 v2, p1

    .line 139
    .line 140
    move v3, v1

    .line 141
    move v5, v1

    .line 142
    move/from16 v6, v16

    .line 143
    .line 144
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 145
    .line 146
    .line 147
    goto :goto_0

    .line 148
    :cond_4
    move v9, v15

    .line 149
    :goto_0
    iget-object v1, v0, Ltp/x;->p:[Z

    .line 150
    .line 151
    const/4 v2, 0x3

    .line 152
    aget-boolean v1, v1, v2

    .line 153
    .line 154
    if-nez v1, :cond_5

    .line 155
    .line 156
    sub-float v11, v8, v17

    .line 157
    .line 158
    add-float v13, v8, v9

    .line 159
    .line 160
    iget-object v15, v0, Ltp/x;->i:Landroid/graphics/Paint;

    .line 161
    .line 162
    move-object/from16 v10, p1

    .line 163
    .line 164
    move/from16 v12, v16

    .line 165
    .line 166
    move/from16 v14, v16

    .line 167
    .line 168
    invoke-virtual/range {v10 .. v15}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 169
    .line 170
    .line 171
    sub-float v4, v16, v9

    .line 172
    .line 173
    iget-object v7, v0, Ltp/x;->i:Landroid/graphics/Paint;

    .line 174
    .line 175
    move-object/from16 v2, p1

    .line 176
    .line 177
    move v3, v8

    .line 178
    move v5, v8

    .line 179
    move/from16 v6, v16

    .line 180
    .line 181
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 182
    .line 183
    .line 184
    :cond_5
    return-void
.end method

.method private final k([Z)Z
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    move v2, v1

    .line 4
    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    .line 6
    aget-boolean v3, p1, v2

    .line 7
    .line 8
    if-eqz v3, :cond_0

    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    return p1

    .line 12
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_1
    return v1
.end method


# virtual methods
.method public final a(F)Ltp/x;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput p1, p0, Ltp/x;->r:F

    .line 2
    .line 3
    iget-object v0, p0, Ltp/x;->i:Landroid/graphics/Paint;

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6
    .line 7
    .line 8
    return-object p0
.end method

.method public final b(FFFF)Ltp/x;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    const/4 v3, 0x1

    .line 48
    if-le v2, v3, :cond_0

    .line 49
    .line 50
    goto :goto_5

    .line 51
    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    if-nez v2, :cond_2

    .line 56
    .line 57
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Ljava/lang/Number;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    if-nez v2, :cond_7

    .line 76
    .line 77
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 78
    .line 79
    .line 80
    move-result v2

    .line 81
    if-nez v2, :cond_7

    .line 82
    .line 83
    cmpg-float v2, v0, v1

    .line 84
    .line 85
    if-gez v2, :cond_1

    .line 86
    .line 87
    goto :goto_5

    .line 88
    :cond_1
    iput v0, p0, Ltp/x;->o:F

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    iput v1, p0, Ltp/x;->o:F

    .line 92
    .line 93
    :goto_0
    iget-object v0, p0, Ltp/x;->p:[Z

    .line 94
    .line 95
    cmpl-float p1, p1, v1

    .line 96
    .line 97
    const/4 v2, 0x0

    .line 98
    if-lez p1, :cond_3

    .line 99
    .line 100
    move p1, v3

    .line 101
    goto :goto_1

    .line 102
    :cond_3
    move p1, v2

    .line 103
    :goto_1
    aput-boolean p1, v0, v2

    .line 104
    .line 105
    cmpl-float p1, p2, v1

    .line 106
    .line 107
    if-lez p1, :cond_4

    .line 108
    .line 109
    move p1, v3

    .line 110
    goto :goto_2

    .line 111
    :cond_4
    move p1, v2

    .line 112
    :goto_2
    aput-boolean p1, v0, v3

    .line 113
    .line 114
    cmpl-float p1, p3, v1

    .line 115
    .line 116
    if-lez p1, :cond_5

    .line 117
    .line 118
    move p1, v3

    .line 119
    goto :goto_3

    .line 120
    :cond_5
    move p1, v2

    .line 121
    :goto_3
    const/4 p2, 0x2

    .line 122
    aput-boolean p1, v0, p2

    .line 123
    .line 124
    cmpl-float p1, p4, v1

    .line 125
    .line 126
    if-lez p1, :cond_6

    .line 127
    .line 128
    goto :goto_4

    .line 129
    :cond_6
    move v3, v2

    .line 130
    :goto_4
    const/4 p1, 0x3

    .line 131
    aput-boolean v3, v0, p1

    .line 132
    .line 133
    :cond_7
    :goto_5
    return-object p0
.end method

.method public final c(I)Ltp/x;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Ltp/x;->d(Landroid/content/res/ColorStateList;)Ltp/x;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final d(Landroid/content/res/ColorStateList;)Ltp/x;
    .locals 3
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const-string v1, "valueOf(0)"

    .line 9
    .line 10
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    iput-object p1, p0, Ltp/x;->s:Landroid/content/res/ColorStateList;

    .line 14
    .line 15
    iget-object v1, p0, Ltp/x;->i:Landroid/graphics/Paint;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p1, v2, v0}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    .line 27
    .line 28
    return-object p0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "canvas"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Ltp/x;->n:Z

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    new-instance v0, Landroid/graphics/BitmapShader;

    .line 11
    .line 12
    iget-object v1, p0, Ltp/x;->a:Landroid/graphics/Bitmap;

    .line 13
    .line 14
    iget-object v2, p0, Ltp/x;->l:Landroid/graphics/Shader$TileMode;

    .line 15
    .line 16
    iget-object v3, p0, Ltp/x;->m:Landroid/graphics/Shader$TileMode;

    .line 17
    .line 18
    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Ltp/x;->l:Landroid/graphics/Shader$TileMode;

    .line 22
    .line 23
    sget-object v2, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 24
    .line 25
    if-ne v1, v2, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Ltp/x;->m:Landroid/graphics/Shader$TileMode;

    .line 28
    .line 29
    if-ne v1, v2, :cond_0

    .line 30
    .line 31
    iget-object v1, p0, Ltp/x;->j:Landroid/graphics/Matrix;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v1, p0, Ltp/x;->g:Landroid/graphics/Paint;

    .line 37
    .line 38
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Ltp/x;->n:Z

    .line 43
    .line 44
    :cond_1
    iget-boolean v0, p0, Ltp/x;->q:Z

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    iget v0, p0, Ltp/x;->r:F

    .line 50
    .line 51
    cmpl-float v0, v0, v1

    .line 52
    .line 53
    if-lez v0, :cond_2

    .line 54
    .line 55
    iget-object v0, p0, Ltp/x;->c:Landroid/graphics/RectF;

    .line 56
    .line 57
    iget-object v1, p0, Ltp/x;->g:Landroid/graphics/Paint;

    .line 58
    .line 59
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 63
    .line 64
    iget-object v1, p0, Ltp/x;->i:Landroid/graphics/Paint;

    .line 65
    .line 66
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget-object v0, p0, Ltp/x;->c:Landroid/graphics/RectF;

    .line 71
    .line 72
    iget-object v1, p0, Ltp/x;->g:Landroid/graphics/Paint;

    .line 73
    .line 74
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    iget-object v0, p0, Ltp/x;->p:[Z

    .line 79
    .line 80
    invoke-direct {p0, v0}, Ltp/x;->k([Z)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_5

    .line 85
    .line 86
    iget v0, p0, Ltp/x;->o:F

    .line 87
    .line 88
    iget v2, p0, Ltp/x;->r:F

    .line 89
    .line 90
    cmpl-float v1, v2, v1

    .line 91
    .line 92
    if-lez v1, :cond_4

    .line 93
    .line 94
    iget-object v1, p0, Ltp/x;->c:Landroid/graphics/RectF;

    .line 95
    .line 96
    iget-object v2, p0, Ltp/x;->g:Landroid/graphics/Paint;

    .line 97
    .line 98
    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 99
    .line 100
    .line 101
    iget-object v1, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 102
    .line 103
    iget-object v2, p0, Ltp/x;->i:Landroid/graphics/Paint;

    .line 104
    .line 105
    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 106
    .line 107
    .line 108
    invoke-direct {p0, p1}, Ltp/x;->g(Landroid/graphics/Canvas;)V

    .line 109
    .line 110
    .line 111
    invoke-direct {p0, p1}, Ltp/x;->j(Landroid/graphics/Canvas;)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_4
    iget-object v1, p0, Ltp/x;->c:Landroid/graphics/RectF;

    .line 116
    .line 117
    iget-object v2, p0, Ltp/x;->g:Landroid/graphics/Paint;

    .line 118
    .line 119
    invoke-virtual {p1, v1, v0, v0, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 120
    .line 121
    .line 122
    invoke-direct {p0, p1}, Ltp/x;->g(Landroid/graphics/Canvas;)V

    .line 123
    .line 124
    .line 125
    goto :goto_0

    .line 126
    :cond_5
    iget-object v0, p0, Ltp/x;->c:Landroid/graphics/RectF;

    .line 127
    .line 128
    iget-object v2, p0, Ltp/x;->g:Landroid/graphics/Paint;

    .line 129
    .line 130
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 131
    .line 132
    .line 133
    iget v0, p0, Ltp/x;->r:F

    .line 134
    .line 135
    cmpl-float v0, v0, v1

    .line 136
    .line 137
    if-lez v0, :cond_6

    .line 138
    .line 139
    iget-object v0, p0, Ltp/x;->h:Landroid/graphics/RectF;

    .line 140
    .line 141
    iget-object v1, p0, Ltp/x;->i:Landroid/graphics/Paint;

    .line 142
    .line 143
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 144
    .line 145
    .line 146
    :cond_6
    :goto_0
    return-void
.end method

.method public final e(Landroid/widget/ImageView$ScaleType;)Ltp/x;
    .locals 1
    .param p1    # Landroid/widget/ImageView$ScaleType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Ltp/x;->v:Landroid/widget/ImageView$ScaleType;

    .line 4
    .line 5
    :cond_0
    iget-object v0, p0, Ltp/x;->t:Landroid/widget/ImageView$ScaleType;

    .line 6
    .line 7
    if-eq v0, p1, :cond_1

    .line 8
    .line 9
    iput-object p1, p0, Ltp/x;->t:Landroid/widget/ImageView$ScaleType;

    .line 10
    .line 11
    invoke-direct {p0}, Ltp/x;->f()V

    .line 12
    .line 13
    .line 14
    :cond_1
    return-object p0
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget-object v0, p0, Ltp/x;->g:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Ltp/x;->g:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget v0, p0, Ltp/x;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget v0, p0, Ltp/x;->d:I

    .line 2
    .line 3
    return v0
.end method

.method public getOpacity()I
    .locals 1
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    const/4 v0, -0x3

    .line 2
    return v0
.end method

.method public final i(F)Ltp/x;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p1, p1, p1}, Ltp/x;->b(FFFF)Ltp/x;

    .line 2
    .line 3
    .line 4
    return-object p0
.end method

.method public isStateful()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ltp/x;->s:Landroid/content/res/ColorStateList;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "bounds"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Ltp/x;->b:Landroid/graphics/RectF;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p0}, Ltp/x;->f()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 2
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Ltp/x;->s:Landroid/content/res/ColorStateList;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Ltp/x;->i:Landroid/graphics/Paint;

    .line 14
    .line 15
    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eq v1, v0, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Ltp/x;->i:Landroid/graphics/Paint;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    .line 25
    .line 26
    const/4 p1, 0x1

    .line 27
    return p1

    .line 28
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onStateChange([I)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Ltp/x;->g:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Ltp/x;->g:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    iget-object v0, p0, Ltp/x;->g:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setFilterBitmap(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Ltp/x;->g:Landroid/graphics/Paint;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 7
    .line 8
    .line 9
    return-void
.end method
