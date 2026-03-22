.class public Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;
.super Ljava/lang/Object;
.source "DefaultDrmSessionManager.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/drm/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$f;,
        Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$g;,
        Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$c;,
        Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$e;,
        Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$MissingSchemeDataException;,
        Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$d;,
        Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$b;
    }
.end annotation


# instance fields
.field private final b:Ljava/util/UUID;

.field private final c:Lio/bidmachine/media3/exoplayer/drm/m$c;

.field private final d:Lio/bidmachine/media3/exoplayer/drm/p;

.field private final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Z

.field private final g:[I

.field private final h:Z

.field private final i:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$f;

.field private final j:Lio/bidmachine/media3/exoplayer/upstream/b;

.field private final k:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$g;

.field private final l:J

.field private final m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$e;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;",
            ">;"
        }
    .end annotation
.end field

.field private p:I

.field private q:Lio/bidmachine/media3/exoplayer/drm/m;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private r:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private s:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private t:Landroid/os/Looper;

.field private u:Landroid/os/Handler;

.field private v:I

.field private w:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private x:Lhn/b2;

.field volatile y:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/UUID;Lio/bidmachine/media3/exoplayer/drm/m$c;Lio/bidmachine/media3/exoplayer/drm/p;Ljava/util/HashMap;Z[IZLio/bidmachine/media3/exoplayer/upstream/b;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lio/bidmachine/media3/exoplayer/drm/m$c;",
            "Lio/bidmachine/media3/exoplayer/drm/p;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z[IZ",
            "Lio/bidmachine/media3/exoplayer/upstream/b;",
            "J)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object v0, Lzm/f;->b:Ljava/util/UUID;

    invoke-virtual {v0, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Use C.CLEARKEY_UUID instead"

    invoke-static {v0, v1}, Lcn/a;->b(ZLjava/lang/Object;)V

    .line 5
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->b:Ljava/util/UUID;

    .line 6
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->c:Lio/bidmachine/media3/exoplayer/drm/m$c;

    .line 7
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->d:Lio/bidmachine/media3/exoplayer/drm/p;

    .line 8
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->e:Ljava/util/HashMap;

    .line 9
    iput-boolean p5, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->f:Z

    .line 10
    iput-object p6, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->g:[I

    .line 11
    iput-boolean p7, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->h:Z

    .line 12
    iput-object p8, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->j:Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 13
    new-instance p1, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$f;

    invoke-direct {p1, p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$f;-><init>(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->i:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$f;

    .line 14
    new-instance p1, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$g;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$g;-><init>(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$a;)V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->k:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$g;

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->v:I

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->m:Ljava/util/List;

    .line 17
    invoke-static {}, Lcom/google/common/collect/v;->h()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->n:Ljava/util/Set;

    .line 18
    invoke-static {}, Lcom/google/common/collect/v;->h()Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->o:Ljava/util/Set;

    .line 19
    iput-wide p9, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->l:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/util/UUID;Lio/bidmachine/media3/exoplayer/drm/m$c;Lio/bidmachine/media3/exoplayer/drm/p;Ljava/util/HashMap;Z[IZLio/bidmachine/media3/exoplayer/upstream/b;JLio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;-><init>(Ljava/util/UUID;Lio/bidmachine/media3/exoplayer/drm/m$c;Lio/bidmachine/media3/exoplayer/drm/p;Ljava/util/HashMap;Z[IZLio/bidmachine/media3/exoplayer/upstream/b;J)V

    return-void
.end method

.method private A(Landroid/os/Looper;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->y:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$d;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$d;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$d;-><init>(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->y:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$d;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private B()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->q:Lio/bidmachine/media3/exoplayer/drm/m;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->p:I

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->m:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->n:Ljava/util/Set;

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->q:Lio/bidmachine/media3/exoplayer/drm/m;

    .line 26
    .line 27
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lio/bidmachine/media3/exoplayer/drm/m;

    .line 32
    .line 33
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/drm/m;->release()V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->q:Lio/bidmachine/media3/exoplayer/drm/m;

    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method private C()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->o:Ljava/util/Set;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->t(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->j()Lcom/google/common/collect/y;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-interface {v1, v2}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->f(Lio/bidmachine/media3/exoplayer/drm/h$a;)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    return-void
.end method

.method private D()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->n:Ljava/util/Set;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->t(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableSet;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->j()Lcom/google/common/collect/y;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$e;

    .line 22
    .line 23
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$e;->release()V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method private F(Lio/bidmachine/media3/exoplayer/drm/DrmSession;Lio/bidmachine/media3/exoplayer/drm/h$a;)V
    .locals 4
    .param p2    # Lio/bidmachine/media3/exoplayer/drm/h$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-interface {p1, p2}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->f(Lio/bidmachine/media3/exoplayer/drm/h$a;)V

    .line 2
    .line 3
    .line 4
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->l:J

    .line 5
    .line 6
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    cmp-long p2, v0, v2

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    const/4 p2, 0x0

    .line 16
    invoke-interface {p1, p2}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->f(Lio/bidmachine/media3/exoplayer/drm/h$a;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private G(Z)V
    .locals 2

    .line 1
    const-string v0, "DefaultDrmSessionMgr"

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->t:Landroid/os/Looper;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 10
    .line 11
    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "DefaultDrmSessionManager accessed before setPlayer(), possibly on the wrong thread."

    .line 15
    .line 16
    invoke-static {v0, v1, p1}, Lcn/r;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->t:Landroid/os/Looper;

    .line 25
    .line 26
    invoke-static {v1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/os/Looper;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eq p1, v1, :cond_1

    .line 37
    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    const-string v1, "DefaultDrmSessionManager accessed on the wrong thread.\nCurrent thread: "

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    const-string v1, "\nExpected thread: "

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->t:Landroid/os/Looper;

    .line 65
    .line 66
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 82
    .line 83
    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-static {v0, p1, v1}, Lcn/r;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    .line 88
    .line 89
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic e(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->s:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->s:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic g(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->i:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$f;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->B()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic i(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->n:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroid/os/Looper;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->t:Landroid/os/Looper;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;Landroid/os/Looper;Lio/bidmachine/media3/exoplayer/drm/h$a;Lio/bidmachine/media3/common/a;Z)Lio/bidmachine/media3/exoplayer/drm/DrmSession;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->s(Landroid/os/Looper;Lio/bidmachine/media3/exoplayer/drm/h$a;Lio/bidmachine/media3/common/a;Z)Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic l(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->m:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic m(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->l:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic n(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->o:Ljava/util/Set;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic o(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->u:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic p(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->p:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic q(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->r:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic r(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->r:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    .line 2
    .line 3
    return-object p1
.end method

.method private s(Landroid/os/Looper;Lio/bidmachine/media3/exoplayer/drm/h$a;Lio/bidmachine/media3/common/a;Z)Lio/bidmachine/media3/exoplayer/drm/DrmSession;
    .locals 4
    .param p2    # Lio/bidmachine/media3/exoplayer/drm/h$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->A(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p3, Lio/bidmachine/media3/common/a;->s:Lio/bidmachine/media3/common/DrmInitData;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    iget-object p1, p3, Lio/bidmachine/media3/common/a;->o:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {p1}, Lzm/u;->k(Ljava/lang/String;)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    invoke-direct {p0, p1, p4}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->z(IZ)Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_0
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->w:[B

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    const/4 v1, 0x0

    .line 23
    if-nez p3, :cond_2

    .line 24
    .line 25
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lio/bidmachine/media3/common/DrmInitData;

    .line 30
    .line 31
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->b:Ljava/util/UUID;

    .line 32
    .line 33
    invoke-static {p1, p3, v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->x(Lio/bidmachine/media3/common/DrmInitData;Ljava/util/UUID;Z)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result p3

    .line 41
    if-eqz p3, :cond_3

    .line 42
    .line 43
    new-instance p1, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$MissingSchemeDataException;

    .line 44
    .line 45
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->b:Ljava/util/UUID;

    .line 46
    .line 47
    invoke-direct {p1, p3, v1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$MissingSchemeDataException;-><init>(Ljava/util/UUID;Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$a;)V

    .line 48
    .line 49
    .line 50
    const-string p3, "DefaultDrmSessionMgr"

    .line 51
    .line 52
    const-string p4, "DRM error"

    .line 53
    .line 54
    invoke-static {p3, p4, p1}, Lcn/r;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .line 56
    .line 57
    if-eqz p2, :cond_1

    .line 58
    .line 59
    invoke-virtual {p2, p1}, Lio/bidmachine/media3/exoplayer/drm/h$a;->l(Ljava/lang/Exception;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    new-instance p2, Lio/bidmachine/media3/exoplayer/drm/l;

    .line 63
    .line 64
    new-instance p3, Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 65
    .line 66
    const/16 p4, 0x1773

    .line 67
    .line 68
    invoke-direct {p3, p1, p4}, Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;-><init>(Ljava/lang/Throwable;I)V

    .line 69
    .line 70
    .line 71
    invoke-direct {p2, p3}, Lio/bidmachine/media3/exoplayer/drm/l;-><init>(Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;)V

    .line 72
    .line 73
    .line 74
    return-object p2

    .line 75
    :cond_2
    move-object p1, v1

    .line 76
    :cond_3
    iget-boolean p3, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->f:Z

    .line 77
    .line 78
    if-nez p3, :cond_4

    .line 79
    .line 80
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->s:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    iget-object p3, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->m:Ljava/util/List;

    .line 84
    .line 85
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    :cond_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    if-eqz v2, :cond_6

    .line 94
    .line 95
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    check-cast v2, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    .line 100
    .line 101
    iget-object v3, v2, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->a:Ljava/util/List;

    .line 102
    .line 103
    invoke-static {v3, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    if-eqz v3, :cond_5

    .line 108
    .line 109
    move-object v1, v2

    .line 110
    :cond_6
    :goto_0
    if-nez v1, :cond_8

    .line 111
    .line 112
    invoke-direct {p0, p1, v0, p2, p4}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->w(Ljava/util/List;ZLio/bidmachine/media3/exoplayer/drm/h$a;Z)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->f:Z

    .line 117
    .line 118
    if-nez p1, :cond_7

    .line 119
    .line 120
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->s:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    .line 121
    .line 122
    :cond_7
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->m:Ljava/util/List;

    .line 123
    .line 124
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_8
    invoke-virtual {v1, p2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->g(Lio/bidmachine/media3/exoplayer/drm/h$a;)V

    .line 129
    .line 130
    .line 131
    :goto_1
    return-object v1
.end method

.method private static t(Lio/bidmachine/media3/exoplayer/drm/DrmSession;)Z
    .locals 3

    .line 1
    invoke-interface {p0}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->getState()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v2, :cond_0

    .line 8
    .line 9
    return v1

    .line 10
    :cond_0
    invoke-interface {p0}, Lio/bidmachine/media3/exoplayer/drm/DrmSession;->getError()Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-static {p0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lio/bidmachine/media3/exoplayer/drm/DrmSession$DrmSessionException;

    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    instance-of v0, p0, Landroid/media/ResourceBusyException;

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/drm/j;->e(Ljava/lang/Throwable;)Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    if-eqz p0, :cond_2

    .line 33
    .line 34
    :cond_1
    move v1, v2

    .line 35
    :cond_2
    return v1
.end method

.method private u(Lio/bidmachine/media3/common/DrmInitData;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->w:[B

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->b:Ljava/util/UUID;

    .line 8
    .line 9
    invoke-static {p1, v0, v1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->x(Lio/bidmachine/media3/common/DrmInitData;Ljava/util/UUID;Z)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget v0, p1, Lio/bidmachine/media3/common/DrmInitData;->d:I

    .line 21
    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1, v2}, Lio/bidmachine/media3/common/DrmInitData;->e(I)Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-object v3, Lzm/f;->b:Ljava/util/UUID;

    .line 29
    .line 30
    invoke-virtual {v0, v3}, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->d(Ljava/util/UUID;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v3, "DrmInitData only contains common PSSH SchemeData. Assuming support for: "

    .line 42
    .line 43
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->b:Ljava/util/UUID;

    .line 47
    .line 48
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v3, "DefaultDrmSessionMgr"

    .line 56
    .line 57
    invoke-static {v3, v0}, Lcn/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    return v2

    .line 62
    :cond_2
    :goto_0
    iget-object p1, p1, Lio/bidmachine/media3/common/DrmInitData;->c:Ljava/lang/String;

    .line 63
    .line 64
    if-eqz p1, :cond_8

    .line 65
    .line 66
    const-string v0, "cenc"

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v0

    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_3
    const-string v0, "cbcs"

    .line 76
    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    sget p1, Lcn/m0;->a:I

    .line 84
    .line 85
    const/16 v0, 0x19

    .line 86
    .line 87
    if-lt p1, v0, :cond_4

    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_4
    move v1, v2

    .line 91
    :goto_1
    return v1

    .line 92
    :cond_5
    const-string v0, "cbc1"

    .line 93
    .line 94
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_7

    .line 99
    .line 100
    const-string v0, "cens"

    .line 101
    .line 102
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_6

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_6
    return v1

    .line 110
    :cond_7
    :goto_2
    return v2

    .line 111
    :cond_8
    :goto_3
    return v1
.end method

.method private v(Ljava/util/List;ZLio/bidmachine/media3/exoplayer/drm/h$a;)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;
    .locals 17
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/media3/exoplayer/drm/h$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/DrmInitData$SchemeData;",
            ">;Z",
            "Lio/bidmachine/media3/exoplayer/drm/h$a;",
            ")",
            "Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->q:Lio/bidmachine/media3/exoplayer/drm/m;

    .line 4
    .line 5
    invoke-static {v1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    iget-boolean v1, v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->h:Z

    .line 9
    .line 10
    or-int v9, v1, p2

    .line 11
    .line 12
    new-instance v1, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    .line 13
    .line 14
    iget-object v3, v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->b:Ljava/util/UUID;

    .line 15
    .line 16
    iget-object v4, v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->q:Lio/bidmachine/media3/exoplayer/drm/m;

    .line 17
    .line 18
    iget-object v5, v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->i:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$f;

    .line 19
    .line 20
    iget-object v6, v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->k:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$g;

    .line 21
    .line 22
    iget v8, v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->v:I

    .line 23
    .line 24
    iget-object v11, v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->w:[B

    .line 25
    .line 26
    iget-object v12, v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->e:Ljava/util/HashMap;

    .line 27
    .line 28
    iget-object v13, v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->d:Lio/bidmachine/media3/exoplayer/drm/p;

    .line 29
    .line 30
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->t:Landroid/os/Looper;

    .line 31
    .line 32
    invoke-static {v2}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    move-object v14, v2

    .line 37
    check-cast v14, Landroid/os/Looper;

    .line 38
    .line 39
    iget-object v15, v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->j:Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 40
    .line 41
    iget-object v2, v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->x:Lhn/b2;

    .line 42
    .line 43
    invoke-static {v2}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    move-object/from16 v16, v2

    .line 48
    .line 49
    check-cast v16, Lhn/b2;

    .line 50
    .line 51
    move-object v2, v1

    .line 52
    move-object/from16 v7, p1

    .line 53
    .line 54
    move/from16 v10, p2

    .line 55
    .line 56
    invoke-direct/range {v2 .. v16}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;-><init>(Ljava/util/UUID;Lio/bidmachine/media3/exoplayer/drm/m;Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$a;Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession$b;Ljava/util/List;IZZ[BLjava/util/HashMap;Lio/bidmachine/media3/exoplayer/drm/p;Landroid/os/Looper;Lio/bidmachine/media3/exoplayer/upstream/b;Lhn/b2;)V

    .line 57
    .line 58
    .line 59
    move-object/from16 v2, p3

    .line 60
    .line 61
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->g(Lio/bidmachine/media3/exoplayer/drm/h$a;)V

    .line 62
    .line 63
    .line 64
    iget-wide v2, v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->l:J

    .line 65
    .line 66
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    cmp-long v2, v2, v4

    .line 72
    .line 73
    if-eqz v2, :cond_0

    .line 74
    .line 75
    const/4 v2, 0x0

    .line 76
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->g(Lio/bidmachine/media3/exoplayer/drm/h$a;)V

    .line 77
    .line 78
    .line 79
    :cond_0
    return-object v1
.end method

.method private w(Ljava/util/List;ZLio/bidmachine/media3/exoplayer/drm/h$a;Z)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/media3/exoplayer/drm/h$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/DrmInitData$SchemeData;",
            ">;Z",
            "Lio/bidmachine/media3/exoplayer/drm/h$a;",
            "Z)",
            "Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->v(Ljava/util/List;ZLio/bidmachine/media3/exoplayer/drm/h$a;)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->t(Lio/bidmachine/media3/exoplayer/drm/DrmSession;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->o:Ljava/util/Set;

    .line 12
    .line 13
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->C()V

    .line 20
    .line 21
    .line 22
    invoke-direct {p0, v0, p3}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->F(Lio/bidmachine/media3/exoplayer/drm/DrmSession;Lio/bidmachine/media3/exoplayer/drm/h$a;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->v(Ljava/util/List;ZLio/bidmachine/media3/exoplayer/drm/h$a;)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    :cond_0
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->t(Lio/bidmachine/media3/exoplayer/drm/DrmSession;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    if-eqz p4, :cond_2

    .line 36
    .line 37
    iget-object p4, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->n:Ljava/util/Set;

    .line 38
    .line 39
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    .line 40
    .line 41
    .line 42
    move-result p4

    .line 43
    if-nez p4, :cond_2

    .line 44
    .line 45
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->D()V

    .line 46
    .line 47
    .line 48
    iget-object p4, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->o:Ljava/util/Set;

    .line 49
    .line 50
    invoke-interface {p4}, Ljava/util/Set;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result p4

    .line 54
    if-nez p4, :cond_1

    .line 55
    .line 56
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->C()V

    .line 57
    .line 58
    .line 59
    :cond_1
    invoke-direct {p0, v0, p3}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->F(Lio/bidmachine/media3/exoplayer/drm/DrmSession;Lio/bidmachine/media3/exoplayer/drm/h$a;)V

    .line 60
    .line 61
    .line 62
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->v(Ljava/util/List;ZLio/bidmachine/media3/exoplayer/drm/h$a;)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    :cond_2
    return-object v0
.end method

.method private static x(Lio/bidmachine/media3/common/DrmInitData;Ljava/util/UUID;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/media3/common/DrmInitData;",
            "Ljava/util/UUID;",
            "Z)",
            "Ljava/util/List<",
            "Lio/bidmachine/media3/common/DrmInitData$SchemeData;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    iget v1, p0, Lio/bidmachine/media3/common/DrmInitData;->d:I

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    iget v2, p0, Lio/bidmachine/media3/common/DrmInitData;->d:I

    .line 10
    .line 11
    if-ge v1, v2, :cond_3

    .line 12
    .line 13
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/common/DrmInitData;->e(I)Lio/bidmachine/media3/common/DrmInitData$SchemeData;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2, p1}, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->d(Ljava/util/UUID;)Z

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-nez v3, :cond_0

    .line 22
    .line 23
    sget-object v3, Lzm/f;->c:Ljava/util/UUID;

    .line 24
    .line 25
    invoke-virtual {v3, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_2

    .line 30
    .line 31
    sget-object v3, Lzm/f;->b:Ljava/util/UUID;

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->d(Ljava/util/UUID;)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-eqz v3, :cond_2

    .line 38
    .line 39
    :cond_0
    iget-object v3, v2, Lio/bidmachine/media3/common/DrmInitData$SchemeData;->e:[B

    .line 40
    .line 41
    if-nez v3, :cond_1

    .line 42
    .line 43
    if-eqz p2, :cond_2

    .line 44
    .line 45
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    return-object v0
.end method

.method private declared-synchronized y(Landroid/os/Looper;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->t:Landroid/os/Looper;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->t:Landroid/os/Looper;

    .line 7
    .line 8
    new-instance v0, Landroid/os/Handler;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->u:Landroid/os/Handler;

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_2

    .line 18
    :cond_0
    if-ne v0, p1, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    :goto_0
    invoke-static {p1}, Lcn/a;->g(Z)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->u:Landroid/os/Handler;

    .line 27
    .line 28
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    .line 30
    .line 31
    :goto_1
    monitor-exit p0

    .line 32
    return-void

    .line 33
    :goto_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    throw p1
.end method

.method private z(IZ)Lio/bidmachine/media3/exoplayer/drm/DrmSession;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->q:Lio/bidmachine/media3/exoplayer/drm/m;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/bidmachine/media3/exoplayer/drm/m;

    .line 8
    .line 9
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/drm/m;->a()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const/4 v2, 0x2

    .line 14
    const/4 v3, 0x0

    .line 15
    if-ne v1, v2, :cond_0

    .line 16
    .line 17
    sget-boolean v1, Lln/l;->d:Z

    .line 18
    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :cond_0
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->g:[I

    .line 23
    .line 24
    invoke-static {v1, p1}, Lcn/m0;->O0([II)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 v1, -0x1

    .line 29
    if-eq p1, v1, :cond_3

    .line 30
    .line 31
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/drm/m;->a()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    const/4 v0, 0x1

    .line 36
    if-ne p1, v0, :cond_1

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_1
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->r:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    .line 40
    .line 41
    if-nez p1, :cond_2

    .line 42
    .line 43
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->A()Lcom/google/common/collect/ImmutableList;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-direct {p0, p1, v0, v3, p2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->w(Ljava/util/List;ZLio/bidmachine/media3/exoplayer/drm/h$a;Z)Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->m:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->r:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {p1, v3}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->g(Lio/bidmachine/media3/exoplayer/drm/h$a;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->r:Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    .line 63
    .line 64
    return-object p1

    .line 65
    :cond_3
    :goto_1
    return-object v3
.end method


# virtual methods
.method public E(I[B)V
    .locals 1
    .param p2    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->m:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {v0}, Lcn/a;->g(Z)V

    .line 8
    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    if-ne p1, v0, :cond_1

    .line 15
    .line 16
    :cond_0
    invoke-static {p2}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    :cond_1
    iput p1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->v:I

    .line 20
    .line 21
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->w:[B

    .line 22
    .line 23
    return-void
.end method

.method public a(Lio/bidmachine/media3/common/a;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->G(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->q:Lio/bidmachine/media3/exoplayer/drm/m;

    .line 6
    .line 7
    invoke-static {v1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lio/bidmachine/media3/exoplayer/drm/m;

    .line 12
    .line 13
    invoke-interface {v1}, Lio/bidmachine/media3/exoplayer/drm/m;->a()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p1, Lio/bidmachine/media3/common/a;->s:Lio/bidmachine/media3/common/DrmInitData;

    .line 18
    .line 19
    if-nez v2, :cond_1

    .line 20
    .line 21
    iget-object p1, p1, Lio/bidmachine/media3/common/a;->o:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {p1}, Lzm/u;->k(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->g:[I

    .line 28
    .line 29
    invoke-static {v2, p1}, Lcn/m0;->O0([II)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    const/4 v2, -0x1

    .line 34
    if-eq p1, v2, :cond_0

    .line 35
    .line 36
    move v0, v1

    .line 37
    :cond_0
    return v0

    .line 38
    :cond_1
    invoke-direct {p0, v2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->u(Lio/bidmachine/media3/common/DrmInitData;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const/4 v1, 0x1

    .line 46
    :goto_0
    return v1
.end method

.method public b(Lio/bidmachine/media3/exoplayer/drm/h$a;Lio/bidmachine/media3/common/a;)Lio/bidmachine/media3/exoplayer/drm/DrmSession;
    .locals 3
    .param p1    # Lio/bidmachine/media3/exoplayer/drm/h$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->G(Z)V

    .line 3
    .line 4
    .line 5
    iget v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->p:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-lez v1, :cond_0

    .line 9
    .line 10
    move v0, v2

    .line 11
    :cond_0
    invoke-static {v0}, Lcn/a;->g(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->t:Landroid/os/Looper;

    .line 15
    .line 16
    invoke-static {v0}, Lcn/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->t:Landroid/os/Looper;

    .line 20
    .line 21
    invoke-direct {p0, v0, p1, p2, v2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->s(Landroid/os/Looper;Lio/bidmachine/media3/exoplayer/drm/h$a;Lio/bidmachine/media3/common/a;Z)Lio/bidmachine/media3/exoplayer/drm/DrmSession;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1
.end method

.method public c(Landroid/os/Looper;Lhn/b2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->y(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->x:Lhn/b2;

    .line 5
    .line 6
    return-void
.end method

.method public d(Lio/bidmachine/media3/exoplayer/drm/h$a;Lio/bidmachine/media3/common/a;)Lio/bidmachine/media3/exoplayer/drm/i$b;
    .locals 1
    .param p1    # Lio/bidmachine/media3/exoplayer/drm/h$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->p:I

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-static {v0}, Lcn/a;->g(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->t:Landroid/os/Looper;

    .line 12
    .line 13
    invoke-static {v0}, Lcn/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    new-instance v0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$e;

    .line 17
    .line 18
    invoke-direct {v0, p0, p1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$e;-><init>(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;Lio/bidmachine/media3/exoplayer/drm/h$a;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p2}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$e;->e(Lio/bidmachine/media3/common/a;)V

    .line 22
    .line 23
    .line 24
    return-object v0
.end method

.method public final prepare()V
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->G(Z)V

    .line 3
    .line 4
    .line 5
    iget v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->p:I

    .line 6
    .line 7
    add-int/lit8 v1, v0, 0x1

    .line 8
    .line 9
    iput v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->p:I

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->q:Lio/bidmachine/media3/exoplayer/drm/m;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-nez v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->c:Lio/bidmachine/media3/exoplayer/drm/m$c;

    .line 20
    .line 21
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->b:Ljava/util/UUID;

    .line 22
    .line 23
    invoke-interface {v0, v2}, Lio/bidmachine/media3/exoplayer/drm/m$c;->a(Ljava/util/UUID;)Lio/bidmachine/media3/exoplayer/drm/m;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->q:Lio/bidmachine/media3/exoplayer/drm/m;

    .line 28
    .line 29
    new-instance v2, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$c;

    .line 30
    .line 31
    invoke-direct {v2, p0, v1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$c;-><init>(Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager$a;)V

    .line 32
    .line 33
    .line 34
    invoke-interface {v0, v2}, Lio/bidmachine/media3/exoplayer/drm/m;->f(Lio/bidmachine/media3/exoplayer/drm/m$b;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->l:J

    .line 39
    .line 40
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 41
    .line 42
    .line 43
    .line 44
    .line 45
    cmp-long v0, v2, v4

    .line 46
    .line 47
    if-eqz v0, :cond_2

    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    :goto_0
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->m:Ljava/util/List;

    .line 51
    .line 52
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-ge v0, v2, :cond_2

    .line 57
    .line 58
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->m:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    .line 65
    .line 66
    invoke-virtual {v2, v1}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->g(Lio/bidmachine/media3/exoplayer/drm/h$a;)V

    .line 67
    .line 68
    .line 69
    add-int/lit8 v0, v0, 0x1

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    :goto_1
    return-void
.end method

.method public final release()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->G(Z)V

    .line 3
    .line 4
    .line 5
    iget v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->p:I

    .line 6
    .line 7
    sub-int/2addr v1, v0

    .line 8
    iput v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->p:I

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->l:J

    .line 14
    .line 15
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 16
    .line 17
    .line 18
    .line 19
    .line 20
    cmp-long v0, v0, v2

    .line 21
    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 25
    .line 26
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->m:Ljava/util/List;

    .line 27
    .line 28
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 29
    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-ge v1, v2, :cond_1

    .line 37
    .line 38
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-virtual {v2, v3}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSession;->f(Lio/bidmachine/media3/exoplayer/drm/h$a;)V

    .line 46
    .line 47
    .line 48
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->D()V

    .line 52
    .line 53
    .line 54
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/drm/DefaultDrmSessionManager;->B()V

    .line 55
    .line 56
    .line 57
    return-void
.end method
