.class public final Lio/bidmachine/media3/exoplayer/source/c0$b;
.super Ljava/lang/Object;
.source "ProgressiveMediaSource.java"

# interfaces
.implements Lio/bidmachine/media3/exoplayer/source/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final c:Len/d$a;

.field private d:Lio/bidmachine/media3/exoplayer/source/w$a;

.field private e:Lln/k;

.field private f:Lio/bidmachine/media3/exoplayer/upstream/b;

.field private g:I

.field private h:Lh7/n;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh7/n<",
            "Lxn/a;",
            ">;"
        }
    .end annotation
.end field

.field private i:I

.field private j:Lio/bidmachine/media3/common/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Len/d$a;Lao/u;)V
    .locals 1

    .line 1
    new-instance v0, Lsn/r;

    invoke-direct {v0, p2}, Lsn/r;-><init>(Lao/u;)V

    invoke-direct {p0, p1, v0}, Lio/bidmachine/media3/exoplayer/source/c0$b;-><init>(Len/d$a;Lio/bidmachine/media3/exoplayer/source/w$a;)V

    return-void
.end method

.method public constructor <init>(Len/d$a;Lio/bidmachine/media3/exoplayer/source/w$a;)V
    .locals 6

    .line 2
    new-instance v3, Lio/bidmachine/media3/exoplayer/drm/g;

    invoke-direct {v3}, Lio/bidmachine/media3/exoplayer/drm/g;-><init>()V

    new-instance v4, Lio/bidmachine/media3/exoplayer/upstream/a;

    invoke-direct {v4}, Lio/bidmachine/media3/exoplayer/upstream/a;-><init>()V

    const/high16 v5, 0x100000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/source/c0$b;-><init>(Len/d$a;Lio/bidmachine/media3/exoplayer/source/w$a;Lln/k;Lio/bidmachine/media3/exoplayer/upstream/b;I)V

    return-void
.end method

.method public constructor <init>(Len/d$a;Lio/bidmachine/media3/exoplayer/source/w$a;Lln/k;Lio/bidmachine/media3/exoplayer/upstream/b;I)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/c0$b;->c:Len/d$a;

    .line 5
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/source/c0$b;->d:Lio/bidmachine/media3/exoplayer/source/w$a;

    .line 6
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/source/c0$b;->e:Lln/k;

    .line 7
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/source/c0$b;->f:Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 8
    iput p5, p0, Lio/bidmachine/media3/exoplayer/source/c0$b;->g:I

    return-void
.end method

.method public static synthetic h(Lao/u;Lhn/b2;)Lio/bidmachine/media3/exoplayer/source/w;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/source/c0$b;->k(Lao/u;Lhn/b2;)Lio/bidmachine/media3/exoplayer/source/w;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic k(Lao/u;Lhn/b2;)Lio/bidmachine/media3/exoplayer/source/w;
    .locals 0

    .line 1
    new-instance p1, Lsn/b;

    .line 2
    .line 3
    invoke-direct {p1, p0}, Lsn/b;-><init>(Lao/u;)V

    .line 4
    .line 5
    .line 6
    return-object p1
.end method


# virtual methods
.method public bridge synthetic d(Lzm/q;)Lio/bidmachine/media3/exoplayer/source/r;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/c0$b;->i(Lzm/q;)Lio/bidmachine/media3/exoplayer/source/c0;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic e(Lln/k;)Lio/bidmachine/media3/exoplayer/source/r$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/c0$b;->l(Lln/k;)Lio/bidmachine/media3/exoplayer/source/c0$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic f(Lio/bidmachine/media3/exoplayer/upstream/b;)Lio/bidmachine/media3/exoplayer/source/r$a;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/c0$b;->m(Lio/bidmachine/media3/exoplayer/upstream/b;)Lio/bidmachine/media3/exoplayer/source/c0$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public i(Lzm/q;)Lio/bidmachine/media3/exoplayer/source/c0;
    .locals 12

    .line 1
    iget-object v0, p1, Lzm/q;->b:Lzm/q$h;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/c0;

    .line 7
    .line 8
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/c0$b;->c:Len/d$a;

    .line 9
    .line 10
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/source/c0$b;->d:Lio/bidmachine/media3/exoplayer/source/w$a;

    .line 11
    .line 12
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/c0$b;->e:Lln/k;

    .line 13
    .line 14
    invoke-interface {v1, p1}, Lln/k;->a(Lzm/q;)Lio/bidmachine/media3/exoplayer/drm/i;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    iget-object v6, p0, Lio/bidmachine/media3/exoplayer/source/c0$b;->f:Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 19
    .line 20
    iget v7, p0, Lio/bidmachine/media3/exoplayer/source/c0$b;->g:I

    .line 21
    .line 22
    iget v8, p0, Lio/bidmachine/media3/exoplayer/source/c0$b;->i:I

    .line 23
    .line 24
    iget-object v9, p0, Lio/bidmachine/media3/exoplayer/source/c0$b;->j:Lio/bidmachine/media3/common/a;

    .line 25
    .line 26
    iget-object v10, p0, Lio/bidmachine/media3/exoplayer/source/c0$b;->h:Lh7/n;

    .line 27
    .line 28
    const/4 v11, 0x0

    .line 29
    move-object v1, v0

    .line 30
    move-object v2, p1

    .line 31
    invoke-direct/range {v1 .. v11}, Lio/bidmachine/media3/exoplayer/source/c0;-><init>(Lzm/q;Len/d$a;Lio/bidmachine/media3/exoplayer/source/w$a;Lio/bidmachine/media3/exoplayer/drm/i;Lio/bidmachine/media3/exoplayer/upstream/b;IILio/bidmachine/media3/common/a;Lh7/n;Lio/bidmachine/media3/exoplayer/source/c0$a;)V

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method j(ILio/bidmachine/media3/common/a;)Lio/bidmachine/media3/exoplayer/source/c0$b;
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/media3/exoplayer/source/c0$b;->i:I

    .line 2
    .line 3
    invoke-static {p2}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lio/bidmachine/media3/common/a;

    .line 8
    .line 9
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/c0$b;->j:Lio/bidmachine/media3/common/a;

    .line 10
    .line 11
    return-object p0
.end method

.method public l(Lln/k;)Lio/bidmachine/media3/exoplayer/source/c0$b;
    .locals 1

    .line 1
    const-string v0, "MediaSource.Factory#setDrmSessionManagerProvider no longer handles null by instantiating a new DefaultDrmSessionManagerProvider. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcn/a;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lln/k;

    .line 8
    .line 9
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/c0$b;->e:Lln/k;

    .line 10
    .line 11
    return-object p0
.end method

.method public m(Lio/bidmachine/media3/exoplayer/upstream/b;)Lio/bidmachine/media3/exoplayer/source/c0$b;
    .locals 1

    .line 1
    const-string v0, "MediaSource.Factory#setLoadErrorHandlingPolicy no longer handles null by instantiating a new DefaultLoadErrorHandlingPolicy. Explicitly construct and pass an instance in order to retain the old behavior."

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcn/a;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 8
    .line 9
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/c0$b;->f:Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 10
    .line 11
    return-object p0
.end method
