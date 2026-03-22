.class public Lr3/a0;
.super Ljava/lang/Object;
.source "NoOpImageCacheStatsTracker.java"

# interfaces
.implements Lr3/s;


# static fields
.field private static a:Lr3/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
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

.method public static declared-synchronized o()Lr3/a0;
    .locals 2

    .line 1
    const-class v0, Lr3/a0;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lr3/a0;->a:Lr3/a0;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lr3/a0;

    .line 9
    .line 10
    invoke-direct {v1}, Lr3/a0;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lr3/a0;->a:Lr3/a0;

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
    sget-object v1, Lr3/a0;->a:Lr3/a0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    monitor-exit v0

    .line 21
    return-object v1

    .line 22
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw v1
.end method


# virtual methods
.method public a(Lf2/a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Lf2/a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Lf2/a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public d(Lf2/a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public e(Lf2/a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public f(Lf2/a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public g(Lf2/a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public h(Lf2/a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public i(Lf2/a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public j(Lf2/a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public k(Lf2/a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public l(Lf2/a;)V
    .locals 0

    .line 1
    return-void
.end method

.method public m(Lr3/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr3/w<",
            "**>;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public n(Lr3/w;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lr3/w<",
            "**>;)V"
        }
    .end annotation

    .line 1
    return-void
.end method
