.class public final Lzl/g;
.super Ljava/lang/Object;
.source "TextColumn.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lzl/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:I

.field private final c:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private e:Lcom/yy/mobile/rollingtextview/strategy/Direction;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private f:F

.field private g:F

.field private h:C

.field private i:D

.field private j:D

.field private k:I


# direct methods
.method public constructor <init>(Lzl/h;ILandroid/graphics/Paint;Ljava/util/List;Lcom/yy/mobile/rollingtextview/strategy/Direction;)V
    .locals 1
    .param p1    # Lzl/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/yy/mobile/rollingtextview/strategy/Direction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzl/h;",
            "I",
            "Landroid/graphics/Paint;",
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;",
            "Lcom/yy/mobile/rollingtextview/strategy/Direction;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "manager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "textPaint"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "changeCharList"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "direction"

    .line 17
    .line 18
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lzl/g;->a:Lzl/h;

    .line 25
    .line 26
    iput p2, p0, Lzl/g;->b:I

    .line 27
    .line 28
    iput-object p3, p0, Lzl/g;->c:Landroid/graphics/Paint;

    .line 29
    .line 30
    iput-object p4, p0, Lzl/g;->d:Ljava/util/List;

    .line 31
    .line 32
    iput-object p5, p0, Lzl/g;->e:Lcom/yy/mobile/rollingtextview/strategy/Direction;

    .line 33
    .line 34
    invoke-interface {p4}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    const/4 p2, 0x2

    .line 39
    if-ge p1, p2, :cond_0

    .line 40
    .line 41
    invoke-virtual {p0}, Lzl/g;->j()C

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-virtual {p0}, Lzl/g;->i()C

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    :goto_0
    iput-char p1, p0, Lzl/g;->h:C

    .line 51
    .line 52
    invoke-virtual {p0}, Lzl/g;->k()V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method private static final b(Lzl/g;Landroid/graphics/Canvas;IFF)V
    .locals 8

    .line 1
    if-ltz p2, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lzl/g;->d:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ge p2, v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lzl/g;->d:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Character;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-static {p0, p2}, Lzl/g;->c(Lzl/g;I)[C

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    const/4 v4, 0x1

    .line 30
    iget-object v7, p0, Lzl/g;->c:Landroid/graphics/Paint;

    .line 31
    .line 32
    const/4 v3, 0x0

    .line 33
    move-object v1, p1

    .line 34
    move v5, p3

    .line 35
    move v6, p4

    .line 36
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText([CIIFFLandroid/graphics/Paint;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method private static final c(Lzl/g;I)[C
    .locals 1

    .line 1
    iget-object p0, p0, Lzl/g;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Ljava/lang/Character;

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Character;->charValue()C

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    const/4 p1, 0x1

    .line 14
    new-array p1, p1, [C

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    aput-char p0, p1, v0

    .line 18
    .line 19
    return-object p1
.end method

.method static synthetic d(Lzl/g;Landroid/graphics/Canvas;IFFILjava/lang/Object;)V
    .locals 1

    .line 1
    and-int/lit8 p6, p5, 0x8

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
    and-int/lit8 p5, p5, 0x10

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    move p4, v0

    .line 12
    :cond_1
    invoke-static {p0, p1, p2, p3, p4}, Lzl/g;->b(Lzl/g;Landroid/graphics/Canvas;IFF)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;)V
    .locals 7
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
    iget-object v0, p0, Lzl/g;->e:Lcom/yy/mobile/rollingtextview/strategy/Direction;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/yy/mobile/rollingtextview/strategy/Direction;->getOrientation()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    iget v0, p0, Lzl/g;->k:I

    .line 15
    .line 16
    add-int/lit8 v2, v0, 0x1

    .line 17
    .line 18
    iget-wide v0, p0, Lzl/g;->j:D

    .line 19
    .line 20
    double-to-float v0, v0

    .line 21
    iget v1, p0, Lzl/g;->f:F

    .line 22
    .line 23
    iget-object v3, p0, Lzl/g;->e:Lcom/yy/mobile/rollingtextview/strategy/Direction;

    .line 24
    .line 25
    invoke-virtual {v3}, Lcom/yy/mobile/rollingtextview/strategy/Direction;->getValue()I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    int-to-float v3, v3

    .line 30
    mul-float/2addr v1, v3

    .line 31
    sub-float v3, v0, v1

    .line 32
    .line 33
    const/16 v5, 0x10

    .line 34
    .line 35
    const/4 v6, 0x0

    .line 36
    const/4 v4, 0x0

    .line 37
    move-object v0, p0

    .line 38
    move-object v1, p1

    .line 39
    invoke-static/range {v0 .. v6}, Lzl/g;->d(Lzl/g;Landroid/graphics/Canvas;IFFILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget v2, p0, Lzl/g;->k:I

    .line 43
    .line 44
    iget-wide v0, p0, Lzl/g;->j:D

    .line 45
    .line 46
    double-to-float v3, v0

    .line 47
    move-object v0, p0

    .line 48
    move-object v1, p1

    .line 49
    invoke-static/range {v0 .. v6}, Lzl/g;->d(Lzl/g;Landroid/graphics/Canvas;IFFILjava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    iget v0, p0, Lzl/g;->k:I

    .line 53
    .line 54
    add-int/lit8 v2, v0, -0x1

    .line 55
    .line 56
    iget-wide v0, p0, Lzl/g;->j:D

    .line 57
    .line 58
    double-to-float v0, v0

    .line 59
    iget v1, p0, Lzl/g;->f:F

    .line 60
    .line 61
    iget-object v3, p0, Lzl/g;->e:Lcom/yy/mobile/rollingtextview/strategy/Direction;

    .line 62
    .line 63
    invoke-virtual {v3}, Lcom/yy/mobile/rollingtextview/strategy/Direction;->getValue()I

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    int-to-float v3, v3

    .line 68
    mul-float/2addr v1, v3

    .line 69
    add-float v3, v0, v1

    .line 70
    .line 71
    move-object v0, p0

    .line 72
    move-object v1, p1

    .line 73
    invoke-static/range {v0 .. v6}, Lzl/g;->d(Lzl/g;Landroid/graphics/Canvas;IFFILjava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_0
    iget v0, p0, Lzl/g;->k:I

    .line 78
    .line 79
    add-int/lit8 v2, v0, 0x1

    .line 80
    .line 81
    iget-wide v0, p0, Lzl/g;->j:D

    .line 82
    .line 83
    double-to-float v0, v0

    .line 84
    iget-object v1, p0, Lzl/g;->a:Lzl/h;

    .line 85
    .line 86
    invoke-virtual {v1}, Lzl/h;->g()F

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    iget-object v3, p0, Lzl/g;->e:Lcom/yy/mobile/rollingtextview/strategy/Direction;

    .line 91
    .line 92
    invoke-virtual {v3}, Lcom/yy/mobile/rollingtextview/strategy/Direction;->getValue()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    int-to-float v3, v3

    .line 97
    mul-float/2addr v1, v3

    .line 98
    sub-float v4, v0, v1

    .line 99
    .line 100
    const/16 v5, 0x8

    .line 101
    .line 102
    const/4 v6, 0x0

    .line 103
    const/4 v3, 0x0

    .line 104
    move-object v0, p0

    .line 105
    move-object v1, p1

    .line 106
    invoke-static/range {v0 .. v6}, Lzl/g;->d(Lzl/g;Landroid/graphics/Canvas;IFFILjava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    iget v2, p0, Lzl/g;->k:I

    .line 110
    .line 111
    iget-wide v0, p0, Lzl/g;->j:D

    .line 112
    .line 113
    double-to-float v4, v0

    .line 114
    move-object v0, p0

    .line 115
    move-object v1, p1

    .line 116
    invoke-static/range {v0 .. v6}, Lzl/g;->d(Lzl/g;Landroid/graphics/Canvas;IFFILjava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    iget v0, p0, Lzl/g;->k:I

    .line 120
    .line 121
    add-int/lit8 v2, v0, -0x1

    .line 122
    .line 123
    iget-wide v0, p0, Lzl/g;->j:D

    .line 124
    .line 125
    double-to-float v0, v0

    .line 126
    iget-object v1, p0, Lzl/g;->a:Lzl/h;

    .line 127
    .line 128
    invoke-virtual {v1}, Lzl/h;->g()F

    .line 129
    .line 130
    .line 131
    move-result v1

    .line 132
    iget-object v3, p0, Lzl/g;->e:Lcom/yy/mobile/rollingtextview/strategy/Direction;

    .line 133
    .line 134
    invoke-virtual {v3}, Lcom/yy/mobile/rollingtextview/strategy/Direction;->getValue()I

    .line 135
    .line 136
    .line 137
    move-result v3

    .line 138
    int-to-float v3, v3

    .line 139
    mul-float/2addr v1, v3

    .line 140
    add-float v4, v0, v1

    .line 141
    .line 142
    const/4 v3, 0x0

    .line 143
    move-object v0, p0

    .line 144
    move-object v1, p1

    .line 145
    invoke-static/range {v0 .. v6}, Lzl/g;->d(Lzl/g;Landroid/graphics/Canvas;IFFILjava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    :goto_0
    return-void
.end method

.method public final e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lzl/g;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final f()C
    .locals 1

    .line 1
    iget-char v0, p0, Lzl/g;->h:C

    .line 2
    .line 3
    return v0
.end method

.method public final g()F
    .locals 1

    .line 1
    iget v0, p0, Lzl/g;->f:F

    .line 2
    .line 3
    return v0
.end method

.method public final h()I
    .locals 1

    .line 1
    iget v0, p0, Lzl/g;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public final i()C
    .locals 2

    .line 1
    iget-object v0, p0, Lzl/g;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x2

    .line 8
    if-ge v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lzl/g;->d:Ljava/util/List;

    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->r0(Ljava/util/List;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Ljava/lang/Character;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    :goto_0
    return v0
.end method

.method public final j()C
    .locals 1

    .line 1
    iget-object v0, p0, Lzl/g;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lzl/g;->d:Ljava/util/List;

    .line 12
    .line 13
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->C0(Ljava/util/List;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Character;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    :goto_0
    return v0
.end method

.method public final k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lzl/g;->a:Lzl/h;

    .line 2
    .line 3
    iget-char v1, p0, Lzl/g;->h:C

    .line 4
    .line 5
    iget-object v2, p0, Lzl/g;->c:Landroid/graphics/Paint;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lzl/h;->a(CLandroid/graphics/Paint;)F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput v0, p0, Lzl/g;->f:F

    .line 12
    .line 13
    iput v0, p0, Lzl/g;->g:F

    .line 14
    .line 15
    return-void
.end method

.method public final l()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lzl/g;->j()C

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iput-char v0, p0, Lzl/g;->h:C

    .line 6
    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    iput-wide v0, p0, Lzl/g;->j:D

    .line 10
    .line 11
    iput-wide v0, p0, Lzl/g;->i:D

    .line 12
    .line 13
    return-void
.end method

.method public final m(IDD)Lzl/c;
    .locals 8
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget v0, p0, Lzl/g;->k:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lzl/g;->f:F

    .line 6
    .line 7
    iput v0, p0, Lzl/g;->g:F

    .line 8
    .line 9
    :cond_0
    iput p1, p0, Lzl/g;->k:I

    .line 10
    .line 11
    iget-object v0, p0, Lzl/g;->d:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/Character;

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    iput-char v0, p0, Lzl/g;->h:C

    .line 24
    .line 25
    iget-wide v0, p0, Lzl/g;->i:D

    .line 26
    .line 27
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 28
    .line 29
    sub-double/2addr v2, p4

    .line 30
    mul-double/2addr v0, v2

    .line 31
    iget-object v2, p0, Lzl/g;->e:Lcom/yy/mobile/rollingtextview/strategy/Direction;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/yy/mobile/rollingtextview/strategy/Direction;->getOrientation()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-nez v2, :cond_1

    .line 38
    .line 39
    iget v2, p0, Lzl/g;->f:F

    .line 40
    .line 41
    float-to-double v2, v2

    .line 42
    mul-double/2addr v2, p2

    .line 43
    iget-object v4, p0, Lzl/g;->e:Lcom/yy/mobile/rollingtextview/strategy/Direction;

    .line 44
    .line 45
    invoke-virtual {v4}, Lcom/yy/mobile/rollingtextview/strategy/Direction;->getValue()I

    .line 46
    .line 47
    .line 48
    move-result v4

    .line 49
    :goto_0
    int-to-double v4, v4

    .line 50
    mul-double/2addr v2, v4

    .line 51
    add-double/2addr v2, v0

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    iget-object v2, p0, Lzl/g;->a:Lzl/h;

    .line 54
    .line 55
    invoke-virtual {v2}, Lzl/h;->g()F

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    float-to-double v2, v2

    .line 60
    mul-double/2addr v2, p2

    .line 61
    iget-object v4, p0, Lzl/g;->e:Lcom/yy/mobile/rollingtextview/strategy/Direction;

    .line 62
    .line 63
    invoke-virtual {v4}, Lcom/yy/mobile/rollingtextview/strategy/Direction;->getValue()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    goto :goto_0

    .line 68
    :goto_1
    iput-wide v2, p0, Lzl/g;->j:D

    .line 69
    .line 70
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 71
    .line 72
    cmpg-double v0, p2, v0

    .line 73
    .line 74
    if-gtz v0, :cond_2

    .line 75
    .line 76
    iget-object p1, p0, Lzl/g;->a:Lzl/h;

    .line 77
    .line 78
    iget-char v0, p0, Lzl/g;->h:C

    .line 79
    .line 80
    iget-object v1, p0, Lzl/g;->c:Landroid/graphics/Paint;

    .line 81
    .line 82
    invoke-virtual {p1, v0, v1}, Lzl/h;->a(CLandroid/graphics/Paint;)F

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    goto :goto_2

    .line 87
    :cond_2
    iget-object v0, p0, Lzl/g;->d:Ljava/util/List;

    .line 88
    .line 89
    add-int/lit8 p1, p1, 0x1

    .line 90
    .line 91
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->p(Ljava/util/List;)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    check-cast p1, Ljava/lang/Character;

    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    iget-object v0, p0, Lzl/g;->a:Lzl/h;

    .line 110
    .line 111
    iget-object v1, p0, Lzl/g;->c:Landroid/graphics/Paint;

    .line 112
    .line 113
    invoke-virtual {v0, p1, v1}, Lzl/h;->a(CLandroid/graphics/Paint;)F

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    :goto_2
    const-wide/16 v0, 0x0

    .line 118
    .line 119
    cmpg-double v0, p2, v0

    .line 120
    .line 121
    if-gtz v0, :cond_3

    .line 122
    .line 123
    :goto_3
    move v7, p1

    .line 124
    goto :goto_4

    .line 125
    :cond_3
    iget v0, p0, Lzl/g;->g:F

    .line 126
    .line 127
    sub-float/2addr p1, v0

    .line 128
    float-to-double v1, p1

    .line 129
    mul-double/2addr v1, p2

    .line 130
    float-to-double v3, v0

    .line 131
    add-double/2addr v1, v3

    .line 132
    double-to-float p1, v1

    .line 133
    goto :goto_3

    .line 134
    :goto_4
    iput v7, p0, Lzl/g;->f:F

    .line 135
    .line 136
    new-instance p1, Lzl/c;

    .line 137
    .line 138
    iget v1, p0, Lzl/g;->k:I

    .line 139
    .line 140
    iget-char v6, p0, Lzl/g;->h:C

    .line 141
    .line 142
    move-object v0, p1

    .line 143
    move-wide v2, p2

    .line 144
    move-wide v4, p4

    .line 145
    invoke-direct/range {v0 .. v7}, Lzl/c;-><init>(IDDCF)V

    .line 146
    .line 147
    .line 148
    return-object p1
.end method
