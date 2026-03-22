.class public final Lio/bidmachine/media3/exoplayer/video/i$b;
.super Ljava/lang/Object;
.source "PlaybackVideoGraphWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/video/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lio/bidmachine/media3/exoplayer/video/n;

.field private c:Lzm/g0$a;

.field private d:Lzm/x$a;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lzm/f0;

.field private g:Lcn/h;

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lio/bidmachine/media3/exoplayer/video/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/i$b;->a:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/video/i$b;->b:Lio/bidmachine/media3/exoplayer/video/n;

    .line 11
    .line 12
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->A()Lcom/google/common/collect/ImmutableList;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/i$b;->e:Ljava/util/List;

    .line 17
    .line 18
    sget-object p1, Lzm/f0;->a:Lzm/f0;

    .line 19
    .line 20
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/i$b;->f:Lzm/f0;

    .line 21
    .line 22
    sget-object p1, Lcn/h;->a:Lcn/h;

    .line 23
    .line 24
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/i$b;->g:Lcn/h;

    .line 25
    .line 26
    return-void
.end method

.method static synthetic a(Lio/bidmachine/media3/exoplayer/video/i$b;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/i$b;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lio/bidmachine/media3/exoplayer/video/i$b;)Lzm/x$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/i$b;->d:Lzm/x$a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lio/bidmachine/media3/exoplayer/video/i$b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/i$b;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lio/bidmachine/media3/exoplayer/video/i$b;)Lzm/f0;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/i$b;->f:Lzm/f0;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lio/bidmachine/media3/exoplayer/video/i$b;)Lcn/h;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/i$b;->g:Lcn/h;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lio/bidmachine/media3/exoplayer/video/i$b;)Lio/bidmachine/media3/exoplayer/video/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/i$b;->b:Lio/bidmachine/media3/exoplayer/video/n;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lio/bidmachine/media3/exoplayer/video/i$b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lio/bidmachine/media3/exoplayer/video/i$b;->h:Z

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public h()Lio/bidmachine/media3/exoplayer/video/i;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/i$b;->i:Z

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
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i$b;->d:Lzm/x$a;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-nez v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i$b;->c:Lzm/g0$a;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Lio/bidmachine/media3/exoplayer/video/i$f;

    .line 18
    .line 19
    invoke-direct {v0, v2}, Lio/bidmachine/media3/exoplayer/video/i$f;-><init>(Lio/bidmachine/media3/exoplayer/video/i$a;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i$b;->c:Lzm/g0$a;

    .line 23
    .line 24
    :cond_0
    new-instance v0, Lio/bidmachine/media3/exoplayer/video/i$g;

    .line 25
    .line 26
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/video/i$b;->c:Lzm/g0$a;

    .line 27
    .line 28
    invoke-direct {v0, v3}, Lio/bidmachine/media3/exoplayer/video/i$g;-><init>(Lzm/g0$a;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i$b;->d:Lzm/x$a;

    .line 32
    .line 33
    :cond_1
    new-instance v0, Lio/bidmachine/media3/exoplayer/video/i;

    .line 34
    .line 35
    invoke-direct {v0, p0, v2}, Lio/bidmachine/media3/exoplayer/video/i;-><init>(Lio/bidmachine/media3/exoplayer/video/i$b;Lio/bidmachine/media3/exoplayer/video/i$a;)V

    .line 36
    .line 37
    .line 38
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/video/i$b;->i:Z

    .line 39
    .line 40
    return-object v0
.end method

.method public i(Lcn/h;)Lio/bidmachine/media3/exoplayer/video/i$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/i$b;->g:Lcn/h;

    .line 2
    .line 3
    return-object p0
.end method
