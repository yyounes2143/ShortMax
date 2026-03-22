.class public final Lio/bidmachine/media3/exoplayer/ExoPlayer$b;
.super Ljava/lang/Object;
.source "ExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/ExoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field A:J

.field B:J

.field C:Z

.field D:Z

.field E:Lgn/f0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field F:Z

.field G:Z

.field H:Ljava/lang/String;

.field I:Z

.field J:Lio/bidmachine/media3/exoplayer/q2;

.field final a:Landroid/content/Context;

.field b:Lcn/h;

.field c:J

.field d:Lh7/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh7/n<",
            "Lgn/h0;",
            ">;"
        }
    .end annotation
.end field

.field e:Lh7/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh7/n<",
            "Lio/bidmachine/media3/exoplayer/source/r$a;",
            ">;"
        }
    .end annotation
.end field

.field f:Lh7/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh7/n<",
            "Lvn/v;",
            ">;"
        }
    .end annotation
.end field

.field g:Lh7/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh7/n<",
            "Lio/bidmachine/media3/exoplayer/j1;",
            ">;"
        }
    .end annotation
.end field

.field h:Lh7/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh7/n<",
            "Lwn/d;",
            ">;"
        }
    .end annotation
.end field

.field i:Lh7/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh7/e<",
            "Lcn/h;",
            "Lhn/a;",
            ">;"
        }
    .end annotation
.end field

.field j:Landroid/os/Looper;

.field k:I

.field l:Lio/bidmachine/media3/common/PriorityTaskManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field m:Lzm/c;

.field n:Z

.field o:I

.field p:Z

.field q:Z

.field r:Z

.field s:I

.field t:I

.field u:Z

.field v:Lgn/i0;

.field w:J

.field x:J

.field y:J

.field z:Lgn/d0;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lgn/u;

    invoke-direct {v0, p1}, Lgn/u;-><init>(Landroid/content/Context;)V

    new-instance v1, Lgn/v;

    invoke-direct {v1, p1}, Lgn/v;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;-><init>(Landroid/content/Context;Lh7/n;Lh7/n;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lh7/n;Lh7/n;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lh7/n<",
            "Lgn/h0;",
            ">;",
            "Lh7/n<",
            "Lio/bidmachine/media3/exoplayer/source/r$a;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v4, Lgn/w;

    invoke-direct {v4, p1}, Lgn/w;-><init>(Landroid/content/Context;)V

    new-instance v5, Lgn/x;

    invoke-direct {v5}, Lgn/x;-><init>()V

    new-instance v6, Lgn/y;

    invoke-direct {v6, p1}, Lgn/y;-><init>(Landroid/content/Context;)V

    new-instance v7, Lgn/z;

    invoke-direct {v7}, Lgn/z;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;-><init>(Landroid/content/Context;Lh7/n;Lh7/n;Lh7/n;Lh7/n;Lh7/n;Lh7/e;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lh7/n;Lh7/n;Lh7/n;Lh7/n;Lh7/n;Lh7/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lh7/n<",
            "Lgn/h0;",
            ">;",
            "Lh7/n<",
            "Lio/bidmachine/media3/exoplayer/source/r$a;",
            ">;",
            "Lh7/n<",
            "Lvn/v;",
            ">;",
            "Lh7/n<",
            "Lio/bidmachine/media3/exoplayer/j1;",
            ">;",
            "Lh7/n<",
            "Lwn/d;",
            ">;",
            "Lh7/e<",
            "Lcn/h;",
            "Lhn/a;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->a:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->d:Lh7/n;

    .line 6
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->e:Lh7/n;

    .line 7
    iput-object p4, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->f:Lh7/n;

    .line 8
    iput-object p5, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->g:Lh7/n;

    .line 9
    iput-object p6, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->h:Lh7/n;

    .line 10
    iput-object p7, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->i:Lh7/e;

    .line 11
    invoke-static {}, Lcn/m0;->X()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->j:Landroid/os/Looper;

    .line 12
    sget-object p1, Lzm/c;->g:Lzm/c;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->m:Lzm/c;

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->o:I

    const/4 p2, 0x1

    .line 14
    iput p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->s:I

    .line 15
    iput p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->t:I

    .line 16
    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->u:Z

    .line 17
    sget-object p1, Lgn/i0;->g:Lgn/i0;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->v:Lgn/i0;

    const-wide/16 p3, 0x1388

    .line 18
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->w:J

    const-wide/16 p3, 0x3a98

    .line 19
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->x:J

    const-wide/16 p3, 0xbb8

    .line 20
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->y:J

    .line 21
    new-instance p1, Lio/bidmachine/media3/exoplayer/i$b;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/i$b;-><init>()V

    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/i$b;->a()Lio/bidmachine/media3/exoplayer/i;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->z:Lgn/d0;

    .line 22
    sget-object p1, Lcn/h;->a:Lcn/h;

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->b:Lcn/h;

    const-wide/16 p3, 0x1f4

    .line 23
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->A:J

    const-wide/16 p3, 0x7d0

    .line 24
    iput-wide p3, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->B:J

    .line 25
    iput-boolean p2, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->D:Z

    .line 26
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->H:Ljava/lang/String;

    const/16 p1, -0x3e8

    .line 27
    iput p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->k:I

    .line 28
    new-instance p1, Lio/bidmachine/media3/exoplayer/l;

    invoke-direct {p1}, Lio/bidmachine/media3/exoplayer/l;-><init>()V

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->J:Lio/bidmachine/media3/exoplayer/q2;

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Lgn/h0;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->f(Landroid/content/Context;)Lgn/h0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Landroid/content/Context;)Lio/bidmachine/media3/exoplayer/source/r$a;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->g(Landroid/content/Context;)Lio/bidmachine/media3/exoplayer/source/r$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Landroid/content/Context;)Lvn/v;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->h(Landroid/content/Context;)Lvn/v;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Landroid/content/Context;)Lwn/d;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->i(Landroid/content/Context;)Lwn/d;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic f(Landroid/content/Context;)Lgn/h0;
    .locals 1

    .line 1
    new-instance v0, Lgn/d;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lgn/d;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static synthetic g(Landroid/content/Context;)Lio/bidmachine/media3/exoplayer/source/r$a;
    .locals 2

    .line 1
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/i;

    .line 2
    .line 3
    new-instance v1, Lao/l;

    .line 4
    .line 5
    invoke-direct {v1}, Lao/l;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/exoplayer/source/i;-><init>(Landroid/content/Context;Lao/u;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method private static synthetic h(Landroid/content/Context;)Lvn/v;
    .locals 1

    .line 1
    new-instance v0, Lvn/n;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lvn/n;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static synthetic i(Landroid/content/Context;)Lwn/d;
    .locals 0

    .line 1
    invoke-static {p0}, Lwn/i;->m(Landroid/content/Context;)Lwn/i;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public e()Lio/bidmachine/media3/exoplayer/ExoPlayer;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->F:Z

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
    iput-boolean v1, p0, Lio/bidmachine/media3/exoplayer/ExoPlayer$b;->F:Z

    .line 9
    .line 10
    new-instance v0, Lio/bidmachine/media3/exoplayer/u0;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, p0, v1}, Lio/bidmachine/media3/exoplayer/u0;-><init>(Lio/bidmachine/media3/exoplayer/ExoPlayer$b;Lzm/w;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method
