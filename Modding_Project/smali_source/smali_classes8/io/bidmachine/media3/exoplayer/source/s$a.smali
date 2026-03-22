.class public Lio/bidmachine/media3/exoplayer/source/s$a;
.super Ljava/lang/Object;
.source "MediaSourceEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/media3/exoplayer/source/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/source/s$a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lio/bidmachine/media3/exoplayer/source/r$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lio/bidmachine/media3/exoplayer/source/s$a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lio/bidmachine/media3/exoplayer/source/s$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILio/bidmachine/media3/exoplayer/source/r$b;)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILio/bidmachine/media3/exoplayer/source/r$b;)V
    .locals 0
    .param p3    # Lio/bidmachine/media3/exoplayer/source/r$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lio/bidmachine/media3/exoplayer/source/s$a$a;",
            ">;I",
            "Lio/bidmachine/media3/exoplayer/source/r$b;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    iput p2, p0, Lio/bidmachine/media3/exoplayer/source/s$a;->a:I

    .line 5
    iput-object p3, p0, Lio/bidmachine/media3/exoplayer/source/s$a;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    return-void
.end method

.method public static synthetic a(Lio/bidmachine/media3/exoplayer/source/s$a;Lsn/i;Lsn/j;Lio/bidmachine/media3/exoplayer/source/s;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/s$a;->n(Lsn/i;Lsn/j;Lio/bidmachine/media3/exoplayer/source/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lio/bidmachine/media3/exoplayer/source/s$a;Lsn/i;Lsn/j;Ljava/io/IOException;ZLio/bidmachine/media3/exoplayer/source/s;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lio/bidmachine/media3/exoplayer/source/s$a;->p(Lsn/i;Lsn/j;Ljava/io/IOException;ZLio/bidmachine/media3/exoplayer/source/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lio/bidmachine/media3/exoplayer/source/s$a;Lio/bidmachine/media3/exoplayer/source/r$b;Lsn/j;Lio/bidmachine/media3/exoplayer/source/s;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/s$a;->r(Lio/bidmachine/media3/exoplayer/source/r$b;Lsn/j;Lio/bidmachine/media3/exoplayer/source/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lio/bidmachine/media3/exoplayer/source/s$a;Lsn/i;Lsn/j;Lio/bidmachine/media3/exoplayer/source/s;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/media3/exoplayer/source/s$a;->o(Lsn/i;Lsn/j;Lio/bidmachine/media3/exoplayer/source/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lio/bidmachine/media3/exoplayer/source/s$a;Lsn/j;Lio/bidmachine/media3/exoplayer/source/s;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/s$a;->m(Lsn/j;Lio/bidmachine/media3/exoplayer/source/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic f(Lcn/l;Lio/bidmachine/media3/exoplayer/source/s;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/media3/exoplayer/source/s$a;->l(Lcn/l;Lio/bidmachine/media3/exoplayer/source/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic g(Lio/bidmachine/media3/exoplayer/source/s$a;Lsn/i;Lsn/j;ILio/bidmachine/media3/exoplayer/source/s;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lio/bidmachine/media3/exoplayer/source/s$a;->q(Lsn/i;Lsn/j;ILio/bidmachine/media3/exoplayer/source/s;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic l(Lcn/l;Lio/bidmachine/media3/exoplayer/source/s;)V
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Lcn/l;->accept(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic m(Lsn/j;Lio/bidmachine/media3/exoplayer/source/s;)V
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/s$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/s$a;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 4
    .line 5
    invoke-interface {p2, v0, v1, p1}, Lio/bidmachine/media3/exoplayer/source/s;->W(ILio/bidmachine/media3/exoplayer/source/r$b;Lsn/j;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic n(Lsn/i;Lsn/j;Lio/bidmachine/media3/exoplayer/source/s;)V
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/s$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/s$a;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 4
    .line 5
    invoke-interface {p3, v0, v1, p1, p2}, Lio/bidmachine/media3/exoplayer/source/s;->Z(ILio/bidmachine/media3/exoplayer/source/r$b;Lsn/i;Lsn/j;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic o(Lsn/i;Lsn/j;Lio/bidmachine/media3/exoplayer/source/s;)V
    .locals 2

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/s$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/s$a;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 4
    .line 5
    invoke-interface {p3, v0, v1, p1, p2}, Lio/bidmachine/media3/exoplayer/source/s;->x(ILio/bidmachine/media3/exoplayer/source/r$b;Lsn/i;Lsn/j;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic p(Lsn/i;Lsn/j;Ljava/io/IOException;ZLio/bidmachine/media3/exoplayer/source/s;)V
    .locals 7

    .line 1
    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/s$a;->a:I

    .line 2
    .line 3
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/s$a;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 4
    .line 5
    move-object v0, p5

    .line 6
    move-object v3, p1

    .line 7
    move-object v4, p2

    .line 8
    move-object v5, p3

    .line 9
    move v6, p4

    .line 10
    invoke-interface/range {v0 .. v6}, Lio/bidmachine/media3/exoplayer/source/s;->S(ILio/bidmachine/media3/exoplayer/source/r$b;Lsn/i;Lsn/j;Ljava/io/IOException;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private synthetic q(Lsn/i;Lsn/j;ILio/bidmachine/media3/exoplayer/source/s;)V
    .locals 6

    .line 1
    iget v1, p0, Lio/bidmachine/media3/exoplayer/source/s$a;->a:I

    .line 2
    .line 3
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/s$a;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 4
    .line 5
    move-object v0, p4

    .line 6
    move-object v3, p1

    .line 7
    move-object v4, p2

    .line 8
    move v5, p3

    .line 9
    invoke-interface/range {v0 .. v5}, Lio/bidmachine/media3/exoplayer/source/s;->i(ILio/bidmachine/media3/exoplayer/source/r$b;Lsn/i;Lsn/j;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private synthetic r(Lio/bidmachine/media3/exoplayer/source/r$b;Lsn/j;Lio/bidmachine/media3/exoplayer/source/s;)V
    .locals 1

    .line 1
    iget v0, p0, Lio/bidmachine/media3/exoplayer/source/s$a;->a:I

    .line 2
    .line 3
    invoke-interface {p3, v0, p1, p2}, Lio/bidmachine/media3/exoplayer/source/s;->V(ILio/bidmachine/media3/exoplayer/source/r$b;Lsn/j;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public A(Lsn/i;Lsn/j;Ljava/io/IOException;Z)V
    .locals 7

    .line 1
    new-instance v6, Lsn/k;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lsn/k;-><init>(Lio/bidmachine/media3/exoplayer/source/s$a;Lsn/i;Lsn/j;Ljava/io/IOException;Z)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v6}, Lio/bidmachine/media3/exoplayer/source/s$a;->i(Lcn/l;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public B(Lsn/i;II)V
    .locals 12

    .line 1
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    move-object v0, p0

    .line 16
    move-object v1, p1

    .line 17
    move v2, p2

    .line 18
    move v11, p3

    .line 19
    invoke-virtual/range {v0 .. v11}, Lio/bidmachine/media3/exoplayer/source/s$a;->C(Lsn/i;IILio/bidmachine/media3/common/a;ILjava/lang/Object;JJI)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public C(Lsn/i;IILio/bidmachine/media3/common/a;ILjava/lang/Object;JJI)V
    .locals 11
    .param p4    # Lio/bidmachine/media3/common/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v10, Lsn/j;

    .line 2
    .line 3
    invoke-static/range {p7 .. p8}, Lcn/m0;->u1(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v6

    .line 7
    invoke-static/range {p9 .. p10}, Lcn/m0;->u1(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v8

    .line 11
    move-object v0, v10

    .line 12
    move v1, p2

    .line 13
    move v2, p3

    .line 14
    move-object v3, p4

    .line 15
    move/from16 v4, p5

    .line 16
    .line 17
    move-object/from16 v5, p6

    .line 18
    .line 19
    invoke-direct/range {v0 .. v9}, Lsn/j;-><init>(IILio/bidmachine/media3/common/a;ILjava/lang/Object;JJ)V

    .line 20
    .line 21
    .line 22
    move-object v0, p0

    .line 23
    move-object v1, p1

    .line 24
    move/from16 v2, p11

    .line 25
    .line 26
    invoke-virtual {p0, p1, v10, v2}, Lio/bidmachine/media3/exoplayer/source/s$a;->D(Lsn/i;Lsn/j;I)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public D(Lsn/i;Lsn/j;I)V
    .locals 1

    .line 1
    new-instance v0, Lsn/l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lsn/l;-><init>(Lio/bidmachine/media3/exoplayer/source/s$a;Lsn/i;Lsn/j;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/source/s$a;->i(Lcn/l;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public E(Lio/bidmachine/media3/exoplayer/source/s;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lio/bidmachine/media3/exoplayer/source/s$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/source/s$a$a;->b:Lio/bidmachine/media3/exoplayer/source/s;

    .line 20
    .line 21
    if-ne v2, p1, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    return-void
.end method

.method public F(IJJ)V
    .locals 11

    .line 1
    new-instance v10, Lsn/j;

    .line 2
    .line 3
    invoke-static {p2, p3}, Lcn/m0;->u1(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v6

    .line 7
    invoke-static/range {p4 .. p5}, Lcn/m0;->u1(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v8

    .line 11
    const/4 v1, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x3

    .line 14
    const/4 v5, 0x0

    .line 15
    move-object v0, v10

    .line 16
    move v2, p1

    .line 17
    invoke-direct/range {v0 .. v9}, Lsn/j;-><init>(IILio/bidmachine/media3/common/a;ILjava/lang/Object;JJ)V

    .line 18
    .line 19
    .line 20
    move-object v0, p0

    .line 21
    invoke-virtual {p0, v10}, Lio/bidmachine/media3/exoplayer/source/s$a;->G(Lsn/j;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public G(Lsn/j;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/s$a;->b:Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 2
    .line 3
    invoke-static {v0}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lio/bidmachine/media3/exoplayer/source/r$b;

    .line 8
    .line 9
    new-instance v1, Lsn/p;

    .line 10
    .line 11
    invoke-direct {v1, p0, v0, p1}, Lsn/p;-><init>(Lio/bidmachine/media3/exoplayer/source/s$a;Lio/bidmachine/media3/exoplayer/source/r$b;Lsn/j;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1}, Lio/bidmachine/media3/exoplayer/source/s$a;->i(Lcn/l;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public H(ILio/bidmachine/media3/exoplayer/source/r$b;)Lio/bidmachine/media3/exoplayer/source/s$a;
    .locals 2
    .param p2    # Lio/bidmachine/media3/exoplayer/source/r$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/media3/exoplayer/source/s$a;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    invoke-direct {v0, v1, p1, p2}, Lio/bidmachine/media3/exoplayer/source/s$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILio/bidmachine/media3/exoplayer/source/r$b;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public h(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/source/s;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lcn/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    .line 9
    new-instance v1, Lio/bidmachine/media3/exoplayer/source/s$a$a;

    .line 10
    .line 11
    invoke-direct {v1, p1, p2}, Lio/bidmachine/media3/exoplayer/source/s$a$a;-><init>(Landroid/os/Handler;Lio/bidmachine/media3/exoplayer/source/s;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public i(Lcn/l;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/l<",
            "Lio/bidmachine/media3/exoplayer/source/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/s$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lio/bidmachine/media3/exoplayer/source/s$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Lio/bidmachine/media3/exoplayer/source/s$a$a;->b:Lio/bidmachine/media3/exoplayer/source/s;

    .line 20
    .line 21
    iget-object v1, v1, Lio/bidmachine/media3/exoplayer/source/s$a$a;->a:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v3, Lsn/q;

    .line 24
    .line 25
    invoke-direct {v3, p1, v2}, Lsn/q;-><init>(Lcn/l;Lio/bidmachine/media3/exoplayer/source/s;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v3}, Lcn/m0;->c1(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public j(ILio/bidmachine/media3/common/a;ILjava/lang/Object;J)V
    .locals 11
    .param p2    # Lio/bidmachine/media3/common/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v10, Lsn/j;

    .line 2
    .line 3
    invoke-static/range {p5 .. p6}, Lcn/m0;->u1(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v6

    .line 7
    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    .line 8
    .line 9
    .line 10
    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    move-object v0, v10

    .line 14
    move v2, p1

    .line 15
    move-object v3, p2

    .line 16
    move v4, p3

    .line 17
    move-object v5, p4

    .line 18
    invoke-direct/range {v0 .. v9}, Lsn/j;-><init>(IILio/bidmachine/media3/common/a;ILjava/lang/Object;JJ)V

    .line 19
    .line 20
    .line 21
    move-object v0, p0

    .line 22
    invoke-virtual {p0, v10}, Lio/bidmachine/media3/exoplayer/source/s$a;->k(Lsn/j;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public k(Lsn/j;)V
    .locals 1

    .line 1
    new-instance v0, Lsn/n;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lsn/n;-><init>(Lio/bidmachine/media3/exoplayer/source/s$a;Lsn/j;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/source/s$a;->i(Lcn/l;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public s(Lsn/i;I)V
    .locals 11

    .line 1
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    move-object v0, p0

    .line 16
    move-object v1, p1

    .line 17
    move v2, p2

    .line 18
    invoke-virtual/range {v0 .. v10}, Lio/bidmachine/media3/exoplayer/source/s$a;->t(Lsn/i;IILio/bidmachine/media3/common/a;ILjava/lang/Object;JJ)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public t(Lsn/i;IILio/bidmachine/media3/common/a;ILjava/lang/Object;JJ)V
    .locals 11
    .param p4    # Lio/bidmachine/media3/common/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v10, Lsn/j;

    .line 2
    .line 3
    invoke-static/range {p7 .. p8}, Lcn/m0;->u1(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v6

    .line 7
    invoke-static/range {p9 .. p10}, Lcn/m0;->u1(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v8

    .line 11
    move-object v0, v10

    .line 12
    move v1, p2

    .line 13
    move v2, p3

    .line 14
    move-object v3, p4

    .line 15
    move/from16 v4, p5

    .line 16
    .line 17
    move-object/from16 v5, p6

    .line 18
    .line 19
    invoke-direct/range {v0 .. v9}, Lsn/j;-><init>(IILio/bidmachine/media3/common/a;ILjava/lang/Object;JJ)V

    .line 20
    .line 21
    .line 22
    move-object v0, p0

    .line 23
    move-object v1, p1

    .line 24
    invoke-virtual {p0, p1, v10}, Lio/bidmachine/media3/exoplayer/source/s$a;->u(Lsn/i;Lsn/j;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public u(Lsn/i;Lsn/j;)V
    .locals 1

    .line 1
    new-instance v0, Lsn/o;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lsn/o;-><init>(Lio/bidmachine/media3/exoplayer/source/s$a;Lsn/i;Lsn/j;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/source/s$a;->i(Lcn/l;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public v(Lsn/i;I)V
    .locals 11

    .line 1
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    move-object v0, p0

    .line 16
    move-object v1, p1

    .line 17
    move v2, p2

    .line 18
    invoke-virtual/range {v0 .. v10}, Lio/bidmachine/media3/exoplayer/source/s$a;->w(Lsn/i;IILio/bidmachine/media3/common/a;ILjava/lang/Object;JJ)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public w(Lsn/i;IILio/bidmachine/media3/common/a;ILjava/lang/Object;JJ)V
    .locals 11
    .param p4    # Lio/bidmachine/media3/common/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v10, Lsn/j;

    .line 2
    .line 3
    invoke-static/range {p7 .. p8}, Lcn/m0;->u1(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v6

    .line 7
    invoke-static/range {p9 .. p10}, Lcn/m0;->u1(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v8

    .line 11
    move-object v0, v10

    .line 12
    move v1, p2

    .line 13
    move v2, p3

    .line 14
    move-object v3, p4

    .line 15
    move/from16 v4, p5

    .line 16
    .line 17
    move-object/from16 v5, p6

    .line 18
    .line 19
    invoke-direct/range {v0 .. v9}, Lsn/j;-><init>(IILio/bidmachine/media3/common/a;ILjava/lang/Object;JJ)V

    .line 20
    .line 21
    .line 22
    move-object v0, p0

    .line 23
    move-object v1, p1

    .line 24
    invoke-virtual {p0, p1, v10}, Lio/bidmachine/media3/exoplayer/source/s$a;->x(Lsn/i;Lsn/j;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method public x(Lsn/i;Lsn/j;)V
    .locals 1

    .line 1
    new-instance v0, Lsn/m;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lsn/m;-><init>(Lio/bidmachine/media3/exoplayer/source/s$a;Lsn/i;Lsn/j;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lio/bidmachine/media3/exoplayer/source/s$a;->i(Lcn/l;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public y(Lsn/i;IILio/bidmachine/media3/common/a;ILjava/lang/Object;JJLjava/io/IOException;Z)V
    .locals 11
    .param p4    # Lio/bidmachine/media3/common/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance v10, Lsn/j;

    .line 2
    .line 3
    invoke-static/range {p7 .. p8}, Lcn/m0;->u1(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide v6

    .line 7
    invoke-static/range {p9 .. p10}, Lcn/m0;->u1(J)J

    .line 8
    .line 9
    .line 10
    move-result-wide v8

    .line 11
    move-object v0, v10

    .line 12
    move v1, p2

    .line 13
    move v2, p3

    .line 14
    move-object v3, p4

    .line 15
    move/from16 v4, p5

    .line 16
    .line 17
    move-object/from16 v5, p6

    .line 18
    .line 19
    invoke-direct/range {v0 .. v9}, Lsn/j;-><init>(IILio/bidmachine/media3/common/a;ILjava/lang/Object;JJ)V

    .line 20
    .line 21
    .line 22
    move-object v0, p0

    .line 23
    move-object v1, p1

    .line 24
    move-object/from16 v2, p11

    .line 25
    .line 26
    move/from16 v3, p12

    .line 27
    .line 28
    invoke-virtual {p0, p1, v10, v2, v3}, Lio/bidmachine/media3/exoplayer/source/s$a;->A(Lsn/i;Lsn/j;Ljava/io/IOException;Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public z(Lsn/i;ILjava/io/IOException;Z)V
    .locals 13

    .line 1
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    .line 8
    .line 9
    .line 10
    .line 11
    const/4 v3, -0x1

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    move-object v0, p0

    .line 16
    move-object v1, p1

    .line 17
    move v2, p2

    .line 18
    move-object/from16 v11, p3

    .line 19
    .line 20
    move/from16 v12, p4

    .line 21
    .line 22
    invoke-virtual/range {v0 .. v12}, Lio/bidmachine/media3/exoplayer/source/s$a;->y(Lsn/i;IILio/bidmachine/media3/common/a;ILjava/lang/Object;JJLjava/io/IOException;Z)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
