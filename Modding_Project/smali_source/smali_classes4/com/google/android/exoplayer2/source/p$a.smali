.class public Lcom/google/android/exoplayer2/source/p$a;
.super Ljava/lang/Object;
.source "MediaSourceEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/p$a$a;
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/google/android/exoplayer2/source/o$b;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/source/p$a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:J


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 1
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/p$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/o$b;J)V

    return-void
.end method

.method private constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/o$b;J)V
    .locals 0
    .param p3    # Lcom/google/android/exoplayer2/source/o$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/google/android/exoplayer2/source/p$a$a;",
            ">;I",
            "Lcom/google/android/exoplayer2/source/o$b;",
            "J)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/p$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    iput p2, p0, Lcom/google/android/exoplayer2/source/p$a;->a:I

    .line 5
    iput-object p3, p0, Lcom/google/android/exoplayer2/source/p$a;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 6
    iput-wide p4, p0, Lcom/google/android/exoplayer2/source/p$a;->d:J

    return-void
.end method

.method public static synthetic a(Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/source/p;Ln6/h;Ln6/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/p$a;->n(Lcom/google/android/exoplayer2/source/p;Ln6/h;Ln6/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/source/p;Ln6/h;Ln6/i;Ljava/io/IOException;Z)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/google/android/exoplayer2/source/p$a;->m(Lcom/google/android/exoplayer2/source/p;Ln6/h;Ln6/i;Ljava/io/IOException;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic c(Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/source/p;Ln6/h;Ln6/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/p$a;->k(Lcom/google/android/exoplayer2/source/p;Ln6/h;Ln6/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic d(Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/source/p;Ln6/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/p$a;->j(Lcom/google/android/exoplayer2/source/p;Ln6/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/source/p;Ln6/h;Ln6/i;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/p$a;->l(Lcom/google/android/exoplayer2/source/p;Ln6/h;Ln6/i;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private g(J)J
    .locals 3

    .line 1
    invoke-static {p1, p2}, Lb7/s0;->Q0(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    cmp-long v2, p1, v0

    .line 11
    .line 12
    if-nez v2, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-wide v0, p0, Lcom/google/android/exoplayer2/source/p$a;->d:J

    .line 16
    .line 17
    add-long/2addr v0, p1

    .line 18
    :goto_0
    return-wide v0
.end method

.method private synthetic j(Lcom/google/android/exoplayer2/source/p;Ln6/i;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/source/p$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/p$a;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1, p2}, Lcom/google/android/exoplayer2/source/p;->Q(ILcom/google/android/exoplayer2/source/o$b;Ln6/i;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic k(Lcom/google/android/exoplayer2/source/p;Ln6/h;Ln6/i;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/source/p$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/p$a;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1, p2, p3}, Lcom/google/android/exoplayer2/source/p;->T(ILcom/google/android/exoplayer2/source/o$b;Ln6/h;Ln6/i;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic l(Lcom/google/android/exoplayer2/source/p;Ln6/h;Ln6/i;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/source/p$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/p$a;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1, p2, p3}, Lcom/google/android/exoplayer2/source/p;->W(ILcom/google/android/exoplayer2/source/o$b;Ln6/h;Ln6/i;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private synthetic m(Lcom/google/android/exoplayer2/source/p;Ln6/h;Ln6/i;Ljava/io/IOException;Z)V
    .locals 7

    .line 1
    iget v1, p0, Lcom/google/android/exoplayer2/source/p$a;->a:I

    .line 2
    .line 3
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/p$a;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    move-object v3, p2

    .line 7
    move-object v4, p3

    .line 8
    move-object v5, p4

    .line 9
    move v6, p5

    .line 10
    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/source/p;->i(ILcom/google/android/exoplayer2/source/o$b;Ln6/h;Ln6/i;Ljava/io/IOException;Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private synthetic n(Lcom/google/android/exoplayer2/source/p;Ln6/h;Ln6/i;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/google/android/exoplayer2/source/p$a;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/p$a;->b:Lcom/google/android/exoplayer2/source/o$b;

    .line 4
    .line 5
    invoke-interface {p1, v0, v1, p2, p3}, Lcom/google/android/exoplayer2/source/p;->Z(ILcom/google/android/exoplayer2/source/o$b;Ln6/h;Ln6/i;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public f(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/p;)V
    .locals 2

    .line 1
    invoke-static {p1}, Lb7/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lb7/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 8
    .line 9
    new-instance v1, Lcom/google/android/exoplayer2/source/p$a$a;

    .line 10
    .line 11
    invoke-direct {v1, p1, p2}, Lcom/google/android/exoplayer2/source/p$a$a;-><init>(Landroid/os/Handler;Lcom/google/android/exoplayer2/source/p;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public h(ILcom/google/android/exoplayer2/v0;ILjava/lang/Object;J)V
    .locals 12
    .param p2    # Lcom/google/android/exoplayer2/v0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    new-instance v11, Ln6/i;

    .line 3
    .line 4
    move-wide/from16 v1, p5

    .line 5
    .line 6
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/p$a;->g(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v7

    .line 10
    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    .line 11
    .line 12
    .line 13
    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    move-object v1, v11

    .line 17
    move v3, p1

    .line 18
    move-object v4, p2

    .line 19
    move v5, p3

    .line 20
    move-object/from16 v6, p4

    .line 21
    .line 22
    invoke-direct/range {v1 .. v10}, Ln6/i;-><init>(IILcom/google/android/exoplayer2/v0;ILjava/lang/Object;JJ)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, v11}, Lcom/google/android/exoplayer2/source/p$a;->i(Ln6/i;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public i(Ln6/i;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    check-cast v1, Lcom/google/android/exoplayer2/source/p$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/p$a$a;->b:Lcom/google/android/exoplayer2/source/p;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/p$a$a;->a:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v3, Ln6/o;

    .line 24
    .line 25
    invoke-direct {v3, p0, v2, p1}, Ln6/o;-><init>(Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/source/p;Ln6/i;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v3}, Lb7/s0;->C0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public o(Ln6/h;IILcom/google/android/exoplayer2/v0;ILjava/lang/Object;JJ)V
    .locals 12
    .param p4    # Lcom/google/android/exoplayer2/v0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    new-instance v11, Ln6/i;

    .line 3
    .line 4
    move-wide/from16 v1, p7

    .line 5
    .line 6
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/p$a;->g(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v7

    .line 10
    move-wide/from16 v1, p9

    .line 11
    .line 12
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/p$a;->g(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v9

    .line 16
    move-object v1, v11

    .line 17
    move v2, p2

    .line 18
    move v3, p3

    .line 19
    move-object/from16 v4, p4

    .line 20
    .line 21
    move/from16 v5, p5

    .line 22
    .line 23
    move-object/from16 v6, p6

    .line 24
    .line 25
    invoke-direct/range {v1 .. v10}, Ln6/i;-><init>(IILcom/google/android/exoplayer2/v0;ILjava/lang/Object;JJ)V

    .line 26
    .line 27
    .line 28
    move-object v1, p1

    .line 29
    invoke-virtual {p0, p1, v11}, Lcom/google/android/exoplayer2/source/p$a;->p(Ln6/h;Ln6/i;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public p(Ln6/h;Ln6/i;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    check-cast v1, Lcom/google/android/exoplayer2/source/p$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/p$a$a;->b:Lcom/google/android/exoplayer2/source/p;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/p$a$a;->a:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v3, Ln6/m;

    .line 24
    .line 25
    invoke-direct {v3, p0, v2, p1, p2}, Ln6/m;-><init>(Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/source/p;Ln6/h;Ln6/i;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v3}, Lb7/s0;->C0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public q(Ln6/h;IILcom/google/android/exoplayer2/v0;ILjava/lang/Object;JJ)V
    .locals 12
    .param p4    # Lcom/google/android/exoplayer2/v0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    new-instance v11, Ln6/i;

    .line 3
    .line 4
    move-wide/from16 v1, p7

    .line 5
    .line 6
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/p$a;->g(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v7

    .line 10
    move-wide/from16 v1, p9

    .line 11
    .line 12
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/p$a;->g(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v9

    .line 16
    move-object v1, v11

    .line 17
    move v2, p2

    .line 18
    move v3, p3

    .line 19
    move-object/from16 v4, p4

    .line 20
    .line 21
    move/from16 v5, p5

    .line 22
    .line 23
    move-object/from16 v6, p6

    .line 24
    .line 25
    invoke-direct/range {v1 .. v10}, Ln6/i;-><init>(IILcom/google/android/exoplayer2/v0;ILjava/lang/Object;JJ)V

    .line 26
    .line 27
    .line 28
    move-object v1, p1

    .line 29
    invoke-virtual {p0, p1, v11}, Lcom/google/android/exoplayer2/source/p$a;->r(Ln6/h;Ln6/i;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public r(Ln6/h;Ln6/i;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    check-cast v1, Lcom/google/android/exoplayer2/source/p$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/p$a$a;->b:Lcom/google/android/exoplayer2/source/p;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/p$a$a;->a:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v3, Ln6/k;

    .line 24
    .line 25
    invoke-direct {v3, p0, v2, p1, p2}, Ln6/k;-><init>(Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/source/p;Ln6/h;Ln6/i;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v3}, Lb7/s0;->C0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public s(Ln6/h;IILcom/google/android/exoplayer2/v0;ILjava/lang/Object;JJLjava/io/IOException;Z)V
    .locals 12
    .param p4    # Lcom/google/android/exoplayer2/v0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    new-instance v11, Ln6/i;

    .line 3
    .line 4
    move-wide/from16 v1, p7

    .line 5
    .line 6
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/p$a;->g(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v7

    .line 10
    move-wide/from16 v1, p9

    .line 11
    .line 12
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/p$a;->g(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v9

    .line 16
    move-object v1, v11

    .line 17
    move v2, p2

    .line 18
    move v3, p3

    .line 19
    move-object/from16 v4, p4

    .line 20
    .line 21
    move/from16 v5, p5

    .line 22
    .line 23
    move-object/from16 v6, p6

    .line 24
    .line 25
    invoke-direct/range {v1 .. v10}, Ln6/i;-><init>(IILcom/google/android/exoplayer2/v0;ILjava/lang/Object;JJ)V

    .line 26
    .line 27
    .line 28
    move-object v1, p1

    .line 29
    move-object/from16 v2, p11

    .line 30
    .line 31
    move/from16 v3, p12

    .line 32
    .line 33
    invoke-virtual {p0, p1, v11, v2, v3}, Lcom/google/android/exoplayer2/source/p$a;->t(Ln6/h;Ln6/i;Ljava/io/IOException;Z)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public t(Ln6/h;Ln6/i;Ljava/io/IOException;Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    check-cast v1, Lcom/google/android/exoplayer2/source/p$a$a;

    .line 18
    .line 19
    iget-object v4, v1, Lcom/google/android/exoplayer2/source/p$a$a;->b:Lcom/google/android/exoplayer2/source/p;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/p$a$a;->a:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v9, Ln6/l;

    .line 24
    .line 25
    move-object v2, v9

    .line 26
    move-object v3, p0

    .line 27
    move-object v5, p1

    .line 28
    move-object v6, p2

    .line 29
    move-object v7, p3

    .line 30
    move v8, p4

    .line 31
    invoke-direct/range {v2 .. v8}, Ln6/l;-><init>(Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/source/p;Ln6/h;Ln6/i;Ljava/io/IOException;Z)V

    .line 32
    .line 33
    .line 34
    invoke-static {v1, v9}, Lb7/s0;->C0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method public u(Ln6/h;IILcom/google/android/exoplayer2/v0;ILjava/lang/Object;JJ)V
    .locals 12
    .param p4    # Lcom/google/android/exoplayer2/v0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    new-instance v11, Ln6/i;

    .line 3
    .line 4
    move-wide/from16 v1, p7

    .line 5
    .line 6
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/p$a;->g(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide v7

    .line 10
    move-wide/from16 v1, p9

    .line 11
    .line 12
    invoke-direct {p0, v1, v2}, Lcom/google/android/exoplayer2/source/p$a;->g(J)J

    .line 13
    .line 14
    .line 15
    move-result-wide v9

    .line 16
    move-object v1, v11

    .line 17
    move v2, p2

    .line 18
    move v3, p3

    .line 19
    move-object/from16 v4, p4

    .line 20
    .line 21
    move/from16 v5, p5

    .line 22
    .line 23
    move-object/from16 v6, p6

    .line 24
    .line 25
    invoke-direct/range {v1 .. v10}, Ln6/i;-><init>(IILcom/google/android/exoplayer2/v0;ILjava/lang/Object;JJ)V

    .line 26
    .line 27
    .line 28
    move-object v1, p1

    .line 29
    invoke-virtual {p0, p1, v11}, Lcom/google/android/exoplayer2/source/p$a;->v(Ln6/h;Ln6/i;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public v(Ln6/h;Ln6/i;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    check-cast v1, Lcom/google/android/exoplayer2/source/p$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/p$a$a;->b:Lcom/google/android/exoplayer2/source/p;

    .line 20
    .line 21
    iget-object v1, v1, Lcom/google/android/exoplayer2/source/p$a$a;->a:Landroid/os/Handler;

    .line 22
    .line 23
    new-instance v3, Ln6/n;

    .line 24
    .line 25
    invoke-direct {v3, p0, v2, p1, p2}, Ln6/n;-><init>(Lcom/google/android/exoplayer2/source/p$a;Lcom/google/android/exoplayer2/source/p;Ln6/h;Ln6/i;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1, v3}, Lb7/s0;->C0(Landroid/os/Handler;Ljava/lang/Runnable;)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public w(Lcom/google/android/exoplayer2/source/p;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/p$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

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
    check-cast v1, Lcom/google/android/exoplayer2/source/p$a$a;

    .line 18
    .line 19
    iget-object v2, v1, Lcom/google/android/exoplayer2/source/p$a$a;->b:Lcom/google/android/exoplayer2/source/p;

    .line 20
    .line 21
    if-ne v2, p1, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/p$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

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

.method public x(ILcom/google/android/exoplayer2/source/o$b;J)Lcom/google/android/exoplayer2/source/p$a;
    .locals 7
    .param p2    # Lcom/google/android/exoplayer2/source/o$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    new-instance v6, Lcom/google/android/exoplayer2/source/p$a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/p$a;->c:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    move-object v0, v6

    .line 6
    move v2, p1

    .line 7
    move-object v3, p2

    .line 8
    move-wide v4, p3

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/google/android/exoplayer2/source/p$a;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;ILcom/google/android/exoplayer2/source/o$b;J)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method
