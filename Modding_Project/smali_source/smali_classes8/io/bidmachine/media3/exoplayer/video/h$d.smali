.class public final Lio/bidmachine/media3/exoplayer/video/h$d;
.super Ljava/lang/Object;
.source "MediaCodecVideoRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Z

.field private c:Lio/bidmachine/media3/exoplayer/mediacodec/l;

.field private d:Lio/bidmachine/media3/exoplayer/mediacodec/h$b;

.field private e:J

.field private f:Z

.field private g:Landroid/os/Handler;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Lio/bidmachine/media3/exoplayer/video/p;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:I

.field private j:F

.field private k:Lio/bidmachine/media3/exoplayer/video/VideoSink;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private l:Z

.field private m:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h$d;->a:Landroid/content/Context;

    .line 5
    .line 6
    sget-object v0, Lio/bidmachine/media3/exoplayer/mediacodec/l;->a:Lio/bidmachine/media3/exoplayer/mediacodec/l;

    .line 7
    .line 8
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h$d;->c:Lio/bidmachine/media3/exoplayer/mediacodec/l;

    .line 9
    .line 10
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/mediacodec/h$b;->a(Landroid/content/Context;)Lio/bidmachine/media3/exoplayer/mediacodec/h$b;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h$d;->d:Lio/bidmachine/media3/exoplayer/mediacodec/h$b;

    .line 15
    .line 16
    const/high16 p1, 0x41f00000    # 30.0f

    .line 17
    .line 18
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/h$d;->j:F

    .line 19
    .line 20
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 21
    .line 22
    .line 23
    .line 24
    .line 25
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/h$d;->m:J

    .line 26
    .line 27
    return-void
.end method

.method static synthetic a(Lio/bidmachine/media3/exoplayer/video/h$d;)Lio/bidmachine/media3/exoplayer/mediacodec/h$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/h$d;->d:Lio/bidmachine/media3/exoplayer/mediacodec/h$b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lio/bidmachine/media3/exoplayer/video/h$d;)Lio/bidmachine/media3/exoplayer/mediacodec/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/h$d;->c:Lio/bidmachine/media3/exoplayer/mediacodec/l;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lio/bidmachine/media3/exoplayer/video/h$d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/video/h$d;->l:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic d(Lio/bidmachine/media3/exoplayer/video/h$d;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/h$d;->m:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic e(Lio/bidmachine/media3/exoplayer/video/h$d;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/video/h$d;->f:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic f(Lio/bidmachine/media3/exoplayer/video/h$d;)F
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/media3/exoplayer/video/h$d;->j:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic g(Lio/bidmachine/media3/exoplayer/video/h$d;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/h$d;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lio/bidmachine/media3/exoplayer/video/h$d;)I
    .locals 0

    .line 1
    iget p0, p0, Lio/bidmachine/media3/exoplayer/video/h$d;->i:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic i(Lio/bidmachine/media3/exoplayer/video/h$d;)Lio/bidmachine/media3/exoplayer/video/VideoSink;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/h$d;->k:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j(Lio/bidmachine/media3/exoplayer/video/h$d;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/h$d;->g:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k(Lio/bidmachine/media3/exoplayer/video/h$d;)Lio/bidmachine/media3/exoplayer/video/p;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/h$d;->h:Lio/bidmachine/media3/exoplayer/video/p;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic l(Lio/bidmachine/media3/exoplayer/video/h$d;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/h$d;->e:J

    .line 2
    .line 3
    return-wide v0
.end method


# virtual methods
.method public m()Lio/bidmachine/media3/exoplayer/video/h;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/h$d;->b:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    invoke-static {v0}, Lcn/a;->g(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h$d;->g:Landroid/os/Handler;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/video/h$d;->h:Lio/bidmachine/media3/exoplayer/video/p;

    .line 13
    .line 14
    if-eqz v2, :cond_1

    .line 15
    .line 16
    :cond_0
    if-eqz v0, :cond_2

    .line 17
    .line 18
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/h$d;->h:Lio/bidmachine/media3/exoplayer/video/p;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    :cond_1
    move v0, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_2
    const/4 v0, 0x0

    .line 25
    :goto_0
    invoke-static {v0}, Lcn/a;->g(Z)V

    .line 26
    .line 27
    .line 28
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/video/h$d;->b:Z

    .line 29
    .line 30
    new-instance v0, Lio/bidmachine/media3/exoplayer/video/h;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lio/bidmachine/media3/exoplayer/video/h;-><init>(Lio/bidmachine/media3/exoplayer/video/h$d;)V

    .line 33
    .line 34
    .line 35
    return-object v0
.end method

.method public n(J)Lio/bidmachine/media3/exoplayer/video/h$d;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/video/h$d;->m:J

    .line 2
    .line 3
    return-object p0
.end method

.method public o(Z)Lio/bidmachine/media3/exoplayer/video/h$d;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/video/h$d;->l:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public p(J)Lio/bidmachine/media3/exoplayer/video/h$d;
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/video/h$d;->e:J

    .line 2
    .line 3
    return-object p0
.end method

.method public q(Lio/bidmachine/media3/exoplayer/mediacodec/h$b;)Lio/bidmachine/media3/exoplayer/video/h$d;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h$d;->d:Lio/bidmachine/media3/exoplayer/mediacodec/h$b;

    .line 2
    .line 3
    return-object p0
.end method

.method public r(Z)Lio/bidmachine/media3/exoplayer/video/h$d;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/video/h$d;->f:Z

    .line 2
    .line 3
    return-object p0
.end method

.method public s(Landroid/os/Handler;)Lio/bidmachine/media3/exoplayer/video/h$d;
    .locals 0
    .param p1    # Landroid/os/Handler;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h$d;->g:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method

.method public t(Lio/bidmachine/media3/exoplayer/video/p;)Lio/bidmachine/media3/exoplayer/video/h$d;
    .locals 0
    .param p1    # Lio/bidmachine/media3/exoplayer/video/p;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h$d;->h:Lio/bidmachine/media3/exoplayer/video/p;

    .line 2
    .line 3
    return-object p0
.end method

.method public u(I)Lio/bidmachine/media3/exoplayer/video/h$d;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/h$d;->i:I

    .line 2
    .line 3
    return-object p0
.end method

.method public v(Lio/bidmachine/media3/exoplayer/mediacodec/l;)Lio/bidmachine/media3/exoplayer/video/h$d;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/h$d;->c:Lio/bidmachine/media3/exoplayer/mediacodec/l;

    .line 2
    .line 3
    return-object p0
.end method
