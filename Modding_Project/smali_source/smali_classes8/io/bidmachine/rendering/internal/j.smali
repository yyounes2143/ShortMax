.class public final Lio/bidmachine/rendering/internal/j;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/rendering/internal/j$a;,
        Lio/bidmachine/rendering/internal/j$c;,
        Lio/bidmachine/rendering/internal/j$b;,
        Lio/bidmachine/rendering/internal/j$d;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final o:Lio/bidmachine/rendering/internal/j$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final p:Lio/bidmachine/rendering/internal/j$c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Lio/bidmachine/rendering/internal/j$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Landroid/graphics/RectF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private e:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:Landroid/graphics/ColorFilter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private h:Landroid/graphics/BlendModeColorFilter;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private i:I

.field private j:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private k:Z

.field private l:Landroid/graphics/Path;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private m:Z

.field private n:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/bidmachine/rendering/internal/j$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lio/bidmachine/rendering/internal/j$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/bidmachine/rendering/internal/j;->o:Lio/bidmachine/rendering/internal/j$a;

    .line 8
    .line 9
    sget-object v0, Lio/bidmachine/rendering/internal/j$c;->a:Lio/bidmachine/rendering/internal/j$c;

    .line 10
    .line 11
    sput-object v0, Lio/bidmachine/rendering/internal/j;->p:Lio/bidmachine/rendering/internal/j$c;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 2
    new-instance v0, Lio/bidmachine/rendering/internal/j$b;

    sget-object v1, Lio/bidmachine/rendering/internal/j;->p:Lio/bidmachine/rendering/internal/j$c;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/bidmachine/rendering/internal/j$b;-><init>(Lio/bidmachine/rendering/internal/j$c;[I)V

    invoke-direct {p0, v0}, Lio/bidmachine/rendering/internal/j;-><init>(Lio/bidmachine/rendering/internal/j$b;)V

    return-void
.end method

.method private constructor <init>(Lio/bidmachine/rendering/internal/j$b;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 5
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lio/bidmachine/rendering/internal/j;->b:Landroid/graphics/Path;

    .line 6
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lio/bidmachine/rendering/internal/j;->c:Landroid/graphics/RectF;

    .line 7
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lio/bidmachine/rendering/internal/j;->d:Landroid/graphics/Paint;

    const/16 v0, 0xff

    .line 8
    iput v0, p0, Lio/bidmachine/rendering/internal/j;->i:I

    .line 9
    iput-boolean v1, p0, Lio/bidmachine/rendering/internal/j;->m:Z

    .line 10
    iput-object p1, p0, Lio/bidmachine/rendering/internal/j;->a:Lio/bidmachine/rendering/internal/j$b;

    .line 11
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/j;->o()V

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/rendering/internal/j$b;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/rendering/internal/j;-><init>(Lio/bidmachine/rendering/internal/j$b;)V

    return-void
.end method

.method public constructor <init>(Lio/bidmachine/rendering/internal/j$c;[I)V
    .locals 1
    .param p1    # Lio/bidmachine/rendering/internal/j$c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation

        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "orientation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lio/bidmachine/rendering/internal/j$b;

    invoke-direct {v0, p1, p2}, Lio/bidmachine/rendering/internal/j$b;-><init>(Lio/bidmachine/rendering/internal/j$c;[I)V

    invoke-direct {p0, v0}, Lio/bidmachine/rendering/internal/j;-><init>(Lio/bidmachine/rendering/internal/j$b;)V

    return-void
.end method

.method private final a(I)I
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/j;->i:I

    .line 2
    .line 3
    shr-int/lit8 v1, v0, 0x7

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    mul-int/2addr p1, v0

    .line 7
    shr-int/lit8 p1, p1, 0x8

    .line 8
    .line 9
    return p1
.end method

.method private final b(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;
    .locals 2

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    if-nez p3, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 7
    .line 8
    const/16 v1, 0x1d

    .line 9
    .line 10
    if-lt v0, v1, :cond_2

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p2, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-static {p1}, Ltp/l;->a(Landroid/graphics/BlendModeColorFilter;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-ne v0, p2, :cond_1

    .line 28
    .line 29
    invoke-static {p1}, Ltp/m;->a(Landroid/graphics/BlendModeColorFilter;)Landroid/graphics/BlendMode;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eq v0, p3, :cond_2

    .line 34
    .line 35
    :cond_1
    invoke-static {p2, p3}, Landroidx/compose/ui/graphics/a1;->a(ILandroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    :cond_2
    return-object p1

    .line 40
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 41
    return-object p1
.end method

.method private final c(Lio/bidmachine/rendering/internal/j$b;)Landroid/graphics/Path;
    .locals 9

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j;->l:Landroid/graphics/Path;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v1, p0, Lio/bidmachine/rendering/internal/j;->m:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lio/bidmachine/rendering/internal/j;->m:Z

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getLevel()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    int-to-float v1, v1

    .line 18
    const/high16 v2, 0x43b40000    # 360.0f

    .line 19
    .line 20
    mul-float/2addr v1, v2

    .line 21
    const v3, 0x461c4000    # 10000.0f

    .line 22
    .line 23
    .line 24
    div-float/2addr v1, v3

    .line 25
    new-instance v3, Landroid/graphics/RectF;

    .line 26
    .line 27
    iget-object v4, p0, Lio/bidmachine/rendering/internal/j;->c:Landroid/graphics/RectF;

    .line 28
    .line 29
    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    const/high16 v5, 0x40000000    # 2.0f

    .line 37
    .line 38
    div-float/2addr v4, v5

    .line 39
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 40
    .line 41
    .line 42
    move-result v6

    .line 43
    div-float/2addr v6, v5

    .line 44
    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/j$b;->b()I

    .line 45
    .line 46
    .line 47
    move-result v5

    .line 48
    const/4 v7, -0x1

    .line 49
    if-eq v5, v7, :cond_1

    .line 50
    .line 51
    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/j$b;->b()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    int-to-float v5, v5

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 58
    .line 59
    .line 60
    move-result v5

    .line 61
    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/j$b;->c()F

    .line 62
    .line 63
    .line 64
    move-result v8

    .line 65
    div-float/2addr v5, v8

    .line 66
    :goto_0
    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/j$b;->B()I

    .line 67
    .line 68
    .line 69
    move-result v8

    .line 70
    if-eq v8, v7, :cond_2

    .line 71
    .line 72
    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/j$b;->B()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    int-to-float p1, p1

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 79
    .line 80
    .line 81
    move-result v7

    .line 82
    invoke-virtual {p1}, Lio/bidmachine/rendering/internal/j$b;->C()F

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    div-float p1, v7, p1

    .line 87
    .line 88
    :goto_1
    new-instance v7, Landroid/graphics/RectF;

    .line 89
    .line 90
    invoke-direct {v7, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 91
    .line 92
    .line 93
    sub-float v3, v4, p1

    .line 94
    .line 95
    sub-float v8, v6, p1

    .line 96
    .line 97
    invoke-virtual {v7, v3, v8}, Landroid/graphics/RectF;->inset(FF)V

    .line 98
    .line 99
    .line 100
    new-instance v3, Landroid/graphics/RectF;

    .line 101
    .line 102
    invoke-direct {v3, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 103
    .line 104
    .line 105
    neg-float v8, v5

    .line 106
    invoke-virtual {v3, v8, v8}, Landroid/graphics/RectF;->inset(FF)V

    .line 107
    .line 108
    .line 109
    iget-object v8, p0, Lio/bidmachine/rendering/internal/j;->l:Landroid/graphics/Path;

    .line 110
    .line 111
    if-eqz v8, :cond_3

    .line 112
    .line 113
    invoke-virtual {v8}, Landroid/graphics/Path;->reset()V

    .line 114
    .line 115
    .line 116
    goto :goto_2

    .line 117
    :cond_3
    new-instance v8, Landroid/graphics/Path;

    .line 118
    .line 119
    invoke-direct {v8}, Landroid/graphics/Path;-><init>()V

    .line 120
    .line 121
    .line 122
    iput-object v8, p0, Lio/bidmachine/rendering/internal/j;->l:Landroid/graphics/Path;

    .line 123
    .line 124
    :goto_2
    cmpg-float v2, v1, v2

    .line 125
    .line 126
    if-gez v2, :cond_4

    .line 127
    .line 128
    const/high16 v2, -0x3c4c0000    # -360.0f

    .line 129
    .line 130
    cmpl-float v2, v1, v2

    .line 131
    .line 132
    if-lez v2, :cond_4

    .line 133
    .line 134
    sget-object v2, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 135
    .line 136
    invoke-virtual {v8, v2}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 137
    .line 138
    .line 139
    add-float/2addr v4, p1

    .line 140
    invoke-virtual {v8, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 141
    .line 142
    .line 143
    add-float/2addr v4, v5

    .line 144
    invoke-virtual {v8, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 145
    .line 146
    .line 147
    const/4 p1, 0x0

    .line 148
    invoke-virtual {v8, v3, p1, v1, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 149
    .line 150
    .line 151
    neg-float p1, v1

    .line 152
    invoke-virtual {v8, v7, v1, p1, v0}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v8}, Landroid/graphics/Path;->close()V

    .line 156
    .line 157
    .line 158
    goto :goto_3

    .line 159
    :cond_4
    sget-object p1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 160
    .line 161
    invoke-virtual {v8, v3, p1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 162
    .line 163
    .line 164
    sget-object p1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 165
    .line 166
    invoke-virtual {v8, v7, p1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 167
    .line 168
    .line 169
    :goto_3
    sget-object p1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 170
    .line 171
    invoke-virtual {v8, v3, p1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 172
    .line 173
    .line 174
    sget-object p1, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    .line 175
    .line 176
    invoke-virtual {v8, v7, p1}, Landroid/graphics/Path;->addOval(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    .line 177
    .line 178
    .line 179
    return-object v8
.end method

.method private final d()V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j;->a:Lio/bidmachine/rendering/internal/j$b;

    .line 2
    .line 3
    iget-boolean v1, p0, Lio/bidmachine/rendering/internal/j;->m:Z

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/j;->l()Z

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lio/bidmachine/rendering/internal/j;->b:Landroid/graphics/Path;

    .line 11
    .line 12
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/j$b;->J()[F

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v1, p0, Lio/bidmachine/rendering/internal/j;->b:Landroid/graphics/Path;

    .line 22
    .line 23
    iget-object v2, p0, Lio/bidmachine/rendering/internal/j;->c:Landroid/graphics/RectF;

    .line 24
    .line 25
    sget-object v3, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 26
    .line 27
    invoke-virtual {v1, v2, v0, v3}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lio/bidmachine/rendering/internal/j;->m:Z

    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method public static synthetic h(Lio/bidmachine/rendering/internal/j;FIILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/high16 p1, 0x3f000000    # 0.5f

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    const/4 p2, 0x0

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/rendering/internal/j;->f(FI)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public static synthetic i(Lio/bidmachine/rendering/internal/j;IIFFILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p6, p5, 0x4

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p6, :cond_0

    .line 5
    .line 6
    move p3, v0

    .line 7
    :cond_0
    and-int/lit8 p5, p5, 0x8

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    move p4, v0

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/bidmachine/rendering/internal/j;->g(IIFF)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private final k(IIFF)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j;->f:Landroid/graphics/Paint;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Landroid/graphics/Paint;

    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lio/bidmachine/rendering/internal/j;->f:Landroid/graphics/Paint;

    .line 12
    .line 13
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    int-to-float p1, p1

    .line 19
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 23
    .line 24
    .line 25
    const/4 p1, 0x0

    .line 26
    cmpl-float p2, p3, p1

    .line 27
    .line 28
    if-lez p2, :cond_1

    .line 29
    .line 30
    new-instance p2, Landroid/graphics/DashPathEffect;

    .line 31
    .line 32
    const/4 v2, 0x2

    .line 33
    new-array v2, v2, [F

    .line 34
    .line 35
    const/4 v3, 0x0

    .line 36
    aput p3, v2, v3

    .line 37
    .line 38
    aput p4, v2, v1

    .line 39
    .line 40
    invoke-direct {p2, v2, p1}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    const/4 p2, 0x0

    .line 45
    :goto_0
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 46
    .line 47
    .line 48
    iput-boolean v1, p0, Lio/bidmachine/rendering/internal/j;->k:Z

    .line 49
    .line 50
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private final l()Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lio/bidmachine/rendering/internal/j;->k:Z

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_9

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v0, Lio/bidmachine/rendering/internal/j;->k:Z

    .line 10
    .line 11
    iget-object v1, v0, Lio/bidmachine/rendering/internal/j;->f:Landroid/graphics/Paint;

    .line 12
    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    const-string v4, "getBounds()"

    .line 18
    .line 19
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v4, 0x0

    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/high16 v5, 0x3f000000    # 0.5f

    .line 30
    .line 31
    mul-float/2addr v1, v5

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    move v1, v4

    .line 34
    :goto_0
    iget-object v5, v0, Lio/bidmachine/rendering/internal/j;->a:Lio/bidmachine/rendering/internal/j$b;

    .line 35
    .line 36
    iget-object v6, v0, Lio/bidmachine/rendering/internal/j;->c:Landroid/graphics/RectF;

    .line 37
    .line 38
    iget v7, v3, Landroid/graphics/Rect;->left:I

    .line 39
    .line 40
    int-to-float v7, v7

    .line 41
    add-float/2addr v7, v1

    .line 42
    iget v8, v3, Landroid/graphics/Rect;->top:I

    .line 43
    .line 44
    int-to-float v8, v8

    .line 45
    add-float/2addr v8, v1

    .line 46
    iget v9, v3, Landroid/graphics/Rect;->right:I

    .line 47
    .line 48
    int-to-float v9, v9

    .line 49
    sub-float/2addr v9, v1

    .line 50
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 51
    .line 52
    int-to-float v3, v3

    .line 53
    sub-float/2addr v3, v1

    .line 54
    invoke-virtual {v6, v7, v8, v9, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5}, Lio/bidmachine/rendering/internal/j$b;->u()[I

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    if-eqz v1, :cond_9

    .line 62
    .line 63
    iget-object v3, v0, Lio/bidmachine/rendering/internal/j;->c:Landroid/graphics/RectF;

    .line 64
    .line 65
    invoke-virtual {v5}, Lio/bidmachine/rendering/internal/j$b;->z()I

    .line 66
    .line 67
    .line 68
    move-result v6

    .line 69
    if-nez v6, :cond_1

    .line 70
    .line 71
    invoke-virtual {v5}, Lio/bidmachine/rendering/internal/j$b;->F()Lio/bidmachine/rendering/internal/j$c;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    sget-object v6, Lio/bidmachine/rendering/internal/j$d;->a:[I

    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    aget v4, v6, v4

    .line 82
    .line 83
    const/high16 v6, 0x3f800000    # 1.0f

    .line 84
    .line 85
    packed-switch v4, :pswitch_data_0

    .line 86
    .line 87
    .line 88
    iget v4, v3, Landroid/graphics/RectF;->left:F

    .line 89
    .line 90
    iget v7, v3, Landroid/graphics/RectF;->top:F

    .line 91
    .line 92
    iget v8, v3, Landroid/graphics/RectF;->right:F

    .line 93
    .line 94
    mul-float/2addr v8, v6

    .line 95
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    .line 96
    .line 97
    :goto_1
    mul-float/2addr v3, v6

    .line 98
    move v14, v3

    .line 99
    move v11, v4

    .line 100
    move v12, v7

    .line 101
    move v13, v8

    .line 102
    goto :goto_4

    .line 103
    :pswitch_0
    iget v4, v3, Landroid/graphics/RectF;->left:F

    .line 104
    .line 105
    iget v7, v3, Landroid/graphics/RectF;->top:F

    .line 106
    .line 107
    iget v3, v3, Landroid/graphics/RectF;->right:F

    .line 108
    .line 109
    :goto_2
    mul-float/2addr v3, v6

    .line 110
    move v13, v3

    .line 111
    move v11, v4

    .line 112
    move v12, v7

    .line 113
    move v14, v12

    .line 114
    goto :goto_4

    .line 115
    :pswitch_1
    iget v4, v3, Landroid/graphics/RectF;->left:F

    .line 116
    .line 117
    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    .line 118
    .line 119
    iget v8, v3, Landroid/graphics/RectF;->right:F

    .line 120
    .line 121
    mul-float/2addr v8, v6

    .line 122
    iget v3, v3, Landroid/graphics/RectF;->top:F

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :pswitch_2
    iget v4, v3, Landroid/graphics/RectF;->left:F

    .line 126
    .line 127
    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    .line 128
    .line 129
    iget v3, v3, Landroid/graphics/RectF;->top:F

    .line 130
    .line 131
    :goto_3
    mul-float/2addr v3, v6

    .line 132
    move v14, v3

    .line 133
    move v11, v4

    .line 134
    move v13, v11

    .line 135
    move v12, v7

    .line 136
    goto :goto_4

    .line 137
    :pswitch_3
    iget v4, v3, Landroid/graphics/RectF;->right:F

    .line 138
    .line 139
    iget v7, v3, Landroid/graphics/RectF;->bottom:F

    .line 140
    .line 141
    iget v8, v3, Landroid/graphics/RectF;->left:F

    .line 142
    .line 143
    mul-float/2addr v8, v6

    .line 144
    iget v3, v3, Landroid/graphics/RectF;->top:F

    .line 145
    .line 146
    goto :goto_1

    .line 147
    :pswitch_4
    iget v4, v3, Landroid/graphics/RectF;->right:F

    .line 148
    .line 149
    iget v7, v3, Landroid/graphics/RectF;->top:F

    .line 150
    .line 151
    iget v3, v3, Landroid/graphics/RectF;->left:F

    .line 152
    .line 153
    goto :goto_2

    .line 154
    :pswitch_5
    iget v4, v3, Landroid/graphics/RectF;->right:F

    .line 155
    .line 156
    iget v7, v3, Landroid/graphics/RectF;->top:F

    .line 157
    .line 158
    iget v8, v3, Landroid/graphics/RectF;->left:F

    .line 159
    .line 160
    mul-float/2addr v8, v6

    .line 161
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :pswitch_6
    iget v4, v3, Landroid/graphics/RectF;->left:F

    .line 165
    .line 166
    iget v7, v3, Landroid/graphics/RectF;->top:F

    .line 167
    .line 168
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    .line 169
    .line 170
    goto :goto_3

    .line 171
    :goto_4
    iget-object v3, v0, Lio/bidmachine/rendering/internal/j;->d:Landroid/graphics/Paint;

    .line 172
    .line 173
    new-instance v4, Landroid/graphics/LinearGradient;

    .line 174
    .line 175
    invoke-virtual {v5}, Lio/bidmachine/rendering/internal/j$b;->H()[F

    .line 176
    .line 177
    .line 178
    move-result-object v16

    .line 179
    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 180
    .line 181
    move-object v10, v4

    .line 182
    move-object v15, v1

    .line 183
    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 187
    .line 188
    .line 189
    goto/16 :goto_a

    .line 190
    .line 191
    :cond_1
    invoke-virtual {v5}, Lio/bidmachine/rendering/internal/j$b;->z()I

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    const/4 v7, 0x2

    .line 196
    if-ne v6, v2, :cond_7

    .line 197
    .line 198
    iget v6, v3, Landroid/graphics/RectF;->left:F

    .line 199
    .line 200
    iget v8, v3, Landroid/graphics/RectF;->right:F

    .line 201
    .line 202
    sub-float/2addr v8, v6

    .line 203
    invoke-virtual {v5}, Lio/bidmachine/rendering/internal/j$b;->r()F

    .line 204
    .line 205
    .line 206
    move-result v9

    .line 207
    mul-float/2addr v8, v9

    .line 208
    add-float v11, v6, v8

    .line 209
    .line 210
    iget v6, v3, Landroid/graphics/RectF;->top:F

    .line 211
    .line 212
    iget v8, v3, Landroid/graphics/RectF;->bottom:F

    .line 213
    .line 214
    sub-float/2addr v8, v6

    .line 215
    invoke-virtual {v5}, Lio/bidmachine/rendering/internal/j$b;->s()F

    .line 216
    .line 217
    .line 218
    move-result v9

    .line 219
    mul-float/2addr v8, v9

    .line 220
    add-float v12, v6, v8

    .line 221
    .line 222
    invoke-virtual {v5}, Lio/bidmachine/rendering/internal/j$b;->x()F

    .line 223
    .line 224
    .line 225
    move-result v6

    .line 226
    invoke-virtual {v5}, Lio/bidmachine/rendering/internal/j$b;->y()I

    .line 227
    .line 228
    .line 229
    move-result v8

    .line 230
    if-ne v8, v2, :cond_4

    .line 231
    .line 232
    invoke-virtual {v5}, Lio/bidmachine/rendering/internal/j$b;->e()I

    .line 233
    .line 234
    .line 235
    move-result v7

    .line 236
    if-ltz v7, :cond_2

    .line 237
    .line 238
    invoke-virtual {v5}, Lio/bidmachine/rendering/internal/j$b;->e()I

    .line 239
    .line 240
    .line 241
    move-result v7

    .line 242
    int-to-float v7, v7

    .line 243
    goto :goto_5

    .line 244
    :cond_2
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 245
    .line 246
    .line 247
    move-result v7

    .line 248
    :goto_5
    invoke-virtual {v5}, Lio/bidmachine/rendering/internal/j$b;->A()I

    .line 249
    .line 250
    .line 251
    move-result v8

    .line 252
    if-ltz v8, :cond_3

    .line 253
    .line 254
    invoke-virtual {v5}, Lio/bidmachine/rendering/internal/j$b;->A()I

    .line 255
    .line 256
    .line 257
    move-result v3

    .line 258
    int-to-float v3, v3

    .line 259
    goto :goto_6

    .line 260
    :cond_3
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 261
    .line 262
    .line 263
    move-result v3

    .line 264
    :goto_6
    float-to-double v7, v7

    .line 265
    float-to-double v9, v3

    .line 266
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    .line 267
    .line 268
    .line 269
    move-result-wide v7

    .line 270
    :goto_7
    double-to-float v3, v7

    .line 271
    mul-float/2addr v6, v3

    .line 272
    goto :goto_8

    .line 273
    :cond_4
    invoke-virtual {v5}, Lio/bidmachine/rendering/internal/j$b;->y()I

    .line 274
    .line 275
    .line 276
    move-result v8

    .line 277
    if-ne v8, v7, :cond_5

    .line 278
    .line 279
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 280
    .line 281
    .line 282
    move-result v7

    .line 283
    float-to-double v7, v7

    .line 284
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    float-to-double v9, v3

    .line 289
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    .line 290
    .line 291
    .line 292
    move-result-wide v7

    .line 293
    goto :goto_7

    .line 294
    :cond_5
    :goto_8
    iput v6, v0, Lio/bidmachine/rendering/internal/j;->n:F

    .line 295
    .line 296
    cmpg-float v3, v6, v4

    .line 297
    .line 298
    if-gtz v3, :cond_6

    .line 299
    .line 300
    const v3, 0x3a83126f    # 0.001f

    .line 301
    .line 302
    .line 303
    move v13, v3

    .line 304
    goto :goto_9

    .line 305
    :cond_6
    move v13, v6

    .line 306
    :goto_9
    iget-object v3, v0, Lio/bidmachine/rendering/internal/j;->d:Landroid/graphics/Paint;

    .line 307
    .line 308
    new-instance v4, Landroid/graphics/RadialGradient;

    .line 309
    .line 310
    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 311
    .line 312
    const/4 v15, 0x0

    .line 313
    move-object v10, v4

    .line 314
    move-object v14, v1

    .line 315
    invoke-direct/range {v10 .. v16}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 319
    .line 320
    .line 321
    goto :goto_a

    .line 322
    :cond_7
    invoke-virtual {v5}, Lio/bidmachine/rendering/internal/j$b;->z()I

    .line 323
    .line 324
    .line 325
    move-result v4

    .line 326
    if-ne v4, v7, :cond_8

    .line 327
    .line 328
    iget v4, v3, Landroid/graphics/RectF;->left:F

    .line 329
    .line 330
    iget v6, v3, Landroid/graphics/RectF;->right:F

    .line 331
    .line 332
    sub-float/2addr v6, v4

    .line 333
    invoke-virtual {v5}, Lio/bidmachine/rendering/internal/j$b;->r()F

    .line 334
    .line 335
    .line 336
    move-result v7

    .line 337
    mul-float/2addr v6, v7

    .line 338
    add-float/2addr v4, v6

    .line 339
    iget v6, v3, Landroid/graphics/RectF;->top:F

    .line 340
    .line 341
    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    .line 342
    .line 343
    sub-float/2addr v3, v6

    .line 344
    invoke-virtual {v5}, Lio/bidmachine/rendering/internal/j$b;->s()F

    .line 345
    .line 346
    .line 347
    move-result v7

    .line 348
    mul-float/2addr v3, v7

    .line 349
    add-float/2addr v6, v3

    .line 350
    iget-object v3, v0, Lio/bidmachine/rendering/internal/j;->d:Landroid/graphics/Paint;

    .line 351
    .line 352
    new-instance v7, Landroid/graphics/SweepGradient;

    .line 353
    .line 354
    const/4 v8, 0x0

    .line 355
    invoke-direct {v7, v4, v6, v1, v8}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 356
    .line 357
    .line 358
    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 359
    .line 360
    .line 361
    :cond_8
    :goto_a
    invoke-virtual {v5}, Lio/bidmachine/rendering/internal/j$b;->L()Landroid/content/res/ColorStateList;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    if-nez v1, :cond_9

    .line 366
    .line 367
    iget-object v1, v0, Lio/bidmachine/rendering/internal/j;->d:Landroid/graphics/Paint;

    .line 368
    .line 369
    const/high16 v3, -0x1000000

    .line 370
    .line 371
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 372
    .line 373
    .line 374
    :cond_9
    iget-object v1, v0, Lio/bidmachine/rendering/internal/j;->c:Landroid/graphics/RectF;

    .line 375
    .line 376
    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    xor-int/2addr v1, v2

    .line 381
    return v1

    .line 382
    nop

    .line 383
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

.method private final n()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j;->f:Landroid/graphics/Paint;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/rendering/internal/j;->a:Lio/bidmachine/rendering/internal/j$b;

    .line 4
    .line 5
    invoke-virtual {v1}, Lio/bidmachine/rendering/internal/j$b;->a()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-ltz v1, :cond_0

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-static {v0}, Ltp/n;->a(I)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    return v2

    .line 25
    :cond_0
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j;->a:Lio/bidmachine/rendering/internal/j$b;

    .line 26
    .line 27
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/j$b;->w()[Landroid/content/res/ColorStateList;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j;->d:Landroid/graphics/Paint;

    .line 34
    .line 35
    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    invoke-static {v0}, Ltp/n;->a(I)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    .line 45
    return v2

    .line 46
    :cond_1
    const/4 v0, 0x1

    .line 47
    return v0
.end method

.method private final o()V
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lio/bidmachine/rendering/internal/j;->a:Lio/bidmachine/rendering/internal/j$b;

    .line 3
    .line 4
    invoke-virtual {v1}, Lio/bidmachine/rendering/internal/j$b;->L()Landroid/content/res/ColorStateList;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    const/4 v3, 0x0

    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    iget-object v4, p0, Lio/bidmachine/rendering/internal/j;->d:Landroid/graphics/Paint;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-virtual {v2, v5, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v1}, Lio/bidmachine/rendering/internal/j$b;->w()[Landroid/content/res/ColorStateList;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    iget-object v2, p0, Lio/bidmachine/rendering/internal/j;->d:Landroid/graphics/Paint;

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    iget-object v2, p0, Lio/bidmachine/rendering/internal/j;->d:Landroid/graphics/Paint;

    .line 38
    .line 39
    const/high16 v4, -0x1000000

    .line 40
    .line 41
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 42
    .line 43
    .line 44
    :goto_0
    invoke-virtual {v1}, Lio/bidmachine/rendering/internal/j$b;->G()Landroid/graphics/Rect;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iput-object v2, p0, Lio/bidmachine/rendering/internal/j;->e:Landroid/graphics/Rect;

    .line 49
    .line 50
    invoke-virtual {v1}, Lio/bidmachine/rendering/internal/j$b;->a()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-ltz v2, :cond_5

    .line 55
    .line 56
    iget-object v4, p0, Lio/bidmachine/rendering/internal/j;->f:Landroid/graphics/Paint;

    .line 57
    .line 58
    if-nez v4, :cond_2

    .line 59
    .line 60
    new-instance v4, Landroid/graphics/Paint;

    .line 61
    .line 62
    invoke-direct {v4, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 63
    .line 64
    .line 65
    iput-object v4, p0, Lio/bidmachine/rendering/internal/j;->f:Landroid/graphics/Paint;

    .line 66
    .line 67
    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 68
    .line 69
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    .line 71
    .line 72
    int-to-float v2, v2

    .line 73
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 74
    .line 75
    .line 76
    :cond_2
    invoke-virtual {v1}, Lio/bidmachine/rendering/internal/j$b;->M()Landroid/content/res/ColorStateList;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    if-eqz v2, :cond_3

    .line 81
    .line 82
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getState()[I

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v2, v5, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 91
    .line 92
    .line 93
    :cond_3
    invoke-virtual {v1}, Lio/bidmachine/rendering/internal/j$b;->O()F

    .line 94
    .line 95
    .line 96
    move-result v2

    .line 97
    const/4 v5, 0x0

    .line 98
    cmpg-float v6, v2, v5

    .line 99
    .line 100
    if-nez v6, :cond_4

    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_4
    new-instance v6, Landroid/graphics/DashPathEffect;

    .line 104
    .line 105
    invoke-virtual {v1}, Lio/bidmachine/rendering/internal/j$b;->N()F

    .line 106
    .line 107
    .line 108
    move-result v7

    .line 109
    const/4 v8, 0x2

    .line 110
    new-array v8, v8, [F

    .line 111
    .line 112
    aput v2, v8, v3

    .line 113
    .line 114
    aput v7, v8, v0

    .line 115
    .line 116
    invoke-direct {v6, v8, v5}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 120
    .line 121
    .line 122
    :cond_5
    :goto_1
    iget-object v2, p0, Lio/bidmachine/rendering/internal/j;->h:Landroid/graphics/BlendModeColorFilter;

    .line 123
    .line 124
    invoke-virtual {v1}, Lio/bidmachine/rendering/internal/j$b;->d()Landroid/content/res/ColorStateList;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v1}, Lio/bidmachine/rendering/internal/j$b;->o()Landroid/graphics/BlendMode;

    .line 129
    .line 130
    .line 131
    move-result-object v4

    .line 132
    invoke-direct {p0, v2, v3, v4}, Lio/bidmachine/rendering/internal/j;->b(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    iput-object v2, p0, Lio/bidmachine/rendering/internal/j;->h:Landroid/graphics/BlendModeColorFilter;

    .line 137
    .line 138
    iput-boolean v0, p0, Lio/bidmachine/rendering/internal/j;->k:Z

    .line 139
    .line 140
    invoke-virtual {v1}, Lio/bidmachine/rendering/internal/j$b;->f()V

    .line 141
    .line 142
    .line 143
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v7, p1

    .line 4
    .line 5
    const-string v1, "canvas"

    .line 6
    .line 7
    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-direct/range {p0 .. p0}, Lio/bidmachine/rendering/internal/j;->l()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object v1, v0, Lio/bidmachine/rendering/internal/j;->d:Landroid/graphics/Paint;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    .line 20
    .line 21
    .line 22
    move-result v8

    .line 23
    iget-object v1, v0, Lio/bidmachine/rendering/internal/j;->f:Landroid/graphics/Paint;

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    move v9, v1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v9, v2

    .line 35
    :goto_0
    invoke-direct {v0, v8}, Lio/bidmachine/rendering/internal/j;->a(I)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-direct {v0, v9}, Lio/bidmachine/rendering/internal/j;->a(I)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    iget-object v4, v0, Lio/bidmachine/rendering/internal/j;->f:Landroid/graphics/Paint;

    .line 44
    .line 45
    const/4 v10, 0x0

    .line 46
    if-eqz v4, :cond_2

    .line 47
    .line 48
    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    move v4, v10

    .line 54
    :goto_1
    const/4 v11, 0x1

    .line 55
    if-lez v3, :cond_3

    .line 56
    .line 57
    cmpl-float v5, v4, v10

    .line 58
    .line 59
    if-lez v5, :cond_3

    .line 60
    .line 61
    move v12, v11

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    move v12, v2

    .line 64
    :goto_2
    if-lez v1, :cond_4

    .line 65
    .line 66
    move v5, v11

    .line 67
    goto :goto_3

    .line 68
    :cond_4
    move v5, v2

    .line 69
    :goto_3
    iget-object v13, v0, Lio/bidmachine/rendering/internal/j;->a:Lio/bidmachine/rendering/internal/j$b;

    .line 70
    .line 71
    iget-object v6, v0, Lio/bidmachine/rendering/internal/j;->g:Landroid/graphics/ColorFilter;

    .line 72
    .line 73
    if-nez v6, :cond_5

    .line 74
    .line 75
    iget-object v6, v0, Lio/bidmachine/rendering/internal/j;->h:Landroid/graphics/BlendModeColorFilter;

    .line 76
    .line 77
    :cond_5
    move-object v14, v6

    .line 78
    const/4 v15, 0x2

    .line 79
    if-eqz v12, :cond_7

    .line 80
    .line 81
    if-eqz v5, :cond_7

    .line 82
    .line 83
    invoke-virtual {v13}, Lio/bidmachine/rendering/internal/j$b;->K()I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    if-eq v5, v15, :cond_7

    .line 88
    .line 89
    const/16 v5, 0xff

    .line 90
    .line 91
    if-ge v3, v5, :cond_7

    .line 92
    .line 93
    iget v6, v0, Lio/bidmachine/rendering/internal/j;->i:I

    .line 94
    .line 95
    if-lt v6, v5, :cond_6

    .line 96
    .line 97
    if-eqz v14, :cond_7

    .line 98
    .line 99
    :cond_6
    move/from16 v16, v11

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_7
    move/from16 v16, v2

    .line 103
    .line 104
    :goto_4
    if-eqz v16, :cond_9

    .line 105
    .line 106
    iget-object v1, v0, Lio/bidmachine/rendering/internal/j;->j:Landroid/graphics/Paint;

    .line 107
    .line 108
    if-nez v1, :cond_8

    .line 109
    .line 110
    new-instance v1, Landroid/graphics/Paint;

    .line 111
    .line 112
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 113
    .line 114
    .line 115
    iput-object v1, v0, Lio/bidmachine/rendering/internal/j;->j:Landroid/graphics/Paint;

    .line 116
    .line 117
    :cond_8
    move-object v6, v1

    .line 118
    invoke-virtual {v13}, Lio/bidmachine/rendering/internal/j$b;->v()Z

    .line 119
    .line 120
    .line 121
    move-result v1

    .line 122
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setDither(Z)V

    .line 123
    .line 124
    .line 125
    iget v1, v0, Lio/bidmachine/rendering/internal/j;->i:I

    .line 126
    .line 127
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v6, v14}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 131
    .line 132
    .line 133
    iget-object v1, v0, Lio/bidmachine/rendering/internal/j;->c:Landroid/graphics/RectF;

    .line 134
    .line 135
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 136
    .line 137
    sub-float/2addr v2, v4

    .line 138
    iget v3, v1, Landroid/graphics/RectF;->top:F

    .line 139
    .line 140
    sub-float/2addr v3, v4

    .line 141
    iget v5, v1, Landroid/graphics/RectF;->right:F

    .line 142
    .line 143
    add-float/2addr v5, v4

    .line 144
    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    .line 145
    .line 146
    add-float v17, v1, v4

    .line 147
    .line 148
    move-object/from16 v1, p1

    .line 149
    .line 150
    move v4, v5

    .line 151
    move/from16 v5, v17

    .line 152
    .line 153
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;)I

    .line 154
    .line 155
    .line 156
    iget-object v1, v0, Lio/bidmachine/rendering/internal/j;->d:Landroid/graphics/Paint;

    .line 157
    .line 158
    const/4 v2, 0x0

    .line 159
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 160
    .line 161
    .line 162
    iget-object v1, v0, Lio/bidmachine/rendering/internal/j;->f:Landroid/graphics/Paint;

    .line 163
    .line 164
    if-eqz v1, :cond_b

    .line 165
    .line 166
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 167
    .line 168
    .line 169
    goto :goto_5

    .line 170
    :cond_9
    iget-object v2, v0, Lio/bidmachine/rendering/internal/j;->d:Landroid/graphics/Paint;

    .line 171
    .line 172
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 173
    .line 174
    .line 175
    iget-object v1, v0, Lio/bidmachine/rendering/internal/j;->d:Landroid/graphics/Paint;

    .line 176
    .line 177
    invoke-virtual {v13}, Lio/bidmachine/rendering/internal/j$b;->v()Z

    .line 178
    .line 179
    .line 180
    move-result v2

    .line 181
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 182
    .line 183
    .line 184
    iget-object v1, v0, Lio/bidmachine/rendering/internal/j;->d:Landroid/graphics/Paint;

    .line 185
    .line 186
    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 187
    .line 188
    .line 189
    if-eqz v14, :cond_a

    .line 190
    .line 191
    invoke-virtual {v13}, Lio/bidmachine/rendering/internal/j$b;->L()Landroid/content/res/ColorStateList;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    if-nez v1, :cond_a

    .line 196
    .line 197
    iget-object v1, v0, Lio/bidmachine/rendering/internal/j;->d:Landroid/graphics/Paint;

    .line 198
    .line 199
    iget v2, v0, Lio/bidmachine/rendering/internal/j;->i:I

    .line 200
    .line 201
    shl-int/lit8 v2, v2, 0x18

    .line 202
    .line 203
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 204
    .line 205
    .line 206
    :cond_a
    if-eqz v12, :cond_b

    .line 207
    .line 208
    iget-object v1, v0, Lio/bidmachine/rendering/internal/j;->f:Landroid/graphics/Paint;

    .line 209
    .line 210
    if-eqz v1, :cond_b

    .line 211
    .line 212
    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v13}, Lio/bidmachine/rendering/internal/j$b;->v()Z

    .line 216
    .line 217
    .line 218
    move-result v2

    .line 219
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, v14}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 223
    .line 224
    .line 225
    :cond_b
    :goto_5
    invoke-virtual {v13}, Lio/bidmachine/rendering/internal/j$b;->K()I

    .line 226
    .line 227
    .line 228
    move-result v1

    .line 229
    if-eqz v1, :cond_f

    .line 230
    .line 231
    if-eq v1, v11, :cond_e

    .line 232
    .line 233
    if-eq v1, v15, :cond_d

    .line 234
    .line 235
    const/4 v2, 0x3

    .line 236
    if-eq v1, v2, :cond_c

    .line 237
    .line 238
    goto/16 :goto_6

    .line 239
    .line 240
    :cond_c
    invoke-direct {v0, v13}, Lio/bidmachine/rendering/internal/j;->c(Lio/bidmachine/rendering/internal/j$b;)Landroid/graphics/Path;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    iget-object v2, v0, Lio/bidmachine/rendering/internal/j;->d:Landroid/graphics/Paint;

    .line 245
    .line 246
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 247
    .line 248
    .line 249
    if-eqz v12, :cond_14

    .line 250
    .line 251
    iget-object v2, v0, Lio/bidmachine/rendering/internal/j;->f:Landroid/graphics/Paint;

    .line 252
    .line 253
    if-eqz v2, :cond_14

    .line 254
    .line 255
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 256
    .line 257
    .line 258
    goto/16 :goto_6

    .line 259
    .line 260
    :cond_d
    iget-object v1, v0, Lio/bidmachine/rendering/internal/j;->c:Landroid/graphics/RectF;

    .line 261
    .line 262
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    .line 263
    .line 264
    .line 265
    move-result v5

    .line 266
    if-eqz v12, :cond_14

    .line 267
    .line 268
    iget-object v6, v0, Lio/bidmachine/rendering/internal/j;->f:Landroid/graphics/Paint;

    .line 269
    .line 270
    if-eqz v6, :cond_14

    .line 271
    .line 272
    iget v2, v1, Landroid/graphics/RectF;->left:F

    .line 273
    .line 274
    iget v4, v1, Landroid/graphics/RectF;->right:F

    .line 275
    .line 276
    move-object/from16 v1, p1

    .line 277
    .line 278
    move v3, v5

    .line 279
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 280
    .line 281
    .line 282
    goto/16 :goto_6

    .line 283
    .line 284
    :cond_e
    iget-object v1, v0, Lio/bidmachine/rendering/internal/j;->c:Landroid/graphics/RectF;

    .line 285
    .line 286
    iget-object v2, v0, Lio/bidmachine/rendering/internal/j;->d:Landroid/graphics/Paint;

    .line 287
    .line 288
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 289
    .line 290
    .line 291
    if-eqz v12, :cond_14

    .line 292
    .line 293
    iget-object v1, v0, Lio/bidmachine/rendering/internal/j;->f:Landroid/graphics/Paint;

    .line 294
    .line 295
    if-eqz v1, :cond_14

    .line 296
    .line 297
    iget-object v2, v0, Lio/bidmachine/rendering/internal/j;->c:Landroid/graphics/RectF;

    .line 298
    .line 299
    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 300
    .line 301
    .line 302
    goto/16 :goto_6

    .line 303
    .line 304
    :cond_f
    invoke-virtual {v13}, Lio/bidmachine/rendering/internal/j$b;->J()[F

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    if-eqz v1, :cond_10

    .line 309
    .line 310
    invoke-direct/range {p0 .. p0}, Lio/bidmachine/rendering/internal/j;->d()V

    .line 311
    .line 312
    .line 313
    iget-object v1, v0, Lio/bidmachine/rendering/internal/j;->b:Landroid/graphics/Path;

    .line 314
    .line 315
    iget-object v2, v0, Lio/bidmachine/rendering/internal/j;->d:Landroid/graphics/Paint;

    .line 316
    .line 317
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 318
    .line 319
    .line 320
    if-eqz v12, :cond_14

    .line 321
    .line 322
    iget-object v1, v0, Lio/bidmachine/rendering/internal/j;->f:Landroid/graphics/Paint;

    .line 323
    .line 324
    if-eqz v1, :cond_14

    .line 325
    .line 326
    iget-object v2, v0, Lio/bidmachine/rendering/internal/j;->b:Landroid/graphics/Path;

    .line 327
    .line 328
    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 329
    .line 330
    .line 331
    goto :goto_6

    .line 332
    :cond_10
    invoke-virtual {v13}, Lio/bidmachine/rendering/internal/j$b;->I()F

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    cmpl-float v1, v1, v10

    .line 337
    .line 338
    if-lez v1, :cond_11

    .line 339
    .line 340
    invoke-virtual {v13}, Lio/bidmachine/rendering/internal/j$b;->I()F

    .line 341
    .line 342
    .line 343
    move-result v1

    .line 344
    float-to-double v1, v1

    .line 345
    iget-object v3, v0, Lio/bidmachine/rendering/internal/j;->c:Landroid/graphics/RectF;

    .line 346
    .line 347
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    .line 348
    .line 349
    .line 350
    move-result v3

    .line 351
    float-to-double v3, v3

    .line 352
    iget-object v5, v0, Lio/bidmachine/rendering/internal/j;->c:Landroid/graphics/RectF;

    .line 353
    .line 354
    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    .line 355
    .line 356
    .line 357
    move-result v5

    .line 358
    float-to-double v5, v5

    .line 359
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(DD)D

    .line 360
    .line 361
    .line 362
    move-result-wide v3

    .line 363
    const/high16 v5, 0x3f000000    # 0.5f

    .line 364
    .line 365
    float-to-double v5, v5

    .line 366
    mul-double/2addr v3, v5

    .line 367
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    .line 368
    .line 369
    .line 370
    move-result-wide v1

    .line 371
    double-to-float v1, v1

    .line 372
    iget-object v2, v0, Lio/bidmachine/rendering/internal/j;->c:Landroid/graphics/RectF;

    .line 373
    .line 374
    iget-object v3, v0, Lio/bidmachine/rendering/internal/j;->d:Landroid/graphics/Paint;

    .line 375
    .line 376
    invoke-virtual {v7, v2, v1, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 377
    .line 378
    .line 379
    if-eqz v12, :cond_14

    .line 380
    .line 381
    iget-object v2, v0, Lio/bidmachine/rendering/internal/j;->f:Landroid/graphics/Paint;

    .line 382
    .line 383
    if-eqz v2, :cond_14

    .line 384
    .line 385
    iget-object v3, v0, Lio/bidmachine/rendering/internal/j;->c:Landroid/graphics/RectF;

    .line 386
    .line 387
    invoke-virtual {v7, v3, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 388
    .line 389
    .line 390
    goto :goto_6

    .line 391
    :cond_11
    iget-object v1, v0, Lio/bidmachine/rendering/internal/j;->d:Landroid/graphics/Paint;

    .line 392
    .line 393
    invoke-virtual {v1}, Landroid/graphics/Paint;->getColor()I

    .line 394
    .line 395
    .line 396
    move-result v1

    .line 397
    if-nez v1, :cond_12

    .line 398
    .line 399
    if-nez v14, :cond_12

    .line 400
    .line 401
    iget-object v1, v0, Lio/bidmachine/rendering/internal/j;->d:Landroid/graphics/Paint;

    .line 402
    .line 403
    invoke-virtual {v1}, Landroid/graphics/Paint;->getShader()Landroid/graphics/Shader;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    if-eqz v1, :cond_13

    .line 408
    .line 409
    :cond_12
    iget-object v1, v0, Lio/bidmachine/rendering/internal/j;->c:Landroid/graphics/RectF;

    .line 410
    .line 411
    iget-object v2, v0, Lio/bidmachine/rendering/internal/j;->d:Landroid/graphics/Paint;

    .line 412
    .line 413
    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 414
    .line 415
    .line 416
    :cond_13
    if-eqz v12, :cond_14

    .line 417
    .line 418
    iget-object v1, v0, Lio/bidmachine/rendering/internal/j;->f:Landroid/graphics/Paint;

    .line 419
    .line 420
    if-eqz v1, :cond_14

    .line 421
    .line 422
    iget-object v2, v0, Lio/bidmachine/rendering/internal/j;->c:Landroid/graphics/RectF;

    .line 423
    .line 424
    invoke-virtual {v7, v2, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 425
    .line 426
    .line 427
    :cond_14
    :goto_6
    if-eqz v16, :cond_15

    .line 428
    .line 429
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 430
    .line 431
    .line 432
    goto :goto_7

    .line 433
    :cond_15
    iget-object v1, v0, Lio/bidmachine/rendering/internal/j;->d:Landroid/graphics/Paint;

    .line 434
    .line 435
    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 436
    .line 437
    .line 438
    if-eqz v12, :cond_16

    .line 439
    .line 440
    iget-object v1, v0, Lio/bidmachine/rendering/internal/j;->f:Landroid/graphics/Paint;

    .line 441
    .line 442
    if-eqz v1, :cond_16

    .line 443
    .line 444
    invoke-virtual {v1, v9}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 445
    .line 446
    .line 447
    :cond_16
    :goto_7
    return-void
.end method

.method public final e(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j;->a:Lio/bidmachine/rendering/internal/j$b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/rendering/internal/j$b;->g(F)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lio/bidmachine/rendering/internal/j;->m:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final f(FI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j;->a:Lio/bidmachine/rendering/internal/j$b;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lio/bidmachine/rendering/internal/j$b;->h(FI)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lio/bidmachine/rendering/internal/j;->k:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final g(IIFF)V
    .locals 2
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j;->a:Lio/bidmachine/rendering/internal/j$b;

    .line 2
    .line 3
    invoke-static {p2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, p1, v1, p3, p4}, Lio/bidmachine/rendering/internal/j$b;->j(ILandroid/content/res/ColorStateList;FF)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lio/bidmachine/rendering/internal/j;->k(IIFF)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/j;->i:I

    .line 2
    .line 3
    return v0
.end method

.method public getChangingConfigurations()I
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getChangingConfigurations()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lio/bidmachine/rendering/internal/j;->a:Lio/bidmachine/rendering/internal/j$b;

    .line 6
    .line 7
    invoke-virtual {v1}, Lio/bidmachine/rendering/internal/j$b;->t()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    or-int/2addr v0, v1

    .line 12
    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j;->g:Landroid/graphics/ColorFilter;

    .line 2
    .line 3
    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j;->a:Lio/bidmachine/rendering/internal/j$b;

    .line 2
    .line 3
    invoke-virtual {p0}, Lio/bidmachine/rendering/internal/j;->getChangingConfigurations()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0, v1}, Lio/bidmachine/rendering/internal/j$b;->i(I)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j;->a:Lio/bidmachine/rendering/internal/j$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/j$b;->A()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j;->a:Lio/bidmachine/rendering/internal/j$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/j$b;->e()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public getOpacity()I
    .locals 2
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/j;->i:I

    .line 2
    .line 3
    const/16 v1, 0xff

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j;->a:Lio/bidmachine/rendering/internal/j$b;

    .line 8
    .line 9
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/j$b;->D()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/j;->n()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, -0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, -0x3

    .line 24
    :goto_0
    return v0
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 8
    .param p1    # Landroid/graphics/Outline;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "outline"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j;->a:Lio/bidmachine/rendering/internal/j$b;

    .line 7
    .line 8
    iget-object v1, p0, Lio/bidmachine/rendering/internal/j;->f:Landroid/graphics/Paint;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "getBounds()"

    .line 15
    .line 16
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/j$b;->E()Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    const/4 v4, 0x0

    .line 24
    if-eqz v3, :cond_1

    .line 25
    .line 26
    iget-object v3, p0, Lio/bidmachine/rendering/internal/j;->a:Lio/bidmachine/rendering/internal/j$b;

    .line 27
    .line 28
    invoke-virtual {v3}, Lio/bidmachine/rendering/internal/j$b;->a()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-lez v3, :cond_0

    .line 33
    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/graphics/Paint;->getAlpha()I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    iget-object v5, p0, Lio/bidmachine/rendering/internal/j;->d:Landroid/graphics/Paint;

    .line 41
    .line 42
    invoke-virtual {v5}, Landroid/graphics/Paint;->getAlpha()I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    if-ne v3, v5, :cond_1

    .line 47
    .line 48
    :cond_0
    iget-object v3, p0, Lio/bidmachine/rendering/internal/j;->d:Landroid/graphics/Paint;

    .line 49
    .line 50
    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    invoke-direct {p0, v3}, Lio/bidmachine/rendering/internal/j;->a(I)I

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    int-to-float v3, v3

    .line 59
    const/high16 v5, 0x437f0000    # 255.0f

    .line 60
    .line 61
    div-float/2addr v3, v5

    .line 62
    goto :goto_0

    .line 63
    :cond_1
    move v3, v4

    .line 64
    :goto_0
    invoke-virtual {p1, v3}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/j$b;->K()I

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    const/high16 v5, 0x3f000000    # 0.5f

    .line 72
    .line 73
    if-eqz v3, :cond_5

    .line 74
    .line 75
    const/4 v0, 0x1

    .line 76
    if-eq v3, v0, :cond_4

    .line 77
    .line 78
    const/4 v0, 0x2

    .line 79
    if-eq v3, v0, :cond_2

    .line 80
    .line 81
    return-void

    .line 82
    :cond_2
    if-eqz v1, :cond_3

    .line 83
    .line 84
    invoke-virtual {v1}, Landroid/graphics/Paint;->getStrokeWidth()F

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    mul-float/2addr v0, v5

    .line 89
    goto :goto_1

    .line 90
    :cond_3
    const v0, 0x38d1b717    # 1.0E-4f

    .line 91
    .line 92
    .line 93
    :goto_1
    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    int-to-float v1, v1

    .line 98
    sub-float v3, v1, v0

    .line 99
    .line 100
    float-to-double v3, v3

    .line 101
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    .line 102
    .line 103
    .line 104
    move-result-wide v3

    .line 105
    double-to-int v3, v3

    .line 106
    add-float/2addr v1, v0

    .line 107
    float-to-double v0, v1

    .line 108
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 109
    .line 110
    .line 111
    move-result-wide v0

    .line 112
    double-to-int v0, v0

    .line 113
    iget v1, v2, Landroid/graphics/Rect;->left:I

    .line 114
    .line 115
    iget v2, v2, Landroid/graphics/Rect;->right:I

    .line 116
    .line 117
    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/graphics/Outline;->setRect(IIII)V

    .line 118
    .line 119
    .line 120
    return-void

    .line 121
    :cond_4
    invoke-virtual {p1, v2}, Landroid/graphics/Outline;->setOval(Landroid/graphics/Rect;)V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :cond_5
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/j$b;->J()[F

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    if-eqz v1, :cond_7

    .line 130
    .line 131
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/j;->d()V

    .line 132
    .line 133
    .line 134
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 135
    .line 136
    const/16 v3, 0x1e

    .line 137
    .line 138
    if-lt v0, v3, :cond_6

    .line 139
    .line 140
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j;->b:Landroid/graphics/Path;

    .line 141
    .line 142
    invoke-static {p1, v0}, Lcom/google/android/material/drawable/d;->a(Landroid/graphics/Outline;Landroid/graphics/Path;)V

    .line 143
    .line 144
    .line 145
    goto :goto_2

    .line 146
    :cond_6
    invoke-static {v1}, Lkotlin/collections/n;->p1([F)F

    .line 147
    .line 148
    .line 149
    move-result v0

    .line 150
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 151
    .line 152
    .line 153
    :goto_2
    return-void

    .line 154
    :cond_7
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/j$b;->I()F

    .line 155
    .line 156
    .line 157
    move-result v1

    .line 158
    cmpl-float v1, v1, v4

    .line 159
    .line 160
    if-lez v1, :cond_8

    .line 161
    .line 162
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/j$b;->I()F

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    float-to-double v0, v0

    .line 167
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 168
    .line 169
    .line 170
    move-result v3

    .line 171
    int-to-double v3, v3

    .line 172
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 173
    .line 174
    .line 175
    move-result v6

    .line 176
    int-to-double v6, v6

    .line 177
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->min(DD)D

    .line 178
    .line 179
    .line 180
    move-result-wide v3

    .line 181
    float-to-double v5, v5

    .line 182
    mul-double/2addr v3, v5

    .line 183
    invoke-static {v0, v1, v3, v4}, Ljava/lang/Math;->min(DD)D

    .line 184
    .line 185
    .line 186
    move-result-wide v0

    .line 187
    double-to-float v4, v0

    .line 188
    :cond_8
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    .line 189
    .line 190
    .line 191
    return-void
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "padding"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j;->e:Landroid/graphics/Rect;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    :goto_0
    return p1
.end method

.method public isStateful()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j;->a:Lio/bidmachine/rendering/internal/j$b;

    .line 2
    .line 3
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez v1, :cond_3

    .line 9
    .line 10
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/j$b;->L()Landroid/content/res/ColorStateList;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-ne v1, v2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/j$b;->M()Landroid/content/res/ColorStateList;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    .line 29
    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-ne v1, v2, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/j$b;->d()Landroid/content/res/ColorStateList;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-ne v0, v2, :cond_2

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v2, 0x0

    .line 50
    :cond_3
    :goto_0
    return v2
.end method

.method public final j(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j;->a:Lio/bidmachine/rendering/internal/j$b;

    .line 2
    .line 3
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Lio/bidmachine/rendering/internal/j$b;->k(Landroid/content/res/ColorStateList;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j;->d:Landroid/graphics/Paint;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final m(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j;->a:Lio/bidmachine/rendering/internal/j$b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/rendering/internal/j$b;->p(I)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lio/bidmachine/rendering/internal/j;->k:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-ne v0, p0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lio/bidmachine/rendering/internal/j$b;

    .line 8
    .line 9
    iget-object v1, p0, Lio/bidmachine/rendering/internal/j;->a:Lio/bidmachine/rendering/internal/j$b;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lio/bidmachine/rendering/internal/j$b;-><init>(Lio/bidmachine/rendering/internal/j$b;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lio/bidmachine/rendering/internal/j;->a:Lio/bidmachine/rendering/internal/j$b;

    .line 15
    .line 16
    invoke-direct {p0}, Lio/bidmachine/rendering/internal/j;->o()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-object p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "rect"

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
    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lio/bidmachine/rendering/internal/j;->l:Landroid/graphics/Path;

    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lio/bidmachine/rendering/internal/j;->m:Z

    .line 14
    .line 15
    iput-boolean p1, p0, Lio/bidmachine/rendering/internal/j;->k:Z

    .line 16
    .line 17
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onLevelChange(I)Z

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lio/bidmachine/rendering/internal/j;->k:Z

    .line 6
    .line 7
    iput-boolean p1, p0, Lio/bidmachine/rendering/internal/j;->m:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 10
    .line 11
    .line 12
    return p1
.end method

.method protected onStateChange([I)Z
    .locals 6
    .param p1    # [I
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "stateSet"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j;->a:Lio/bidmachine/rendering/internal/j$b;

    .line 7
    .line 8
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/j$b;->L()Landroid/content/res/ColorStateList;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x1

    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-virtual {v1, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget-object v4, p0, Lio/bidmachine/rendering/internal/j;->d:Landroid/graphics/Paint;

    .line 21
    .line 22
    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    if-eq v4, v1, :cond_0

    .line 27
    .line 28
    iget-object v4, p0, Lio/bidmachine/rendering/internal/j;->d:Landroid/graphics/Paint;

    .line 29
    .line 30
    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    .line 32
    .line 33
    move v1, v2

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    move v1, v3

    .line 36
    :goto_0
    iget-object v4, p0, Lio/bidmachine/rendering/internal/j;->f:Landroid/graphics/Paint;

    .line 37
    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/j$b;->M()Landroid/content/res/ColorStateList;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    if-eqz v5, :cond_1

    .line 45
    .line 46
    invoke-virtual {v5, p1, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eq v5, p1, :cond_1

    .line 55
    .line 56
    invoke-virtual {v4, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    .line 58
    .line 59
    move v1, v2

    .line 60
    :cond_1
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/j$b;->d()Landroid/content/res/ColorStateList;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/j$b;->o()Landroid/graphics/BlendMode;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-eqz p1, :cond_2

    .line 71
    .line 72
    iget-object p1, p0, Lio/bidmachine/rendering/internal/j;->h:Landroid/graphics/BlendModeColorFilter;

    .line 73
    .line 74
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/j$b;->d()Landroid/content/res/ColorStateList;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/j$b;->o()Landroid/graphics/BlendMode;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-direct {p0, p1, v1, v0}, Lio/bidmachine/rendering/internal/j;->b(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p0, Lio/bidmachine/rendering/internal/j;->h:Landroid/graphics/BlendModeColorFilter;

    .line 87
    .line 88
    move v1, v2

    .line 89
    :cond_2
    if-eqz v1, :cond_3

    .line 90
    .line 91
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 92
    .line 93
    .line 94
    return v2

    .line 95
    :cond_3
    return v3
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/rendering/internal/j;->i:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput p1, p0, Lio/bidmachine/rendering/internal/j;->i:I

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j;->g:Landroid/graphics/ColorFilter;

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lio/bidmachine/rendering/internal/j;->g:Landroid/graphics/ColorFilter;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method

.method public setDither(Z)V
    .locals 1
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j;->a:Lio/bidmachine/rendering/internal/j$b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/rendering/internal/j$b;->v()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eq v0, p1, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j;->a:Lio/bidmachine/rendering/internal/j$b;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Lio/bidmachine/rendering/internal/j$b;->m(Z)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public setTintBlendMode(Landroid/graphics/BlendMode;)V
    .locals 2
    .param p1    # Landroid/graphics/BlendMode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j;->a:Lio/bidmachine/rendering/internal/j$b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/rendering/internal/j$b;->l(Landroid/graphics/BlendMode;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j;->h:Landroid/graphics/BlendModeColorFilter;

    .line 7
    .line 8
    iget-object v1, p0, Lio/bidmachine/rendering/internal/j;->a:Lio/bidmachine/rendering/internal/j$b;

    .line 9
    .line 10
    invoke-virtual {v1}, Lio/bidmachine/rendering/internal/j$b;->d()Landroid/content/res/ColorStateList;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {p0, v0, v1, p1}, Lio/bidmachine/rendering/internal/j;->b(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lio/bidmachine/rendering/internal/j;->h:Landroid/graphics/BlendModeColorFilter;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1    # Landroid/content/res/ColorStateList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j;->a:Lio/bidmachine/rendering/internal/j$b;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/rendering/internal/j$b;->q(Landroid/content/res/ColorStateList;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lio/bidmachine/rendering/internal/j;->h:Landroid/graphics/BlendModeColorFilter;

    .line 7
    .line 8
    iget-object v1, p0, Lio/bidmachine/rendering/internal/j;->a:Lio/bidmachine/rendering/internal/j$b;

    .line 9
    .line 10
    invoke-virtual {v1}, Lio/bidmachine/rendering/internal/j$b;->o()Landroid/graphics/BlendMode;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-direct {p0, v0, p1, v1}, Lio/bidmachine/rendering/internal/j;->b(Landroid/graphics/BlendModeColorFilter;Landroid/content/res/ColorStateList;Landroid/graphics/BlendMode;)Landroid/graphics/BlendModeColorFilter;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Lio/bidmachine/rendering/internal/j;->h:Landroid/graphics/BlendModeColorFilter;

    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 21
    .line 22
    .line 23
    return-void
.end method
