.class public final Lio/bidmachine/analytics/internal/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lio/bidmachine/analytics/internal/m;

.field private static final b:Lio/bidmachine/analytics/internal/p0;

.field private static final c:Lgt/g0;

.field private static d:Lio/bidmachine/analytics/internal/c;

.field private static e:Lio/bidmachine/analytics/internal/V;

.field private static f:Lio/bidmachine/analytics/internal/l0;

.field private static g:Ljava/util/Map;

.field private static h:Ljava/util/Map;

.field private static final i:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/m;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/analytics/internal/m;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/bidmachine/analytics/internal/m;->a:Lio/bidmachine/analytics/internal/m;

    .line 7
    .line 8
    sget-object v0, Lio/bidmachine/analytics/internal/p0;->g:Lio/bidmachine/analytics/internal/p0$d;

    .line 9
    .line 10
    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/p0$d;->a()Lio/bidmachine/analytics/internal/p0;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lio/bidmachine/analytics/internal/m;->b:Lio/bidmachine/analytics/internal/p0;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-static {v1, v2, v1}, Lgt/r1;->b(Lkotlinx/coroutines/r;ILjava/lang/Object;)Lgt/s;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/p0;->b()Lgt/c0;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-interface {v1, v0}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lkotlinx/coroutines/i;->a(Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lio/bidmachine/analytics/internal/m;->c:Lgt/g0;

    .line 35
    .line 36
    invoke-static {}, Lkotlin/collections/p0;->i()Ljava/util/Map;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Lio/bidmachine/analytics/internal/m;->g:Ljava/util/Map;

    .line 41
    .line 42
    invoke-static {}, Lkotlin/collections/p0;->i()Ljava/util/Map;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    sput-object v0, Lio/bidmachine/analytics/internal/m;->h:Ljava/util/Map;

    .line 47
    .line 48
    new-instance v0, Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .line 52
    .line 53
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sput-object v0, Lio/bidmachine/analytics/internal/m;->i:Ljava/util/List;

    .line 58
    .line 59
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final a(Lio/bidmachine/analytics/internal/c;)Lio/bidmachine/analytics/internal/V;
    .locals 1

    .line 45
    sget-object v0, Lio/bidmachine/analytics/internal/m;->e:Lio/bidmachine/analytics/internal/V;

    if-nez v0, :cond_0

    new-instance v0, Lio/bidmachine/analytics/internal/W;

    invoke-direct {v0, p1}, Lio/bidmachine/analytics/internal/W;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 46
    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/W;->b()Ljava/lang/Object;

    .line 47
    sput-object v0, Lio/bidmachine/analytics/internal/m;->e:Lio/bidmachine/analytics/internal/V;

    :cond_0
    return-object v0
.end method

.method private final declared-synchronized a(Landroid/content/Context;)Lio/bidmachine/analytics/internal/c;
    .locals 1

    monitor-enter p0

    .line 48
    :try_start_0
    sget-object v0, Lio/bidmachine/analytics/internal/m;->d:Lio/bidmachine/analytics/internal/c;

    if-nez v0, :cond_0

    new-instance v0, Lio/bidmachine/analytics/internal/c;

    invoke-direct {v0, p1}, Lio/bidmachine/analytics/internal/c;-><init>(Landroid/content/Context;)V

    .line 49
    sput-object v0, Lio/bidmachine/analytics/internal/m;->d:Lio/bidmachine/analytics/internal/c;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final a(Landroid/content/Context;Lio/bidmachine/analytics/AnalyticsConfig;Lio/bidmachine/analytics/internal/l0;)Ljava/util/Map;
    .locals 9

    .line 72
    invoke-virtual {p2}, Lio/bidmachine/analytics/AnalyticsConfig;->getReaderConfigList()Ljava/util/List;

    move-result-object v0

    .line 73
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 74
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 75
    check-cast v2, Lio/bidmachine/analytics/ReaderConfig;

    .line 76
    invoke-virtual {v2}, Lio/bidmachine/analytics/ReaderConfig;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, 0x2da21f

    if-eq v4, v5, :cond_7

    const v5, 0x2dbb43

    if-eq v4, v5, :cond_5

    const v5, 0x2dcb0c

    if-eq v4, v5, :cond_3

    const v5, 0x5884e45

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "aints"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 77
    :cond_2
    new-instance v3, Lio/bidmachine/analytics/internal/y;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/bidmachine/analytics/internal/y;-><init>(Ljava/io/File;)V

    goto :goto_2

    .line 78
    :cond_3
    const-string v4, "apur"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    .line 79
    :cond_4
    new-instance v3, Lio/bidmachine/analytics/internal/c0;

    sget-object v4, Lio/bidmachine/analytics/internal/k;->a:Lio/bidmachine/analytics/internal/k;

    invoke-virtual {v4}, Lio/bidmachine/analytics/internal/k;->a()Lio/bidmachine/analytics/internal/l;

    move-result-object v4

    invoke-virtual {v4}, Lio/bidmachine/analytics/internal/l;->b()Lio/bidmachine/analytics/internal/e0;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/bidmachine/analytics/internal/c0;-><init>(Lio/bidmachine/analytics/internal/e0;)V

    goto :goto_2

    .line 80
    :cond_5
    const-string v4, "alog"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_1

    .line 81
    :cond_6
    new-instance v3, Lio/bidmachine/analytics/internal/E;

    sget-object v4, Lio/bidmachine/analytics/internal/k;->a:Lio/bidmachine/analytics/internal/k;

    invoke-virtual {v4}, Lio/bidmachine/analytics/internal/k;->a()Lio/bidmachine/analytics/internal/l;

    move-result-object v4

    invoke-virtual {v4}, Lio/bidmachine/analytics/internal/l;->a()Lio/bidmachine/analytics/internal/J;

    move-result-object v4

    invoke-direct {v3, v4}, Lio/bidmachine/analytics/internal/E;-><init>(Lio/bidmachine/analytics/internal/J;)V

    goto :goto_2

    .line 82
    :cond_7
    const-string v4, "aexs"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    :goto_1
    const/4 v2, 0x0

    goto :goto_3

    .line 83
    :cond_8
    new-instance v3, Lio/bidmachine/analytics/internal/u;

    invoke-direct {v3}, Lio/bidmachine/analytics/internal/u;-><init>()V

    .line 84
    :goto_2
    new-instance v4, Lio/bidmachine/analytics/internal/n0;

    .line 85
    sget-object v5, Lio/bidmachine/analytics/internal/p0;->g:Lio/bidmachine/analytics/internal/p0$d;

    invoke-virtual {v5}, Lio/bidmachine/analytics/internal/p0$d;->a()Lio/bidmachine/analytics/internal/p0;

    move-result-object v5

    .line 86
    new-instance v6, Lio/bidmachine/analytics/internal/n0$a;

    .line 87
    invoke-virtual {p2}, Lio/bidmachine/analytics/AnalyticsConfig;->getSessionId()Ljava/lang/String;

    move-result-object v7

    .line 88
    invoke-virtual {p2}, Lio/bidmachine/analytics/AnalyticsConfig;->getExtras()Lcom/explorestack/protobuf/Struct;

    move-result-object v8

    .line 89
    invoke-direct {v6, v2, v7, v8, v3}, Lio/bidmachine/analytics/internal/n0$a;-><init>(Lio/bidmachine/analytics/ReaderConfig;Ljava/lang/String;Lcom/explorestack/protobuf/Struct;Lio/bidmachine/analytics/internal/g0$a;)V

    .line 90
    invoke-direct {v4, v5, v6, p3}, Lio/bidmachine/analytics/internal/n0;-><init>(Lio/bidmachine/analytics/internal/p0;Lio/bidmachine/analytics/internal/n0$a;Lio/bidmachine/analytics/internal/l0;)V

    move-object v2, v4

    :goto_3
    if-eqz v2, :cond_0

    .line 91
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_9
    const/16 p1, 0xa

    .line 92
    invoke-static {v1, p1}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-static {p1}, Lkotlin/collections/p0;->e(I)I

    move-result p1

    const/16 p2, 0x10

    invoke-static {p1, p2}, Lkotlin/ranges/e;->e(II)I

    move-result p1

    .line 93
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 94
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 95
    move-object v0, p3

    check-cast v0, Lio/bidmachine/analytics/internal/n0;

    .line 96
    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/n0;->a()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-interface {p2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_a
    return-object p2
.end method

.method private final a(Lio/bidmachine/analytics/AnalyticsConfig;Lio/bidmachine/analytics/internal/V;)Ljava/util/Map;
    .locals 9

    .line 50
    invoke-virtual {p1}, Lio/bidmachine/analytics/AnalyticsConfig;->getMonitorConfigList()Ljava/util/List;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lio/bidmachine/analytics/MonitorConfig;

    .line 53
    invoke-virtual {v3}, Lio/bidmachine/analytics/MonitorConfig;->isReportEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 54
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 57
    check-cast v3, Lio/bidmachine/analytics/MonitorConfig;

    .line 58
    new-instance v4, Lio/bidmachine/analytics/internal/X;

    .line 59
    sget-object v5, Lio/bidmachine/analytics/internal/p0;->g:Lio/bidmachine/analytics/internal/p0$d;

    invoke-virtual {v5}, Lio/bidmachine/analytics/internal/p0$d;->a()Lio/bidmachine/analytics/internal/p0;

    move-result-object v5

    .line 60
    new-instance v6, Lio/bidmachine/analytics/internal/X$b;

    .line 61
    invoke-virtual {p1}, Lio/bidmachine/analytics/AnalyticsConfig;->getSessionId()Ljava/lang/String;

    move-result-object v7

    .line 62
    invoke-virtual {p1}, Lio/bidmachine/analytics/AnalyticsConfig;->getExtras()Lcom/explorestack/protobuf/Struct;

    move-result-object v8

    .line 63
    invoke-direct {v6, v3, v7, v8}, Lio/bidmachine/analytics/internal/X$b;-><init>(Lio/bidmachine/analytics/MonitorConfig;Ljava/lang/String;Lcom/explorestack/protobuf/Struct;)V

    .line 64
    invoke-direct {v4, v5, v6, p2}, Lio/bidmachine/analytics/internal/X;-><init>(Lio/bidmachine/analytics/internal/p0;Lio/bidmachine/analytics/internal/X$b;Lio/bidmachine/analytics/internal/V;)V

    .line 65
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 66
    :cond_2
    invoke-static {v0, v2}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    move-result p1

    invoke-static {p1}, Lkotlin/collections/p0;->e(I)I

    move-result p1

    const/16 p2, 0x10

    invoke-static {p1, p2}, Lkotlin/ranges/e;->e(II)I

    move-result p1

    .line 67
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 68
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 69
    move-object v1, v0

    check-cast v1, Lio/bidmachine/analytics/internal/X;

    .line 70
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/X;->b()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    return-object p2
.end method

.method private final a(Lio/bidmachine/analytics/internal/V;Ljava/lang/String;Ljava/util/List;)V
    .locals 6

    .line 102
    sget-object v0, Lio/bidmachine/analytics/internal/m;->c:Lgt/g0;

    sget-object v1, Lio/bidmachine/analytics/internal/m;->b:Lio/bidmachine/analytics/internal/p0;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/p0;->c()Lgt/c0;

    move-result-object v1

    new-instance v3, Lio/bidmachine/analytics/internal/m$a;

    const/4 v2, 0x0

    invoke-direct {v3, p1, p2, p3, v2}, Lio/bidmachine/analytics/internal/m$a;-><init>(Lio/bidmachine/analytics/internal/V;Ljava/lang/String;Ljava/util/List;Lrs/c;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    return-void
.end method

.method private final a(Lio/bidmachine/analytics/internal/l0;Ljava/util/List;Ljava/util/List;)V
    .locals 6

    .line 103
    sget-object v0, Lio/bidmachine/analytics/internal/m;->c:Lgt/g0;

    sget-object v1, Lio/bidmachine/analytics/internal/m;->b:Lio/bidmachine/analytics/internal/p0;

    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/p0;->c()Lgt/c0;

    move-result-object v1

    new-instance v3, Lio/bidmachine/analytics/internal/m$b;

    const/4 v2, 0x0

    invoke-direct {v3, p1, p2, p3, v2}, Lio/bidmachine/analytics/internal/m$b;-><init>(Lio/bidmachine/analytics/internal/l0;Ljava/util/List;Ljava/util/List;Lrs/c;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    return-void
.end method

.method private final a(Ljava/lang/String;)V
    .locals 12

    .line 98
    sget-object v0, Lio/bidmachine/analytics/internal/m;->i:Ljava/util/List;

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->d1(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 99
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 100
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lio/bidmachine/analytics/internal/Q;

    .line 101
    sget-object v1, Lio/bidmachine/analytics/internal/m;->a:Lio/bidmachine/analytics/internal/m;

    const/16 v10, 0x3b

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p1

    invoke-static/range {v2 .. v11}, Lio/bidmachine/analytics/internal/Q;->a(Lio/bidmachine/analytics/internal/Q;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;Lio/bidmachine/analytics/internal/q0;ILjava/lang/Object;)Lio/bidmachine/analytics/internal/Q;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/bidmachine/analytics/internal/m;->a(Lio/bidmachine/analytics/internal/Q;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final a(Ljava/util/Map;)V
    .locals 1

    .line 42
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    .line 43
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/analytics/internal/X;

    .line 44
    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/X;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final declared-synchronized b(Lio/bidmachine/analytics/internal/c;)Lio/bidmachine/analytics/internal/l0;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lio/bidmachine/analytics/internal/m;->f:Lio/bidmachine/analytics/internal/l0;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Lio/bidmachine/analytics/internal/m0;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lio/bidmachine/analytics/internal/m0;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Lio/bidmachine/analytics/internal/m0;->b()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    sput-object v0, Lio/bidmachine/analytics/internal/m;->f:Lio/bidmachine/analytics/internal/l0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :catchall_0
    move-exception p1

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    :goto_0
    monitor-exit p0

    .line 20
    return-object v0

    .line 21
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw p1
.end method


# virtual methods
.method public final a(Landroid/content/Context;Lio/bidmachine/analytics/AnalyticsConfig;)V
    .locals 9

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Lio/bidmachine/analytics/internal/m;->a:Lio/bidmachine/analytics/internal/m;

    invoke-direct {v0, p1}, Lio/bidmachine/analytics/internal/m;->a(Landroid/content/Context;)Lio/bidmachine/analytics/internal/c;

    move-result-object v1

    .line 3
    invoke-direct {v0, v1}, Lio/bidmachine/analytics/internal/m;->a(Lio/bidmachine/analytics/internal/c;)Lio/bidmachine/analytics/internal/V;

    move-result-object v2

    .line 4
    invoke-direct {v0, v1}, Lio/bidmachine/analytics/internal/m;->b(Lio/bidmachine/analytics/internal/c;)Lio/bidmachine/analytics/internal/l0;

    move-result-object v1

    .line 5
    sget-object v3, Lio/bidmachine/analytics/internal/m;->g:Ljava/util/Map;

    invoke-direct {v0, v3}, Lio/bidmachine/analytics/internal/m;->a(Ljava/util/Map;)V

    .line 6
    invoke-direct {v0, p2, v2}, Lio/bidmachine/analytics/internal/m;->a(Lio/bidmachine/analytics/AnalyticsConfig;Lio/bidmachine/analytics/internal/V;)Ljava/util/Map;

    move-result-object v3

    sput-object v3, Lio/bidmachine/analytics/internal/m;->g:Ljava/util/Map;

    .line 7
    invoke-direct {v0, p1, p2, v1}, Lio/bidmachine/analytics/internal/m;->a(Landroid/content/Context;Lio/bidmachine/analytics/AnalyticsConfig;Lio/bidmachine/analytics/internal/l0;)Ljava/util/Map;

    move-result-object p1

    sput-object p1, Lio/bidmachine/analytics/internal/m;->h:Ljava/util/Map;

    .line 8
    invoke-virtual {p2}, Lio/bidmachine/analytics/AnalyticsConfig;->getSessionId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lio/bidmachine/analytics/internal/m;->a(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p2}, Lio/bidmachine/analytics/AnalyticsConfig;->getSessionId()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {p2}, Lio/bidmachine/analytics/AnalyticsConfig;->getMonitorConfigList()Ljava/util/List;

    move-result-object v3

    .line 11
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 13
    check-cast v6, Lio/bidmachine/analytics/MonitorConfig;

    .line 14
    invoke-virtual {v6}, Lio/bidmachine/analytics/MonitorConfig;->getName()Ljava/lang/String;

    move-result-object v6

    .line 15
    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    .line 16
    :cond_0
    invoke-direct {v0, v2, p1, v4}, Lio/bidmachine/analytics/internal/m;->a(Lio/bidmachine/analytics/internal/V;Ljava/lang/String;Ljava/util/List;)V

    .line 17
    sget-object p1, Lio/bidmachine/analytics/internal/m;->a:Lio/bidmachine/analytics/internal/m;

    .line 18
    invoke-virtual {p2}, Lio/bidmachine/analytics/AnalyticsConfig;->getReaderConfigList()Ljava/util/List;

    move-result-object v0

    .line 19
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v0, v5}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 20
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 21
    check-cast v3, Lio/bidmachine/analytics/ReaderConfig;

    .line 22
    invoke-virtual {v3}, Lio/bidmachine/analytics/ReaderConfig;->getName()Ljava/lang/String;

    move-result-object v3

    .line 23
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 24
    :cond_1
    invoke-virtual {p2}, Lio/bidmachine/analytics/AnalyticsConfig;->getReaderConfigList()Ljava/util/List;

    move-result-object p2

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p2, v5}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 27
    check-cast v3, Lio/bidmachine/analytics/ReaderConfig;

    .line 28
    invoke-virtual {v3}, Lio/bidmachine/analytics/ReaderConfig;->getRules()Ljava/util/List;

    move-result-object v3

    .line 29
    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 30
    :cond_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 32
    check-cast v3, Ljava/util/List;

    .line 33
    new-instance v4, Ljava/util/ArrayList;

    invoke-static {v3, v5}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 35
    check-cast v6, Lio/bidmachine/analytics/ReaderConfig$Rule;

    .line 36
    new-instance v7, Lio/bidmachine/analytics/internal/h0$a;

    invoke-virtual {v6}, Lio/bidmachine/analytics/ReaderConfig$Rule;->getTag()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lio/bidmachine/analytics/ReaderConfig$Rule;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v8, v6}, Lio/bidmachine/analytics/internal/h0$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-interface {v4, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 38
    :cond_3
    invoke-static {p2, v4}, Lkotlin/collections/CollectionsKt;->E(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    goto :goto_3

    .line 39
    :cond_4
    invoke-direct {p1, v1, v2, p2}, Lio/bidmachine/analytics/internal/m;->a(Lio/bidmachine/analytics/internal/l0;Ljava/util/List;Ljava/util/List;)V

    .line 40
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    :goto_5
    monitor-exit p0

    throw p1
.end method

.method public final a(Lio/bidmachine/analytics/internal/Q;)V
    .locals 2

    .line 104
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/Q;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    sget-object v0, Lio/bidmachine/analytics/internal/m;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 106
    :cond_0
    sget-object v0, Lio/bidmachine/analytics/internal/m;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/Q;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/analytics/internal/X;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lio/bidmachine/analytics/internal/X;->b(Lio/bidmachine/analytics/internal/Q;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Lio/bidmachine/analytics/internal/h0;)V
    .locals 1

    .line 107
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/h0;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lio/bidmachine/analytics/internal/m;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/util/List;)V
    .locals 1

    .line 108
    sget-object v0, Lio/bidmachine/analytics/internal/m;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/analytics/internal/n0;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lio/bidmachine/analytics/internal/n0;->b(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method
