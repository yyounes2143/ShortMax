.class public final Lio/bidmachine/analytics/internal/I;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/I$a;
    }
.end annotation


# instance fields
.field private final a:Lio/bidmachine/analytics/internal/J;

.field private final b:Lio/bidmachine/analytics/internal/G$a;

.field private c:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lio/bidmachine/analytics/internal/J;Lio/bidmachine/analytics/internal/G$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/bidmachine/analytics/internal/I;->a:Lio/bidmachine/analytics/internal/J;

    .line 3
    iput-object p2, p0, Lio/bidmachine/analytics/internal/I;->b:Lio/bidmachine/analytics/internal/G$a;

    return-void
.end method

.method public synthetic constructor <init>(Lio/bidmachine/analytics/internal/J;Lio/bidmachine/analytics/internal/G$a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 4
    new-instance p2, Lio/bidmachine/analytics/internal/I$a;

    invoke-direct {p2, p1}, Lio/bidmachine/analytics/internal/I$a;-><init>(Lio/bidmachine/analytics/internal/J;)V

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/bidmachine/analytics/internal/I;-><init>(Lio/bidmachine/analytics/internal/J;Lio/bidmachine/analytics/internal/G$a;)V

    return-void
.end method


# virtual methods
.method public final a(Lio/bidmachine/analytics/ReaderConfig$Rule;)Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lio/bidmachine/analytics/internal/I;->a:Lio/bidmachine/analytics/internal/J;

    invoke-virtual {p1}, Lio/bidmachine/analytics/ReaderConfig$Rule;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/bidmachine/analytics/internal/J;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/io/FileNotFoundException;

    invoke-direct {p1}, Ljava/io/FileNotFoundException;-><init>()V

    throw p1
.end method

.method public final a()V
    .locals 2

    .line 14
    iget-object v0, p0, Lio/bidmachine/analytics/internal/I;->c:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 15
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 16
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/analytics/internal/G;

    .line 17
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/G;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a(Lio/bidmachine/analytics/internal/i$a;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/i$a;->c()Ljava/util/List;

    move-result-object p1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Lio/bidmachine/analytics/ReaderConfig$Rule;

    .line 5
    invoke-virtual {v2}, Lio/bidmachine/analytics/ReaderConfig$Rule;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Lkotlin/collections/p0;->e(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-static {v1, v2}, Lkotlin/ranges/e;->e(II)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 9
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    .line 10
    iget-object v2, p0, Lio/bidmachine/analytics/internal/I;->b:Lio/bidmachine/analytics/internal/G$a;

    invoke-interface {v2}, Lio/bidmachine/analytics/internal/G$a;->a()Lio/bidmachine/analytics/internal/G;

    move-result-object v2

    .line 11
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 12
    :cond_1
    invoke-static {p1}, Lkotlin/collections/p0;->A(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    .line 13
    iput-object p1, p0, Lio/bidmachine/analytics/internal/I;->c:Ljava/util/Map;

    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/I;->c:Ljava/util/Map;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/util/Map$Entry;

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Ljava/lang/String;

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lio/bidmachine/analytics/internal/G;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Lio/bidmachine/analytics/internal/G;->a(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    return-void
.end method
