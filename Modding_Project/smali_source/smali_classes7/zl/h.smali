.class public final Lzl/h;
.super Ljava/lang/Object;
.source "TextManager.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzl/h$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final i:Lzl/h$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Landroid/graphics/Paint;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lzl/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lzl/g;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private f:I

.field private g:F

.field private h:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lzl/h$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lzl/h$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lzl/h;->i:Lzl/h$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;Lzl/a;)V
    .locals 1
    .param p1    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lzl/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "textPaint"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "charOrderManager"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lzl/h;->a:Landroid/graphics/Paint;

    .line 15
    .line 16
    iput-object p2, p0, Lzl/h;->b:Lzl/a;

    .line 17
    .line 18
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 19
    .line 20
    const/16 p2, 0x24

    .line 21
    .line 22
    invoke-direct {p1, p2}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, Lzl/h;->c:Ljava/util/Map;

    .line 26
    .line 27
    new-instance p1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lzl/h;->d:Ljava/util/List;

    .line 33
    .line 34
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string p2, "emptyList()"

    .line 39
    .line 40
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iput-object p1, p0, Lzl/h;->e:Ljava/util/List;

    .line 44
    .line 45
    invoke-virtual {p0}, Lzl/h;->l()V

    .line 46
    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method public final a(CLandroid/graphics/Paint;)F
    .locals 2
    .param p2    # Landroid/graphics/Paint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "textPaint"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lzl/h;->c:Ljava/util/Map;

    .line 11
    .line 12
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Ljava/lang/Float;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    invoke-static {p1}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 29
    .line 30
    .line 31
    move-result p2

    .line 32
    iget-object v0, p0, Lzl/h;->c:Ljava/util/Map;

    .line 33
    .line 34
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move p1, p2

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    :goto_0
    return p1
.end method

.method public final b(Landroid/graphics/Canvas;)V
    .locals 3
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
    iget-object v0, p0, Lzl/h;->d:Ljava/util/List;

    .line 7
    .line 8
    check-cast v0, Ljava/lang/Iterable;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lzl/g;

    .line 25
    .line 26
    invoke-virtual {v1, p1}, Lzl/g;->a(Landroid/graphics/Canvas;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Lzl/g;->g()F

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {p0}, Lzl/h;->e()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    int-to-float v2, v2

    .line 38
    add-float/2addr v1, v2

    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method

.method public final c()[C
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lzl/h;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    new-array v1, v0, [C

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v0, :cond_0

    .line 11
    .line 12
    iget-object v3, p0, Lzl/h;->d:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    check-cast v3, Lzl/g;

    .line 19
    .line 20
    invoke-virtual {v3}, Lzl/g;->f()C

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    aput-char v3, v1, v2

    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    return-object v1
.end method

.method public final d()F
    .locals 4

    .line 1
    iget v0, p0, Lzl/h;->f:I

    .line 2
    .line 3
    iget-object v1, p0, Lzl/h;->d:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    add-int/lit8 v1, v1, -0x1

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    mul-int/2addr v0, v1

    .line 17
    iget-object v1, p0, Lzl/h;->d:Ljava/util/List;

    .line 18
    .line 19
    check-cast v1, Ljava/lang/Iterable;

    .line 20
    .line 21
    new-instance v2, Ljava/util/ArrayList;

    .line 22
    .line 23
    const/16 v3, 0xa

    .line 24
    .line 25
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-eqz v3, :cond_0

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Lzl/g;

    .line 47
    .line 48
    invoke-virtual {v3}, Lzl/g;->g()F

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    const/4 v2, 0x0

    .line 65
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    if-eqz v3, :cond_1

    .line 70
    .line 71
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    check-cast v3, Ljava/lang/Number;

    .line 76
    .line 77
    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    add-float/2addr v2, v3

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    int-to-float v0, v0

    .line 84
    add-float/2addr v2, v0

    .line 85
    return v2
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Lzl/h;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public final f()F
    .locals 1

    .line 1
    iget v0, p0, Lzl/h;->h:F

    .line 2
    .line 3
    return v0
.end method

.method public final g()F
    .locals 1

    .line 1
    iget v0, p0, Lzl/h;->g:F

    .line 2
    .line 3
    return v0
.end method

.method public final h()V
    .locals 2

    .line 1
    iget-object v0, p0, Lzl/h;->d:Ljava/util/List;

    .line 2
    .line 3
    check-cast v0, Ljava/lang/Iterable;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Lzl/g;

    .line 20
    .line 21
    invoke-virtual {v1}, Lzl/g;->l()V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lzl/h;->b:Lzl/a;

    .line 26
    .line 27
    invoke-virtual {v0}, Lzl/a;->b()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final i(I)V
    .locals 0

    .line 1
    iput p1, p0, Lzl/h;->f:I

    .line 2
    .line 3
    return-void
.end method

.method public final j(Ljava/lang/CharSequence;)V
    .locals 11
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "targetText"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lzl/h;->c()[C

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/lang/String;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    iget-object v2, p0, Lzl/h;->b:Lzl/a;

    .line 28
    .line 29
    invoke-virtual {v2, v1, p1}, Lzl/a;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lzl/h;->d:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 35
    .line 36
    .line 37
    if-lez v0, :cond_1

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    :cond_0
    move v5, v2

    .line 41
    add-int/lit8 v2, v5, 0x1

    .line 42
    .line 43
    iget-object v3, p0, Lzl/h;->b:Lzl/a;

    .line 44
    .line 45
    invoke-virtual {v3, v1, p1, v5}, Lzl/a;->d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)Lkotlin/Pair;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3}, Lkotlin/Pair;->b()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    move-object v7, v4

    .line 54
    check-cast v7, Ljava/util/List;

    .line 55
    .line 56
    invoke-virtual {v3}, Lkotlin/Pair;->d()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    move-object v8, v3

    .line 61
    check-cast v8, Lcom/yy/mobile/rollingtextview/strategy/Direction;

    .line 62
    .line 63
    iget-object v9, p0, Lzl/h;->d:Ljava/util/List;

    .line 64
    .line 65
    new-instance v10, Lzl/g;

    .line 66
    .line 67
    iget-object v6, p0, Lzl/h;->a:Landroid/graphics/Paint;

    .line 68
    .line 69
    move-object v3, v10

    .line 70
    move-object v4, p0

    .line 71
    invoke-direct/range {v3 .. v8}, Lzl/g;-><init>(Lzl/h;ILandroid/graphics/Paint;Ljava/util/List;Lcom/yy/mobile/rollingtextview/strategy/Direction;)V

    .line 72
    .line 73
    .line 74
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    if-lt v2, v0, :cond_0

    .line 78
    .line 79
    :cond_1
    iget-object p1, p0, Lzl/h;->d:Ljava/util/List;

    .line 80
    .line 81
    check-cast p1, Ljava/lang/Iterable;

    .line 82
    .line 83
    new-instance v0, Ljava/util/ArrayList;

    .line 84
    .line 85
    const/16 v1, 0xa

    .line 86
    .line 87
    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 92
    .line 93
    .line 94
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_2

    .line 103
    .line 104
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    check-cast v1, Lzl/g;

    .line 109
    .line 110
    invoke-virtual {v1}, Lzl/g;->e()Ljava/util/List;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_2
    iput-object v0, p0, Lzl/h;->e:Ljava/util/List;

    .line 119
    .line 120
    return-void
.end method

.method public final k(F)V
    .locals 11

    .line 1
    new-instance v10, Lzl/c;

    .line 2
    .line 3
    float-to-double v4, p1

    .line 4
    const/16 v8, 0x18

    .line 5
    .line 6
    const/4 v9, 0x0

    .line 7
    const/4 v1, 0x0

    .line 8
    const-wide/16 v2, 0x0

    .line 9
    .line 10
    const/4 v6, 0x0

    .line 11
    const/4 v7, 0x0

    .line 12
    move-object v0, v10

    .line 13
    invoke-direct/range {v0 .. v9}, Lzl/c;-><init>(IDDCFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lzl/h;->d:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-interface {p1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_0
    invoke-interface {p1}, Ljava/util/ListIterator;->hasPrevious()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/ListIterator;->previousIndex()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    invoke-interface {p1}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    move-object v2, v1

    .line 47
    check-cast v2, Lzl/g;

    .line 48
    .line 49
    iget-object v1, p0, Lzl/h;->b:Lzl/a;

    .line 50
    .line 51
    iget-object v3, p0, Lzl/h;->e:Ljava/util/List;

    .line 52
    .line 53
    invoke-virtual {v2}, Lzl/g;->h()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    invoke-virtual {v1, v10, v0, v3, v4}, Lzl/a;->f(Lzl/c;ILjava/util/List;I)Lzl/b;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lzl/b;->a()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    invoke-virtual {v0}, Lzl/b;->b()D

    .line 66
    .line 67
    .line 68
    move-result-wide v4

    .line 69
    invoke-virtual {v0}, Lzl/b;->c()D

    .line 70
    .line 71
    .line 72
    move-result-wide v6

    .line 73
    invoke-virtual/range {v2 .. v7}, Lzl/g;->m(IDD)Lzl/c;

    .line 74
    .line 75
    .line 76
    move-result-object v10

    .line 77
    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method public final l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lzl/h;->c:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lzl/h;->a:Landroid/graphics/Paint;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    .line 13
    .line 14
    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    .line 15
    .line 16
    sub-float/2addr v1, v0

    .line 17
    iput v1, p0, Lzl/h;->g:F

    .line 18
    .line 19
    neg-float v0, v0

    .line 20
    iput v0, p0, Lzl/h;->h:F

    .line 21
    .line 22
    iget-object v0, p0, Lzl/h;->d:Ljava/util/List;

    .line 23
    .line 24
    check-cast v0, Ljava/lang/Iterable;

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Lzl/g;

    .line 41
    .line 42
    invoke-virtual {v1}, Lzl/g;->k()V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-void
.end method
