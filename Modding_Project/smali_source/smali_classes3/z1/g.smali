.class public final Lz1/g;
.super Ljava/lang/Object;
.source "StdParamsEnforcementManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nStdParamsEnforcementManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StdParamsEnforcementManager.kt\ncom/facebook/appevents/integrity/StdParamsEnforcementManager\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,129:1\n1#2:130\n1855#3,2:131\n1747#3,3:133\n1747#3,3:136\n*S KotlinDebug\n*F\n+ 1 StdParamsEnforcementManager.kt\ncom/facebook/appevents/integrity/StdParamsEnforcementManager\n*L\n115#1:131,2\n121#1:133,3\n125#1:136,3\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lz1/g;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:Z

.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lz1/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lz1/g;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lz1/g;->a:Lz1/g;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lz1/g;->c:Ljava/util/Map;

    .line 14
    .line 15
    new-instance v0, Ljava/util/HashMap;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lz1/g;->d:Ljava/util/Map;

    .line 21
    .line 22
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

.method private final a(Lorg/json/JSONArray;)V
    .locals 11

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

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
    if-eqz p1, :cond_8

    .line 11
    .line 12
    :try_start_0
    sget-boolean v1, Lz1/g;->b:Z

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    goto/16 :goto_6

    .line 17
    .line 18
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    const/4 v2, 0x0

    .line 23
    move v3, v2

    .line 24
    :goto_0
    if-ge v3, v1, :cond_7

    .line 25
    .line 26
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    if-eqz v5, :cond_6

    .line 35
    .line 36
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    .line 37
    .line 38
    .line 39
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    if-nez v6, :cond_2

    .line 41
    .line 42
    goto :goto_4

    .line 43
    :cond_2
    :try_start_1
    const-string v6, "value"

    .line 44
    .line 45
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    move v7, v2

    .line 54
    :goto_1
    if-ge v7, v6, :cond_6

    .line 55
    .line 56
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    const-string v9, "require_exact_match"

    .line 61
    .line 62
    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 67
    .line 68
    .line 69
    move-result-object v9

    .line 70
    const-string v10, "potential_matches"

    .line 71
    .line 72
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 73
    .line 74
    .line 75
    move-result-object v9

    .line 76
    invoke-direct {p0, v9}, Lz1/g;->f(Lorg/json/JSONArray;)Ljava/util/HashSet;

    .line 77
    .line 78
    .line 79
    move-result-object v9

    .line 80
    if-eqz v8, :cond_4

    .line 81
    .line 82
    sget-object v8, Lz1/g;->d:Ljava/util/Map;

    .line 83
    .line 84
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    sget-object v10, Lz1/g;->d:Ljava/util/Map;

    .line 88
    .line 89
    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v10

    .line 93
    check-cast v10, Ljava/util/HashSet;

    .line 94
    .line 95
    if-eqz v10, :cond_3

    .line 96
    .line 97
    invoke-virtual {v10, v9}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 98
    .line 99
    .line 100
    move-object v9, v10

    .line 101
    goto :goto_2

    .line 102
    :catchall_0
    move-exception p1

    .line 103
    goto :goto_5

    .line 104
    :cond_3
    :goto_2
    invoke-interface {v8, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_4
    sget-object v8, Lz1/g;->c:Ljava/util/Map;

    .line 109
    .line 110
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    sget-object v10, Lz1/g;->c:Ljava/util/Map;

    .line 114
    .line 115
    invoke-interface {v10, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v10

    .line 119
    check-cast v10, Ljava/util/HashSet;

    .line 120
    .line 121
    if-eqz v10, :cond_5

    .line 122
    .line 123
    invoke-virtual {v10, v9}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 124
    .line 125
    .line 126
    move-object v9, v10

    .line 127
    :cond_5
    invoke-interface {v8, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    .line 129
    .line 130
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :catch_0
    :try_start_2
    sget-object v4, Lz1/g;->d:Ljava/util/Map;

    .line 134
    .line 135
    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    sget-object v4, Lz1/g;->c:Ljava/util/Map;

    .line 139
    .line 140
    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    .line 142
    .line 143
    :cond_6
    :goto_4
    add-int/lit8 v3, v3, 0x1

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_7
    return-void

    .line 147
    :goto_5
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    :cond_8
    :goto_6
    return-void
.end method

.method public static final b()V
    .locals 2

    .line 1
    const-class v0, Lz1/g;

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
    sget-boolean v1, Lz1/g;->b:Z

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    sget-object v1, Lz1/g;->a:Lz1/g;

    .line 16
    .line 17
    invoke-direct {v1}, Lz1/g;->e()V

    .line 18
    .line 19
    .line 20
    sget-object v1, Lz1/g;->c:Ljava/util/Map;

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_3

    .line 27
    .line 28
    sget-object v1, Lz1/g;->d:Ljava/util/Map;

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_2

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/4 v1, 0x0

    .line 38
    goto :goto_1

    .line 39
    :catchall_0
    move-exception v1

    .line 40
    goto :goto_2

    .line 41
    :cond_3
    :goto_0
    const/4 v1, 0x1

    .line 42
    :goto_1
    sput-boolean v1, Lz1/g;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 43
    .line 44
    return-void

    .line 45
    :goto_2
    invoke-static {v1, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private final c(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    const-string v0, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    .line 2
    .line 3
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

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
    if-eqz p2, :cond_3

    .line 12
    .line 13
    :try_start_0
    check-cast p2, Ljava/lang/Iterable;

    .line 14
    .line 15
    instance-of v1, p2, Ljava/util/Collection;

    .line 16
    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    move-object v1, p2

    .line 20
    check-cast v1, Ljava/util/Collection;

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-eqz v1, :cond_3

    .line 40
    .line 41
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Ljava/lang/String;

    .line 46
    .line 47
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 48
    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    const/4 v2, 0x1

    .line 70
    goto :goto_1

    .line 71
    :goto_0
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_3
    :goto_1
    return v2
.end method

.method private final d(Ljava/lang/String;Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    if-eqz p2, :cond_3

    .line 10
    .line 11
    :try_start_0
    check-cast p2, Ljava/lang/Iterable;

    .line 12
    .line 13
    instance-of v0, p2, Ljava/util/Collection;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    move-object v0, p2

    .line 18
    check-cast v0, Ljava/util/Collection;

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :catchall_0
    move-exception p1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Ljava/lang/String;

    .line 44
    .line 45
    new-instance v2, Lkotlin/text/Regex;

    .line 46
    .line 47
    invoke-direct {v2, v0}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2, p1}, Lkotlin/text/Regex;->k(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    .line 56
    const/4 v1, 0x1

    .line 57
    goto :goto_1

    .line 58
    :goto_0
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    :cond_3
    :goto_1
    return v1
.end method

.method private final e()V
    .locals 2

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/facebook/v;->m()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {v0, v1}, Lcom/facebook/internal/FetchedAppSettingsManager;->u(Ljava/lang/String;Z)Lcom/facebook/internal/p;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/internal/p;->s()Lorg/json/JSONArray;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-direct {p0, v0}, Lz1/g;->a(Lorg/json/JSONArray;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :catchall_0
    move-exception v0

    .line 29
    invoke-static {v0, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method private final f(Lorg/json/JSONArray;)Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/facebook/internal/u0;->m(Lorg/json/JSONArray;)Ljava/util/HashSet;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    new-instance p1, Ljava/util/HashSet;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    goto :goto_1

    .line 23
    :catch_0
    :try_start_1
    new-instance p1, Ljava/util/HashSet;

    .line 24
    .line 25
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    .line 28
    :cond_1
    :goto_0
    return-object p1

    .line 29
    :goto_1
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 30
    .line 31
    .line 32
    return-object v1
.end method

.method public static final g(Landroid/os/Bundle;)V
    .locals 9
    .param p0    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-class v0, Lz1/g;

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
    sget-boolean v1, Lz1/g;->b:Z

    .line 11
    .line 12
    if-eqz v1, :cond_7

    .line 13
    .line 14
    if-nez p0, :cond_1

    .line 15
    .line 16
    goto/16 :goto_3

    .line 17
    .line 18
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-eqz v3, :cond_6

    .line 36
    .line 37
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    check-cast v3, Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {p0, v3}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    sget-object v5, Lz1/g;->c:Ljava/util/Map;

    .line 52
    .line 53
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    const/4 v6, 0x0

    .line 58
    const/4 v7, 0x1

    .line 59
    if-eqz v5, :cond_3

    .line 60
    .line 61
    move v5, v7

    .line 62
    goto :goto_1

    .line 63
    :cond_3
    move v5, v6

    .line 64
    :goto_1
    sget-object v8, Lz1/g;->d:Ljava/util/Map;

    .line 65
    .line 66
    invoke-interface {v8, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v8

    .line 70
    if-eqz v8, :cond_4

    .line 71
    .line 72
    move v6, v7

    .line 73
    :cond_4
    if-nez v5, :cond_5

    .line 74
    .line 75
    if-nez v6, :cond_5

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_5
    sget-object v5, Lz1/g;->a:Lz1/g;

    .line 79
    .line 80
    sget-object v6, Lz1/g;->c:Ljava/util/Map;

    .line 81
    .line 82
    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    check-cast v6, Ljava/util/Set;

    .line 87
    .line 88
    invoke-direct {v5, v4, v6}, Lz1/g;->d(Ljava/lang/String;Ljava/util/Set;)Z

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    sget-object v7, Lz1/g;->d:Ljava/util/Map;

    .line 93
    .line 94
    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    check-cast v7, Ljava/util/Set;

    .line 99
    .line 100
    invoke-direct {v5, v4, v7}, Lz1/g;->c(Ljava/lang/String;Ljava/util/Set;)Z

    .line 101
    .line 102
    .line 103
    move-result v4

    .line 104
    if-nez v6, :cond_2

    .line 105
    .line 106
    if-nez v4, :cond_2

    .line 107
    .line 108
    const-string v4, "key"

    .line 109
    .line 110
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    goto :goto_0

    .line 117
    :catchall_0
    move-exception p0

    .line 118
    goto :goto_4

    .line 119
    :cond_6
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-eqz v2, :cond_7

    .line 128
    .line 129
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    check-cast v2, Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_7
    :goto_3
    return-void

    .line 140
    :goto_4
    invoke-static {p0, v0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    return-void
.end method
