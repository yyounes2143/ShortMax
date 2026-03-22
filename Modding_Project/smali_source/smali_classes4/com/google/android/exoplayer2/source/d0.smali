.class public final Lcom/google/android/exoplayer2/source/d0;
.super Lcom/google/android/exoplayer2/source/a;
.source "SingleSampleMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/source/d0$b;
    }
.end annotation


# instance fields
.field private final h:La7/k;

.field private final i:La7/h$a;

.field private final j:Lcom/google/android/exoplayer2/v0;

.field private final k:J

.field private final l:Lcom/google/android/exoplayer2/upstream/b;

.field private final m:Z

.field private final n:Lcom/google/android/exoplayer2/u1;

.field private final o:Lcom/google/android/exoplayer2/y0;

.field private p:La7/y;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/y0$l;La7/h$a;JLcom/google/android/exoplayer2/upstream/b;ZLjava/lang/Object;)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object v0, p0

    move-object v1, p2

    .line 2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/a;-><init>()V

    move-object v2, p3

    .line 3
    iput-object v2, v0, Lcom/google/android/exoplayer2/source/d0;->i:La7/h$a;

    move-wide v2, p4

    .line 4
    iput-wide v2, v0, Lcom/google/android/exoplayer2/source/d0;->k:J

    move-object/from16 v4, p6

    .line 5
    iput-object v4, v0, Lcom/google/android/exoplayer2/source/d0;->l:Lcom/google/android/exoplayer2/upstream/b;

    move/from16 v4, p7

    .line 6
    iput-boolean v4, v0, Lcom/google/android/exoplayer2/source/d0;->m:Z

    .line 7
    new-instance v4, Lcom/google/android/exoplayer2/y0$c;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/y0$c;-><init>()V

    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 8
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/y0$c;->g(Landroid/net/Uri;)Lcom/google/android/exoplayer2/y0$c;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/exoplayer2/y0$l;->a:Landroid/net/Uri;

    .line 9
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/y0$c;->d(Ljava/lang/String;)Lcom/google/android/exoplayer2/y0$c;

    move-result-object v4

    .line 10
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->B(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/y0$c;->e(Ljava/util/List;)Lcom/google/android/exoplayer2/y0$c;

    move-result-object v4

    move-object/from16 v5, p8

    .line 11
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/y0$c;->f(Ljava/lang/Object;)Lcom/google/android/exoplayer2/y0$c;

    move-result-object v4

    .line 12
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/y0$c;->a()Lcom/google/android/exoplayer2/y0;

    move-result-object v8

    iput-object v8, v0, Lcom/google/android/exoplayer2/source/d0;->o:Lcom/google/android/exoplayer2/y0;

    .line 13
    new-instance v4, Lcom/google/android/exoplayer2/v0$b;

    invoke-direct {v4}, Lcom/google/android/exoplayer2/v0$b;-><init>()V

    iget-object v5, v1, Lcom/google/android/exoplayer2/y0$l;->b:Ljava/lang/String;

    const-string v6, "text/x-unknown"

    .line 14
    invoke-static {v5, v6}, Lh7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/v0$b;->e0(Ljava/lang/String;)Lcom/google/android/exoplayer2/v0$b;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/exoplayer2/y0$l;->c:Ljava/lang/String;

    .line 15
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/v0$b;->V(Ljava/lang/String;)Lcom/google/android/exoplayer2/v0$b;

    move-result-object v4

    iget v5, v1, Lcom/google/android/exoplayer2/y0$l;->d:I

    .line 16
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/v0$b;->g0(I)Lcom/google/android/exoplayer2/v0$b;

    move-result-object v4

    iget v5, v1, Lcom/google/android/exoplayer2/y0$l;->e:I

    .line 17
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/v0$b;->c0(I)Lcom/google/android/exoplayer2/v0$b;

    move-result-object v4

    iget-object v5, v1, Lcom/google/android/exoplayer2/y0$l;->f:Ljava/lang/String;

    .line 18
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/v0$b;->U(Ljava/lang/String;)Lcom/google/android/exoplayer2/v0$b;

    move-result-object v4

    .line 19
    iget-object v5, v1, Lcom/google/android/exoplayer2/y0$l;->g:Ljava/lang/String;

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v5, p1

    :goto_0
    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/v0$b;->S(Ljava/lang/String;)Lcom/google/android/exoplayer2/v0$b;

    move-result-object v4

    .line 20
    invoke-virtual {v4}, Lcom/google/android/exoplayer2/v0$b;->E()Lcom/google/android/exoplayer2/v0;

    move-result-object v4

    iput-object v4, v0, Lcom/google/android/exoplayer2/source/d0;->j:Lcom/google/android/exoplayer2/v0;

    .line 21
    new-instance v4, La7/k$b;

    invoke-direct {v4}, La7/k$b;-><init>()V

    iget-object v1, v1, Lcom/google/android/exoplayer2/y0$l;->a:Landroid/net/Uri;

    .line 22
    invoke-virtual {v4, v1}, La7/k$b;->h(Landroid/net/Uri;)La7/k$b;

    move-result-object v1

    const/4 v4, 0x1

    .line 23
    invoke-virtual {v1, v4}, La7/k$b;->b(I)La7/k$b;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, La7/k$b;->a()La7/k;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/exoplayer2/source/d0;->h:La7/k;

    .line 25
    new-instance v9, Ln6/s;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, v9

    move-wide v2, p4

    invoke-direct/range {v1 .. v8}, Ln6/s;-><init>(JZZZLjava/lang/Object;Lcom/google/android/exoplayer2/y0;)V

    iput-object v9, v0, Lcom/google/android/exoplayer2/source/d0;->n:Lcom/google/android/exoplayer2/u1;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/google/android/exoplayer2/y0$l;La7/h$a;JLcom/google/android/exoplayer2/upstream/b;ZLjava/lang/Object;Lcom/google/android/exoplayer2/source/d0$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/google/android/exoplayer2/source/d0;-><init>(Ljava/lang/String;Lcom/google/android/exoplayer2/y0$l;La7/h$a;JLcom/google/android/exoplayer2/upstream/b;ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/y0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/d0;->o:Lcom/google/android/exoplayer2/y0;

    .line 2
    .line 3
    return-object v0
.end method

.method public f(Lcom/google/android/exoplayer2/source/o$b;La7/b;J)Lcom/google/android/exoplayer2/source/n;
    .locals 10

    .line 1
    new-instance p2, Lcom/google/android/exoplayer2/source/c0;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/d0;->h:La7/k;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/d0;->i:La7/h$a;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/d0;->p:La7/y;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/d0;->j:Lcom/google/android/exoplayer2/v0;

    .line 10
    .line 11
    iget-wide v5, p0, Lcom/google/android/exoplayer2/source/d0;->k:J

    .line 12
    .line 13
    iget-object v7, p0, Lcom/google/android/exoplayer2/source/d0;->l:Lcom/google/android/exoplayer2/upstream/b;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/a;->r(Lcom/google/android/exoplayer2/source/o$b;)Lcom/google/android/exoplayer2/source/p$a;

    .line 16
    .line 17
    .line 18
    move-result-object v8

    .line 19
    iget-boolean v9, p0, Lcom/google/android/exoplayer2/source/d0;->m:Z

    .line 20
    .line 21
    move-object v0, p2

    .line 22
    invoke-direct/range {v0 .. v9}, Lcom/google/android/exoplayer2/source/c0;-><init>(La7/k;La7/h$a;La7/y;Lcom/google/android/exoplayer2/v0;JLcom/google/android/exoplayer2/upstream/b;Lcom/google/android/exoplayer2/source/p$a;Z)V

    .line 23
    .line 24
    .line 25
    return-object p2
.end method

.method public i(Lcom/google/android/exoplayer2/source/n;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/exoplayer2/source/c0;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/c0;->k()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public maybeThrowSourceInfoRefreshError()V
    .locals 0

    .line 1
    return-void
.end method

.method protected w(La7/y;)V
    .locals 0
    .param p1    # La7/y;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/d0;->p:La7/y;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/d0;->n:Lcom/google/android/exoplayer2/u1;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/source/a;->x(Lcom/google/android/exoplayer2/u1;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected y()V
    .locals 0

    .line 1
    return-void
.end method
