.class public final Lhb/z0;
.super Ljava/lang/Object;
.source ""


# static fields
.field static b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lhb/i0;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Lhb/z0;


# instance fields
.field private a:Lhb/t;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lhb/z0;->b:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lhb/t;

    .line 5
    .line 6
    invoke-direct {v0}, Lhb/t;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lhb/z0;->a:Lhb/t;

    .line 10
    .line 11
    return-void
.end method

.method public static e()Lhb/z0;
    .locals 1

    .line 1
    sget-object v0, Lhb/z0;->c:Lhb/z0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lhb/z0;->f()V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object v0, Lhb/z0;->c:Lhb/z0;

    .line 9
    .line 10
    return-object v0
.end method

.method private static declared-synchronized f()V
    .locals 2

    .line 1
    const-class v0, Lhb/z0;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lhb/z0;->c:Lhb/z0;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lhb/z0;

    .line 9
    .line 10
    invoke-direct {v1}, Lhb/z0;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lhb/z0;->c:Lhb/z0;
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
.method public a(Ljava/lang/String;)Lhb/i0;
    .locals 1

    .line 1
    sget-object v0, Lhb/z0;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lhb/i0;

    .line 8
    .line 9
    return-object p1
.end method

.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lhb/z0;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public c(Ljava/lang/String;Lhb/i0;)V
    .locals 1

    .line 1
    sget-object v0, Lhb/z0;->b:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d()Lhb/t;
    .locals 1

    .line 1
    iget-object v0, p0, Lhb/z0;->a:Lhb/t;

    .line 2
    .line 3
    return-object v0
.end method
