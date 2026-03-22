.class public final Lhb/k1;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static b:Lhb/k1;


# instance fields
.field private volatile a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lhb/s0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

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
    iput-object v0, p0, Lhb/k1;->a:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method

.method private a(Ljava/lang/String;)Lhb/s0;
    .locals 2

    .line 1
    iget-object v0, p0, Lhb/k1;->a:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lhb/s0;

    .line 10
    .line 11
    invoke-direct {v0}, Lhb/s0;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v1, p0, Lhb/k1;->a:Ljava/util/Map;

    .line 15
    .line 16
    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Lhb/k1;->a:Ljava/util/Map;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    check-cast p1, Lhb/s0;

    .line 26
    .line 27
    return-object p1
.end method

.method public static c()Lhb/k1;
    .locals 1

    .line 1
    sget-object v0, Lhb/k1;->b:Lhb/k1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lhb/k1;->d()V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object v0, Lhb/k1;->b:Lhb/k1;

    .line 9
    .line 10
    return-object v0
.end method

.method private static declared-synchronized d()V
    .locals 2

    .line 1
    const-class v0, Lhb/k1;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lhb/k1;->b:Lhb/k1;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lhb/k1;

    .line 9
    .line 10
    invoke-direct {v1}, Lhb/k1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lhb/k1;->b:Lhb/k1;
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
.method public b(Ljava/lang/String;J)Lhb/s0;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lhb/k1;->a(Ljava/lang/String;)Lhb/s0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p2, p3}, Lhb/s0;->b(J)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method
