.class public final Lio/bidmachine/analytics/internal/W;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/analytics/internal/V;


# instance fields
.field private final a:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final b:Lms/i;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteOpenHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/analytics/internal/W;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 5
    .line 6
    new-instance p1, Lio/bidmachine/analytics/internal/W$a;

    .line 7
    .line 8
    invoke-direct {p1, p0}, Lio/bidmachine/analytics/internal/W$a;-><init>(Lio/bidmachine/analytics/internal/W;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iput-object p1, p0, Lio/bidmachine/analytics/internal/W;->b:Lms/i;

    .line 16
    .line 17
    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/W;)Landroid/database/sqlite/SQLiteOpenHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/analytics/internal/W;->a:Landroid/database/sqlite/SQLiteOpenHelper;

    return-object p0
.end method

.method private final a()Lio/bidmachine/analytics/internal/S;
    .locals 1

    .line 2
    iget-object v0, p0, Lio/bidmachine/analytics/internal/W;->b:Lms/i;

    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/analytics/internal/S;

    return-object v0
.end method

.method private final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 18
    :try_start_0
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 19
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 22
    check-cast v1, Lio/bidmachine/analytics/internal/T;

    .line 23
    invoke-static {v1}, Lio/bidmachine/analytics/internal/U;->a(Lio/bidmachine/analytics/internal/T;)Lio/bidmachine/analytics/internal/Q;

    move-result-object v1

    .line 24
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 25
    :cond_0
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_2
    return-object p1
.end method


# virtual methods
.method public a(Lio/bidmachine/analytics/internal/Q;)Ljava/lang/Object;
    .locals 1

    .line 3
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/W;->a()Lio/bidmachine/analytics/internal/S;

    move-result-object v0

    invoke-static {p1}, Lio/bidmachine/analytics/internal/U;->a(Lio/bidmachine/analytics/internal/Q;)Lio/bidmachine/analytics/internal/T;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/bidmachine/analytics/internal/S;->a(Lio/bidmachine/analytics/internal/T;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .line 4
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/W;->a()Lio/bidmachine/analytics/internal/S;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/analytics/internal/S;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    invoke-direct {p0, p1}, Lio/bidmachine/analytics/internal/W;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1

    .line 6
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/W;->a()Lio/bidmachine/analytics/internal/S;

    move-result-object v0

    .line 7
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    .line 8
    invoke-virtual {v0, p1, p2, p3}, Lio/bidmachine/analytics/internal/S;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)Ljava/lang/Object;

    move-result-object p1

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/analytics/internal/W;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/W;->a()Lio/bidmachine/analytics/internal/S;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/analytics/internal/S;->a(Ljava/lang/String;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/util/List;)Ljava/lang/Object;
    .locals 3

    .line 10
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/W;->a()Lio/bidmachine/analytics/internal/S;

    move-result-object v0

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 13
    check-cast v2, Lio/bidmachine/analytics/internal/Q;

    .line 14
    invoke-static {v2}, Lio/bidmachine/analytics/internal/U;->a(Lio/bidmachine/analytics/internal/Q;)Lio/bidmachine/analytics/internal/T;

    move-result-object v2

    .line 15
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v0, v1}, Lio/bidmachine/analytics/internal/S;->c(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/lang/Object;
    .locals 1

    .line 8
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/W;->a()Lio/bidmachine/analytics/internal/S;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/S;->a()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/util/List;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/W;->a()Lio/bidmachine/analytics/internal/S;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

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
    check-cast v2, Lio/bidmachine/analytics/internal/Q;

    .line 5
    invoke-static {v2}, Lio/bidmachine/analytics/internal/U;->a(Lio/bidmachine/analytics/internal/Q;)Lio/bidmachine/analytics/internal/T;

    move-result-object v2

    .line 6
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, v1}, Lio/bidmachine/analytics/internal/S;->a(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/util/List;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/W;->a()Lio/bidmachine/analytics/internal/S;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    const/16 v2, 0xa

    .line 8
    .line 9
    invoke-static {p1, v2}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lio/bidmachine/analytics/internal/Q;

    .line 31
    .line 32
    invoke-static {v2}, Lio/bidmachine/analytics/internal/U;->a(Lio/bidmachine/analytics/internal/Q;)Lio/bidmachine/analytics/internal/T;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v0, v1}, Lio/bidmachine/analytics/internal/S;->b(Ljava/util/List;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1
.end method
