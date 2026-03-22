.class public final Lio/bidmachine/analytics/internal/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/analytics/internal/k$a;,
        Lio/bidmachine/analytics/internal/k$b;
    }
.end annotation


# static fields
.field public static final a:Lio/bidmachine/analytics/internal/k;

.field private static final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static c:Ljava/util/Map;

.field private static final d:Lio/bidmachine/analytics/internal/l;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/k;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/bidmachine/analytics/internal/k;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/bidmachine/analytics/internal/k;->a:Lio/bidmachine/analytics/internal/k;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lio/bidmachine/analytics/internal/k;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    invoke-static {}, Lkotlin/collections/p0;->i()Ljava/util/Map;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lio/bidmachine/analytics/internal/k;->c:Ljava/util/Map;

    .line 21
    .line 22
    new-instance v0, Lio/bidmachine/analytics/internal/l;

    .line 23
    .line 24
    invoke-direct {v0}, Lio/bidmachine/analytics/internal/l;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lio/bidmachine/analytics/internal/k;->d:Lio/bidmachine/analytics/internal/l;

    .line 28
    .line 29
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

.method private final a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)V
    .locals 3

    .line 102
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 103
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 104
    sget-object v1, Lio/bidmachine/analytics/internal/k;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/analytics/internal/j;

    if-eqz v0, :cond_0

    .line 105
    :try_start_0
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 106
    invoke-virtual {v0, p1}, Lio/bidmachine/analytics/internal/j;->b(Landroid/content/Context;)V

    .line 107
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 108
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {v1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 109
    :goto_1
    invoke-static {v1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 110
    sget-object v2, Lio/bidmachine/analytics/internal/k;->a:Lio/bidmachine/analytics/internal/k;

    invoke-direct {v2, v0, p2, v1}, Lio/bidmachine/analytics/internal/k;->a(Lio/bidmachine/analytics/internal/j;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final a(Lio/bidmachine/analytics/internal/j;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 111
    instance-of v0, p1, Lio/bidmachine/analytics/internal/g;

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/j;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/analytics/internal/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 113
    :cond_0
    instance-of p2, p1, Lio/bidmachine/analytics/internal/i;

    if-eqz p2, :cond_1

    .line 114
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/j;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lio/bidmachine/analytics/internal/k;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/analytics/internal/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static final synthetic a(Lio/bidmachine/analytics/internal/k;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lio/bidmachine/analytics/internal/k;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 12

    .line 115
    sget-object v0, Lio/bidmachine/analytics/internal/m;->a:Lio/bidmachine/analytics/internal/m;

    .line 116
    new-instance v11, Lio/bidmachine/analytics/internal/Q;

    .line 117
    new-instance v8, Lio/bidmachine/analytics/internal/q0;

    .line 118
    sget-object v1, Lio/bidmachine/analytics/internal/q0$a;->b:Lio/bidmachine/analytics/internal/q0$a;

    .line 119
    invoke-static {p3}, Lio/bidmachine/analytics/internal/s0;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    .line 120
    invoke-direct {v8, p1, v1, p3}, Lio/bidmachine/analytics/internal/q0;-><init>(Ljava/lang/String;Lio/bidmachine/analytics/internal/q0$a;Ljava/lang/String;)V

    const/16 v9, 0x19

    const/4 v10, 0x0

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    move-object v1, v11

    move-object v3, p1

    move-object v4, p2

    .line 121
    invoke-direct/range {v1 .. v10}, Lio/bidmachine/analytics/internal/Q;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;Lio/bidmachine/analytics/internal/q0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 122
    invoke-virtual {v0, v11}, Lio/bidmachine/analytics/internal/m;->a(Lio/bidmachine/analytics/internal/Q;)V

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 13

    .line 123
    sget-object v0, Lio/bidmachine/analytics/internal/m;->a:Lio/bidmachine/analytics/internal/m;

    .line 124
    new-instance v12, Lio/bidmachine/analytics/internal/h0;

    .line 125
    new-instance v7, Lio/bidmachine/analytics/internal/h0$a;

    const-string v1, ""

    invoke-direct {v7, v1, v1}, Lio/bidmachine/analytics/internal/h0$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    new-instance v8, Lio/bidmachine/analytics/internal/q0;

    .line 127
    sget-object v1, Lio/bidmachine/analytics/internal/q0$a;->e:Lio/bidmachine/analytics/internal/q0$a;

    .line 128
    invoke-static {p2}, Lio/bidmachine/analytics/internal/s0;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    .line 129
    invoke-direct {v8, p1, v1, p2}, Lio/bidmachine/analytics/internal/q0;-><init>(Ljava/lang/String;Lio/bidmachine/analytics/internal/q0$a;Ljava/lang/String;)V

    const/16 v10, 0x45

    const/4 v11, 0x0

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    .line 130
    const-string v6, ""

    const/4 v9, 0x0

    move-object v1, v12

    move-object v3, p1

    invoke-direct/range {v1 .. v11}, Lio/bidmachine/analytics/internal/h0;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lio/bidmachine/analytics/internal/h0$a;Lio/bidmachine/analytics/internal/q0;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 131
    invoke-virtual {v0, v12}, Lio/bidmachine/analytics/internal/m;->a(Lio/bidmachine/analytics/internal/h0;)V

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/util/List;Ljava/util/Set;)V
    .locals 4

    .line 68
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/analytics/MonitorConfig;

    .line 69
    invoke-virtual {v0}, Lio/bidmachine/analytics/MonitorConfig;->getName()Ljava/lang/String;

    move-result-object v0

    .line 70
    :try_start_0
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 71
    sget-object v1, Lio/bidmachine/analytics/internal/k;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/bidmachine/analytics/internal/j;

    if-eqz v1, :cond_2

    .line 72
    instance-of v2, v1, Lio/bidmachine/analytics/internal/g;

    if-eqz v2, :cond_1

    .line 73
    check-cast v1, Lio/bidmachine/analytics/internal/g;

    .line 74
    new-instance v2, Lio/bidmachine/analytics/internal/g$a;

    .line 75
    new-instance v3, Lio/bidmachine/analytics/internal/k$a;

    invoke-direct {v3, v0, p1}, Lio/bidmachine/analytics/internal/k$a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-direct {v2, v3}, Lio/bidmachine/analytics/internal/g$a;-><init>(Lio/bidmachine/analytics/internal/f;)V

    .line 77
    invoke-virtual {v1, v2}, Lio/bidmachine/analytics/internal/j;->a(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    .line 78
    :cond_1
    :goto_1
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    .line 79
    :goto_2
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    sget-object v2, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {v1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 80
    :goto_4
    invoke-static {v1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v1

    check-cast v2, Lkotlin/Unit;

    .line 81
    invoke-interface {p3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_3
    invoke-static {v1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 83
    sget-object v2, Lio/bidmachine/analytics/internal/k;->a:Lio/bidmachine/analytics/internal/k;

    invoke-direct {v2, v0, p1, v1}, Lio/bidmachine/analytics/internal/k;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private final a(Ljava/util/List;Ljava/util/Set;)V
    .locals 7

    .line 84
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/analytics/ReaderConfig;

    .line 85
    invoke-virtual {v0}, Lio/bidmachine/analytics/ReaderConfig;->getName()Ljava/lang/String;

    move-result-object v1

    .line 86
    :try_start_0
    sget-object v2, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 87
    sget-object v2, Lio/bidmachine/analytics/internal/k;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/analytics/internal/j;

    if-eqz v2, :cond_2

    .line 88
    instance-of v3, v2, Lio/bidmachine/analytics/internal/i;

    if-eqz v3, :cond_1

    .line 89
    check-cast v2, Lio/bidmachine/analytics/internal/i;

    .line 90
    new-instance v3, Lio/bidmachine/analytics/internal/i$a;

    .line 91
    invoke-virtual {v0}, Lio/bidmachine/analytics/ReaderConfig;->getInterval()J

    move-result-wide v4

    .line 92
    invoke-virtual {v0}, Lio/bidmachine/analytics/ReaderConfig;->getRules()Ljava/util/List;

    move-result-object v0

    .line 93
    new-instance v6, Lio/bidmachine/analytics/internal/k$b;

    invoke-direct {v6, v1}, Lio/bidmachine/analytics/internal/k$b;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-direct {v3, v4, v5, v0, v6}, Lio/bidmachine/analytics/internal/i$a;-><init>(JLjava/util/List;Lio/bidmachine/analytics/internal/h;)V

    .line 95
    invoke-virtual {v2, v3}, Lio/bidmachine/analytics/internal/j;->a(Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    .line 96
    :cond_1
    :goto_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    .line 97
    :goto_2
    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :goto_3
    sget-object v2, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {v0}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 98
    :goto_4
    invoke-static {v0}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v0

    check-cast v2, Lkotlin/Unit;

    .line 99
    invoke-interface {p2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    :cond_3
    invoke-static {v0}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 101
    sget-object v2, Lio/bidmachine/analytics/internal/k;->a:Lio/bidmachine/analytics/internal/k;

    invoke-direct {v2, v1, v0}, Lio/bidmachine/analytics/internal/k;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private final b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)V
    .locals 3

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 5
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    sget-object v1, Lio/bidmachine/analytics/internal/k;->c:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/analytics/internal/j;

    if-eqz v0, :cond_0

    .line 7
    :try_start_0
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 8
    invoke-virtual {v0, p1}, Lio/bidmachine/analytics/internal/j;->c(Landroid/content/Context;)V

    .line 9
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {v1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 11
    :goto_1
    invoke-static {v1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 12
    sget-object v2, Lio/bidmachine/analytics/internal/k;->a:Lio/bidmachine/analytics/internal/k;

    invoke-direct {v2, v0, p2, v1}, Lio/bidmachine/analytics/internal/k;->a(Lio/bidmachine/analytics/internal/j;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Lio/bidmachine/analytics/internal/l;
    .locals 1

    .line 3
    sget-object v0, Lio/bidmachine/analytics/internal/k;->d:Lio/bidmachine/analytics/internal/l;

    return-object v0
.end method

.method public final a(Landroid/content/Context;)Ljava/util/Map;
    .locals 6

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5
    :try_start_0
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 6
    new-instance v1, Lio/bidmachine/analytics/internal/O;

    invoke-direct {v1}, Lio/bidmachine/analytics/internal/O;-><init>()V

    .line 7
    invoke-virtual {v1, p1}, Lio/bidmachine/analytics/internal/j;->a(Landroid/content/Context;)V

    .line 8
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {v1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 11
    :goto_0
    invoke-static {v1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_0

    .line 12
    sget-object v3, Lio/bidmachine/analytics/internal/k;->a:Lio/bidmachine/analytics/internal/k;

    const-string v4, "mimp"

    invoke-static {v3, v4, v2, v1}, Lio/bidmachine/analytics/internal/k;->a(Lio/bidmachine/analytics/internal/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    :cond_0
    :try_start_1
    new-instance v1, Lio/bidmachine/analytics/internal/A;

    invoke-direct {v1}, Lio/bidmachine/analytics/internal/A;-><init>()V

    .line 14
    invoke-virtual {v1, p1}, Lio/bidmachine/analytics/internal/j;->a(Landroid/content/Context;)V

    .line 15
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/j;->a()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    sget-object v3, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {v1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 18
    :goto_1
    invoke-static {v1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 19
    sget-object v3, Lio/bidmachine/analytics/internal/k;->a:Lio/bidmachine/analytics/internal/k;

    const-string v4, "isimp"

    invoke-static {v3, v4, v2, v1}, Lio/bidmachine/analytics/internal/k;->a(Lio/bidmachine/analytics/internal/k;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 20
    :cond_1
    :try_start_2
    new-instance v1, Lio/bidmachine/analytics/internal/z;

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/bidmachine/analytics/internal/z;-><init>(Ljava/io/File;)V

    .line 21
    invoke-virtual {v1, p1}, Lio/bidmachine/analytics/internal/j;->a(Landroid/content/Context;)V

    .line 22
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v1

    sget-object v2, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {v1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 25
    :goto_2
    invoke-static {v1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 26
    sget-object v2, Lio/bidmachine/analytics/internal/k;->a:Lio/bidmachine/analytics/internal/k;

    const-string v3, "aints"

    invoke-static {v2, v3, v1}, Lio/bidmachine/analytics/internal/k;->a(Lio/bidmachine/analytics/internal/k;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    :cond_2
    :try_start_3
    new-instance v1, Lio/bidmachine/analytics/internal/v;

    invoke-direct {v1}, Lio/bidmachine/analytics/internal/v;-><init>()V

    .line 28
    invoke-virtual {v1, p1}, Lio/bidmachine/analytics/internal/j;->a(Landroid/content/Context;)V

    .line 29
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/j;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 31
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v1

    sget-object v2, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {v1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 32
    :goto_3
    invoke-static {v1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 33
    sget-object v2, Lio/bidmachine/analytics/internal/k;->a:Lio/bidmachine/analytics/internal/k;

    const-string v3, "aexs"

    invoke-static {v2, v3, v1}, Lio/bidmachine/analytics/internal/k;->a(Lio/bidmachine/analytics/internal/k;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 34
    :try_start_4
    new-instance v3, Lio/bidmachine/analytics/internal/H;

    sget-object v4, Lio/bidmachine/analytics/internal/k;->d:Lio/bidmachine/analytics/internal/l;

    invoke-virtual {v4}, Lio/bidmachine/analytics/internal/l;->a()Lio/bidmachine/analytics/internal/J;

    move-result-object v4

    invoke-direct {v3, v4, v2, v1, v2}, Lio/bidmachine/analytics/internal/H;-><init>(Lio/bidmachine/analytics/internal/J;Lio/bidmachine/analytics/internal/I;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 35
    invoke-virtual {v3, p1}, Lio/bidmachine/analytics/internal/j;->a(Landroid/content/Context;)V

    .line 36
    invoke-virtual {v3}, Lio/bidmachine/analytics/internal/j;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 38
    invoke-static {v3}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v3

    sget-object v4, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {v3}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 39
    :goto_4
    invoke-static {v3}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 40
    sget-object v4, Lio/bidmachine/analytics/internal/k;->a:Lio/bidmachine/analytics/internal/k;

    const-string v5, "alog"

    invoke-static {v4, v5, v3}, Lio/bidmachine/analytics/internal/k;->a(Lio/bidmachine/analytics/internal/k;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    :cond_4
    :try_start_5
    new-instance v3, Lio/bidmachine/analytics/internal/d0;

    sget-object v4, Lio/bidmachine/analytics/internal/k;->d:Lio/bidmachine/analytics/internal/l;

    invoke-virtual {v4}, Lio/bidmachine/analytics/internal/l;->b()Lio/bidmachine/analytics/internal/e0;

    move-result-object v4

    invoke-direct {v3, v4, v2, v1, v2}, Lio/bidmachine/analytics/internal/d0;-><init>(Lio/bidmachine/analytics/internal/e0;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 42
    invoke-virtual {v3, p1}, Lio/bidmachine/analytics/internal/j;->a(Landroid/content/Context;)V

    .line 43
    invoke-virtual {v3}, Lio/bidmachine/analytics/internal/j;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 45
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception p1

    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 46
    :goto_5
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 47
    sget-object v1, Lio/bidmachine/analytics/internal/k;->a:Lio/bidmachine/analytics/internal/k;

    const-string v2, "apur"

    invoke-static {v1, v2, p1}, Lio/bidmachine/analytics/internal/k;->a(Lio/bidmachine/analytics/internal/k;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    return-object v0
.end method

.method public final a(Lio/bidmachine/analytics/internal/e$a;)Ljava/util/Map;
    .locals 8

    .line 53
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 54
    sget-object v1, Lio/bidmachine/analytics/internal/k;->c:Ljava/util/Map;

    .line 55
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 56
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/bidmachine/analytics/internal/j;

    .line 57
    instance-of v4, v2, Lio/bidmachine/analytics/internal/e;

    if-nez v4, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    .line 59
    check-cast v2, Lio/bidmachine/analytics/internal/e;

    invoke-virtual {v2}, Lio/bidmachine/analytics/internal/e;->b()Lio/bidmachine/analytics/internal/e$b;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 60
    invoke-virtual {v5}, Lio/bidmachine/analytics/internal/e$b;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "imd"

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    invoke-virtual {v5}, Lio/bidmachine/analytics/internal/e$b;->b()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const-string v7, "wp"

    invoke-interface {v4, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-virtual {v5}, Lio/bidmachine/analytics/internal/e$b;->c()Ljava/lang/String;

    move-result-object v5

    const-string v6, "agency"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_1
    invoke-virtual {v2, p1}, Lio/bidmachine/analytics/internal/e;->a(Lio/bidmachine/analytics/internal/e$a;)Lio/bidmachine/analytics/internal/e$b;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 64
    invoke-virtual {v2}, Lio/bidmachine/analytics/internal/e$b;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "imimd"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-virtual {v2}, Lio/bidmachine/analytics/internal/e$b;->b()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const-string v6, "imwp"

    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    invoke-virtual {v2}, Lio/bidmachine/analytics/internal/e$b;->c()Ljava/lang/String;

    move-result-object v2

    const-string v5, "imagency"

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_2
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public final a(Landroid/content/Context;Lio/bidmachine/analytics/AnalyticsConfig;)V
    .locals 3

    .line 48
    invoke-virtual {p2}, Lio/bidmachine/analytics/AnalyticsConfig;->getSessionId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lio/bidmachine/analytics/internal/k;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lio/bidmachine/analytics/internal/k;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)V

    .line 49
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 50
    invoke-virtual {p2}, Lio/bidmachine/analytics/AnalyticsConfig;->getSessionId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lio/bidmachine/analytics/AnalyticsConfig;->getMonitorConfigList()Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Lio/bidmachine/analytics/internal/k;->a(Ljava/lang/String;Ljava/util/List;Ljava/util/Set;)V

    .line 51
    invoke-virtual {p2}, Lio/bidmachine/analytics/AnalyticsConfig;->getReaderConfigList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lio/bidmachine/analytics/internal/k;->a(Ljava/util/List;Ljava/util/Set;)V

    .line 52
    invoke-virtual {p2}, Lio/bidmachine/analytics/AnalyticsConfig;->getSessionId()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v0}, Lio/bidmachine/analytics/internal/k;->b(Landroid/content/Context;Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 3

    .line 1
    sget-object v0, Lio/bidmachine/analytics/internal/k;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {p1}, Lio/bidmachine/analytics/internal/s0;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0, p1}, Lio/bidmachine/analytics/internal/k;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p1

    sput-object p1, Lio/bidmachine/analytics/internal/k;->c:Ljava/util/Map;

    return-void
.end method
