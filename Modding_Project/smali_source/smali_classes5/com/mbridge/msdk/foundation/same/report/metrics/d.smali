.class public Lcom/mbridge/msdk/foundation/same/report/metrics/d;
.super Ljava/lang/Object;
.source "MetricsManager.java"


# static fields
.field private static e:Lcom/mbridge/msdk/foundation/same/report/metrics/d;


# instance fields
.field private volatile a:Lcom/mbridge/msdk/tracker/m;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/foundation/same/report/metrics/e;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/foundation/same/report/metrics/c;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/foundation/same/report/metrics/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->c:Ljava/util/LinkedHashMap;

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashMap;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->d:Ljava/util/Map;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a:Lcom/mbridge/msdk/tracker/m;

    .line 26
    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a()Lcom/mbridge/msdk/tracker/x;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    const-string v2, "metrics_sdk"

    .line 42
    .line 43
    invoke-static {v2, v0, v1}, Lcom/mbridge/msdk/tracker/m;->a(Ljava/lang/String;Landroid/content/Context;Lcom/mbridge/msdk/tracker/x;)Lcom/mbridge/msdk/tracker/m;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a:Lcom/mbridge/msdk/tracker/m;

    .line 48
    .line 49
    :cond_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/c;->b()Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a:Lcom/mbridge/msdk/tracker/m;

    .line 54
    .line 55
    if-eqz v1, :cond_1

    .line 56
    .line 57
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a:Lcom/mbridge/msdk/tracker/m;

    .line 58
    .line 59
    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/tracker/m;->a(Lorg/json/JSONObject;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a:Lcom/mbridge/msdk/tracker/m;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/m;->h()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    :cond_1
    return-void
.end method

.method private a(I)Lcom/mbridge/msdk/tracker/p;
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 88
    new-instance p1, Lcom/mbridge/msdk/tracker/p;

    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/m;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/mbridge/msdk/foundation/same/report/m;-><init>(B)V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->h()Lcom/mbridge/msdk/foundation/same/net/utils/d;

    move-result-object v1

    iget-object v1, v1, Lcom/mbridge/msdk/foundation/same/net/utils/d;->j:Ljava/lang/String;

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->h()Lcom/mbridge/msdk/foundation/same/net/utils/d;

    move-result-object v2

    iget v2, v2, Lcom/mbridge/msdk/foundation/same/net/utils/d;->n:I

    invoke-direct {p1, v0, v1, v2}, Lcom/mbridge/msdk/tracker/p;-><init>(Lcom/mbridge/msdk/tracker/network/toolbox/a;Ljava/lang/String;I)V

    return-object p1

    .line 89
    :cond_0
    new-instance p1, Lcom/mbridge/msdk/tracker/p;

    new-instance v0, Lcom/mbridge/msdk/tracker/network/toolbox/h;

    invoke-direct {v0}, Lcom/mbridge/msdk/tracker/network/toolbox/h;-><init>()V

    invoke-static {}, Lcom/mbridge/msdk/foundation/same/net/utils/d;->h()Lcom/mbridge/msdk/foundation/same/net/utils/d;

    move-result-object v1

    iget-object v1, v1, Lcom/mbridge/msdk/foundation/same/net/utils/d;->d:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/mbridge/msdk/tracker/p;-><init>(Lcom/mbridge/msdk/tracker/network/toolbox/a;Ljava/lang/String;I)V

    return-object p1
.end method

.method private a()Lcom/mbridge/msdk/tracker/x;
    .locals 10

    .line 58
    const-string v0, "t_r_t"

    const-string v1, "t_m_r_t_s"

    const-string v2, "t_m_t"

    const-string v3, "t_m_r_c"

    const-string v4, "t_m_e_s"

    const-string v5, "t_m_e_t"

    const-string v6, "metrics"

    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/r0;->a()Lcom/mbridge/msdk/foundation/tools/r0;

    move-result-object v7

    .line 59
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/r0;->a()Lcom/mbridge/msdk/foundation/tools/r0;

    move-result-object v8

    const v9, 0x240c8400

    invoke-virtual {v8, v5, v9}, Lcom/mbridge/msdk/foundation/tools/r0;->b(Ljava/lang/String;I)I

    move-result v8

    .line 60
    invoke-virtual {v7, v6, v5, v8}, Lcom/mbridge/msdk/foundation/tools/r0;->b(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v5

    .line 61
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/r0;->a()Lcom/mbridge/msdk/foundation/tools/r0;

    move-result-object v7

    .line 62
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/r0;->a()Lcom/mbridge/msdk/foundation/tools/r0;

    move-result-object v8

    const/16 v9, 0x32

    invoke-virtual {v8, v4, v9}, Lcom/mbridge/msdk/foundation/tools/r0;->b(Ljava/lang/String;I)I

    move-result v8

    .line 63
    invoke-virtual {v7, v6, v4, v8}, Lcom/mbridge/msdk/foundation/tools/r0;->b(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 64
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/r0;->a()Lcom/mbridge/msdk/foundation/tools/r0;

    move-result-object v7

    .line 65
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/r0;->a()Lcom/mbridge/msdk/foundation/tools/r0;

    move-result-object v8

    invoke-virtual {v8, v3, v9}, Lcom/mbridge/msdk/foundation/tools/r0;->b(Ljava/lang/String;I)I

    move-result v8

    .line 66
    invoke-virtual {v7, v6, v3, v8}, Lcom/mbridge/msdk/foundation/tools/r0;->b(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 67
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/r0;->a()Lcom/mbridge/msdk/foundation/tools/r0;

    move-result-object v7

    .line 68
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/r0;->a()Lcom/mbridge/msdk/foundation/tools/r0;

    move-result-object v8

    const/16 v9, 0x3a98

    invoke-virtual {v8, v2, v9}, Lcom/mbridge/msdk/foundation/tools/r0;->b(Ljava/lang/String;I)I

    move-result v8

    .line 69
    invoke-virtual {v7, v6, v2, v8}, Lcom/mbridge/msdk/foundation/tools/r0;->b(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 70
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/r0;->a()Lcom/mbridge/msdk/foundation/tools/r0;

    move-result-object v7

    .line 71
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/r0;->a()Lcom/mbridge/msdk/foundation/tools/r0;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v1, v9}, Lcom/mbridge/msdk/foundation/tools/r0;->b(Ljava/lang/String;I)I

    move-result v8

    .line 72
    invoke-virtual {v7, v6, v1, v8}, Lcom/mbridge/msdk/foundation/tools/r0;->b(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    .line 73
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/r0;->a()Lcom/mbridge/msdk/foundation/tools/r0;

    move-result-object v7

    .line 74
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/r0;->a()Lcom/mbridge/msdk/foundation/tools/r0;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v0, v9}, Lcom/mbridge/msdk/foundation/tools/r0;->b(Ljava/lang/String;I)I

    move-result v8

    .line 75
    invoke-virtual {v7, v6, v0, v8}, Lcom/mbridge/msdk/foundation/tools/r0;->b(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    if-eq v0, v9, :cond_0

    const/4 v0, 0x0

    .line 76
    :cond_0
    new-instance v6, Lcom/mbridge/msdk/tracker/x$b;

    invoke-direct {v6}, Lcom/mbridge/msdk/tracker/x$b;-><init>()V

    .line 77
    invoke-virtual {v6, v5}, Lcom/mbridge/msdk/tracker/x$b;->a(I)Lcom/mbridge/msdk/tracker/x$b;

    move-result-object v5

    .line 78
    invoke-virtual {v5, v4}, Lcom/mbridge/msdk/tracker/x$b;->b(I)Lcom/mbridge/msdk/tracker/x$b;

    move-result-object v4

    .line 79
    invoke-virtual {v4, v3}, Lcom/mbridge/msdk/tracker/x$b;->d(I)Lcom/mbridge/msdk/tracker/x$b;

    move-result-object v3

    .line 80
    invoke-virtual {v3, v2}, Lcom/mbridge/msdk/tracker/x$b;->c(I)Lcom/mbridge/msdk/tracker/x$b;

    move-result-object v2

    .line 81
    invoke-virtual {v2, v1}, Lcom/mbridge/msdk/tracker/x$b;->e(I)Lcom/mbridge/msdk/tracker/x$b;

    move-result-object v1

    new-instance v2, Lcom/mbridge/msdk/foundation/same/report/d;

    invoke-direct {v2}, Lcom/mbridge/msdk/foundation/same/report/d;-><init>()V

    .line 82
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/tracker/x$b;->a(Lcom/mbridge/msdk/tracker/d;)Lcom/mbridge/msdk/tracker/x$b;

    move-result-object v1

    .line 83
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/c;->c()Lcom/mbridge/msdk/tracker/f;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/tracker/x$b;->a(Lcom/mbridge/msdk/tracker/f;)Lcom/mbridge/msdk/tracker/x$b;

    move-result-object v1

    new-instance v2, Lcom/mbridge/msdk/foundation/same/report/n;

    invoke-direct {v2}, Lcom/mbridge/msdk/foundation/same/report/n;-><init>()V

    .line 84
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/tracker/x$b;->a(Lcom/mbridge/msdk/tracker/w;)Lcom/mbridge/msdk/tracker/x$b;

    move-result-object v1

    .line 85
    invoke-direct {p0, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(I)Lcom/mbridge/msdk/tracker/p;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/mbridge/msdk/tracker/x$b;->a(ILcom/mbridge/msdk/tracker/p;)Lcom/mbridge/msdk/tracker/x$b;

    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/x$b;->a()Lcom/mbridge/msdk/tracker/x;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configTrackManager error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EventLibraryReport"

    invoke-static {v1, v0}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method private a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/same/report/metrics/callback/a;)V
    .locals 2

    .line 160
    :try_start_0
    sget-object v0, Lcom/mbridge/msdk/foundation/same/report/metrics/b;->c:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p2, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->d(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 162
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->d:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    invoke-virtual {p2, p1, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    .line 164
    :cond_1
    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/metrics/f;

    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/f;-><init>()V

    .line 165
    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->d()Lcom/mbridge/msdk/tracker/m;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2, p3}, Lcom/mbridge/msdk/foundation/same/report/metrics/f;->a(Ljava/lang/String;Lcom/mbridge/msdk/tracker/m;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/same/report/metrics/callback/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 166
    :goto_1
    sget-boolean p2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_2

    .line 167
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 35
    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/db/g;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/db/g;

    move-result-object p1

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/db/e;->a(Lcom/mbridge/msdk/foundation/db/f;)Lcom/mbridge/msdk/foundation/db/e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 36
    invoke-virtual {p1, p2}, Lcom/mbridge/msdk/foundation/db/e;->e(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 37
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 38
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->d(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    .line 40
    :cond_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->c()Ljava/util/LinkedHashMap;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 41
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 42
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 43
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 44
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    if-eqz p2, :cond_1

    .line 45
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->z()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 46
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 47
    :goto_2
    sget-boolean p2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_2

    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public static b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;
    .locals 2

    .line 10
    sget-object v0, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->e:Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    if-nez v0, :cond_1

    .line 11
    const-class v0, Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    monitor-enter v0

    .line 12
    :try_start_0
    sget-object v1, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->e:Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    if-nez v1, :cond_0

    .line 13
    new-instance v1, Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    invoke-direct {v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;-><init>()V

    sput-object v1, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->e:Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 14
    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 15
    :cond_1
    :goto_2
    sget-object v0, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->e:Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/mbridge/msdk/foundation/same/report/metrics/c;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 173
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/foundation/same/report/metrics/c;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 174
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 175
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;
    .locals 2

    const/4 v0, 0x0

    .line 168
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 169
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->c:Ljava/util/LinkedHashMap;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    iget-object p2, p0, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/foundation/same/report/metrics/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    return-object v0

    .line 171
    :goto_1
    sget-boolean p2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_2

    .line 172
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-object v0
.end method

.method public a(ZLjava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/e;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;
    .locals 4

    .line 1
    const-string v0, "hb"

    const-string v1, "adtp"

    new-instance v2, Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-direct {v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;-><init>()V

    .line 2
    :try_start_0
    invoke-direct {p0, p1, p5}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(ZLjava/lang/String;)V

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/u0;->d()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_2

    .line 5
    :cond_0
    invoke-virtual {p0, p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6
    :goto_0
    invoke-virtual {p4, v3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->setLocalRequestId(Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object p4

    invoke-virtual {p4, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    move-result-object v2

    if-nez v2, :cond_1

    .line 8
    new-instance p4, Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-direct {p4}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :try_start_1
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->c()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2, v3, p4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 10
    invoke-virtual {p4, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->d(Z)V

    .line 11
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->c()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2, v3, p4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, p4

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_3

    .line 12
    :cond_1
    :goto_1
    :try_start_2
    invoke-virtual {v2, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->i(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v2, p5}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->n(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string p4, "1"

    if-eqz p3, :cond_3

    .line 14
    :try_start_3
    invoke-virtual {p3, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_2

    .line 15
    invoke-virtual {p3, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-static {p5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p5

    .line 16
    invoke-virtual {v2, p5}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(I)V

    .line 17
    :cond_2
    invoke-virtual {p3, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;)Z

    move-result p5

    if-eqz p5, :cond_3

    .line 18
    invoke-virtual {p3, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 19
    invoke-virtual {v2, p3}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->h(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 21
    invoke-virtual {v2, p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->g(Ljava/lang/String;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 22
    const-string p4, "2"

    :cond_4
    invoke-virtual {v2, p4}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->f(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :goto_2
    move-object p4, v2

    .line 23
    :goto_3
    sget-boolean p2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_5

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MetricsManager"

    invoke-static {p2, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object v2, p4

    :goto_4
    return-object v2
.end method

.method public a(IILjava/lang/String;ZI)Lcom/mbridge/msdk/foundation/same/report/metrics/e;
    .locals 2

    .line 51
    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    .line 52
    :try_start_0
    const-string v1, "hb"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 53
    const-string p1, "adtp"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    const-string p1, "unit_id"

    invoke-virtual {v0, p1, p3}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p4, :cond_0

    .line 55
    const-string p1, "auto_load"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 56
    sget-boolean p2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_0

    .line 57
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 25
    const-string v0, ""

    .line 26
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 27
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/u0;->d()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    const-string v1, "_"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 29
    array-length v1, p1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_1

    const/4 v1, 0x2

    .line 30
    aget-object p1, p1, v1

    move-object v0, p1

    .line 31
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 32
    invoke-static {}, Lcom/mbridge/msdk/foundation/tools/u0;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/mbridge/msdk/foundation/tools/SameMD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 33
    :goto_1
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-object v0
.end method

.method public a(Lcom/mbridge/msdk/foundation/entity/n;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 4

    .line 128
    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    .line 129
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/n;->x()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v0, v2, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    const-string v1, "scenes"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Lcom/mbridge/msdk/foundation/entity/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 131
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/n;->y()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "resource_type"

    invoke-virtual {v0, v3, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    const-string v1, "url"

    invoke-virtual {p1, v1, v2}, Lcom/mbridge/msdk/foundation/entity/n;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/n;->t()Ljava/lang/String;

    move-result-object v1

    const-string v2, "reason"

    invoke-virtual {v0, v2, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/n;->p()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "mraid_type"

    invoke-virtual {v0, v2, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 135
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/entity/n;->n()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, p2, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V
    .locals 5

    .line 102
    :try_start_0
    const-string v0, ""

    if-eqz p2, :cond_0

    .line 103
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCurrentLocalRid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    .line 104
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->c()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    if-nez v1, :cond_1

    .line 105
    new-instance v1, Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-direct {v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;-><init>()V

    .line 106
    :cond_1
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->j()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->j()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p2, :cond_3

    const/4 v2, 0x0

    .line 107
    :goto_1
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->j()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 108
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->j()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {v3}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 109
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->j()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 110
    :cond_3
    :goto_2
    invoke-virtual {v1, p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 111
    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->i(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 112
    invoke-direct {p0, p1, v1, p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/same/report/metrics/callback/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 113
    :goto_3
    sget-boolean p2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_4

    .line 114
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_4
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V
    .locals 4

    .line 90
    :try_start_0
    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 91
    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getLocalRequestId()Ljava/lang/String;

    move-result-object v0

    .line 92
    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->c()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 93
    sget-object v3, Lcom/mbridge/msdk/foundation/same/report/metrics/b;->h:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 94
    invoke-virtual {p0, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Lcom/mbridge/msdk/foundation/same/report/metrics/c;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    move-result-object v2

    goto :goto_1

    .line 95
    :cond_1
    new-instance v2, Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-direct {v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;-><init>()V

    .line 96
    :cond_2
    :goto_1
    invoke-virtual {v2, p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Lcom/mbridge/msdk/foundation/entity/CampaignEx;)V

    .line 97
    invoke-virtual {v2, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->i(Ljava/lang/String;)V

    .line 98
    invoke-virtual {v2, p1, p3}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    .line 99
    invoke-direct {p0, p1, v2, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/same/report/metrics/callback/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 100
    :goto_2
    sget-boolean p2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_3

    .line 101
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_3
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V
    .locals 3

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 137
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    invoke-virtual {p2, p1, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 138
    :cond_0
    :goto_0
    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/metrics/f;

    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/f;-><init>()V

    .line 139
    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->d()Lcom/mbridge/msdk/tracker/m;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/f;->a(Ljava/lang/String;Lcom/mbridge/msdk/tracker/m;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/same/report/metrics/callback/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 140
    :goto_1
    sget-boolean p2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_1

    .line 141
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_2
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/entity/CampaignEx;Landroid/content/Context;Lcom/mbridge/msdk/foundation/same/report/metrics/callback/a;)V
    .locals 5

    const-string v0, "unit_id"

    .line 142
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    .line 143
    new-instance p2, Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-direct {p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;-><init>()V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_1

    .line 144
    :cond_1
    :goto_0
    new-instance v1, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    invoke-direct {v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    .line 145
    const-string v2, "st"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p3, :cond_3

    .line 146
    const-string v2, "cid"

    invoke-virtual {p3}, Lcom/mbridge/msdk/out/Campaign;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    const-string v2, "lrid"

    invoke-virtual {p3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getLocalRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 148
    const-string v2, "rid"

    invoke-virtual {p3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    const-string v2, "rid_n"

    invoke-virtual {p3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getRequestIdNotice()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 150
    const-string v2, "adtp"

    invoke-virtual {p3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getAdType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 151
    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 152
    invoke-virtual {p3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCampaignUnitId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 153
    :cond_2
    const-string v0, "hb"

    invoke-virtual {p3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->isBidCampaign()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    const-string v0, "bid_tk"

    invoke-virtual {p3}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getBidToken()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, v0, p3}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    if-eqz p4, :cond_4

    .line 155
    const-string p3, "network_type"

    invoke-static {p4}, Lcom/mbridge/msdk/foundation/tools/l0;->s(Landroid/content/Context;)I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {v1, p3, p4}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 156
    :cond_4
    invoke-virtual {p2, p1, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    .line 157
    invoke-direct {p0, p1, p2, p5}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/same/report/metrics/callback/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 158
    :goto_1
    sget-boolean p2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_5

    .line 159
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_2
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 50
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/mbridge/msdk/foundation/entity/CampaignEx;",
            ">;",
            "Lcom/mbridge/msdk/foundation/same/report/metrics/e;",
            ")V"
        }
    .end annotation

    .line 115
    :try_start_0
    const-string v0, ""

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 116
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 117
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    if-eqz v2, :cond_0

    .line 118
    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCurrentLocalRid()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 119
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->c()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    if-nez v0, :cond_1

    .line 120
    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;-><init>()V

    .line 121
    :cond_1
    invoke-virtual {v0, p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->b(Ljava/util/List;)V

    if-eqz p2, :cond_2

    .line 122
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 123
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/mbridge/msdk/foundation/entity/CampaignEx;

    invoke-virtual {p2}, Lcom/mbridge/msdk/foundation/entity/CampaignEx;->getCurrentLocalRid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->i(Ljava/lang/String;)V

    .line 124
    :cond_2
    invoke-virtual {v0, p1, p3}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    const/4 p2, 0x0

    .line 125
    invoke-direct {p0, p1, v0, p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/same/report/metrics/callback/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 126
    :goto_1
    sget-boolean p2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_3

    .line 127
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 176
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 177
    :cond_0
    const-string v0, "key"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 179
    :cond_1
    new-instance v1, Lcom/mbridge/msdk/tracker/e;

    invoke-direct {v1, v0}, Lcom/mbridge/msdk/tracker/e;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 180
    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/tracker/e;->a(I)V

    .line 181
    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/tracker/e;->b(I)V

    .line 182
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/c;->d()Lcom/mbridge/msdk/tracker/h;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/tracker/e;->a(Lcom/mbridge/msdk/tracker/h;)V

    .line 183
    invoke-virtual {v1, p1}, Lcom/mbridge/msdk/tracker/e;->a(Lorg/json/JSONObject;)V

    .line 184
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->d()Lcom/mbridge/msdk/tracker/m;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 185
    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/m;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 186
    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/tracker/m;->d(Lcom/mbridge/msdk/tracker/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 187
    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportByTrackManager error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "EventLibraryReport"

    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;
    .locals 1

    .line 27
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/mbridge/msdk/foundation/same/report/metrics/c;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    .line 3
    const-string v1, "rs_rid"

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->s()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 4
    const-string v1, "r_stid"

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->t()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    const-string v1, "rus_rid"

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->u()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    const-string v1, "u_stid"

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->x()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->w()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 8
    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/same/report/metrics/callback/a;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/same/report/metrics/callback/a;)V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V
    .locals 4

    const-string v0, "unit_id"

    const-string v1, "lrid"

    .line 17
    :try_start_0
    new-instance v2, Lcom/mbridge/msdk/foundation/same/report/metrics/c;

    invoke-direct {v2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;-><init>()V

    .line 18
    invoke-virtual {p2, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 19
    invoke-virtual {p2, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->n(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    .line 20
    :cond_0
    :goto_0
    invoke-virtual {p2, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {p2, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->i(Ljava/lang/String;)V

    .line 22
    :cond_1
    invoke-virtual {v2, p1, p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/c;->a(Ljava/lang/String;Lcom/mbridge/msdk/foundation/same/report/metrics/e;)V

    .line 23
    new-instance p2, Lcom/mbridge/msdk/foundation/same/report/metrics/f;

    invoke-direct {p2}, Lcom/mbridge/msdk/foundation/same/report/metrics/f;-><init>()V

    .line 24
    invoke-virtual {p0}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->d()Lcom/mbridge/msdk/tracker/m;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v0, v2, v1}, Lcom/mbridge/msdk/foundation/same/report/metrics/f;->b(Ljava/lang/String;Lcom/mbridge/msdk/tracker/m;Lcom/mbridge/msdk/foundation/same/report/metrics/c;Lcom/mbridge/msdk/foundation/same/report/metrics/callback/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 25
    :goto_1
    sget-boolean p2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_2

    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 28
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->c:Ljava/util/LinkedHashMap;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 30
    :cond_0
    iget-object p2, p0, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 31
    :goto_1
    sget-boolean p2, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz p2, :cond_2

    .line 32
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_2
    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/mbridge/msdk/foundation/same/report/metrics/e;
    .locals 2

    .line 1
    new-instance v0, Lcom/mbridge/msdk/foundation/same/report/metrics/e;

    invoke-direct {v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/e;-><init>()V

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b:Ljava/util/Map;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/mbridge/msdk/foundation/same/report/metrics/e;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public c()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/mbridge/msdk/foundation/same/report/metrics/c;",
            ">;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->c:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public d()Lcom/mbridge/msdk/tracker/m;
    .locals 4

    .line 2
    :try_start_0
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/c;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a:Lcom/mbridge/msdk/tracker/m;

    if-nez v1, :cond_0

    .line 4
    const-string v1, "metrics_sdk"

    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/c;->m()Lcom/mbridge/msdk/foundation/controller/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mbridge/msdk/foundation/controller/a;->d()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p0}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a()Lcom/mbridge/msdk/tracker/x;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/mbridge/msdk/tracker/m;->a(Ljava/lang/String;Landroid/content/Context;Lcom/mbridge/msdk/tracker/x;)Lcom/mbridge/msdk/tracker/m;

    move-result-object v1

    iput-object v1, p0, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a:Lcom/mbridge/msdk/tracker/m;

    .line 5
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a:Lcom/mbridge/msdk/tracker/m;

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a:Lcom/mbridge/msdk/tracker/m;

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/tracker/m;->a(Lorg/json/JSONObject;)V

    .line 7
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a:Lcom/mbridge/msdk/tracker/m;

    invoke-virtual {v0}, Lcom/mbridge/msdk/tracker/m;->h()Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a:Lcom/mbridge/msdk/tracker/m;

    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/tracker/m;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 9
    :goto_0
    sget-boolean v1, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 11
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->a:Lcom/mbridge/msdk/tracker/m;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/mbridge/msdk/foundation/same/c;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_2

    .line 6
    .line 7
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-string v0, "key"

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    new-instance v1, Lcom/mbridge/msdk/tracker/e;

    .line 28
    .line 29
    invoke-direct {v1, v0}, Lcom/mbridge/msdk/tracker/e;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/tracker/e;->a(I)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/tracker/e;->b(I)V

    .line 37
    .line 38
    .line 39
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/c;->d()Lcom/mbridge/msdk/tracker/h;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {v1, v0}, Lcom/mbridge/msdk/tracker/e;->a(Lcom/mbridge/msdk/tracker/h;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, p1}, Lcom/mbridge/msdk/tracker/e;->a(Lorg/json/JSONObject;)V

    .line 47
    .line 48
    .line 49
    invoke-static {}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->b()Lcom/mbridge/msdk/foundation/same/report/metrics/d;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p1}, Lcom/mbridge/msdk/foundation/same/report/metrics/d;->d()Lcom/mbridge/msdk/tracker/m;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/mbridge/msdk/tracker/m;->g()Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_3

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Lcom/mbridge/msdk/tracker/m;->d(Lcom/mbridge/msdk/tracker/e;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :catch_0
    move-exception p1

    .line 70
    goto :goto_1

    .line 71
    :cond_2
    :goto_0
    return-void

    .line 72
    :goto_1
    sget-boolean v0, Lcom/mbridge/msdk/MBridgeConstans;->DEBUG:Z

    .line 73
    .line 74
    if-eqz v0, :cond_3

    .line 75
    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v1, "reportByTrackManager error: "

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    const-string v0, "EventLibraryReport"

    .line 98
    .line 99
    invoke-static {v0, p1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_3
    :goto_2
    return-void
.end method
