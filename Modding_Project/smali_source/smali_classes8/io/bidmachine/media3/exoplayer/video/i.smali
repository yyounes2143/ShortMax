.class public final Lio/bidmachine/media3/exoplayer/video/i;
.super Ljava/lang/Object;
.source "PlaybackVideoGraphWrapper.java"

# interfaces
.implements Lzm/h0$a;


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/video/i$b;,
        Lio/bidmachine/media3/exoplayer/video/i$d;,
        Lio/bidmachine/media3/exoplayer/video/i$e;,
        Lio/bidmachine/media3/exoplayer/video/i$c;,
        Lio/bidmachine/media3/exoplayer/video/i$f;,
        Lio/bidmachine/media3/exoplayer/video/i$g;
    }
.end annotation


# static fields
.field private static final z:Ljava/util/concurrent/Executor;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcn/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/g0<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lzm/x$a;

.field private final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/bidmachine/media3/exoplayer/video/i$d;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lzm/f0;

.field private final g:Lio/bidmachine/media3/exoplayer/video/VideoSink;

.field private final h:Lio/bidmachine/media3/exoplayer/video/VideoSink$b;

.field private final i:Lcn/h;

.field private final j:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lio/bidmachine/media3/exoplayer/video/i$e;",
            ">;"
        }
    .end annotation
.end field

.field private final k:Z

.field private l:Lio/bidmachine/media3/common/a;

.field private m:Lcn/n;

.field private n:Lzm/x;

.field private o:J

.field private p:Landroid/util/Pair;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/view/Surface;",
            "Lcn/d0;",
            ">;"
        }
    .end annotation
.end field

.field private q:I

.field private r:I

.field private s:Lio/bidmachine/media3/exoplayer/h2$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private t:J

.field private u:J

.field private v:Z

.field private w:J

.field private x:I

.field private y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lyn/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lyn/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/bidmachine/media3/exoplayer/video/i;->z:Ljava/util/concurrent/Executor;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(Lio/bidmachine/media3/exoplayer/video/i$b;)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/i$b;->a(Lio/bidmachine/media3/exoplayer/video/i$b;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->a:Landroid/content/Context;

    .line 4
    new-instance v0, Lcn/g0;

    invoke-direct {v0}, Lcn/g0;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->b:Lcn/g0;

    .line 5
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/i$b;->b(Lio/bidmachine/media3/exoplayer/video/i$b;)Lzm/x$a;

    move-result-object v0

    invoke-static {v0}, Lcn/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzm/x$a;

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->c:Lzm/x$a;

    .line 6
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->d:Landroid/util/SparseArray;

    .line 7
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/i$b;->c(Lio/bidmachine/media3/exoplayer/video/i$b;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->e:Ljava/util/List;

    .line 8
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/i$b;->d(Lio/bidmachine/media3/exoplayer/video/i$b;)Lzm/f0;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->f:Lzm/f0;

    .line 9
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/i$b;->e(Lio/bidmachine/media3/exoplayer/video/i$b;)Lcn/h;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->i:Lcn/h;

    .line 10
    new-instance v1, Lio/bidmachine/media3/exoplayer/video/d;

    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/i$b;->f(Lio/bidmachine/media3/exoplayer/video/i$b;)Lio/bidmachine/media3/exoplayer/video/n;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lio/bidmachine/media3/exoplayer/video/d;-><init>(Lio/bidmachine/media3/exoplayer/video/n;Lcn/h;)V

    iput-object v1, p0, Lio/bidmachine/media3/exoplayer/video/i;->g:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 11
    new-instance v0, Lio/bidmachine/media3/exoplayer/video/i$a;

    invoke-direct {v0, p0}, Lio/bidmachine/media3/exoplayer/video/i$a;-><init>(Lio/bidmachine/media3/exoplayer/video/i;)V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->h:Lio/bidmachine/media3/exoplayer/video/VideoSink$b;

    .line 12
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 13
    invoke-static {p1}, Lio/bidmachine/media3/exoplayer/video/i$b;->g(Lio/bidmachine/media3/exoplayer/video/i$b;)Z

    move-result p1

    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/video/i;->k:Z

    .line 14
    new-instance p1, Lio/bidmachine/media3/common/a$b;

    invoke-direct {p1}, Lio/bidmachine/media3/common/a$b;-><init>()V

    invoke-virtual {p1}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    move-result-object p1

    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/i;->l:Lio/bidmachine/media3/common/a;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 15
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->t:J

    .line 16
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->u:J

    const/4 p1, -0x1

    .line 17
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/i;->x:I

    const/4 p1, 0x0

    .line 18
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/i;->r:I

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/media3/exoplayer/video/i$b;Lio/bidmachine/media3/exoplayer/video/i$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/video/i;-><init>(Lio/bidmachine/media3/exoplayer/video/i$b;)V

    return-void
.end method

.method private A(Z)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/video/i;->E()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->q:I

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    add-int/2addr v0, v1

    .line 12
    iput v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->q:I

    .line 13
    .line 14
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->g:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 15
    .line 16
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->b(Z)V

    .line 17
    .line 18
    .line 19
    :goto_0
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/i;->b:Lcn/g0;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcn/g0;->l()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-le p1, v1, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/i;->b:Lcn/g0;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcn/g0;->i()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/i;->b:Lcn/g0;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcn/g0;->l()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-ne p1, v1, :cond_2

    .line 40
    .line 41
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/i;->b:Lcn/g0;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcn/g0;->i()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Ljava/lang/Long;

    .line 48
    .line 49
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Ljava/lang/Long;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 56
    .line 57
    .line 58
    move-result-wide v0

    .line 59
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/i;->g:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 60
    .line 61
    iget-wide v2, p0, Lio/bidmachine/media3/exoplayer/video/i;->w:J

    .line 62
    .line 63
    invoke-interface {p1, v0, v1, v2, v3}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->m(JJ)V

    .line 64
    .line 65
    .line 66
    :cond_2
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->t:J

    .line 72
    .line 73
    iput-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->u:J

    .line 74
    .line 75
    const/4 p1, 0x0

    .line 76
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/video/i;->v:Z

    .line 77
    .line 78
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/i;->m:Lcn/n;

    .line 79
    .line 80
    invoke-static {p1}, Lcn/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    check-cast p1, Lcn/n;

    .line 85
    .line 86
    new-instance v0, Lyn/d;

    .line 87
    .line 88
    invoke-direct {v0, p0}, Lyn/d;-><init>(Lio/bidmachine/media3/exoplayer/video/i;)V

    .line 89
    .line 90
    .line 91
    invoke-interface {p1, v0}, Lcn/n;->post(Ljava/lang/Runnable;)Z

    .line 92
    .line 93
    .line 94
    return-void
.end method

.method private static B(Lzm/g;)Lzm/g;
    .locals 1
    .param p0    # Lzm/g;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Lzm/g;->g()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    return-object p0

    .line 11
    :cond_1
    :goto_0
    sget-object p0, Lzm/g;->h:Lzm/g;

    .line 12
    .line 13
    return-object p0
.end method

.method private D()Z
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->q:I

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->v:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->g:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 10
    .line 11
    invoke-interface {v0}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->isEnded()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method private E()Z
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->r:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    return v1
.end method

.method private F(Z)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->g:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lio/bidmachine/media3/exoplayer/video/i;->q:I

    .line 6
    .line 7
    if-nez p1, :cond_0

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
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->p(Z)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method private synthetic G()V
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->q:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iput v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->q:I

    .line 6
    .line 7
    return-void
.end method

.method private static synthetic H(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    return-void
.end method

.method private I(Landroid/view/Surface;II)V
    .locals 2
    .param p1    # Landroid/view/Surface;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->n:Lzm/x;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    .line 8
    new-instance v1, Lzm/z;

    .line 9
    .line 10
    invoke-direct {v1, p1, p2, p3}, Lzm/z;-><init>(Landroid/view/Surface;II)V

    .line 11
    .line 12
    .line 13
    invoke-interface {v0, v1}, Lzm/h0;->b(Lzm/z;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->g:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 17
    .line 18
    new-instance v1, Lcn/d0;

    .line 19
    .line 20
    invoke-direct {v1, p2, p3}, Lcn/d0;-><init>(II)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, p1, v1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->x(Landroid/view/Surface;Lcn/d0;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    const/4 p1, 0x0

    .line 28
    invoke-interface {v0, p1}, Lzm/h0;->b(Lzm/z;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/i;->g:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 32
    .line 33
    invoke-interface {p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->v()V

    .line 34
    .line 35
    .line 36
    :goto_0
    return-void
.end method

.method private J(Lio/bidmachine/media3/common/a;I)Lzm/g0;
    .locals 13
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-nez p2, :cond_4

    .line 4
    .line 5
    iget v2, p0, Lio/bidmachine/media3/exoplayer/video/i;->r:I

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    move v2, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v2, 0x0

    .line 12
    :goto_0
    invoke-static {v2}, Lcn/a;->g(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p1, Lio/bidmachine/media3/common/a;->C:Lzm/g;

    .line 16
    .line 17
    invoke-static {v2}, Lio/bidmachine/media3/exoplayer/video/i;->B(Lzm/g;)Lzm/g;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    iget-boolean v3, p0, Lio/bidmachine/media3/exoplayer/video/i;->k:Z

    .line 22
    .line 23
    if-eqz v3, :cond_2

    .line 24
    .line 25
    sget-object v2, Lzm/g;->h:Lzm/g;

    .line 26
    .line 27
    :cond_1
    :goto_1
    move-object v5, v2

    .line 28
    goto :goto_2

    .line 29
    :cond_2
    iget v3, v2, Lzm/g;->c:I

    .line 30
    .line 31
    const/4 v4, 0x7

    .line 32
    if-ne v3, v4, :cond_1

    .line 33
    .line 34
    sget v3, Lcn/m0;->a:I

    .line 35
    .line 36
    const/16 v4, 0x22

    .line 37
    .line 38
    if-ge v3, v4, :cond_1

    .line 39
    .line 40
    invoke-virtual {v2}, Lzm/g;->a()Lzm/g$b;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const/4 v3, 0x6

    .line 45
    invoke-virtual {v2, v3}, Lzm/g$b;->e(I)Lzm/g$b;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Lzm/g$b;->a()Lzm/g;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    goto :goto_1

    .line 54
    :goto_2
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/video/i;->i:Lcn/h;

    .line 55
    .line 56
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-static {v3}, Lcn/a;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Landroid/os/Looper;

    .line 65
    .line 66
    invoke-interface {v2, v3, v0}, Lcn/h;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Lcn/n;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/video/i;->m:Lcn/n;

    .line 71
    .line 72
    :try_start_0
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/video/i;->c:Lzm/x$a;

    .line 73
    .line 74
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/video/i;->a:Landroid/content/Context;

    .line 75
    .line 76
    sget-object v6, Lzm/j;->a:Lzm/j;

    .line 77
    .line 78
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    new-instance v8, Lyn/b;

    .line 82
    .line 83
    invoke-direct {v8, v2}, Lyn/b;-><init>(Lcn/n;)V

    .line 84
    .line 85
    .line 86
    iget-object v9, p0, Lio/bidmachine/media3/exoplayer/video/i;->f:Lzm/f0;

    .line 87
    .line 88
    iget-object v10, p0, Lio/bidmachine/media3/exoplayer/video/i;->e:Ljava/util/List;

    .line 89
    .line 90
    const-wide/16 v11, 0x0

    .line 91
    .line 92
    move-object v7, p0

    .line 93
    invoke-interface/range {v3 .. v12}, Lzm/x$a;->a(Landroid/content/Context;Lzm/g;Lzm/j;Lzm/h0$a;Ljava/util/concurrent/Executor;Lzm/f0;Ljava/util/List;J)Lzm/x;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/video/i;->n:Lzm/x;

    .line 98
    .line 99
    invoke-interface {v2}, Lzm/h0;->initialize()V
    :try_end_0
    .catch Lio/bidmachine/media3/common/VideoFrameProcessingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/video/i;->p:Landroid/util/Pair;

    .line 103
    .line 104
    if-eqz v2, :cond_3

    .line 105
    .line 106
    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 107
    .line 108
    check-cast v3, Landroid/view/Surface;

    .line 109
    .line 110
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast v2, Lcn/d0;

    .line 113
    .line 114
    invoke-virtual {v2}, Lcn/d0;->b()I

    .line 115
    .line 116
    .line 117
    move-result v4

    .line 118
    invoke-virtual {v2}, Lcn/d0;->a()I

    .line 119
    .line 120
    .line 121
    move-result v2

    .line 122
    invoke-direct {p0, v3, v4, v2}, Lio/bidmachine/media3/exoplayer/video/i;->I(Landroid/view/Surface;II)V

    .line 123
    .line 124
    .line 125
    :cond_3
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/video/i;->g:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 126
    .line 127
    invoke-interface {v2, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->i(Lio/bidmachine/media3/common/a;)Z

    .line 128
    .line 129
    .line 130
    iput v1, p0, Lio/bidmachine/media3/exoplayer/video/i;->r:I

    .line 131
    .line 132
    goto :goto_3

    .line 133
    :catch_0
    move-exception p2

    .line 134
    new-instance v0, Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException;

    .line 135
    .line 136
    invoke-direct {v0, p2, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException;-><init>(Ljava/lang/Throwable;Lio/bidmachine/media3/common/a;)V

    .line 137
    .line 138
    .line 139
    throw v0

    .line 140
    :cond_4
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/video/i;->E()Z

    .line 141
    .line 142
    .line 143
    move-result v2

    .line 144
    if-nez v2, :cond_5

    .line 145
    .line 146
    return-object v0

    .line 147
    :cond_5
    :goto_3
    :try_start_1
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/video/i;->n:Lzm/x;

    .line 148
    .line 149
    invoke-static {v2}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    check-cast v2, Lzm/x;

    .line 154
    .line 155
    invoke-interface {v2, p2}, Lzm/h0;->d(I)V
    :try_end_1
    .catch Lio/bidmachine/media3/common/VideoFrameProcessingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 156
    .line 157
    .line 158
    iget p1, p0, Lio/bidmachine/media3/exoplayer/video/i;->y:I

    .line 159
    .line 160
    add-int/2addr p1, v1

    .line 161
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/i;->y:I

    .line 162
    .line 163
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/i;->g:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 164
    .line 165
    new-instance v1, Lio/bidmachine/media3/exoplayer/video/i$c;

    .line 166
    .line 167
    invoke-direct {v1, p0, v0}, Lio/bidmachine/media3/exoplayer/video/i$c;-><init>(Lio/bidmachine/media3/exoplayer/video/i;Lio/bidmachine/media3/exoplayer/video/i$a;)V

    .line 168
    .line 169
    .line 170
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->m:Lcn/n;

    .line 171
    .line 172
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    check-cast v0, Lcn/n;

    .line 177
    .line 178
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    new-instance v2, Lyn/b;

    .line 182
    .line 183
    invoke-direct {v2, v0}, Lyn/b;-><init>(Lcn/n;)V

    .line 184
    .line 185
    .line 186
    invoke-interface {p1, v1, v2}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->w(Lio/bidmachine/media3/exoplayer/video/VideoSink$a;Ljava/util/concurrent/Executor;)V

    .line 187
    .line 188
    .line 189
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/video/i;->n:Lzm/x;

    .line 190
    .line 191
    invoke-interface {p1, p2}, Lzm/h0;->a(I)Lzm/g0;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    return-object p1

    .line 196
    :catch_1
    move-exception p2

    .line 197
    new-instance v0, Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException;

    .line 198
    .line 199
    invoke-direct {v0, p2, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException;-><init>(Ljava/lang/Throwable;Lio/bidmachine/media3/common/a;)V

    .line 200
    .line 201
    .line 202
    throw v0
.end method

.method private L(JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->g:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->render(JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private M(J)V
    .locals 3

    .line 1
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/video/i;->w:J

    .line 2
    .line 3
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->g:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 4
    .line 5
    iget-wide v1, p0, Lio/bidmachine/media3/exoplayer/video/i;->o:J

    .line 6
    .line 7
    invoke-interface {v0, v1, v2, p1, p2}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->m(JJ)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private O(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->g:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->r(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private Q(Lyn/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->g:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lio/bidmachine/media3/exoplayer/video/VideoSink;->j(Lyn/f;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private R()Z
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->x:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    .line 6
    iget v1, p0, Lio/bidmachine/media3/exoplayer/video/i;->y:I

    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return v0
.end method

.method public static synthetic a(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/video/i;->H(Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lio/bidmachine/media3/exoplayer/video/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/video/i;->G()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    sget-object v0, Lio/bidmachine/media3/exoplayer/video/i;->z:Ljava/util/concurrent/Executor;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic d(Lio/bidmachine/media3/exoplayer/video/i;)Lio/bidmachine/media3/exoplayer/video/VideoSink;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/i;->g:Lio/bidmachine/media3/exoplayer/video/VideoSink;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lio/bidmachine/media3/exoplayer/video/i;Lio/bidmachine/media3/common/a;I)Lzm/g0;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/video/i;->J(Lio/bidmachine/media3/common/a;I)Lzm/g0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic f(Lio/bidmachine/media3/exoplayer/video/i;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/video/i;->A(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g(Lio/bidmachine/media3/exoplayer/video/i;Z)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/video/i;->F(Z)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic h(Lio/bidmachine/media3/exoplayer/video/i;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->u:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic i(Lio/bidmachine/media3/exoplayer/video/i;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/bidmachine/media3/exoplayer/video/i;->u:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic j(Lio/bidmachine/media3/exoplayer/video/i;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->t:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic k(Lio/bidmachine/media3/exoplayer/video/i;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lio/bidmachine/media3/exoplayer/video/i;->v:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic l(Lio/bidmachine/media3/exoplayer/video/i;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/video/i;->D()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic m(Lio/bidmachine/media3/exoplayer/video/i;Lyn/f;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/video/i;->Q(Lyn/f;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic n(Lio/bidmachine/media3/exoplayer/video/i;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/media3/exoplayer/video/i;->O(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic o(Lio/bidmachine/media3/exoplayer/video/i;)Lcn/g0;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/i;->b:Lcn/g0;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic p(Lio/bidmachine/media3/exoplayer/video/i;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/video/i;->M(J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic q(Lio/bidmachine/media3/exoplayer/video/i;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/video/i;->R()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic r(Lio/bidmachine/media3/exoplayer/video/i;JJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lio/bidmachine/media3/exoplayer/video/VideoSink$VideoSinkException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/video/i;->L(JJ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic s(Lio/bidmachine/media3/exoplayer/video/i;Lio/bidmachine/media3/exoplayer/h2$a;)Lio/bidmachine/media3/exoplayer/h2$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/video/i;->s:Lio/bidmachine/media3/exoplayer/h2$a;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic t(Lio/bidmachine/media3/exoplayer/video/i;)Lzm/x$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/i;->c:Lzm/x$a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic u(Lio/bidmachine/media3/exoplayer/video/i;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/i;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic v(Lzm/g;)Lzm/g;
    .locals 0

    .line 1
    invoke-static {p0}, Lio/bidmachine/media3/exoplayer/video/i;->B(Lzm/g;)Lzm/g;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic w(Lio/bidmachine/media3/exoplayer/video/i;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/i;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic x(Lio/bidmachine/media3/exoplayer/video/i;)Lzm/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/media3/exoplayer/video/i;->n:Lzm/x;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public C(I)Lio/bidmachine/media3/exoplayer/video/VideoSink;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->d:Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcn/m0;->r(Landroid/util/SparseArray;I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    xor-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    invoke-static {v0}, Lcn/a;->g(Z)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lio/bidmachine/media3/exoplayer/video/i$d;

    .line 13
    .line 14
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/i;->a:Landroid/content/Context;

    .line 15
    .line 16
    invoke-direct {v0, p0, v1, p1}, Lio/bidmachine/media3/exoplayer/video/i$d;-><init>(Lio/bidmachine/media3/exoplayer/video/i;Landroid/content/Context;I)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/video/i;->y(Lio/bidmachine/media3/exoplayer/video/i$e;)V

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/video/i;->d:Landroid/util/SparseArray;

    .line 23
    .line 24
    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public K()V
    .locals 3

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->r:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->m:Lcn/n;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0, v2}, Lcn/n;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->n:Lzm/x;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-interface {v0}, Lzm/h0;->release()V

    .line 20
    .line 21
    .line 22
    :cond_2
    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/video/i;->p:Landroid/util/Pair;

    .line 23
    .line 24
    iput v1, p0, Lio/bidmachine/media3/exoplayer/video/i;->r:I

    .line 25
    .line 26
    return-void
.end method

.method public N(Landroid/view/Surface;Lcn/d0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->p:Landroid/util/Pair;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v0, Landroid/view/Surface;

    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->p:Landroid/util/Pair;

    .line 16
    .line 17
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Lcn/d0;

    .line 20
    .line 21
    invoke-virtual {v0, p2}, Lcn/d0;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iput-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->p:Landroid/util/Pair;

    .line 33
    .line 34
    invoke-virtual {p2}, Lcn/d0;->b()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    invoke-virtual {p2}, Lcn/d0;->a()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    invoke-direct {p0, p1, v0, p2}, Lio/bidmachine/media3/exoplayer/video/i;->I(Landroid/view/Surface;II)V

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method public P(I)V
    .locals 0

    .line 1
    iput p1, p0, Lio/bidmachine/media3/exoplayer/video/i;->x:I

    .line 2
    .line 3
    return-void
.end method

.method public y(Lio/bidmachine/media3/exoplayer/video/i$e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/video/i;->j:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public z()V
    .locals 3

    .line 1
    sget-object v0, Lcn/d0;->c:Lcn/d0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcn/d0;->b()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-virtual {v0}, Lcn/d0;->a()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-direct {p0, v2, v1, v0}, Lio/bidmachine/media3/exoplayer/video/i;->I(Landroid/view/Surface;II)V

    .line 13
    .line 14
    .line 15
    iput-object v2, p0, Lio/bidmachine/media3/exoplayer/video/i;->p:Landroid/util/Pair;

    .line 16
    .line 17
    return-void
.end method
