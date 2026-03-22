.class public final Lio/bidmachine/analytics/internal/J;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/J$a;
    }
.end annotation


# static fields
.field private static final d:Lio/bidmachine/analytics/internal/J$a;


# instance fields
.field private final a:I

.field private final b:Ljava/util/Map;

.field private final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/J$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lio/bidmachine/analytics/internal/J$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lio/bidmachine/analytics/internal/J;->d:Lio/bidmachine/analytics/internal/J$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lio/bidmachine/analytics/internal/J;->a:I

    .line 3
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lio/bidmachine/analytics/internal/J;->b:Ljava/util/Map;

    .line 4
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/bidmachine/analytics/internal/J;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/high16 p1, 0x200000

    .line 5
    :cond_0
    invoke-direct {p0, p1}, Lio/bidmachine/analytics/internal/J;-><init>(I)V

    return-void
.end method

.method private final a()Lio/bidmachine/analytics/internal/L;
    .locals 3

    .line 24
    new-instance v0, Lio/bidmachine/analytics/internal/L;

    iget v1, p0, Lio/bidmachine/analytics/internal/J;->a:I

    div-int/lit8 v2, v1, 0x2

    invoke-direct {v0, v2, v1}, Lio/bidmachine/analytics/internal/L;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/J;->c:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    const/4 v1, 0x0

    .line 3
    :try_start_0
    sget-object v2, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 4
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 5
    iget-object v3, p0, Lio/bidmachine/analytics/internal/J;->b:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/analytics/internal/L;

    if-eqz p1, :cond_0

    .line 6
    invoke-static {p1}, Lio/bidmachine/analytics/internal/M;->a(Lio/bidmachine/analytics/internal/L;)[B

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    move-object p1, v1

    .line 7
    :goto_0
    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 8
    invoke-static {v2}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_1
    sget-object v2, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 9
    :goto_2
    monitor-exit v0

    .line 10
    invoke-static {p1}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    move-object v1, p1

    :goto_3
    check-cast v1, Ljava/io/InputStream;

    return-object v1

    :catchall_1
    move-exception p1

    .line 11
    monitor-exit v0

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 12
    iget-object v0, p0, Lio/bidmachine/analytics/internal/J;->c:Ljava/lang/Object;

    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 15
    iget-object v1, p0, Lio/bidmachine/analytics/internal/J;->b:Ljava/util/Map;

    .line 16
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 17
    invoke-direct {p0}, Lio/bidmachine/analytics/internal/J;->a()Lio/bidmachine/analytics/internal/L;

    move-result-object v2

    .line 18
    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    check-cast v2, Lio/bidmachine/analytics/internal/L;

    .line 20
    invoke-virtual {v2, p2}, Lio/bidmachine/analytics/internal/L;->a(Ljava/lang/String;)V

    .line 21
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 22
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    :try_start_1
    sget-object p2, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 23
    :goto_2
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/analytics/internal/J;->c:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :try_start_0
    sget-object v2, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 6
    .line 7
    iget-object v2, p0, Lio/bidmachine/analytics/internal/J;->b:Ljava/util/Map;

    .line 8
    .line 9
    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lio/bidmachine/analytics/internal/L;

    .line 14
    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/L;->a()Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    goto :goto_0

    .line 28
    :catchall_0
    move-exception p1

    .line 29
    goto :goto_1

    .line 30
    :cond_0
    move-object p1, v1

    .line 31
    :goto_0
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    goto :goto_2

    .line 36
    :goto_1
    :try_start_1
    sget-object v2, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 37
    .line 38
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 46
    :goto_2
    monitor-exit v0

    .line 47
    invoke-static {p1}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    goto :goto_3

    .line 54
    :cond_1
    move-object v1, p1

    .line 55
    :goto_3
    check-cast v1, Ljava/lang/String;

    .line 56
    .line 57
    return-object v1

    .line 58
    :catchall_1
    move-exception p1

    .line 59
    monitor-exit v0

    .line 60
    throw p1
.end method
