.class public final Lm4/e;
.super Ljava/lang/Object;
.source "ANRHandler.kt"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nANRHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ANRHandler.kt\ncom/facebook/internal/instrument/anrreport/ANRHandler\n+ 2 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,77:1\n11335#2:78\n11670#2,3:79\n766#3:82\n857#3,2:83\n1855#3,2:85\n1855#3,2:87\n*S KotlinDebug\n*F\n+ 1 ANRHandler.kt\ncom/facebook/internal/instrument/anrreport/ANRHandler\n*L\n58#1:78\n58#1:79,3\n59#1:82\n59#1:83,2\n63#1:85,2\n69#1:87,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lm4/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lm4/e;

    .line 2
    .line 3
    invoke-direct {v0}, Lm4/e;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lm4/e;->a:Lm4/e;

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
    sput-object v0, Lm4/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
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

.method public static synthetic a(Lcom/facebook/internal/instrument/InstrumentData;Lcom/facebook/internal/instrument/InstrumentData;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lm4/e;->e(Lcom/facebook/internal/instrument/InstrumentData;Lcom/facebook/internal/instrument/InstrumentData;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic b(Ljava/util/List;Lcom/facebook/b0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lm4/e;->f(Ljava/util/List;Lcom/facebook/b0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final declared-synchronized c()V
    .locals 3

    .line 1
    const-class v0, Lm4/e;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    const-class v1, Lm4/e;

    .line 5
    .line 6
    invoke-static {v1}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-void

    .line 14
    :cond_0
    :try_start_1
    sget-object v1, Lm4/e;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 18
    .line 19
    .line 20
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/facebook/v;->p()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-static {}, Lm4/e;->d()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v1

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    :goto_0
    invoke-static {}, Lm4/b;->d()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 38
    .line 39
    .line 40
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :goto_1
    :try_start_3
    const-class v2, Lm4/e;

    .line 43
    .line 44
    invoke-static {v1, v2}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 45
    .line 46
    .line 47
    monitor-exit v0

    .line 48
    return-void

    .line 49
    :catchall_1
    move-exception v1

    .line 50
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 51
    throw v1
.end method

.method public static final d()V
    .locals 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    const-class v0, Lm4/e;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/internal/u0;->a0()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    invoke-static {}, Ll4/i;->l()[Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    new-instance v2, Ljava/util/ArrayList;

    .line 22
    .line 23
    array-length v3, v1

    .line 24
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    .line 26
    .line 27
    array-length v3, v1

    .line 28
    const/4 v4, 0x0

    .line 29
    move v5, v4

    .line 30
    :goto_0
    if-ge v5, v3, :cond_2

    .line 31
    .line 32
    aget-object v6, v1, v5

    .line 33
    .line 34
    invoke-static {v6}, Lcom/facebook/internal/instrument/InstrumentData$a;->d(Ljava/io/File;)Lcom/facebook/internal/instrument/InstrumentData;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-interface {v2, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    add-int/lit8 v5, v5, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catchall_0
    move-exception v1

    .line 45
    goto :goto_3

    .line 46
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v3

    .line 59
    if-eqz v3, :cond_4

    .line 60
    .line 61
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    move-object v5, v3

    .line 66
    check-cast v5, Lcom/facebook/internal/instrument/InstrumentData;

    .line 67
    .line 68
    invoke-virtual {v5}, Lcom/facebook/internal/instrument/InstrumentData;->f()Z

    .line 69
    .line 70
    .line 71
    move-result v5

    .line 72
    if-eqz v5, :cond_3

    .line 73
    .line 74
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    new-instance v2, Lm4/c;

    .line 79
    .line 80
    invoke-direct {v2}, Lm4/c;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-static {v1, v2}, Lkotlin/collections/CollectionsKt;->U0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    new-instance v2, Lorg/json/JSONArray;

    .line 88
    .line 89
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 93
    .line 94
    .line 95
    move-result v3

    .line 96
    const/4 v5, 0x5

    .line 97
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    .line 98
    .line 99
    .line 100
    move-result v3

    .line 101
    invoke-static {v4, v3}, Lkotlin/ranges/e;->v(II)Lkotlin/ranges/IntRange;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    if-eqz v4, :cond_5

    .line 114
    .line 115
    move-object v4, v3

    .line 116
    check-cast v4, Lkotlin/collections/m0;

    .line 117
    .line 118
    invoke-virtual {v4}, Lkotlin/collections/m0;->nextInt()I

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_5
    const-string v3, "anr_reports"

    .line 131
    .line 132
    new-instance v4, Lm4/d;

    .line 133
    .line 134
    invoke-direct {v4, v1}, Lm4/d;-><init>(Ljava/util/List;)V

    .line 135
    .line 136
    .line 137
    invoke-static {v3, v2, v4}, Ll4/i;->s(Ljava/lang/String;Lorg/json/JSONArray;Lcom/facebook/GraphRequest$b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :goto_3
    invoke-static {v1, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 142
    .line 143
    .line 144
    return-void
.end method

.method private static final e(Lcom/facebook/internal/instrument/InstrumentData;Lcom/facebook/internal/instrument/InstrumentData;)I
    .locals 3

    .line 1
    const-class v0, Lm4/e;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    return v2

    .line 11
    :cond_0
    :try_start_0
    const-string v1, "o2"

    .line 12
    .line 13
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/facebook/internal/instrument/InstrumentData;->b(Lcom/facebook/internal/instrument/InstrumentData;)I

    .line 17
    .line 18
    .line 19
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    return p0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    return v2
.end method

.method private static final f(Ljava/util/List;Lcom/facebook/b0;)V
    .locals 2

    .line 1
    const-class v0, Lm4/e;

    .line 2
    .line 3
    invoke-static {v0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    const-string v1, "$validReports"

    .line 11
    .line 12
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v1, "response"

    .line 16
    .line 17
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    :try_start_1
    invoke-virtual {p1}, Lcom/facebook/b0;->b()Lcom/facebook/FacebookRequestError;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-nez v1, :cond_1

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/facebook/b0;->d()Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    const-string v1, "success"

    .line 33
    .line 34
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    const/4 v1, 0x1

    .line 39
    if-ne p1, v1, :cond_1

    .line 40
    .line 41
    check-cast p0, Ljava/lang/Iterable;

    .line 42
    .line 43
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result p1

    .line 51
    if-eqz p1, :cond_1

    .line 52
    .line 53
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lcom/facebook/internal/instrument/InstrumentData;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/facebook/internal/instrument/InstrumentData;->a()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_0
    move-exception p0

    .line 64
    goto :goto_1

    .line 65
    :catch_0
    :cond_1
    return-void

    .line 66
    :goto_1
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method
