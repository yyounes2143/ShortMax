.class public final Lcom/google/android/exoplayer2/k$b;
.super Ljava/lang/Object;
.source "ExoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field A:Z

.field B:Z

.field final a:Landroid/content/Context;

.field b:Lb7/d;

.field c:J

.field d:Lh7/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh7/n<",
            "Lo5/q0;",
            ">;"
        }
    .end annotation
.end field

.field e:Lh7/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh7/n<",
            "Lcom/google/android/exoplayer2/source/o$a;",
            ">;"
        }
    .end annotation
.end field

.field f:Lh7/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh7/n<",
            "Lz6/h0;",
            ">;"
        }
    .end annotation
.end field

.field g:Lh7/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh7/n<",
            "Lo5/d0;",
            ">;"
        }
    .end annotation
.end field

.field h:Lh7/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh7/n<",
            "La7/d;",
            ">;"
        }
    .end annotation
.end field

.field i:Lh7/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh7/e<",
            "Lb7/d;",
            "Lp5/a;",
            ">;"
        }
    .end annotation
.end field

.field j:Landroid/os/Looper;

.field k:Lcom/google/android/exoplayer2/util/PriorityTaskManager;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field l:Lcom/google/android/exoplayer2/audio/a;

.field m:Z

.field n:I

.field o:Z

.field p:Z

.field q:I

.field r:I

.field s:Z

.field t:Lo5/r0;

.field u:J

.field v:J

.field w:Lcom/google/android/exoplayer2/x0;

.field x:J

.field y:J

.field z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Lo5/q;

    invoke-direct {v0, p1}, Lo5/q;-><init>(Landroid/content/Context;)V

    new-instance v1, Lo5/r;

    invoke-direct {v1, p1}, Lo5/r;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/k$b;-><init>(Landroid/content/Context;Lh7/n;Lh7/n;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lh7/n;Lh7/n;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lh7/n<",
            "Lo5/q0;",
            ">;",
            "Lh7/n<",
            "Lcom/google/android/exoplayer2/source/o$a;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v4, Lo5/s;

    invoke-direct {v4, p1}, Lo5/s;-><init>(Landroid/content/Context;)V

    new-instance v5, Lo5/t;

    invoke-direct {v5}, Lo5/t;-><init>()V

    new-instance v6, Lo5/u;

    invoke-direct {v6, p1}, Lo5/u;-><init>(Landroid/content/Context;)V

    new-instance v7, Lo5/v;

    invoke-direct {v7}, Lo5/v;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v7}, Lcom/google/android/exoplayer2/k$b;-><init>(Landroid/content/Context;Lh7/n;Lh7/n;Lh7/n;Lh7/n;Lh7/n;Lh7/e;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lh7/n;Lh7/n;Lh7/n;Lh7/n;Lh7/n;Lh7/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lh7/n<",
            "Lo5/q0;",
            ">;",
            "Lh7/n<",
            "Lcom/google/android/exoplayer2/source/o$a;",
            ">;",
            "Lh7/n<",
            "Lz6/h0;",
            ">;",
            "Lh7/n<",
            "Lo5/d0;",
            ">;",
            "Lh7/n<",
            "La7/d;",
            ">;",
            "Lh7/e<",
            "Lb7/d;",
            "Lp5/a;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Lb7/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    iput-object p1, p0, Lcom/google/android/exoplayer2/k$b;->a:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/google/android/exoplayer2/k$b;->d:Lh7/n;

    .line 6
    iput-object p3, p0, Lcom/google/android/exoplayer2/k$b;->e:Lh7/n;

    .line 7
    iput-object p4, p0, Lcom/google/android/exoplayer2/k$b;->f:Lh7/n;

    .line 8
    iput-object p5, p0, Lcom/google/android/exoplayer2/k$b;->g:Lh7/n;

    .line 9
    iput-object p6, p0, Lcom/google/android/exoplayer2/k$b;->h:Lh7/n;

    .line 10
    iput-object p7, p0, Lcom/google/android/exoplayer2/k$b;->i:Lh7/e;

    .line 11
    invoke-static {}, Lb7/s0;->K()Landroid/os/Looper;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/k$b;->j:Landroid/os/Looper;

    .line 12
    sget-object p1, Lcom/google/android/exoplayer2/audio/a;->g:Lcom/google/android/exoplayer2/audio/a;

    iput-object p1, p0, Lcom/google/android/exoplayer2/k$b;->l:Lcom/google/android/exoplayer2/audio/a;

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/google/android/exoplayer2/k$b;->n:I

    const/4 p2, 0x1

    .line 14
    iput p2, p0, Lcom/google/android/exoplayer2/k$b;->q:I

    .line 15
    iput p1, p0, Lcom/google/android/exoplayer2/k$b;->r:I

    .line 16
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/k$b;->s:Z

    .line 17
    sget-object p1, Lo5/r0;->g:Lo5/r0;

    iput-object p1, p0, Lcom/google/android/exoplayer2/k$b;->t:Lo5/r0;

    const-wide/16 p3, 0x1388

    .line 18
    iput-wide p3, p0, Lcom/google/android/exoplayer2/k$b;->u:J

    const-wide/16 p3, 0x3a98

    .line 19
    iput-wide p3, p0, Lcom/google/android/exoplayer2/k$b;->v:J

    .line 20
    new-instance p1, Lcom/google/android/exoplayer2/h$b;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/h$b;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/h$b;->a()Lcom/google/android/exoplayer2/h;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/k$b;->w:Lcom/google/android/exoplayer2/x0;

    .line 21
    sget-object p1, Lb7/d;->a:Lb7/d;

    iput-object p1, p0, Lcom/google/android/exoplayer2/k$b;->b:Lb7/d;

    const-wide/16 p3, 0x1f4

    .line 22
    iput-wide p3, p0, Lcom/google/android/exoplayer2/k$b;->x:J

    const-wide/16 p3, 0x7d0

    .line 23
    iput-wide p3, p0, Lcom/google/android/exoplayer2/k$b;->y:J

    .line 24
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/k$b;->A:Z

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)Lo5/q0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/k$b;->f(Landroid/content/Context;)Lo5/q0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic b(Landroid/content/Context;)Lcom/google/android/exoplayer2/source/o$a;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/k$b;->g(Landroid/content/Context;)Lcom/google/android/exoplayer2/source/o$a;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Landroid/content/Context;)La7/d;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/k$b;->i(Landroid/content/Context;)La7/d;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic d(Landroid/content/Context;)Lz6/h0;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/google/android/exoplayer2/k$b;->h(Landroid/content/Context;)Lz6/h0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic f(Landroid/content/Context;)Lo5/q0;
    .locals 1

    .line 1
    new-instance v0, Lo5/n;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lo5/n;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static synthetic g(Landroid/content/Context;)Lcom/google/android/exoplayer2/source/o$a;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/source/i;

    .line 2
    .line 3
    new-instance v1, Lt5/h;

    .line 4
    .line 5
    invoke-direct {v1}, Lt5/h;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/source/i;-><init>(Landroid/content/Context;Lt5/p;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method private static synthetic h(Landroid/content/Context;)Lz6/h0;
    .locals 1

    .line 1
    new-instance v0, Lz6/m;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lz6/m;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static synthetic i(Landroid/content/Context;)La7/d;
    .locals 0

    .line 1
    invoke-static {p0}, La7/n;->l(Landroid/content/Context;)La7/n;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method


# virtual methods
.method public e()Lcom/google/android/exoplayer2/k;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k$b;->B:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    invoke-static {v0}, Lb7/a;->g(Z)V

    .line 6
    .line 7
    .line 8
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/k$b;->B:Z

    .line 9
    .line 10
    new-instance v0, Lcom/google/android/exoplayer2/j0;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/j0;-><init>(Lcom/google/android/exoplayer2/k$b;Lcom/google/android/exoplayer2/l1;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public j(Landroid/os/Looper;)Lcom/google/android/exoplayer2/k$b;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k$b;->B:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    invoke-static {v0}, Lb7/a;->g(Z)V

    .line 6
    .line 7
    .line 8
    invoke-static {p1}, Lb7/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/google/android/exoplayer2/k$b;->j:Landroid/os/Looper;

    .line 12
    .line 13
    return-object p0
.end method

.method public k(Z)Lcom/google/android/exoplayer2/k$b;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/k$b;->B:Z

    .line 2
    .line 3
    xor-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    invoke-static {v0}, Lb7/a;->g(Z)V

    .line 6
    .line 7
    .line 8
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/k$b;->z:Z

    .line 9
    .line 10
    return-object p0
.end method
