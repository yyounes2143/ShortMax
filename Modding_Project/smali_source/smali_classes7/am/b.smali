.class public Lam/b;
.super Lam/c;
.source "NormalAnimationStrategy.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lam/c;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final h(Ljava/lang/Iterable;II)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;II)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-eqz v2, :cond_2

    .line 16
    .line 17
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    add-int/lit8 v3, v1, 0x1

    .line 22
    .line 23
    if-gez v1, :cond_0

    .line 24
    .line 25
    invoke-static {}, Lkotlin/collections/CollectionsKt;->y()V

    .line 26
    .line 27
    .line 28
    :cond_0
    if-gt p2, v1, :cond_1

    .line 29
    .line 30
    if-gt v1, p3, :cond_1

    .line 31
    .line 32
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    :cond_1
    move v1, v3

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    return-object v0
.end method


# virtual methods
.method public e(CCILjava/lang/Iterable;)Lkotlin/Pair;
    .locals 0
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

    .line 1
    if-ne p1, p2, :cond_0

    .line 2
    .line 3
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    sget-object p2, Lcom/yy/mobile/rollingtextview/strategy/Direction;->SCROLL_DOWN:Lcom/yy/mobile/rollingtextview/strategy/Direction;

    .line 12
    .line 13
    invoke-static {p1, p2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    if-nez p4, :cond_1

    .line 19
    .line 20
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    filled-new-array {p1, p2}, [Ljava/lang/Character;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    sget-object p2, Lcom/yy/mobile/rollingtextview/strategy/Direction;->SCROLL_DOWN:Lcom/yy/mobile/rollingtextview/strategy/Direction;

    .line 37
    .line 38
    invoke-static {p1, p2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-static {p4, p1}, Lkotlin/collections/CollectionsKt;->u0(Ljava/lang/Iterable;Ljava/lang/Object;)I

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-static {p4, p2}, Lkotlin/collections/CollectionsKt;->u0(Ljava/lang/Iterable;Ljava/lang/Object;)I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-ge p1, p2, :cond_2

    .line 60
    .line 61
    invoke-direct {p0, p4, p1, p2}, Lam/b;->h(Ljava/lang/Iterable;II)Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    sget-object p2, Lcom/yy/mobile/rollingtextview/strategy/Direction;->SCROLL_DOWN:Lcom/yy/mobile/rollingtextview/strategy/Direction;

    .line 66
    .line 67
    invoke-static {p1, p2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    invoke-direct {p0, p4, p2, p1}, Lam/b;->h(Ljava/lang/Iterable;II)Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->Y(Ljava/util/List;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    sget-object p2, Lcom/yy/mobile/rollingtextview/strategy/Direction;->SCROLL_UP:Lcom/yy/mobile/rollingtextview/strategy/Direction;

    .line 81
    .line 82
    invoke-static {p1, p2}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    :goto_0
    return-object p1
.end method
