.class public abstract Lam/c;
.super Ljava/lang/Object;
.source "CharOrderStrategy.kt"

# interfaces
.implements Lam/a;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/util/List;)Lkotlin/Pair;
    .locals 3
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "I",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Collection<",
            "Ljava/lang/Character;",
            ">;>;)",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;",
            "Lcom/yy/mobile/rollingtextview/strategy/Direction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "sourceText"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "targetText"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "charPool"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    sub-int v1, v0, v1

    .line 33
    .line 34
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    sub-int/2addr v0, v2

    .line 39
    const/4 v2, 0x0

    .line 40
    if-lt p3, v1, :cond_0

    .line 41
    .line 42
    sub-int v1, p3, v1

    .line 43
    .line 44
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    move p1, v2

    .line 50
    :goto_0
    if-lt p3, v0, :cond_1

    .line 51
    .line 52
    sub-int v0, p3, v0

    .line 53
    .line 54
    invoke-interface {p2, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    :cond_1
    invoke-virtual {p0, p1, v2, p3, p4}, Lam/c;->f(CCILjava/util/List;)Lkotlin/Pair;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    return-object p1
.end method

.method public b()V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Lzl/c;ILjava/util/List;I)Lzl/b;
    .locals 10
    .param p1    # Lzl/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzl/c;",
            "I",
            "Ljava/util/List<",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;>;I)",
            "Lzl/b;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p4, "previousProgress"

    .line 2
    .line 3
    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p4, "columns"

    .line 7
    .line 8
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result p4

    .line 15
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    check-cast p3, Ljava/util/List;

    .line 20
    .line 21
    invoke-virtual {p0, p1, p2, p4, p3}, Lam/c;->g(Lzl/c;IILjava/util/List;)D

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 26
    .line 27
    .line 28
    move-result p2

    .line 29
    add-int/lit8 p2, p2, -0x1

    .line 30
    .line 31
    int-to-double p2, p2

    .line 32
    invoke-virtual {p1}, Lzl/c;->a()D

    .line 33
    .line 34
    .line 35
    move-result-wide v2

    .line 36
    mul-double/2addr p2, v2

    .line 37
    double-to-int v3, p2

    .line 38
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 39
    .line 40
    div-double v6, v4, v0

    .line 41
    .line 42
    sub-double/2addr v4, v0

    .line 43
    mul-double v0, v4, v6

    .line 44
    .line 45
    int-to-double v8, v3

    .line 46
    sub-double/2addr p2, v8

    .line 47
    cmpl-double p4, p2, v4

    .line 48
    .line 49
    if-ltz p4, :cond_0

    .line 50
    .line 51
    mul-double/2addr p2, v6

    .line 52
    sub-double/2addr p2, v0

    .line 53
    :goto_0
    move-wide v4, p2

    .line 54
    goto :goto_1

    .line 55
    :cond_0
    const-wide/16 p2, 0x0

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :goto_1
    new-instance p2, Lzl/b;

    .line 59
    .line 60
    invoke-virtual {p1}, Lzl/c;->a()D

    .line 61
    .line 62
    .line 63
    move-result-wide v6

    .line 64
    move-object v2, p2

    .line 65
    invoke-direct/range {v2 .. v7}, Lzl/b;-><init>(IDD)V

    .line 66
    .line 67
    .line 68
    return-object p2
.end method

.method public d(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Collection<",
            "Ljava/lang/Character;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "sourceText"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "targetText"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "charPool"

    .line 12
    .line 13
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public abstract e(CCILjava/lang/Iterable;)Lkotlin/Pair;
    .param p4    # Ljava/lang/Iterable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CCI",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Character;",
            ">;)",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;",
            "Lcom/yy/mobile/rollingtextview/strategy/Direction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public f(CCILjava/util/List;)Lkotlin/Pair;
    .locals 3
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(CCI",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Collection<",
            "Ljava/lang/Character;",
            ">;>;)",
            "Lkotlin/Pair<",
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;",
            "Lcom/yy/mobile/rollingtextview/strategy/Direction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "charPool"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    check-cast p4, Ljava/lang/Iterable;

    .line 7
    .line 8
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p4

    .line 12
    :cond_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    move-object v1, v0

    .line 23
    check-cast v1, Ljava/util/Collection;

    .line 24
    .line 25
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-interface {v1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-interface {v1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 v0, 0x0

    .line 47
    :goto_0
    check-cast v0, Ljava/util/Collection;

    .line 48
    .line 49
    check-cast v0, Ljava/lang/Iterable;

    .line 50
    .line 51
    invoke-virtual {p0, p1, p2, p3, v0}, Lam/c;->e(CCILjava/lang/Iterable;)Lkotlin/Pair;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    return-object p1
.end method

.method public g(Lzl/c;IILjava/util/List;)D
    .locals 0
    .param p1    # Lzl/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lzl/c;",
            "II",
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;)D"
        }
    .end annotation

    .line 1
    const-string p2, "previousProgress"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "charList"

    .line 7
    .line 8
    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 12
    .line 13
    return-wide p1
.end method
