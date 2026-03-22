.class public final Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;
.super Ljava/lang/Object;
.source "DefaultAudioSink.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/audio/AudioSink;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$g;,
        Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$e;,
        Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$d;,
        Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$m;,
        Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$j;,
        Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$l;,
        Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$f;,
        Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;,
        Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$c;,
        Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$b;,
        Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$k;,
        Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$n;,
        Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$i;,
        Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$InvalidAudioTrackTimestampException;
    }
.end annotation


# static fields
.field public static l0:Z = false

.field private static final m0:Ljava/lang/Object;

.field private static n0:Ljava/util/concurrent/ScheduledExecutorService;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "releaseExecutorLock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static o0:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "releaseExecutorLock"
    .end annotation
.end field


# instance fields
.field private A:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$k;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private B:Lzm/c;

.field private C:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$j;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private D:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$j;

.field private E:Lzm/v;

.field private F:Z

.field private G:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private H:I

.field private I:J

.field private J:J

.field private K:J

.field private L:J

.field private M:I

.field private N:Z

.field private O:Z

.field private P:J

.field private Q:F

.field private R:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private S:I

.field private T:Ljava/nio/ByteBuffer;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private U:Z

.field private V:Z

.field private W:Z

.field private X:Z

.field private Y:Z

.field private Z:I

.field private final a:Landroid/content/Context;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private a0:Lzm/d;

.field private final b:Lan/e;

.field private b0:Lio/bidmachine/media3/exoplayer/audio/c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:Z

.field private c0:Z

.field private final d:Lio/bidmachine/media3/exoplayer/audio/h;

.field private d0:J

.field private final e:Lio/bidmachine/media3/exoplayer/audio/o;

.field private e0:J

.field private final f:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/common/audio/AudioProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private f0:Z

.field private final g:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lio/bidmachine/media3/common/audio/AudioProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private g0:Z

.field private final h:Lio/bidmachine/media3/exoplayer/audio/g;

.field private h0:Landroid/os/Looper;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final i:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$j;",
            ">;"
        }
    .end annotation
.end field

.field private i0:J

.field private final j:Z

.field private j0:J

.field private k:I

.field private k0:Landroid/os/Handler;

.field private l:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$n;

.field private final m:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$l<",
            "Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException;",
            ">;"
        }
    .end annotation
.end field

.field private final n:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$l<",
            "Lio/bidmachine/media3/exoplayer/audio/AudioSink$WriteException;",
            ">;"
        }
    .end annotation
.end field

.field private final o:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$e;

.field private final p:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$d;

.field private final q:Lio/bidmachine/media3/exoplayer/ExoPlayer$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final r:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$f;

.field private s:Lhn/b2;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private t:Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private u:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private v:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

.field private w:Lio/bidmachine/media3/common/audio/a;

.field private x:Landroid/media/AudioTrack;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private y:Lio/bidmachine/media3/exoplayer/audio/a;

.field private z:Lio/bidmachine/media3/exoplayer/audio/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->m0:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$g;)V
    .locals 11

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$g;->a(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$g;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->a:Landroid/content/Context;

    .line 4
    sget-object v1, Lzm/c;->g:Lzm/c;

    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->B:Lzm/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$g;->d(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$g;)Lio/bidmachine/media3/exoplayer/audio/a;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->y:Lio/bidmachine/media3/exoplayer/audio/a;

    .line 6
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$g;->e(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$g;)Lan/e;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->b:Lan/e;

    .line 7
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$g;->f(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$g;)Z

    move-result v0

    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->c:Z

    .line 8
    sget v0, Lcn/m0;->a:I

    const/16 v2, 0x17

    const/4 v3, 0x0

    if-lt v0, v2, :cond_1

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$g;->g(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$g;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->j:Z

    .line 9
    iput v3, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->k:I

    .line 10
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$g;->h(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$g;)Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$e;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->o:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$e;

    .line 11
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$g;->i(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$g;)Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$d;

    move-result-object v0

    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$d;

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->p:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$d;

    .line 12
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/g;

    new-instance v2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$m;

    invoke-direct {v2, p0, v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$m;-><init>(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$a;)V

    invoke-direct {v0, v2}, Lio/bidmachine/media3/exoplayer/audio/g;-><init>(Lio/bidmachine/media3/exoplayer/audio/g$a;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->h:Lio/bidmachine/media3/exoplayer/audio/g;

    .line 13
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/h;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/audio/h;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->d:Lio/bidmachine/media3/exoplayer/audio/h;

    .line 14
    new-instance v1, Lio/bidmachine/media3/exoplayer/audio/o;

    invoke-direct {v1}, Lio/bidmachine/media3/exoplayer/audio/o;-><init>()V

    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->e:Lio/bidmachine/media3/exoplayer/audio/o;

    .line 15
    new-instance v2, Lio/bidmachine/media3/common/audio/e;

    invoke-direct {v2}, Lio/bidmachine/media3/common/audio/e;-><init>()V

    .line 16
    invoke-static {v2, v0, v1}, Lcom/google/common/collect/ImmutableList;->D(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->f:Lcom/google/common/collect/ImmutableList;

    .line 17
    new-instance v2, Lio/bidmachine/media3/exoplayer/audio/n;

    invoke-direct {v2}, Lio/bidmachine/media3/exoplayer/audio/n;-><init>()V

    .line 18
    invoke-static {v2, v0, v1}, Lcom/google/common/collect/ImmutableList;->D(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->g:Lcom/google/common/collect/ImmutableList;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    iput v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->Q:F

    .line 20
    iput v3, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->Z:I

    .line 21
    new-instance v0, Lzm/d;

    const/4 v1, 0x0

    invoke-direct {v0, v3, v1}, Lzm/d;-><init>(IF)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->a0:Lzm/d;

    .line 22
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$j;

    sget-object v1, Lzm/v;->d:Lzm/v;

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const-wide/16 v6, 0x0

    move-object v4, v0

    move-object v5, v1

    invoke-direct/range {v4 .. v10}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$j;-><init>(Lzm/v;JJLio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$a;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->D:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$j;

    .line 23
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->E:Lzm/v;

    .line 24
    iput-boolean v3, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->F:Z

    .line 25
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->i:Ljava/util/ArrayDeque;

    .line 26
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$l;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$l;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->m:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$l;

    .line 27
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$l;

    invoke-direct {v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$l;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->n:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$l;

    .line 28
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$g;->b(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$g;)Lio/bidmachine/media3/exoplayer/ExoPlayer$a;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->q:Lio/bidmachine/media3/exoplayer/ExoPlayer$a;

    .line 29
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$g;->c(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$g;)Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$f;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->r:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$f;

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$g;Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;-><init>(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$g;)V

    return-void
.end method

.method static synthetic A(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->e0:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic B()Z
    .locals 1

    .line 1
    invoke-static {}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->P()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method private C(J)V
    .locals 9

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->n0()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->l0()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->b:Lan/e;

    .line 14
    .line 15
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->E:Lzm/v;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Lan/e;->b(Lzm/v;)Lzm/v;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sget-object v0, Lzm/v;->d:Lzm/v;

    .line 23
    .line 24
    :goto_0
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->E:Lzm/v;

    .line 25
    .line 26
    :goto_1
    move-object v2, v0

    .line 27
    goto :goto_2

    .line 28
    :cond_1
    sget-object v0, Lzm/v;->d:Lzm/v;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :goto_2
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->l0()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->b:Lan/e;

    .line 38
    .line 39
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->F:Z

    .line 40
    .line 41
    invoke-interface {v0, v1}, Lan/e;->a(Z)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    goto :goto_3

    .line 46
    :cond_2
    const/4 v0, 0x0

    .line 47
    :goto_3
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->F:Z

    .line 48
    .line 49
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->i:Ljava/util/ArrayDeque;

    .line 50
    .line 51
    new-instance v8, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$j;

    .line 52
    .line 53
    const-wide/16 v3, 0x0

    .line 54
    .line 55
    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    .line 56
    .line 57
    .line 58
    move-result-wide v3

    .line 59
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->v:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 60
    .line 61
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->N()J

    .line 62
    .line 63
    .line 64
    move-result-wide v5

    .line 65
    invoke-virtual {p1, v5, v6}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->d(J)J

    .line 66
    .line 67
    .line 68
    move-result-wide v5

    .line 69
    const/4 v7, 0x0

    .line 70
    move-object v1, v8

    .line 71
    invoke-direct/range {v1 .. v7}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$j;-><init>(Lzm/v;JJLio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$a;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v8}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->k0()V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->t:Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;

    .line 81
    .line 82
    if-eqz p1, :cond_3

    .line 83
    .line 84
    iget-boolean p2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->F:Z

    .line 85
    .line 86
    invoke-interface {p1, p2}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;->a(Z)V

    .line 87
    .line 88
    .line 89
    :cond_3
    return-void
.end method

.method private D(J)J
    .locals 5

    .line 1
    :goto_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->i:Ljava/util/ArrayDeque;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->i:Ljava/util/ArrayDeque;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$j;

    .line 16
    .line 17
    iget-wide v0, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$j;->c:J

    .line 18
    .line 19
    cmp-long v0, p1, v0

    .line 20
    .line 21
    if-ltz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->i:Ljava/util/ArrayDeque;

    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$j;

    .line 30
    .line 31
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->D:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$j;

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->D:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$j;

    .line 35
    .line 36
    iget-wide v1, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$j;->c:J

    .line 37
    .line 38
    sub-long/2addr p1, v1

    .line 39
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$j;->a:Lzm/v;

    .line 40
    .line 41
    iget v0, v0, Lzm/v;->a:F

    .line 42
    .line 43
    invoke-static {p1, p2, v0}, Lcn/m0;->g0(JF)J

    .line 44
    .line 45
    .line 46
    move-result-wide v0

    .line 47
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->i:Ljava/util/ArrayDeque;

    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    if-eqz v2, :cond_1

    .line 54
    .line 55
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->b:Lan/e;

    .line 56
    .line 57
    invoke-interface {v2, p1, p2}, Lan/e;->getMediaDuration(J)J

    .line 58
    .line 59
    .line 60
    move-result-wide p1

    .line 61
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->D:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$j;

    .line 62
    .line 63
    iget-wide v3, v2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$j;->b:J

    .line 64
    .line 65
    add-long/2addr v3, p1

    .line 66
    sub-long/2addr p1, v0

    .line 67
    iput-wide p1, v2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$j;->d:J

    .line 68
    .line 69
    return-wide v3

    .line 70
    :cond_1
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->D:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$j;

    .line 71
    .line 72
    iget-wide v2, p1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$j;->b:J

    .line 73
    .line 74
    add-long/2addr v2, v0

    .line 75
    iget-wide p1, p1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$j;->d:J

    .line 76
    .line 77
    add-long/2addr v2, p1

    .line 78
    return-wide v2
.end method

.method private E(J)J
    .locals 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->b:Lan/e;

    .line 2
    .line 3
    invoke-interface {v0}, Lan/e;->getSkippedOutputFrameCount()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->v:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 8
    .line 9
    invoke-virtual {v2, v0, v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->d(J)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    add-long/2addr p1, v2

    .line 14
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->i0:J

    .line 15
    .line 16
    cmp-long v4, v0, v2

    .line 17
    .line 18
    if-lez v4, :cond_0

    .line 19
    .line 20
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->v:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 21
    .line 22
    sub-long v2, v0, v2

    .line 23
    .line 24
    invoke-virtual {v4, v2, v3}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->d(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->i0:J

    .line 29
    .line 30
    invoke-direct {p0, v2, v3}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->O(J)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-wide p1
.end method

.method private F(Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;Lzm/c;ILio/bidmachine/media3/common/a;)Landroid/media/AudioTrack;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->r:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$f;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$f;->a(Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;Lzm/c;I)Landroid/media/AudioTrack;

    .line 4
    .line 5
    .line 6
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 7
    invoke-virtual {p2}, Landroid/media/AudioTrack;->getState()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/4 p3, 0x1

    .line 12
    if-ne v1, p3, :cond_0

    .line 13
    .line 14
    return-object p2

    .line 15
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Landroid/media/AudioTrack;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 16
    .line 17
    .line 18
    :catch_0
    new-instance p2, Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException;

    .line 19
    .line 20
    iget v2, p1, Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;->b:I

    .line 21
    .line 22
    iget v3, p1, Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;->c:I

    .line 23
    .line 24
    iget v4, p1, Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;->a:I

    .line 25
    .line 26
    iget-boolean v6, p1, Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;->e:Z

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    move-object v0, p2

    .line 30
    move-object v5, p4

    .line 31
    invoke-direct/range {v0 .. v7}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException;-><init>(IIIILio/bidmachine/media3/common/a;ZLjava/lang/Exception;)V

    .line 32
    .line 33
    .line 34
    throw p2

    .line 35
    :catch_1
    move-exception p2

    .line 36
    :goto_0
    move-object v7, p2

    .line 37
    goto :goto_1

    .line 38
    :catch_2
    move-exception p2

    .line 39
    goto :goto_0

    .line 40
    :goto_1
    new-instance p2, Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException;

    .line 41
    .line 42
    iget v2, p1, Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;->b:I

    .line 43
    .line 44
    iget v3, p1, Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;->c:I

    .line 45
    .line 46
    iget v4, p1, Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;->a:I

    .line 47
    .line 48
    iget-boolean v6, p1, Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;->e:Z

    .line 49
    .line 50
    const/4 v1, 0x0

    .line 51
    move-object v0, p2

    .line 52
    move-object v5, p4

    .line 53
    invoke-direct/range {v0 .. v7}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException;-><init>(IIIILio/bidmachine/media3/common/a;ZLjava/lang/Exception;)V

    .line 54
    .line 55
    .line 56
    throw p2
.end method

.method private G(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;)Landroid/media/AudioTrack;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->a()Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->B:Lzm/c;

    .line 6
    .line 7
    iget v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->Z:I

    .line 8
    .line 9
    iget-object p1, p1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->a:Lio/bidmachine/media3/common/a;

    .line 10
    .line 11
    invoke-direct {p0, v0, v1, v2, p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->F(Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;Lzm/c;ILio/bidmachine/media3/common/a;)Landroid/media/AudioTrack;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->q:Lio/bidmachine/media3/exoplayer/ExoPlayer$a;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->T(Landroid/media/AudioTrack;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-interface {v0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayer$a;->y(Z)V
    :try_end_0
    .catch Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    goto :goto_1

    .line 29
    :cond_0
    :goto_0
    return-object p1

    .line 30
    :goto_1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->t:Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;->b(Ljava/lang/Exception;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    throw p1
.end method

.method private H()Landroid/media/AudioTrack;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->v:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 8
    .line 9
    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->G(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;)Landroid/media/AudioTrack;

    .line 10
    .line 11
    .line 12
    move-result-object v0
    :try_end_0
    .catch Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    return-object v0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->v:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 16
    .line 17
    iget v2, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->h:I

    .line 18
    .line 19
    const v3, 0xf4240

    .line 20
    .line 21
    .line 22
    if-le v2, v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {v1, v3}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->c(I)Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    :try_start_1
    invoke-direct {p0, v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->G(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;)Landroid/media/AudioTrack;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->v:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;
    :try_end_1
    .catch Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 33
    .line 34
    return-object v2

    .line 35
    :catch_1
    move-exception v1

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->W()V

    .line 40
    .line 41
    .line 42
    throw v0
.end method

.method private I(J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->T:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->n:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$l;

    .line 7
    .line 8
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$l;->b()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->T:Ljava/nio/ByteBuffer;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->c0:Z

    .line 22
    .line 23
    const/4 v7, 0x0

    .line 24
    const/4 v8, 0x1

    .line 25
    if-eqz v1, :cond_4

    .line 26
    .line 27
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    .line 28
    .line 29
    .line 30
    .line 31
    .line 32
    cmp-long v1, p1, v1

    .line 33
    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    move v1, v8

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move v1, v7

    .line 39
    :goto_0
    invoke-static {v1}, Lcn/a;->g(Z)V

    .line 40
    .line 41
    .line 42
    const-wide/high16 v1, -0x8000000000000000L

    .line 43
    .line 44
    cmp-long v1, p1, v1

    .line 45
    .line 46
    if-nez v1, :cond_3

    .line 47
    .line 48
    iget-wide p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->d0:J

    .line 49
    .line 50
    :goto_1
    move-wide v5, p1

    .line 51
    goto :goto_2

    .line 52
    :cond_3
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->d0:J

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :goto_2
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 56
    .line 57
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->T:Ljava/nio/ByteBuffer;

    .line 58
    .line 59
    move-object v1, p0

    .line 60
    move v4, v0

    .line 61
    invoke-direct/range {v1 .. v6}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->p0(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    goto :goto_3

    .line 66
    :cond_4
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 67
    .line 68
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->T:Ljava/nio/ByteBuffer;

    .line 69
    .line 70
    invoke-static {p1, p2, v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->o0(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 75
    .line 76
    .line 77
    move-result-wide v1

    .line 78
    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->e0:J

    .line 79
    .line 80
    const-wide/16 v1, 0x0

    .line 81
    .line 82
    if-gez p1, :cond_a

    .line 83
    .line 84
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->R(I)Z

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-eqz p2, :cond_6

    .line 89
    .line 90
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->N()J

    .line 91
    .line 92
    .line 93
    move-result-wide v3

    .line 94
    cmp-long p2, v3, v1

    .line 95
    .line 96
    if-lez p2, :cond_5

    .line 97
    .line 98
    :goto_4
    move v7, v8

    .line 99
    goto :goto_5

    .line 100
    :cond_5
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 101
    .line 102
    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->T(Landroid/media/AudioTrack;)Z

    .line 103
    .line 104
    .line 105
    move-result p2

    .line 106
    if-eqz p2, :cond_6

    .line 107
    .line 108
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->W()V

    .line 109
    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_6
    :goto_5
    new-instance p2, Lio/bidmachine/media3/exoplayer/audio/AudioSink$WriteException;

    .line 113
    .line 114
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->v:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 115
    .line 116
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->a:Lio/bidmachine/media3/common/a;

    .line 117
    .line 118
    invoke-direct {p2, p1, v0, v7}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$WriteException;-><init>(ILio/bidmachine/media3/common/a;Z)V

    .line 119
    .line 120
    .line 121
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->t:Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;

    .line 122
    .line 123
    if-eqz p1, :cond_7

    .line 124
    .line 125
    invoke-interface {p1, p2}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;->b(Ljava/lang/Exception;)V

    .line 126
    .line 127
    .line 128
    :cond_7
    iget-boolean p1, p2, Lio/bidmachine/media3/exoplayer/audio/AudioSink$WriteException;->b:Z

    .line 129
    .line 130
    if-eqz p1, :cond_9

    .line 131
    .line 132
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->a:Landroid/content/Context;

    .line 133
    .line 134
    if-nez p1, :cond_8

    .line 135
    .line 136
    goto :goto_6

    .line 137
    :cond_8
    sget-object p1, Lio/bidmachine/media3/exoplayer/audio/a;->c:Lio/bidmachine/media3/exoplayer/audio/a;

    .line 138
    .line 139
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->y:Lio/bidmachine/media3/exoplayer/audio/a;

    .line 140
    .line 141
    throw p2

    .line 142
    :cond_9
    :goto_6
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->n:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$l;

    .line 143
    .line 144
    invoke-virtual {p1, p2}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$l;->c(Ljava/lang/Exception;)V

    .line 145
    .line 146
    .line 147
    return-void

    .line 148
    :cond_a
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->n:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$l;

    .line 149
    .line 150
    invoke-virtual {p2}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$l;->a()V

    .line 151
    .line 152
    .line 153
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 154
    .line 155
    invoke-static {p2}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->T(Landroid/media/AudioTrack;)Z

    .line 156
    .line 157
    .line 158
    move-result p2

    .line 159
    if-eqz p2, :cond_c

    .line 160
    .line 161
    iget-wide v3, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->L:J

    .line 162
    .line 163
    cmp-long p2, v3, v1

    .line 164
    .line 165
    if-lez p2, :cond_b

    .line 166
    .line 167
    iput-boolean v7, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->g0:Z

    .line 168
    .line 169
    :cond_b
    iget-boolean p2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->X:Z

    .line 170
    .line 171
    if-eqz p2, :cond_c

    .line 172
    .line 173
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->t:Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;

    .line 174
    .line 175
    if-eqz p2, :cond_c

    .line 176
    .line 177
    if-ge p1, v0, :cond_c

    .line 178
    .line 179
    iget-boolean v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->g0:Z

    .line 180
    .line 181
    if-nez v1, :cond_c

    .line 182
    .line 183
    invoke-interface {p2}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;->d()V

    .line 184
    .line 185
    .line 186
    :cond_c
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->v:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 187
    .line 188
    iget p2, p2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->c:I

    .line 189
    .line 190
    if-nez p2, :cond_d

    .line 191
    .line 192
    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->K:J

    .line 193
    .line 194
    int-to-long v3, p1

    .line 195
    add-long/2addr v1, v3

    .line 196
    iput-wide v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->K:J

    .line 197
    .line 198
    :cond_d
    if-ne p1, v0, :cond_10

    .line 199
    .line 200
    if-eqz p2, :cond_f

    .line 201
    .line 202
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->T:Ljava/nio/ByteBuffer;

    .line 203
    .line 204
    iget-object p2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->R:Ljava/nio/ByteBuffer;

    .line 205
    .line 206
    if-ne p1, p2, :cond_e

    .line 207
    .line 208
    move v7, v8

    .line 209
    :cond_e
    invoke-static {v7}, Lcn/a;->g(Z)V

    .line 210
    .line 211
    .line 212
    iget-wide p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->L:J

    .line 213
    .line 214
    iget v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->M:I

    .line 215
    .line 216
    int-to-long v0, v0

    .line 217
    iget v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->S:I

    .line 218
    .line 219
    int-to-long v2, v2

    .line 220
    mul-long/2addr v0, v2

    .line 221
    add-long/2addr p1, v0

    .line 222
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->L:J

    .line 223
    .line 224
    :cond_f
    const/4 p1, 0x0

    .line 225
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->T:Ljava/nio/ByteBuffer;

    .line 226
    .line 227
    :cond_10
    return-void
.end method

.method private J()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->w:Lio/bidmachine/media3/common/audio/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/media3/common/audio/a;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    const-wide/high16 v3, -0x8000000000000000L

    .line 10
    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    invoke-direct {p0, v3, v4}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->I(J)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->T:Ljava/nio/ByteBuffer;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    move v1, v2

    .line 21
    :cond_0
    return v1

    .line 22
    :cond_1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->w:Lio/bidmachine/media3/common/audio/a;

    .line 23
    .line 24
    invoke-virtual {v0}, Lio/bidmachine/media3/common/audio/a;->h()V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0, v3, v4}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->c0(J)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->w:Lio/bidmachine/media3/common/audio/a;

    .line 31
    .line 32
    invoke-virtual {v0}, Lio/bidmachine/media3/common/audio/a;->e()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_3

    .line 37
    .line 38
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->T:Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_3

    .line 47
    .line 48
    :cond_2
    move v1, v2

    .line 49
    :cond_3
    return v1
.end method

.method private static K(III)I
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const/4 p1, -0x2

    .line 6
    if-eq p0, p1, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    invoke-static {p1}, Lcn/a;->g(Z)V

    .line 12
    .line 13
    .line 14
    return p0
.end method

.method private static L(ILjava/nio/ByteBuffer;)I
    .locals 2

    .line 1
    const/16 v0, 0x14

    .line 2
    .line 3
    if-eq p0, v0, :cond_3

    .line 4
    .line 5
    const/16 v0, 0x1e

    .line 6
    .line 7
    if-eq p0, v0, :cond_2

    .line 8
    .line 9
    const/4 v0, -0x1

    .line 10
    const/16 v1, 0x400

    .line 11
    .line 12
    packed-switch p0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    packed-switch p0, :pswitch_data_1

    .line 16
    .line 17
    .line 18
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 19
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v1, "Unexpected audio encoding: "

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :pswitch_0
    invoke-static {p1}, Lao/c;->e(Ljava/nio/ByteBuffer;)I

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    return p0

    .line 46
    :pswitch_1
    return v1

    .line 47
    :pswitch_2
    const/16 p0, 0x200

    .line 48
    .line 49
    return p0

    .line 50
    :pswitch_3
    invoke-static {p1}, Lao/b;->b(Ljava/nio/ByteBuffer;)I

    .line 51
    .line 52
    .line 53
    move-result p0

    .line 54
    if-ne p0, v0, :cond_0

    .line 55
    .line 56
    const/4 p0, 0x0

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-static {p1, p0}, Lao/b;->i(Ljava/nio/ByteBuffer;I)I

    .line 59
    .line 60
    .line 61
    move-result p0

    .line 62
    mul-int/lit8 p0, p0, 0x10

    .line 63
    .line 64
    :goto_0
    return p0

    .line 65
    :pswitch_4
    const/16 p0, 0x800

    .line 66
    .line 67
    return p0

    .line 68
    :pswitch_5
    return v1

    .line 69
    :pswitch_6
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    .line 70
    .line 71
    .line 72
    move-result p0

    .line 73
    invoke-static {p1, p0}, Lcn/m0;->P(Ljava/nio/ByteBuffer;I)I

    .line 74
    .line 75
    .line 76
    move-result p0

    .line 77
    invoke-static {p0}, Lao/f0;->m(I)I

    .line 78
    .line 79
    .line 80
    move-result p0

    .line 81
    if-eq p0, v0, :cond_1

    .line 82
    .line 83
    return p0

    .line 84
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 85
    .line 86
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 87
    .line 88
    .line 89
    throw p0

    .line 90
    :pswitch_7
    invoke-static {p1}, Lao/b;->e(Ljava/nio/ByteBuffer;)I

    .line 91
    .line 92
    .line 93
    move-result p0

    .line 94
    return p0

    .line 95
    :cond_2
    :pswitch_8
    invoke-static {p1}, Lao/o;->f(Ljava/nio/ByteBuffer;)I

    .line 96
    .line 97
    .line 98
    move-result p0

    .line 99
    return p0

    .line 100
    :cond_3
    invoke-static {p1}, Lao/h0;->h(Ljava/nio/ByteBuffer;)I

    .line 101
    .line 102
    .line 103
    move-result p0

    .line 104
    return p0

    .line 105
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_7
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
    .end packed-switch

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method private M()J
    .locals 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->v:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 2
    .line 3
    iget v1, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->c:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->I:J

    .line 8
    .line 9
    iget v0, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->b:I

    .line 10
    .line 11
    int-to-long v3, v0

    .line 12
    div-long/2addr v1, v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->J:J

    .line 15
    .line 16
    :goto_0
    return-wide v1
.end method

.method private N()J
    .locals 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->v:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 2
    .line 3
    iget v1, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->c:I

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->K:J

    .line 8
    .line 9
    iget v0, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->d:I

    .line 10
    .line 11
    int-to-long v3, v0

    .line 12
    invoke-static {v1, v2, v3, v4}, Lcn/m0;->l(JJ)J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->L:J

    .line 18
    .line 19
    :goto_0
    return-wide v0
.end method

.method private O(J)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->j0:J

    .line 2
    .line 3
    add-long/2addr v0, p1

    .line 4
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->j0:J

    .line 5
    .line 6
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->k0:Landroid/os/Handler;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    new-instance p1, Landroid/os/Handler;

    .line 11
    .line 12
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->k0:Landroid/os/Handler;

    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->k0:Landroid/os/Handler;

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->k0:Landroid/os/Handler;

    .line 28
    .line 29
    new-instance p2, Lin/p;

    .line 30
    .line 31
    invoke-direct {p2, p0}, Lin/p;-><init>(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)V

    .line 32
    .line 33
    .line 34
    const-wide/16 v0, 0x64

    .line 35
    .line 36
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private static P()Z
    .locals 2

    .line 1
    sget-object v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->m0:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->o0:I

    .line 5
    .line 6
    if-lez v1, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    :goto_0
    monitor-exit v0

    .line 12
    return v1

    .line 13
    :catchall_0
    move-exception v1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw v1
.end method

.method private Q()Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->m:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$l;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$l;->b()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->H()Landroid/media/AudioTrack;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 16
    .line 17
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->T(Landroid/media/AudioTrack;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 24
    .line 25
    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->d0(Landroid/media/AudioTrack;)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->v:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 29
    .line 30
    iget-boolean v2, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->k:Z

    .line 31
    .line 32
    if-eqz v2, :cond_1

    .line 33
    .line 34
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 35
    .line 36
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->a:Lio/bidmachine/media3/common/a;

    .line 37
    .line 38
    iget v3, v0, Lio/bidmachine/media3/common/a;->H:I

    .line 39
    .line 40
    iget v0, v0, Lio/bidmachine/media3/common/a;->I:I

    .line 41
    .line 42
    invoke-static {v2, v3, v0}, Lq5/x;->a(Landroid/media/AudioTrack;II)V

    .line 43
    .line 44
    .line 45
    :cond_1
    sget v0, Lcn/m0;->a:I

    .line 46
    .line 47
    const/16 v2, 0x1f

    .line 48
    .line 49
    if-lt v0, v2, :cond_2

    .line 50
    .line 51
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->s:Lhn/b2;

    .line 52
    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 56
    .line 57
    invoke-static {v3, v2}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$c;->a(Landroid/media/AudioTrack;Lhn/b2;)V

    .line 58
    .line 59
    .line 60
    :cond_2
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 61
    .line 62
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getAudioSessionId()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    iput v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->Z:I

    .line 67
    .line 68
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->h:Lio/bidmachine/media3/exoplayer/audio/g;

    .line 69
    .line 70
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 71
    .line 72
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->v:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 73
    .line 74
    iget v5, v2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->c:I

    .line 75
    .line 76
    const/4 v6, 0x2

    .line 77
    const/4 v9, 0x1

    .line 78
    if-ne v5, v6, :cond_3

    .line 79
    .line 80
    move v5, v9

    .line 81
    goto :goto_0

    .line 82
    :cond_3
    move v5, v1

    .line 83
    :goto_0
    iget v6, v2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->g:I

    .line 84
    .line 85
    iget v7, v2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->d:I

    .line 86
    .line 87
    iget v8, v2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->h:I

    .line 88
    .line 89
    invoke-virtual/range {v3 .. v8}, Lio/bidmachine/media3/exoplayer/audio/g;->s(Landroid/media/AudioTrack;ZIII)V

    .line 90
    .line 91
    .line 92
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->j0()V

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->a0:Lzm/d;

    .line 96
    .line 97
    iget v1, v1, Lzm/d;->a:I

    .line 98
    .line 99
    if-eqz v1, :cond_4

    .line 100
    .line 101
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 102
    .line 103
    invoke-virtual {v2, v1}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    .line 104
    .line 105
    .line 106
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 107
    .line 108
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->a0:Lzm/d;

    .line 109
    .line 110
    iget v2, v2, Lzm/d;->b:F

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    .line 113
    .line 114
    .line 115
    :cond_4
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->b0:Lio/bidmachine/media3/exoplayer/audio/c;

    .line 116
    .line 117
    if-eqz v1, :cond_5

    .line 118
    .line 119
    const/16 v2, 0x17

    .line 120
    .line 121
    if-lt v0, v2, :cond_5

    .line 122
    .line 123
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 124
    .line 125
    invoke-static {v2, v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$b;->b(Landroid/media/AudioTrack;Lio/bidmachine/media3/exoplayer/audio/c;)V

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->z:Lio/bidmachine/media3/exoplayer/audio/b;

    .line 129
    .line 130
    if-eqz v1, :cond_5

    .line 131
    .line 132
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->b0:Lio/bidmachine/media3/exoplayer/audio/c;

    .line 133
    .line 134
    iget-object v2, v2, Lio/bidmachine/media3/exoplayer/audio/c;->a:Landroid/media/AudioDeviceInfo;

    .line 135
    .line 136
    invoke-virtual {v1, v2}, Lio/bidmachine/media3/exoplayer/audio/b;->i(Landroid/media/AudioDeviceInfo;)V

    .line 137
    .line 138
    .line 139
    :cond_5
    const/16 v1, 0x18

    .line 140
    .line 141
    if-lt v0, v1, :cond_6

    .line 142
    .line 143
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->z:Lio/bidmachine/media3/exoplayer/audio/b;

    .line 144
    .line 145
    if-eqz v0, :cond_6

    .line 146
    .line 147
    new-instance v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$k;

    .line 148
    .line 149
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 150
    .line 151
    invoke-direct {v1, v2, v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$k;-><init>(Landroid/media/AudioTrack;Lio/bidmachine/media3/exoplayer/audio/b;)V

    .line 152
    .line 153
    .line 154
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->A:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$k;

    .line 155
    .line 156
    :cond_6
    iput-boolean v9, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->O:Z

    .line 157
    .line 158
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->t:Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;

    .line 159
    .line 160
    if-eqz v0, :cond_7

    .line 161
    .line 162
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->v:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 163
    .line 164
    invoke-virtual {v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->a()Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-interface {v0, v1}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;->n(Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V

    .line 169
    .line 170
    .line 171
    :cond_7
    return v9
.end method

.method private static R(I)Z
    .locals 2

    .line 1
    sget v0, Lcn/m0;->a:I

    .line 2
    .line 3
    const/16 v1, 0x18

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x6

    .line 8
    if-eq p0, v0, :cond_1

    .line 9
    .line 10
    :cond_0
    const/16 v0, -0x20

    .line 11
    .line 12
    if-ne p0, v0, :cond_2

    .line 13
    .line 14
    :cond_1
    const/4 p0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_2
    const/4 p0, 0x0

    .line 17
    :goto_0
    return p0
.end method

.method private S()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 2
    .line 3
    if-eqz v0, :cond_0

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
    return v0
.end method

.method private static T(Landroid/media/AudioTrack;)Z
    .locals 2

    .line 1
    sget v0, Lcn/m0;->a:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lq5/y;->a(Landroid/media/AudioTrack;)Z

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
.end method

.method private static synthetic U(Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;->l(Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic V(Landroid/media/AudioTrack;Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/media/AudioTrack;->flush()V

    .line 3
    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/media/AudioTrack;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    .line 24
    new-instance p0, Lin/o;

    .line 25
    .line 26
    invoke-direct {p0, p1, p3}, Lin/o;-><init>(Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    sget-object p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->m0:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter p0

    .line 35
    :try_start_1
    sget p1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->o0:I

    .line 36
    .line 37
    add-int/lit8 p1, p1, -0x1

    .line 38
    .line 39
    sput p1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->o0:I

    .line 40
    .line 41
    if-nez p1, :cond_1

    .line 42
    .line 43
    sget-object p1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->n0:Ljava/util/concurrent/ScheduledExecutorService;

    .line 44
    .line 45
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 46
    .line 47
    .line 48
    sput-object v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->n0:Ljava/util/concurrent/ScheduledExecutorService;

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catchall_0
    move-exception p1

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    :goto_0
    monitor-exit p0

    .line 54
    return-void

    .line 55
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    throw p1

    .line 57
    :catchall_1
    move-exception p0

    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Ljava/lang/Thread;->isAlive()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    new-instance v1, Lin/o;

    .line 75
    .line 76
    invoke-direct {v1, p1, p3}, Lin/o;-><init>(Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 80
    .line 81
    .line 82
    :cond_2
    sget-object p1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->m0:Ljava/lang/Object;

    .line 83
    .line 84
    monitor-enter p1

    .line 85
    :try_start_2
    sget p2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->o0:I

    .line 86
    .line 87
    add-int/lit8 p2, p2, -0x1

    .line 88
    .line 89
    sput p2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->o0:I

    .line 90
    .line 91
    if-nez p2, :cond_3

    .line 92
    .line 93
    sget-object p2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->n0:Ljava/util/concurrent/ScheduledExecutorService;

    .line 94
    .line 95
    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 96
    .line 97
    .line 98
    sput-object v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->n0:Ljava/util/concurrent/ScheduledExecutorService;

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :catchall_2
    move-exception p0

    .line 102
    goto :goto_3

    .line 103
    :cond_3
    :goto_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 104
    throw p0

    .line 105
    :goto_3
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 106
    throw p0
.end method

.method private W()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->v:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->f()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->f0:Z

    .line 12
    .line 13
    return-void
.end method

.method private X(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;
    .locals 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->v:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 2
    .line 3
    iget v0, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->c:I

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    const-wide/16 v0, 0x14

    .line 9
    .line 10
    invoke-static {v0, v1}, Lcn/m0;->S0(J)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->v:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 15
    .line 16
    iget v2, v2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->e:I

    .line 17
    .line 18
    invoke-static {v0, v1, v2}, Lcn/m0;->F(JI)J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    long-to-int v0, v0

    .line 23
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->N()J

    .line 24
    .line 25
    .line 26
    move-result-wide v1

    .line 27
    int-to-long v3, v0

    .line 28
    cmp-long v3, v1, v3

    .line 29
    .line 30
    if-ltz v3, :cond_1

    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_1
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->v:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 34
    .line 35
    iget v4, v3, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->g:I

    .line 36
    .line 37
    iget v3, v3, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->d:I

    .line 38
    .line 39
    long-to-int v1, v1

    .line 40
    invoke-static {p1, v4, v3, v1, v0}, Lin/r;->a(Ljava/nio/ByteBuffer;IIII)Ljava/nio/ByteBuffer;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    return-object p1
.end method

.method private Y()V
    .locals 4

    .line 1
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->j0:J

    .line 2
    .line 3
    const-wide/32 v2, 0x493e0

    .line 4
    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-ltz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->t:Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;

    .line 11
    .line 12
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;->f()V

    .line 13
    .line 14
    .line 15
    const-wide/16 v0, 0x0

    .line 16
    .line 17
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->j0:J

    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method private Z()V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->z:Lio/bidmachine/media3/exoplayer/audio/b;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->a:Landroid/content/Context;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->h0:Landroid/os/Looper;

    .line 14
    .line 15
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/b;

    .line 16
    .line 17
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->a:Landroid/content/Context;

    .line 18
    .line 19
    new-instance v2, Lin/n;

    .line 20
    .line 21
    invoke-direct {v2, p0}, Lin/n;-><init>(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)V

    .line 22
    .line 23
    .line 24
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->B:Lzm/c;

    .line 25
    .line 26
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->b0:Lio/bidmachine/media3/exoplayer/audio/c;

    .line 27
    .line 28
    invoke-direct {v0, v1, v2, v3, v4}, Lio/bidmachine/media3/exoplayer/audio/b;-><init>(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/audio/b$f;Lzm/c;Lio/bidmachine/media3/exoplayer/audio/c;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->z:Lio/bidmachine/media3/exoplayer/audio/b;

    .line 32
    .line 33
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/b;->g()Lio/bidmachine/media3/exoplayer/audio/a;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->y:Lio/bidmachine/media3/exoplayer/audio/a;

    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->y:Lio/bidmachine/media3/exoplayer/audio/a;

    .line 40
    .line 41
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method private b0()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->V:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->V:Z

    .line 7
    .line 8
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->h:Lio/bidmachine/media3/exoplayer/audio/g;

    .line 9
    .line 10
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->N()J

    .line 11
    .line 12
    .line 13
    move-result-wide v1

    .line 14
    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/audio/g;->g(J)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 18
    .line 19
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->T(Landroid/media/AudioTrack;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->W:Z

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 31
    .line 32
    .line 33
    iput v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->H:I

    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method private c0(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->I(J)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->T:Ljava/nio/ByteBuffer;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->w:Lio/bidmachine/media3/common/audio/a;

    .line 10
    .line 11
    invoke-virtual {v0}, Lio/bidmachine/media3/common/audio/a;->f()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->R:Ljava/nio/ByteBuffer;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->i0(Ljava/nio/ByteBuffer;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->I(J)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void

    .line 28
    :cond_2
    :goto_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->w:Lio/bidmachine/media3/common/audio/a;

    .line 29
    .line 30
    invoke-virtual {v0}, Lio/bidmachine/media3/common/audio/a;->e()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_6

    .line 35
    .line 36
    :cond_3
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->w:Lio/bidmachine/media3/common/audio/a;

    .line 37
    .line 38
    invoke-virtual {v0}, Lio/bidmachine/media3/common/audio/a;->d()Ljava/nio/ByteBuffer;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_4

    .line 47
    .line 48
    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->i0(Ljava/nio/ByteBuffer;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->I(J)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->T:Ljava/nio/ByteBuffer;

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    return-void

    .line 59
    :cond_4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->R:Ljava/nio/ByteBuffer;

    .line 60
    .line 61
    if-eqz v0, :cond_6

    .line 62
    .line 63
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-nez v0, :cond_5

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_5
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->w:Lio/bidmachine/media3/common/audio/a;

    .line 71
    .line 72
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->R:Ljava/nio/ByteBuffer;

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Lio/bidmachine/media3/common/audio/a;->i(Ljava/nio/ByteBuffer;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_6
    :goto_1
    return-void
.end method

.method private d0(Landroid/media/AudioTrack;)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->l:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$n;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$n;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$n;-><init>(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->l:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$n;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->l:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$n;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$n;->a(Landroid/media/AudioTrack;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private static e0(Landroid/media/AudioTrack;Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V
    .locals 4
    .param p1    # Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/os/Handler;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->m0:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter v1

    .line 13
    :try_start_0
    sget-object v2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->n0:Ljava/util/concurrent/ScheduledExecutorService;

    .line 14
    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    const-string v2, "ExoPlayer:AudioTrackReleaseThread"

    .line 18
    .line 19
    invoke-static {v2}, Lcn/m0;->U0(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    sput-object v2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->n0:Ljava/util/concurrent/ScheduledExecutorService;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_1

    .line 28
    :cond_0
    :goto_0
    sget v2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->o0:I

    .line 29
    .line 30
    add-int/lit8 v2, v2, 0x1

    .line 31
    .line 32
    sput v2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->o0:I

    .line 33
    .line 34
    sget-object v2, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->n0:Ljava/util/concurrent/ScheduledExecutorService;

    .line 35
    .line 36
    new-instance v3, Lin/m;

    .line 37
    .line 38
    invoke-direct {v3, p0, p1, v0, p2}, Lin/m;-><init>(Landroid/media/AudioTrack;Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V

    .line 39
    .line 40
    .line 41
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 42
    .line 43
    const-wide/16 p1, 0x14

    .line 44
    .line 45
    invoke-interface {v2, v3, p1, p2, p0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 46
    .line 47
    .line 48
    monitor-exit v1

    .line 49
    return-void

    .line 50
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    throw p0
.end method

.method private f0()V
    .locals 11

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->I:J

    .line 4
    .line 5
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->J:J

    .line 6
    .line 7
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->K:J

    .line 8
    .line 9
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->L:J

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->g0:Z

    .line 13
    .line 14
    iput v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->M:I

    .line 15
    .line 16
    new-instance v10, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$j;

    .line 17
    .line 18
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->E:Lzm/v;

    .line 19
    .line 20
    const-wide/16 v7, 0x0

    .line 21
    .line 22
    const/4 v9, 0x0

    .line 23
    const-wide/16 v5, 0x0

    .line 24
    .line 25
    move-object v3, v10

    .line 26
    invoke-direct/range {v3 .. v9}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$j;-><init>(Lzm/v;JJLio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$a;)V

    .line 27
    .line 28
    .line 29
    iput-object v10, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->D:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$j;

    .line 30
    .line 31
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->P:J

    .line 32
    .line 33
    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->C:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$j;

    .line 35
    .line 36
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->i:Ljava/util/ArrayDeque;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->clear()V

    .line 39
    .line 40
    .line 41
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->R:Ljava/nio/ByteBuffer;

    .line 42
    .line 43
    iput v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->S:I

    .line 44
    .line 45
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->T:Ljava/nio/ByteBuffer;

    .line 46
    .line 47
    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->V:Z

    .line 48
    .line 49
    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->U:Z

    .line 50
    .line 51
    iput-boolean v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->W:Z

    .line 52
    .line 53
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->G:Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    iput v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->H:I

    .line 56
    .line 57
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->e:Lio/bidmachine/media3/exoplayer/audio/o;

    .line 58
    .line 59
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/o;->i()V

    .line 60
    .line 61
    .line 62
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->k0()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method private g0(Lzm/v;)V
    .locals 8

    .line 1
    new-instance v7, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$j;

    .line 2
    .line 3
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    const/4 v6, 0x0

    .line 9
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 10
    .line 11
    .line 12
    .line 13
    .line 14
    move-object v0, v7

    .line 15
    move-object v1, p1

    .line 16
    invoke-direct/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$j;-><init>(Lzm/v;JJLio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$a;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->S()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iput-object v7, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->C:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$j;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    iput-object v7, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->D:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$j;

    .line 29
    .line 30
    :goto_0
    return-void
.end method

.method private h0()V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->S()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/media/PlaybackParams;

    .line 8
    .line 9
    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/media/PlaybackParams;->allowDefaults()Landroid/media/PlaybackParams;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->E:Lzm/v;

    .line 17
    .line 18
    iget v1, v1, Lzm/v;->a:F

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->E:Lzm/v;

    .line 25
    .line 26
    iget v1, v1, Lzm/v;->b:F

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const/4 v1, 0x2

    .line 33
    invoke-virtual {v0, v1}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    :try_start_0
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 38
    .line 39
    invoke-virtual {v1, v0}, Landroid/media/AudioTrack;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    const-string v1, "DefaultAudioSink"

    .line 45
    .line 46
    const-string v2, "Failed to set playback params"

    .line 47
    .line 48
    invoke-static {v1, v2, v0}, Lcn/r;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 49
    .line 50
    .line 51
    :goto_0
    new-instance v0, Lzm/v;

    .line 52
    .line 53
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Landroid/media/PlaybackParams;->getSpeed()F

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 64
    .line 65
    invoke-virtual {v2}, Landroid/media/AudioTrack;->getPlaybackParams()Landroid/media/PlaybackParams;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v2}, Landroid/media/PlaybackParams;->getPitch()F

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    invoke-direct {v0, v1, v2}, Lzm/v;-><init>(FF)V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->E:Lzm/v;

    .line 77
    .line 78
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->h:Lio/bidmachine/media3/exoplayer/audio/g;

    .line 79
    .line 80
    iget v0, v0, Lzm/v;->a:F

    .line 81
    .line 82
    invoke-virtual {v1, v0}, Lio/bidmachine/media3/exoplayer/audio/g;->t(F)V

    .line 83
    .line 84
    .line 85
    :cond_0
    return-void
.end method

.method private i0(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->T:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    if-nez v0, :cond_0

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
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->X(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->T:Ljava/nio/ByteBuffer;

    .line 23
    .line 24
    return-void
.end method

.method private j0()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->S()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 8
    .line 9
    iget v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->Q:F

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setVolume(F)I

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private k0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->v:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 2
    .line 3
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->i:Lio/bidmachine/media3/common/audio/a;

    .line 4
    .line 5
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->w:Lio/bidmachine/media3/common/audio/a;

    .line 6
    .line 7
    invoke-virtual {v0}, Lio/bidmachine/media3/common/audio/a;->b()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private l0()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->c0:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->v:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 6
    .line 7
    iget v1, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->c:I

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->a:Lio/bidmachine/media3/common/a;

    .line 12
    .line 13
    iget v0, v0, Lio/bidmachine/media3/common/a;->G:I

    .line 14
    .line 15
    invoke-direct {p0, v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->m0(I)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method private m0(I)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Lcn/m0;->F0(I)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    return p1
.end method

.method private n0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->v:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->j:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget v0, Lcn/m0;->a:I

    .line 10
    .line 11
    const/16 v1, 0x17

    .line 12
    .line 13
    if-lt v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method private static o0(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    .line 3
    .line 4
    .line 5
    move-result p0

    .line 6
    return p0
.end method

.method private p0(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;IJ)I
    .locals 10

    .line 1
    sget v0, Lcn/m0;->a:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    const-wide/16 v2, 0x3e8

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v7, 0x1

    .line 10
    mul-long v8, p4, v2

    .line 11
    .line 12
    move-object v4, p1

    .line 13
    move-object v5, p2

    .line 14
    move v6, p3

    .line 15
    invoke-virtual/range {v4 .. v9}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;IIJ)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->G:Ljava/nio/ByteBuffer;

    .line 21
    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const/16 v0, 0x10

    .line 25
    .line 26
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->G:Ljava/nio/ByteBuffer;

    .line 31
    .line 32
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->G:Ljava/nio/ByteBuffer;

    .line 38
    .line 39
    const v1, 0x55550001

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 43
    .line 44
    .line 45
    :cond_1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->H:I

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    if-nez v0, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->G:Ljava/nio/ByteBuffer;

    .line 51
    .line 52
    const/4 v4, 0x4

    .line 53
    invoke-virtual {v0, v4, p3}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->G:Ljava/nio/ByteBuffer;

    .line 57
    .line 58
    const/16 v4, 0x8

    .line 59
    .line 60
    mul-long/2addr p4, v2

    .line 61
    invoke-virtual {v0, v4, p4, p5}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    .line 62
    .line 63
    .line 64
    iget-object p4, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->G:Ljava/nio/ByteBuffer;

    .line 65
    .line 66
    invoke-virtual {p4, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 67
    .line 68
    .line 69
    iput p3, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->H:I

    .line 70
    .line 71
    :cond_2
    iget-object p4, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->G:Ljava/nio/ByteBuffer;

    .line 72
    .line 73
    invoke-virtual {p4}, Ljava/nio/Buffer;->remaining()I

    .line 74
    .line 75
    .line 76
    move-result p4

    .line 77
    if-lez p4, :cond_4

    .line 78
    .line 79
    iget-object p5, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->G:Ljava/nio/ByteBuffer;

    .line 80
    .line 81
    const/4 v0, 0x1

    .line 82
    invoke-virtual {p1, p5, p4, v0}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    .line 83
    .line 84
    .line 85
    move-result p5

    .line 86
    if-gez p5, :cond_3

    .line 87
    .line 88
    iput v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->H:I

    .line 89
    .line 90
    return p5

    .line 91
    :cond_3
    if-ge p5, p4, :cond_4

    .line 92
    .line 93
    return v1

    .line 94
    :cond_4
    invoke-static {p1, p2, p3}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->o0(Landroid/media/AudioTrack;Ljava/nio/ByteBuffer;I)I

    .line 95
    .line 96
    .line 97
    move-result p1

    .line 98
    if-gez p1, :cond_5

    .line 99
    .line 100
    iput v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->H:I

    .line 101
    .line 102
    return p1

    .line 103
    :cond_5
    iget p2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->H:I

    .line 104
    .line 105
    sub-int/2addr p2, p1

    .line 106
    iput p2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->H:I

    .line 107
    .line 108
    return p1
.end method

.method public static synthetic r(Landroid/media/AudioTrack;Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->V(Landroid/media/AudioTrack;Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic s(Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->U(Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic t(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->Y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic u(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)Landroid/media/AudioTrack;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic v(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->t:Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic w(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->X:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic x(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->W:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic y(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)J
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->M()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method static synthetic z(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;)J
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->N()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method


# virtual methods
.method public a(Lio/bidmachine/media3/common/a;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->m(Lio/bidmachine/media3/common/a;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    return p1
.end method

.method public a0(Lio/bidmachine/media3/exoplayer/audio/a;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->h0:Landroid/os/Looper;

    .line 6
    .line 7
    if-eq v1, v0, :cond_2

    .line 8
    .line 9
    const-string p1, "null"

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    move-object v1, p1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    :goto_0
    if-nez v0, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    :goto_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 35
    .line 36
    new-instance v2, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v3, "Current looper ("

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string p1, ") is not the playback looper ("

    .line 50
    .line 51
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p1, ")"

    .line 58
    .line 59
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw v0

    .line 70
    :cond_2
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->y:Lio/bidmachine/media3/exoplayer/audio/a;

    .line 71
    .line 72
    if-eqz v0, :cond_3

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/exoplayer/audio/a;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_3

    .line 79
    .line 80
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->y:Lio/bidmachine/media3/exoplayer/audio/a;

    .line 81
    .line 82
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->t:Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;

    .line 83
    .line 84
    if-eqz p1, :cond_3

    .line 85
    .line 86
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;->g()V

    .line 87
    .line 88
    .line 89
    :cond_3
    return-void
.end method

.method public b(Lzm/v;)V
    .locals 5

    .line 1
    new-instance v0, Lzm/v;

    .line 2
    .line 3
    iget v1, p1, Lzm/v;->a:F

    .line 4
    .line 5
    const v2, 0x3dcccccd    # 0.1f

    .line 6
    .line 7
    .line 8
    const/high16 v3, 0x41000000    # 8.0f

    .line 9
    .line 10
    invoke-static {v1, v2, v3}, Lcn/m0;->o(FFF)F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    iget v4, p1, Lzm/v;->b:F

    .line 15
    .line 16
    invoke-static {v4, v2, v3}, Lcn/m0;->o(FFF)F

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    invoke-direct {v0, v1, v2}, Lzm/v;-><init>(FF)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->E:Lzm/v;

    .line 24
    .line 25
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->n0()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->h0()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->g0(Lzm/v;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->Y:Z

    .line 2
    .line 3
    invoke-static {v0}, Lcn/a;->g(Z)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->c0:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->c0:Z

    .line 12
    .line 13
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public d(Ljava/nio/ByteBuffer;JI)Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException;,
            Lio/bidmachine/media3/exoplayer/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    move-wide/from16 v2, p2

    .line 6
    .line 7
    move/from16 v4, p4

    .line 8
    .line 9
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->R:Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    const/4 v6, 0x1

    .line 12
    const/4 v7, 0x0

    .line 13
    if-eqz v5, :cond_1

    .line 14
    .line 15
    if-ne v0, v5, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v5, v7

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    move v5, v6

    .line 21
    :goto_1
    invoke-static {v5}, Lcn/a;->a(Z)V

    .line 22
    .line 23
    .line 24
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->u:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 25
    .line 26
    const/4 v8, 0x0

    .line 27
    if-eqz v5, :cond_7

    .line 28
    .line 29
    invoke-direct/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->J()Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-nez v5, :cond_2

    .line 34
    .line 35
    return v7

    .line 36
    :cond_2
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->u:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 37
    .line 38
    iget-object v9, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->v:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 39
    .line 40
    invoke-virtual {v5, v9}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->b(Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    if-nez v5, :cond_4

    .line 45
    .line 46
    invoke-direct/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->b0()V

    .line 47
    .line 48
    .line 49
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->hasPendingData()Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_3

    .line 54
    .line 55
    return v7

    .line 56
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_4
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->u:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 61
    .line 62
    iput-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->v:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 63
    .line 64
    iput-object v8, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->u:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 65
    .line 66
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 67
    .line 68
    if-eqz v5, :cond_6

    .line 69
    .line 70
    invoke-static {v5}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->T(Landroid/media/AudioTrack;)Z

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-eqz v5, :cond_6

    .line 75
    .line 76
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->v:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 77
    .line 78
    iget-boolean v5, v5, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->k:Z

    .line 79
    .line 80
    if-eqz v5, :cond_6

    .line 81
    .line 82
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 83
    .line 84
    invoke-virtual {v5}, Landroid/media/AudioTrack;->getPlayState()I

    .line 85
    .line 86
    .line 87
    move-result v5

    .line 88
    const/4 v9, 0x3

    .line 89
    if-ne v5, v9, :cond_5

    .line 90
    .line 91
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 92
    .line 93
    invoke-static {v5}, Lq5/w;->a(Landroid/media/AudioTrack;)V

    .line 94
    .line 95
    .line 96
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->h:Lio/bidmachine/media3/exoplayer/audio/g;

    .line 97
    .line 98
    invoke-virtual {v5}, Lio/bidmachine/media3/exoplayer/audio/g;->a()V

    .line 99
    .line 100
    .line 101
    :cond_5
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 102
    .line 103
    iget-object v9, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->v:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 104
    .line 105
    iget-object v9, v9, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->a:Lio/bidmachine/media3/common/a;

    .line 106
    .line 107
    iget v10, v9, Lio/bidmachine/media3/common/a;->H:I

    .line 108
    .line 109
    iget v9, v9, Lio/bidmachine/media3/common/a;->I:I

    .line 110
    .line 111
    invoke-static {v5, v10, v9}, Lq5/x;->a(Landroid/media/AudioTrack;II)V

    .line 112
    .line 113
    .line 114
    iput-boolean v6, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->g0:Z

    .line 115
    .line 116
    :cond_6
    :goto_2
    invoke-direct {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->C(J)V

    .line 117
    .line 118
    .line 119
    :cond_7
    invoke-direct/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->S()Z

    .line 120
    .line 121
    .line 122
    move-result v5

    .line 123
    if-nez v5, :cond_9

    .line 124
    .line 125
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->Q()Z

    .line 126
    .line 127
    .line 128
    move-result v5
    :try_end_0
    .catch Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    if-nez v5, :cond_9

    .line 130
    .line 131
    return v7

    .line 132
    :catch_0
    move-exception v0

    .line 133
    move-object v2, v0

    .line 134
    iget-boolean v0, v2, Lio/bidmachine/media3/exoplayer/audio/AudioSink$InitializationException;->b:Z

    .line 135
    .line 136
    if-nez v0, :cond_8

    .line 137
    .line 138
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->m:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$l;

    .line 139
    .line 140
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$l;->c(Ljava/lang/Exception;)V

    .line 141
    .line 142
    .line 143
    return v7

    .line 144
    :cond_8
    throw v2

    .line 145
    :cond_9
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->m:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$l;

    .line 146
    .line 147
    invoke-virtual {v5}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$l;->a()V

    .line 148
    .line 149
    .line 150
    iget-boolean v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->O:Z

    .line 151
    .line 152
    const-wide/16 v9, 0x0

    .line 153
    .line 154
    if-eqz v5, :cond_b

    .line 155
    .line 156
    invoke-static {v9, v10, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 157
    .line 158
    .line 159
    move-result-wide v11

    .line 160
    iput-wide v11, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->P:J

    .line 161
    .line 162
    iput-boolean v7, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->N:Z

    .line 163
    .line 164
    iput-boolean v7, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->O:Z

    .line 165
    .line 166
    invoke-direct/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->n0()Z

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    if-eqz v5, :cond_a

    .line 171
    .line 172
    invoke-direct/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->h0()V

    .line 173
    .line 174
    .line 175
    :cond_a
    invoke-direct {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->C(J)V

    .line 176
    .line 177
    .line 178
    iget-boolean v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->X:Z

    .line 179
    .line 180
    if-eqz v5, :cond_b

    .line 181
    .line 182
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->play()V

    .line 183
    .line 184
    .line 185
    :cond_b
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->h:Lio/bidmachine/media3/exoplayer/audio/g;

    .line 186
    .line 187
    invoke-direct/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->N()J

    .line 188
    .line 189
    .line 190
    move-result-wide v11

    .line 191
    invoke-virtual {v5, v11, v12}, Lio/bidmachine/media3/exoplayer/audio/g;->k(J)Z

    .line 192
    .line 193
    .line 194
    move-result v5

    .line 195
    if-nez v5, :cond_c

    .line 196
    .line 197
    return v7

    .line 198
    :cond_c
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->R:Ljava/nio/ByteBuffer;

    .line 199
    .line 200
    if-nez v5, :cond_17

    .line 201
    .line 202
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    .line 203
    .line 204
    .line 205
    move-result-object v5

    .line 206
    sget-object v11, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    .line 207
    .line 208
    if-ne v5, v11, :cond_d

    .line 209
    .line 210
    move v5, v6

    .line 211
    goto :goto_3

    .line 212
    :cond_d
    move v5, v7

    .line 213
    :goto_3
    invoke-static {v5}, Lcn/a;->a(Z)V

    .line 214
    .line 215
    .line 216
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    if-nez v5, :cond_e

    .line 221
    .line 222
    return v6

    .line 223
    :cond_e
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->v:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 224
    .line 225
    iget v11, v5, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->c:I

    .line 226
    .line 227
    if-eqz v11, :cond_f

    .line 228
    .line 229
    iget v11, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->M:I

    .line 230
    .line 231
    if-nez v11, :cond_f

    .line 232
    .line 233
    iget v5, v5, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->g:I

    .line 234
    .line 235
    invoke-static {v5, v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->L(ILjava/nio/ByteBuffer;)I

    .line 236
    .line 237
    .line 238
    move-result v5

    .line 239
    iput v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->M:I

    .line 240
    .line 241
    if-nez v5, :cond_f

    .line 242
    .line 243
    return v6

    .line 244
    :cond_f
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->C:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$j;

    .line 245
    .line 246
    if-eqz v5, :cond_11

    .line 247
    .line 248
    invoke-direct/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->J()Z

    .line 249
    .line 250
    .line 251
    move-result v5

    .line 252
    if-nez v5, :cond_10

    .line 253
    .line 254
    return v7

    .line 255
    :cond_10
    invoke-direct {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->C(J)V

    .line 256
    .line 257
    .line 258
    iput-object v8, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->C:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$j;

    .line 259
    .line 260
    :cond_11
    iget-wide v11, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->P:J

    .line 261
    .line 262
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->v:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 263
    .line 264
    invoke-direct/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->M()J

    .line 265
    .line 266
    .line 267
    move-result-wide v13

    .line 268
    iget-object v15, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->e:Lio/bidmachine/media3/exoplayer/audio/o;

    .line 269
    .line 270
    invoke-virtual {v15}, Lio/bidmachine/media3/exoplayer/audio/o;->h()J

    .line 271
    .line 272
    .line 273
    move-result-wide v15

    .line 274
    sub-long/2addr v13, v15

    .line 275
    invoke-virtual {v5, v13, v14}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->e(J)J

    .line 276
    .line 277
    .line 278
    move-result-wide v13

    .line 279
    add-long/2addr v11, v13

    .line 280
    iget-boolean v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->N:Z

    .line 281
    .line 282
    if-nez v5, :cond_13

    .line 283
    .line 284
    sub-long v13, v11, v2

    .line 285
    .line 286
    invoke-static {v13, v14}, Ljava/lang/Math;->abs(J)J

    .line 287
    .line 288
    .line 289
    move-result-wide v13

    .line 290
    const-wide/32 v15, 0x30d40

    .line 291
    .line 292
    .line 293
    cmp-long v5, v13, v15

    .line 294
    .line 295
    if-lez v5, :cond_13

    .line 296
    .line 297
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->t:Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;

    .line 298
    .line 299
    if-eqz v5, :cond_12

    .line 300
    .line 301
    new-instance v13, Lio/bidmachine/media3/exoplayer/audio/AudioSink$UnexpectedDiscontinuityException;

    .line 302
    .line 303
    invoke-direct {v13, v2, v3, v11, v12}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$UnexpectedDiscontinuityException;-><init>(JJ)V

    .line 304
    .line 305
    .line 306
    invoke-interface {v5, v13}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;->b(Ljava/lang/Exception;)V

    .line 307
    .line 308
    .line 309
    :cond_12
    iput-boolean v6, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->N:Z

    .line 310
    .line 311
    :cond_13
    iget-boolean v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->N:Z

    .line 312
    .line 313
    if-eqz v5, :cond_15

    .line 314
    .line 315
    invoke-direct/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->J()Z

    .line 316
    .line 317
    .line 318
    move-result v5

    .line 319
    if-nez v5, :cond_14

    .line 320
    .line 321
    return v7

    .line 322
    :cond_14
    sub-long v11, v2, v11

    .line 323
    .line 324
    iget-wide v13, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->P:J

    .line 325
    .line 326
    add-long/2addr v13, v11

    .line 327
    iput-wide v13, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->P:J

    .line 328
    .line 329
    iput-boolean v7, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->N:Z

    .line 330
    .line 331
    invoke-direct {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->C(J)V

    .line 332
    .line 333
    .line 334
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->t:Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;

    .line 335
    .line 336
    if-eqz v5, :cond_15

    .line 337
    .line 338
    cmp-long v9, v11, v9

    .line 339
    .line 340
    if-eqz v9, :cond_15

    .line 341
    .line 342
    invoke-interface {v5}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;->onPositionDiscontinuity()V

    .line 343
    .line 344
    .line 345
    :cond_15
    iget-object v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->v:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 346
    .line 347
    iget v5, v5, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->c:I

    .line 348
    .line 349
    if-nez v5, :cond_16

    .line 350
    .line 351
    iget-wide v9, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->I:J

    .line 352
    .line 353
    invoke-virtual/range {p1 .. p1}, Ljava/nio/Buffer;->remaining()I

    .line 354
    .line 355
    .line 356
    move-result v5

    .line 357
    int-to-long v11, v5

    .line 358
    add-long/2addr v9, v11

    .line 359
    iput-wide v9, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->I:J

    .line 360
    .line 361
    goto :goto_4

    .line 362
    :cond_16
    iget-wide v9, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->J:J

    .line 363
    .line 364
    iget v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->M:I

    .line 365
    .line 366
    int-to-long v11, v5

    .line 367
    int-to-long v13, v4

    .line 368
    mul-long/2addr v11, v13

    .line 369
    add-long/2addr v9, v11

    .line 370
    iput-wide v9, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->J:J

    .line 371
    .line 372
    :goto_4
    iput-object v0, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->R:Ljava/nio/ByteBuffer;

    .line 373
    .line 374
    iput v4, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->S:I

    .line 375
    .line 376
    :cond_17
    invoke-direct {v1, v2, v3}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->c0(J)V

    .line 377
    .line 378
    .line 379
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->R:Ljava/nio/ByteBuffer;

    .line 380
    .line 381
    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    .line 382
    .line 383
    .line 384
    move-result v0

    .line 385
    if-nez v0, :cond_18

    .line 386
    .line 387
    iput-object v8, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->R:Ljava/nio/ByteBuffer;

    .line 388
    .line 389
    iput v7, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->S:I

    .line 390
    .line 391
    return v6

    .line 392
    :cond_18
    iget-object v0, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->h:Lio/bidmachine/media3/exoplayer/audio/g;

    .line 393
    .line 394
    invoke-direct/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->N()J

    .line 395
    .line 396
    .line 397
    move-result-wide v2

    .line 398
    invoke-virtual {v0, v2, v3}, Lio/bidmachine/media3/exoplayer/audio/g;->j(J)Z

    .line 399
    .line 400
    .line 401
    move-result v0

    .line 402
    if-eqz v0, :cond_19

    .line 403
    .line 404
    const-string v0, "DefaultAudioSink"

    .line 405
    .line 406
    const-string v2, "Resetting stalled audio track"

    .line 407
    .line 408
    invoke-static {v0, v2}, Lcn/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    invoke-virtual/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    .line 412
    .line 413
    .line 414
    return v6

    .line 415
    :cond_19
    return v7
.end method

.method public disableTunneling()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->c0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->c0:Z

    .line 7
    .line 8
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public f(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->F:Z

    .line 2
    .line 3
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->n0()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    sget-object p1, Lzm/v;->d:Lzm/v;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->E:Lzm/v;

    .line 13
    .line 14
    :goto_0
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->g0(Lzm/v;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public flush()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->S()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->f0()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->h:Lio/bidmachine/media3/exoplayer/audio/g;

    .line 12
    .line 13
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/g;->i()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 22
    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 25
    .line 26
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->T(Landroid/media/AudioTrack;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->l:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$n;

    .line 33
    .line 34
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$n;

    .line 39
    .line 40
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$n;->b(Landroid/media/AudioTrack;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->v:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 46
    .line 47
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->a()Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->u:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 52
    .line 53
    if-eqz v2, :cond_2

    .line 54
    .line 55
    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->v:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 56
    .line 57
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->u:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 58
    .line 59
    :cond_2
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->h:Lio/bidmachine/media3/exoplayer/audio/g;

    .line 60
    .line 61
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/audio/g;->q()V

    .line 62
    .line 63
    .line 64
    sget v2, Lcn/m0;->a:I

    .line 65
    .line 66
    const/16 v3, 0x18

    .line 67
    .line 68
    if-lt v2, v3, :cond_3

    .line 69
    .line 70
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->A:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$k;

    .line 71
    .line 72
    if-eqz v2, :cond_3

    .line 73
    .line 74
    invoke-virtual {v2}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$k;->c()V

    .line 75
    .line 76
    .line 77
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->A:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$k;

    .line 78
    .line 79
    :cond_3
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 80
    .line 81
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->t:Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;

    .line 82
    .line 83
    invoke-static {v2, v3, v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->e0(Landroid/media/AudioTrack;Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;Lio/bidmachine/media3/exoplayer/audio/AudioSink$a;)V

    .line 84
    .line 85
    .line 86
    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 87
    .line 88
    :cond_4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->n:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$l;

    .line 89
    .line 90
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$l;->a()V

    .line 91
    .line 92
    .line 93
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->m:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$l;

    .line 94
    .line 95
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$l;->a()V

    .line 96
    .line 97
    .line 98
    const-wide/16 v2, 0x0

    .line 99
    .line 100
    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->i0:J

    .line 101
    .line 102
    iput-wide v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->j0:J

    .line 103
    .line 104
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->k0:Landroid/os/Handler;

    .line 105
    .line 106
    if-eqz v0, :cond_5

    .line 107
    .line 108
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Landroid/os/Handler;

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :cond_5
    return-void
.end method

.method public g()J
    .locals 10

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->S()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    return-wide v0

    .line 13
    :cond_0
    sget v0, Lcn/m0;->a:I

    .line 14
    .line 15
    const/16 v1, 0x17

    .line 16
    .line 17
    if-lt v0, v1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 20
    .line 21
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->v:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 22
    .line 23
    invoke-static {v0, v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$b;->a(Landroid/media/AudioTrack;Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    return-wide v0

    .line 28
    :cond_1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->v:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 29
    .line 30
    iget v1, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->c:I

    .line 31
    .line 32
    if-nez v1, :cond_2

    .line 33
    .line 34
    iget v1, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->e:I

    .line 35
    .line 36
    int-to-long v1, v1

    .line 37
    iget v0, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->d:I

    .line 38
    .line 39
    int-to-long v3, v0

    .line 40
    mul-long/2addr v1, v3

    .line 41
    :goto_0
    move-wide v7, v1

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    iget v0, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->g:I

    .line 44
    .line 45
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/audio/k;->d(I)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    int-to-long v1, v0

    .line 50
    goto :goto_0

    .line 51
    :goto_1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->v:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 52
    .line 53
    iget v0, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->h:I

    .line 54
    .line 55
    int-to-long v3, v0

    .line 56
    const-wide/32 v5, 0xf4240

    .line 57
    .line 58
    .line 59
    sget-object v9, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    .line 60
    .line 61
    invoke-static/range {v3 .. v9}, Lcn/m0;->h1(JJJLjava/math/RoundingMode;)J

    .line 62
    .line 63
    .line 64
    move-result-wide v0

    .line 65
    return-wide v0
.end method

.method public getCurrentPositionUs(Z)J
    .locals 4

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->S()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    iget-boolean p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->O:Z

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->h:Lio/bidmachine/media3/exoplayer/audio/g;

    .line 13
    .line 14
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/audio/g;->c()J

    .line 15
    .line 16
    .line 17
    move-result-wide v0

    .line 18
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->v:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 19
    .line 20
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->N()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    invoke-virtual {p1, v2, v3}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->d(J)J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    invoke-direct {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->D(J)J

    .line 33
    .line 34
    .line 35
    move-result-wide v0

    .line 36
    invoke-direct {p0, v0, v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->E(J)J

    .line 37
    .line 38
    .line 39
    move-result-wide v0

    .line 40
    return-wide v0

    .line 41
    :cond_1
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    .line 42
    .line 43
    return-wide v0
.end method

.method public getPlaybackParameters()Lzm/v;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->E:Lzm/v;

    .line 2
    .line 3
    return-object v0
.end method

.method public h(I)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    .line 1
    sget v0, Lcn/m0;->a:I

    .line 2
    .line 3
    const/16 v1, 0x1d

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-static {v0}, Lcn/a;->g(Z)V

    .line 11
    .line 12
    .line 13
    iput p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->k:I

    .line 14
    .line 15
    return-void
.end method

.method public handleDiscontinuity()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->N:Z

    .line 3
    .line 4
    return-void
.end method

.method public hasPendingData()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->S()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    sget v0, Lcn/m0;->a:I

    .line 8
    .line 9
    const/16 v1, 0x1d

    .line 10
    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 14
    .line 15
    invoke-static {v0}, Lq5/y;->a(Landroid/media/AudioTrack;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->W:Z

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->h:Lio/bidmachine/media3/exoplayer/audio/g;

    .line 26
    .line 27
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->N()J

    .line 28
    .line 29
    .line 30
    move-result-wide v1

    .line 31
    invoke-virtual {v0, v1, v2}, Lio/bidmachine/media3/exoplayer/audio/g;->h(J)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    const/4 v0, 0x1

    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v0, 0x0

    .line 40
    :goto_0
    return v0
.end method

.method public i(Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->t:Lio/bidmachine/media3/exoplayer/audio/AudioSink$b;

    .line 2
    .line 3
    return-void
.end method

.method public isEnded()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->S()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->U:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->hasPendingData()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    return v0
.end method

.method public j(Lio/bidmachine/media3/common/a;)Lio/bidmachine/media3/exoplayer/audio/d;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->f0:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lio/bidmachine/media3/exoplayer/audio/d;->d:Lio/bidmachine/media3/exoplayer/audio/d;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->p:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$d;

    .line 9
    .line 10
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->B:Lzm/c;

    .line 11
    .line 12
    invoke-interface {v0, p1, v1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$d;->a(Lio/bidmachine/media3/common/a;Lzm/c;)Lio/bidmachine/media3/exoplayer/audio/d;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method

.method public k(Lzm/d;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->a0:Lzm/d;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lzm/d;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v0, p1, Lzm/d;->a:I

    .line 11
    .line 12
    iget v1, p1, Lzm/d;->b:F

    .line 13
    .line 14
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 15
    .line 16
    if-eqz v2, :cond_2

    .line 17
    .line 18
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->a0:Lzm/d;

    .line 19
    .line 20
    iget v3, v3, Lzm/d;->a:I

    .line 21
    .line 22
    if-eq v3, v0, :cond_1

    .line 23
    .line 24
    invoke-virtual {v2, v0}, Landroid/media/AudioTrack;->attachAuxEffect(I)I

    .line 25
    .line 26
    .line 27
    :cond_1
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/media/AudioTrack;->setAuxEffectSendLevel(F)I

    .line 32
    .line 33
    .line 34
    :cond_2
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->a0:Lzm/d;

    .line 35
    .line 36
    return-void
.end method

.method public l(Lhn/b2;)V
    .locals 0
    .param p1    # Lhn/b2;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->s:Lhn/b2;

    .line 2
    .line 3
    return-void
.end method

.method public m(Lio/bidmachine/media3/common/a;)I
    .locals 4

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->Z()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p1, Lio/bidmachine/media3/common/a;->o:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "audio/raw"

    .line 7
    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x2

    .line 14
    if-eqz v0, :cond_3

    .line 15
    .line 16
    iget v0, p1, Lio/bidmachine/media3/common/a;->G:I

    .line 17
    .line 18
    invoke-static {v0}, Lcn/m0;->G0(I)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, "Invalid PCM encoding: "

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget p1, p1, Lio/bidmachine/media3/common/a;->G:I

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    const-string v0, "DefaultAudioSink"

    .line 44
    .line 45
    invoke-static {v0, p1}, Lcn/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return v1

    .line 49
    :cond_0
    iget p1, p1, Lio/bidmachine/media3/common/a;->G:I

    .line 50
    .line 51
    if-eq p1, v2, :cond_2

    .line 52
    .line 53
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->c:Z

    .line 54
    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    const/4 v0, 0x4

    .line 58
    if-ne p1, v0, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    const/4 p1, 0x1

    .line 62
    return p1

    .line 63
    :cond_2
    :goto_0
    return v2

    .line 64
    :cond_3
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->y:Lio/bidmachine/media3/exoplayer/audio/a;

    .line 65
    .line 66
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->B:Lzm/c;

    .line 67
    .line 68
    invoke-virtual {v0, p1, v3}, Lio/bidmachine/media3/exoplayer/audio/a;->j(Lio/bidmachine/media3/common/a;Lzm/c;)Z

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    if-eqz p1, :cond_4

    .line 73
    .line 74
    return v2

    .line 75
    :cond_4
    return v1
.end method

.method public n(Lzm/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->B:Lzm/c;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lzm/c;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->B:Lzm/c;

    .line 11
    .line 12
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->c0:Z

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->z:Lio/bidmachine/media3/exoplayer/audio/b;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/b;->h(Lzm/c;)V

    .line 22
    .line 23
    .line 24
    :cond_2
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public o(Lio/bidmachine/media3/common/a;I[I)V
    .locals 25
    .param p3    # [I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/audio/AudioSink$ConfigurationException;
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v3, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->Z()V

    .line 6
    .line 7
    .line 8
    iget-object v0, v3, Lio/bidmachine/media3/common/a;->o:Ljava/lang/String;

    .line 9
    .line 10
    const-string v2, "audio/raw"

    .line 11
    .line 12
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v2, 0x1

    .line 17
    const/4 v4, -0x1

    .line 18
    const/4 v5, 0x0

    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget v0, v3, Lio/bidmachine/media3/common/a;->G:I

    .line 22
    .line 23
    invoke-static {v0}, Lcn/m0;->G0(I)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-static {v0}, Lcn/a;->a(Z)V

    .line 28
    .line 29
    .line 30
    iget v0, v3, Lio/bidmachine/media3/common/a;->G:I

    .line 31
    .line 32
    iget v6, v3, Lio/bidmachine/media3/common/a;->E:I

    .line 33
    .line 34
    invoke-static {v0, v6}, Lcn/m0;->k0(II)I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    new-instance v6, Lcom/google/common/collect/ImmutableList$a;

    .line 39
    .line 40
    invoke-direct {v6}, Lcom/google/common/collect/ImmutableList$a;-><init>()V

    .line 41
    .line 42
    .line 43
    iget v7, v3, Lio/bidmachine/media3/common/a;->G:I

    .line 44
    .line 45
    invoke-direct {v1, v7}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->m0(I)Z

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    if-eqz v7, :cond_0

    .line 50
    .line 51
    iget-object v7, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->g:Lcom/google/common/collect/ImmutableList;

    .line 52
    .line 53
    invoke-virtual {v6, v7}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$a;

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object v7, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->f:Lcom/google/common/collect/ImmutableList;

    .line 58
    .line 59
    invoke-virtual {v6, v7}, Lcom/google/common/collect/ImmutableList$a;->j(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$a;

    .line 60
    .line 61
    .line 62
    iget-object v7, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->b:Lan/e;

    .line 63
    .line 64
    invoke-interface {v7}, Lan/e;->getAudioProcessors()[Lio/bidmachine/media3/common/audio/AudioProcessor;

    .line 65
    .line 66
    .line 67
    move-result-object v7

    .line 68
    invoke-virtual {v6, v7}, Lcom/google/common/collect/ImmutableList$a;->i([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$a;

    .line 69
    .line 70
    .line 71
    :goto_0
    new-instance v7, Lio/bidmachine/media3/common/audio/a;

    .line 72
    .line 73
    invoke-virtual {v6}, Lcom/google/common/collect/ImmutableList$a;->k()Lcom/google/common/collect/ImmutableList;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-direct {v7, v6}, Lio/bidmachine/media3/common/audio/a;-><init>(Lcom/google/common/collect/ImmutableList;)V

    .line 78
    .line 79
    .line 80
    iget-object v6, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->w:Lio/bidmachine/media3/common/audio/a;

    .line 81
    .line 82
    invoke-virtual {v7, v6}, Lio/bidmachine/media3/common/audio/a;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v6

    .line 86
    if-eqz v6, :cond_1

    .line 87
    .line 88
    iget-object v7, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->w:Lio/bidmachine/media3/common/audio/a;

    .line 89
    .line 90
    :cond_1
    iget-object v6, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->e:Lio/bidmachine/media3/exoplayer/audio/o;

    .line 91
    .line 92
    iget v8, v3, Lio/bidmachine/media3/common/a;->H:I

    .line 93
    .line 94
    iget v9, v3, Lio/bidmachine/media3/common/a;->I:I

    .line 95
    .line 96
    invoke-virtual {v6, v8, v9}, Lio/bidmachine/media3/exoplayer/audio/o;->j(II)V

    .line 97
    .line 98
    .line 99
    iget-object v6, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->d:Lio/bidmachine/media3/exoplayer/audio/h;

    .line 100
    .line 101
    move-object/from16 v8, p3

    .line 102
    .line 103
    invoke-virtual {v6, v8}, Lio/bidmachine/media3/exoplayer/audio/h;->h([I)V

    .line 104
    .line 105
    .line 106
    new-instance v6, Lio/bidmachine/media3/common/audio/AudioProcessor$a;

    .line 107
    .line 108
    invoke-direct {v6, v3}, Lio/bidmachine/media3/common/audio/AudioProcessor$a;-><init>(Lio/bidmachine/media3/common/a;)V

    .line 109
    .line 110
    .line 111
    :try_start_0
    invoke-virtual {v7, v6}, Lio/bidmachine/media3/common/audio/a;->a(Lio/bidmachine/media3/common/audio/AudioProcessor$a;)Lio/bidmachine/media3/common/audio/AudioProcessor$a;

    .line 112
    .line 113
    .line 114
    move-result-object v6
    :try_end_0
    .catch Lio/bidmachine/media3/common/audio/AudioProcessor$UnhandledAudioFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    iget v8, v6, Lio/bidmachine/media3/common/audio/AudioProcessor$a;->c:I

    .line 116
    .line 117
    iget v9, v6, Lio/bidmachine/media3/common/audio/AudioProcessor$a;->a:I

    .line 118
    .line 119
    iget v10, v6, Lio/bidmachine/media3/common/audio/AudioProcessor$a;->b:I

    .line 120
    .line 121
    invoke-static {v10}, Lcn/m0;->M(I)I

    .line 122
    .line 123
    .line 124
    move-result v10

    .line 125
    iget v6, v6, Lio/bidmachine/media3/common/audio/AudioProcessor$a;->b:I

    .line 126
    .line 127
    invoke-static {v8, v6}, Lcn/m0;->k0(II)I

    .line 128
    .line 129
    .line 130
    move-result v6

    .line 131
    iget-boolean v11, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->j:Z

    .line 132
    .line 133
    move v15, v5

    .line 134
    move/from16 v18, v15

    .line 135
    .line 136
    move v13, v6

    .line 137
    move-object/from16 v16, v7

    .line 138
    .line 139
    move v14, v9

    .line 140
    move v12, v10

    .line 141
    move/from16 v17, v11

    .line 142
    .line 143
    move v11, v8

    .line 144
    goto/16 :goto_2

    .line 145
    .line 146
    :catch_0
    move-exception v0

    .line 147
    move-object v2, v0

    .line 148
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/AudioSink$ConfigurationException;

    .line 149
    .line 150
    invoke-direct {v0, v2, v3}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/Throwable;Lio/bidmachine/media3/common/a;)V

    .line 151
    .line 152
    .line 153
    throw v0

    .line 154
    :cond_2
    new-instance v0, Lio/bidmachine/media3/common/audio/a;

    .line 155
    .line 156
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->A()Lcom/google/common/collect/ImmutableList;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    invoke-direct {v0, v6}, Lio/bidmachine/media3/common/audio/a;-><init>(Lcom/google/common/collect/ImmutableList;)V

    .line 161
    .line 162
    .line 163
    iget v6, v3, Lio/bidmachine/media3/common/a;->F:I

    .line 164
    .line 165
    iget v7, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->k:I

    .line 166
    .line 167
    if-eqz v7, :cond_3

    .line 168
    .line 169
    invoke-virtual/range {p0 .. p1}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->j(Lio/bidmachine/media3/common/a;)Lio/bidmachine/media3/exoplayer/audio/d;

    .line 170
    .line 171
    .line 172
    move-result-object v7

    .line 173
    goto :goto_1

    .line 174
    :cond_3
    sget-object v7, Lio/bidmachine/media3/exoplayer/audio/d;->d:Lio/bidmachine/media3/exoplayer/audio/d;

    .line 175
    .line 176
    :goto_1
    iget v8, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->k:I

    .line 177
    .line 178
    if-eqz v8, :cond_4

    .line 179
    .line 180
    iget-boolean v8, v7, Lio/bidmachine/media3/exoplayer/audio/d;->a:Z

    .line 181
    .line 182
    if-eqz v8, :cond_4

    .line 183
    .line 184
    iget-object v8, v3, Lio/bidmachine/media3/common/a;->o:Ljava/lang/String;

    .line 185
    .line 186
    invoke-static {v8}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v8

    .line 190
    check-cast v8, Ljava/lang/String;

    .line 191
    .line 192
    iget-object v9, v3, Lio/bidmachine/media3/common/a;->k:Ljava/lang/String;

    .line 193
    .line 194
    invoke-static {v8, v9}, Lzm/u;->f(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    .line 196
    .line 197
    move-result v8

    .line 198
    iget v9, v3, Lio/bidmachine/media3/common/a;->E:I

    .line 199
    .line 200
    invoke-static {v9}, Lcn/m0;->M(I)I

    .line 201
    .line 202
    .line 203
    move-result v9

    .line 204
    iget-boolean v7, v7, Lio/bidmachine/media3/exoplayer/audio/d;->b:Z

    .line 205
    .line 206
    move-object/from16 v16, v0

    .line 207
    .line 208
    move v15, v2

    .line 209
    move/from16 v17, v15

    .line 210
    .line 211
    move v0, v4

    .line 212
    move v13, v0

    .line 213
    move v14, v6

    .line 214
    move/from16 v18, v7

    .line 215
    .line 216
    move v11, v8

    .line 217
    move v12, v9

    .line 218
    goto :goto_2

    .line 219
    :cond_4
    iget-object v7, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->y:Lio/bidmachine/media3/exoplayer/audio/a;

    .line 220
    .line 221
    iget-object v8, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->B:Lzm/c;

    .line 222
    .line 223
    invoke-virtual {v7, v3, v8}, Lio/bidmachine/media3/exoplayer/audio/a;->h(Lio/bidmachine/media3/common/a;Lzm/c;)Landroid/util/Pair;

    .line 224
    .line 225
    .line 226
    move-result-object v7

    .line 227
    if-eqz v7, :cond_c

    .line 228
    .line 229
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 230
    .line 231
    check-cast v8, Ljava/lang/Integer;

    .line 232
    .line 233
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 234
    .line 235
    .line 236
    move-result v8

    .line 237
    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast v7, Ljava/lang/Integer;

    .line 240
    .line 241
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 242
    .line 243
    .line 244
    move-result v7

    .line 245
    iget-boolean v9, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->j:Z

    .line 246
    .line 247
    const/4 v10, 0x2

    .line 248
    move-object/from16 v16, v0

    .line 249
    .line 250
    move v0, v4

    .line 251
    move v13, v0

    .line 252
    move/from16 v18, v5

    .line 253
    .line 254
    move v14, v6

    .line 255
    move v12, v7

    .line 256
    move v11, v8

    .line 257
    move/from16 v17, v9

    .line 258
    .line 259
    move v15, v10

    .line 260
    :goto_2
    const-string v6, ") for: "

    .line 261
    .line 262
    if-eqz v11, :cond_b

    .line 263
    .line 264
    if-eqz v12, :cond_a

    .line 265
    .line 266
    iget v6, v3, Lio/bidmachine/media3/common/a;->j:I

    .line 267
    .line 268
    const-string v7, "audio/vnd.dts.hd;profile=lbr"

    .line 269
    .line 270
    iget-object v8, v3, Lio/bidmachine/media3/common/a;->o:Ljava/lang/String;

    .line 271
    .line 272
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 273
    .line 274
    .line 275
    move-result v7

    .line 276
    if-eqz v7, :cond_5

    .line 277
    .line 278
    if-ne v6, v4, :cond_5

    .line 279
    .line 280
    const v6, 0xbb800

    .line 281
    .line 282
    .line 283
    :cond_5
    move/from16 v19, v6

    .line 284
    .line 285
    if-eqz p2, :cond_6

    .line 286
    .line 287
    move/from16 v10, p2

    .line 288
    .line 289
    move/from16 v22, v11

    .line 290
    .line 291
    move/from16 v23, v12

    .line 292
    .line 293
    move/from16 v24, v13

    .line 294
    .line 295
    move/from16 v19, v14

    .line 296
    .line 297
    goto :goto_6

    .line 298
    :cond_6
    iget-object v6, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->o:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$e;

    .line 299
    .line 300
    invoke-static {v14, v12, v11}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->K(III)I

    .line 301
    .line 302
    .line 303
    move-result v7

    .line 304
    if-eq v13, v4, :cond_7

    .line 305
    .line 306
    move v10, v13

    .line 307
    goto :goto_3

    .line 308
    :cond_7
    move v10, v2

    .line 309
    :goto_3
    if-eqz v17, :cond_8

    .line 310
    .line 311
    const-wide/high16 v8, 0x4020000000000000L    # 8.0

    .line 312
    .line 313
    :goto_4
    move-wide/from16 v20, v8

    .line 314
    .line 315
    goto :goto_5

    .line 316
    :cond_8
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 317
    .line 318
    goto :goto_4

    .line 319
    :goto_5
    move v8, v11

    .line 320
    move v9, v15

    .line 321
    move/from16 v22, v11

    .line 322
    .line 323
    move v11, v14

    .line 324
    move/from16 v23, v12

    .line 325
    .line 326
    move/from16 v12, v19

    .line 327
    .line 328
    move/from16 v24, v13

    .line 329
    .line 330
    move/from16 v19, v14

    .line 331
    .line 332
    move-wide/from16 v13, v20

    .line 333
    .line 334
    invoke-interface/range {v6 .. v14}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$e;->a(IIIIIID)I

    .line 335
    .line 336
    .line 337
    move-result v2

    .line 338
    move v10, v2

    .line 339
    :goto_6
    iput-boolean v5, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->f0:Z

    .line 340
    .line 341
    new-instance v14, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 342
    .line 343
    iget-boolean v13, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->c0:Z

    .line 344
    .line 345
    move-object v2, v14

    .line 346
    move-object/from16 v3, p1

    .line 347
    .line 348
    move v4, v0

    .line 349
    move v5, v15

    .line 350
    move/from16 v6, v24

    .line 351
    .line 352
    move/from16 v7, v19

    .line 353
    .line 354
    move/from16 v8, v23

    .line 355
    .line 356
    move/from16 v9, v22

    .line 357
    .line 358
    move-object/from16 v11, v16

    .line 359
    .line 360
    move/from16 v12, v17

    .line 361
    .line 362
    move v0, v13

    .line 363
    move/from16 v13, v18

    .line 364
    .line 365
    move-object v15, v14

    .line 366
    move v14, v0

    .line 367
    invoke-direct/range {v2 .. v14}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;-><init>(Lio/bidmachine/media3/common/a;IIIIIIILio/bidmachine/media3/common/audio/a;ZZZ)V

    .line 368
    .line 369
    .line 370
    invoke-direct/range {p0 .. p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->S()Z

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    if-eqz v0, :cond_9

    .line 375
    .line 376
    iput-object v15, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->u:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 377
    .line 378
    goto :goto_7

    .line 379
    :cond_9
    iput-object v15, v1, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->v:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 380
    .line 381
    :goto_7
    return-void

    .line 382
    :cond_a
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/AudioSink$ConfigurationException;

    .line 383
    .line 384
    new-instance v2, Ljava/lang/StringBuilder;

    .line 385
    .line 386
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 387
    .line 388
    .line 389
    const-string v4, "Invalid output channel config (mode="

    .line 390
    .line 391
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    .line 393
    .line 394
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 395
    .line 396
    .line 397
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    .line 399
    .line 400
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 401
    .line 402
    .line 403
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v2

    .line 407
    invoke-direct {v0, v2, v3}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Lio/bidmachine/media3/common/a;)V

    .line 408
    .line 409
    .line 410
    throw v0

    .line 411
    :cond_b
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/AudioSink$ConfigurationException;

    .line 412
    .line 413
    new-instance v2, Ljava/lang/StringBuilder;

    .line 414
    .line 415
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 416
    .line 417
    .line 418
    const-string v4, "Invalid output encoding (mode="

    .line 419
    .line 420
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 424
    .line 425
    .line 426
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 430
    .line 431
    .line 432
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v2

    .line 436
    invoke-direct {v0, v2, v3}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Lio/bidmachine/media3/common/a;)V

    .line 437
    .line 438
    .line 439
    throw v0

    .line 440
    :cond_c
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/AudioSink$ConfigurationException;

    .line 441
    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    .line 443
    .line 444
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    .line 446
    .line 447
    const-string v4, "Unable to configure passthrough for: "

    .line 448
    .line 449
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v2

    .line 459
    invoke-direct {v0, v2, v3}, Lio/bidmachine/media3/exoplayer/audio/AudioSink$ConfigurationException;-><init>(Ljava/lang/String;Lio/bidmachine/media3/common/a;)V

    .line 460
    .line 461
    .line 462
    throw v0
.end method

.method public p(Lcn/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->h:Lio/bidmachine/media3/exoplayer/audio/g;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/g;->u(Lcn/h;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public pause()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->X:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->S()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->h:Lio/bidmachine/media3/exoplayer/audio/g;

    .line 11
    .line 12
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/g;->p()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 19
    .line 20
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->T(Landroid/media/AudioTrack;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    .line 29
    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public play()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->X:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->S()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->h:Lio/bidmachine/media3/exoplayer/audio/g;

    .line 11
    .line 12
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/g;->v()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method

.method public playToEndOfStream()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->U:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->S()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->J()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->b0()V

    .line 18
    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->U:Z

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public q(II)V
    .locals 1
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x1d
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->T(Landroid/media/AudioTrack;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->v:Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-boolean v0, v0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$h;->k:Z

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 20
    .line 21
    invoke-static {v0, p1, p2}, Lq5/x;->a(Landroid/media/AudioTrack;II)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->z:Lio/bidmachine/media3/exoplayer/audio/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lio/bidmachine/media3/exoplayer/audio/b;->j()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->f:Lcom/google/common/collect/ImmutableList;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->j()Lcom/google/common/collect/y;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Lio/bidmachine/media3/common/audio/AudioProcessor;

    .line 21
    .line 22
    invoke-interface {v1}, Lio/bidmachine/media3/common/audio/AudioProcessor;->reset()V

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->g:Lcom/google/common/collect/ImmutableList;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->j()Lcom/google/common/collect/y;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    if-eqz v1, :cond_1

    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Lio/bidmachine/media3/common/audio/AudioProcessor;

    .line 43
    .line 44
    invoke-interface {v1}, Lio/bidmachine/media3/common/audio/AudioProcessor;->reset()V

    .line 45
    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->w:Lio/bidmachine/media3/common/audio/a;

    .line 49
    .line 50
    if-eqz v0, :cond_2

    .line 51
    .line 52
    invoke-virtual {v0}, Lio/bidmachine/media3/common/audio/a;->j()V

    .line 53
    .line 54
    .line 55
    :cond_2
    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->X:Z

    .line 57
    .line 58
    iput-boolean v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->f0:Z

    .line 59
    .line 60
    return-void
.end method

.method public setAudioSessionId(I)V
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->Z:I

    .line 2
    .line 3
    if-eq v0, p1, :cond_1

    .line 4
    .line 5
    iput p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->Z:I

    .line 6
    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->Y:Z

    .line 13
    .line 14
    invoke-virtual {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->flush()V

    .line 15
    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public setPreferredDevice(Landroid/media/AudioDeviceInfo;)V
    .locals 1
    .param p1    # Landroid/media/AudioDeviceInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/RequiresApi;
        value = 0x17
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lio/bidmachine/media3/exoplayer/audio/c;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/c;-><init>(Landroid/media/AudioDeviceInfo;)V

    .line 8
    .line 9
    .line 10
    :goto_0
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->b0:Lio/bidmachine/media3/exoplayer/audio/c;

    .line 11
    .line 12
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->z:Lio/bidmachine/media3/exoplayer/audio/b;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Lio/bidmachine/media3/exoplayer/audio/b;->i(Landroid/media/AudioDeviceInfo;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->x:Landroid/media/AudioTrack;

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->b0:Lio/bidmachine/media3/exoplayer/audio/c;

    .line 24
    .line 25
    invoke-static {p1, v0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink$b;->b(Landroid/media/AudioTrack;Lio/bidmachine/media3/exoplayer/audio/c;)V

    .line 26
    .line 27
    .line 28
    :cond_2
    return-void
.end method

.method public setVolume(F)V
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->Q:F

    .line 2
    .line 3
    cmpl-float v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iput p1, p0, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->Q:F

    .line 8
    .line 9
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/audio/DefaultAudioSink;->j0()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
