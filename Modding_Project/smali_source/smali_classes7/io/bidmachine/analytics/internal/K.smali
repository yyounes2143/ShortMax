.class public final Lio/bidmachine/analytics/internal/K;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Object;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 5
    .line 6
    new-instance v0, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lio/bidmachine/analytics/internal/K;->a:Ljava/lang/Object;

    .line 20
    .line 21
    const-string v0, "amF2YS5sYW5nLlByb2Nlc3NCdWlsZGVy"

    .line 22
    .line 23
    iput-object v0, p0, Lio/bidmachine/analytics/internal/K;->b:Ljava/lang/String;

    .line 24
    .line 25
    const-string v0, "c3RhcnQ="

    .line 26
    .line 27
    iput-object v0, p0, Lio/bidmachine/analytics/internal/K;->c:Ljava/lang/String;

    .line 28
    .line 29
    const-string v0, "Z2V0SW5wdXRTdHJlYW0="

    .line 30
    .line 31
    iput-object v0, p0, Lio/bidmachine/analytics/internal/K;->d:Ljava/lang/String;

    .line 32
    .line 33
    const-string v0, "ZGVzdHJveQ=="

    .line 34
    .line 35
    iput-object v0, p0, Lio/bidmachine/analytics/internal/K;->e:Ljava/lang/String;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Ljava/io/InputStream;
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 2
    iget-object v1, p0, Lio/bidmachine/analytics/internal/K;->b:Ljava/lang/String;

    invoke-static {v1}, Lio/bidmachine/analytics/internal/s0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 3
    const-class v2, Ljava/util/List;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 4
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->d1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    iget-object v2, p0, Lio/bidmachine/analytics/internal/K;->c:Ljava/lang/String;

    invoke-static {v2}, Lio/bidmachine/analytics/internal/s0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 6
    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lio/bidmachine/analytics/internal/K;->a:Ljava/lang/Object;

    .line 8
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    .line 9
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lio/bidmachine/analytics/internal/K;->d:Ljava/lang/String;

    invoke-static {v2}, Lio/bidmachine/analytics/internal/s0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_2

    :cond_0
    move-object p1, v0

    :goto_1
    check-cast p1, Ljava/io/InputStream;

    .line 10
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :goto_2
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :cond_1
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    :goto_3
    invoke-static {p1}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_4

    :cond_2
    move-object v0, p1

    :goto_4
    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method

.method public final a()V
    .locals 4

    .line 12
    iget-object v0, p0, Lio/bidmachine/analytics/internal/K;->a:Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 13
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lio/bidmachine/analytics/internal/K;->e:Ljava/lang/String;

    invoke-static {v3}, Lio/bidmachine/analytics/internal/s0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 14
    invoke-virtual {v2, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 15
    :cond_0
    :goto_0
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method
