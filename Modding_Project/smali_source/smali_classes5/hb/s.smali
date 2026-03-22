.class public final Lhb/s;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static c:Lhb/s;


# instance fields
.field private a:Landroid/content/Context;

.field private final b:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lhb/s;->b:Ljava/lang/Object;

    .line 10
    .line 11
    return-void
.end method

.method public static a()Lhb/s;
    .locals 1

    .line 1
    sget-object v0, Lhb/s;->c:Lhb/s;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lhb/s;->g()V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object v0, Lhb/s;->c:Lhb/s;

    .line 9
    .line 10
    return-object v0
.end method

.method private b(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    check-cast v1, Ljava/util/Map$Entry;

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Ljava/lang/String;

    .line 33
    .line 34
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    const-string p1, "hmsSdk"

    .line 43
    .line 44
    const-string v1, "Exception occured when transferring bundle to json"

    .line 45
    .line 46
    invoke-static {p1, v1}, Lhb/f1;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-object v0
.end method

.method private static declared-synchronized g()V
    .locals 2

    .line 1
    const-class v0, Lhb/s;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lhb/s;->c:Lhb/s;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lhb/s;

    .line 9
    .line 10
    invoke-direct {v1}, Lhb/s;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lhb/s;->c:Lhb/s;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 21
    throw v1
.end method


# virtual methods
.method public c(Landroid/content/Context;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lhb/s;->b:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lhb/s;->a:Landroid/content/Context;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :catchall_0
    move-exception p1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iput-object p1, p0, Lhb/s;->a:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {}, Lhb/o;->a()Lhb/o;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1, p1}, Lhb/o;->b(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw p1
.end method

.method public d(Ljava/lang/String;I)V
    .locals 1

    .line 1
    invoke-static {}, Lhb/o;->a()Lhb/o;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lhb/o;->c(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public e(Ljava/lang/String;ILjava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p4}, Lhb/s;->b(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object p4

    .line 5
    invoke-static {}, Lhb/o;->a()Lhb/o;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1, p2, p3, p4}, Lhb/o;->d(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public f(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p2, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v0, "_constants"

    .line 7
    .line 8
    invoke-virtual {p2, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lhb/o;->a()Lhb/o;

    .line 12
    .line 13
    .line 14
    move-result-object p4

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p4, p1, v0, p3, p2}, Lhb/o;->d(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catch_0
    const-string p1, "hmsSdk"

    .line 21
    .line 22
    const-string p2, "onEvent():JSON structure Exception!"

    .line 23
    .line 24
    invoke-static {p1, p2}, Lhb/f1;->m(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public h(Ljava/lang/String;ILjava/lang/String;Ljava/util/LinkedHashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p4}, Lhb/s;->b(Ljava/util/Map;)Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object v4

    .line 5
    invoke-static {}, Lhb/o;->a()Lhb/o;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v5

    .line 13
    move-object v1, p1

    .line 14
    move v2, p2

    .line 15
    move-object v3, p3

    .line 16
    invoke-virtual/range {v0 .. v6}, Lhb/o;->e(Ljava/lang/String;ILjava/lang/String;Lorg/json/JSONObject;J)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
