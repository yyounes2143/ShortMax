.class public final Lio/bidmachine/media3/exoplayer/source/i0;
.super Lio/bidmachine/media3/exoplayer/source/a;
.source "SingleSampleMediaSource.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/media3/exoplayer/source/i0$b;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final h:Len/g;

.field private final i:Len/d$a;

.field private final j:Lio/bidmachine/media3/common/a;

.field private final k:J

.field private final l:Lio/bidmachine/media3/exoplayer/upstream/b;

.field private final m:Z

.field private final n:Lzm/a0;

.field private final o:Lzm/q;

.field private final p:Lh7/n;
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

.field private q:Len/o;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Lzm/q$k;Len/d$a;JLio/bidmachine/media3/exoplayer/upstream/b;ZLjava/lang/Object;Lh7/n;)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lh7/n;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lzm/q$k;",
            "Len/d$a;",
            "J",
            "Lio/bidmachine/media3/exoplayer/upstream/b;",
            "Z",
            "Ljava/lang/Object;",
            "Lh7/n<",
            "Lxn/a;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    .line 2
    invoke-direct {p0}, Lio/bidmachine/media3/exoplayer/source/a;-><init>()V

    move-object v2, p3

    .line 3
    iput-object v2, v0, Lio/bidmachine/media3/exoplayer/source/i0;->i:Len/d$a;

    move-wide v2, p4

    .line 4
    iput-wide v2, v0, Lio/bidmachine/media3/exoplayer/source/i0;->k:J

    move-object/from16 v4, p6

    .line 5
    iput-object v4, v0, Lio/bidmachine/media3/exoplayer/source/i0;->l:Lio/bidmachine/media3/exoplayer/upstream/b;

    move/from16 v4, p7

    .line 6
    iput-boolean v4, v0, Lio/bidmachine/media3/exoplayer/source/i0;->m:Z

    .line 7
    new-instance v4, Lzm/q$c;

    invoke-direct {v4}, Lzm/q$c;-><init>()V

    sget-object v5, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 8
    invoke-virtual {v4, v5}, Lzm/q$c;->f(Landroid/net/Uri;)Lzm/q$c;

    move-result-object v4

    iget-object v5, v1, Lzm/q$k;->a:Landroid/net/Uri;

    .line 9
    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lzm/q$c;->c(Ljava/lang/String;)Lzm/q$c;

    move-result-object v4

    .line 10
    invoke-static {p2}, Lcom/google/common/collect/ImmutableList;->B(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v4, v5}, Lzm/q$c;->d(Ljava/util/List;)Lzm/q$c;

    move-result-object v4

    move-object/from16 v5, p8

    .line 11
    invoke-virtual {v4, v5}, Lzm/q$c;->e(Ljava/lang/Object;)Lzm/q$c;

    move-result-object v4

    .line 12
    invoke-virtual {v4}, Lzm/q$c;->a()Lzm/q;

    move-result-object v8

    iput-object v8, v0, Lio/bidmachine/media3/exoplayer/source/i0;->o:Lzm/q;

    .line 13
    new-instance v4, Lio/bidmachine/media3/common/a$b;

    invoke-direct {v4}, Lio/bidmachine/media3/common/a$b;-><init>()V

    iget-object v5, v1, Lzm/q$k;->b:Ljava/lang/String;

    const-string v6, "text/x-unknown"

    .line 14
    invoke-static {v5, v6}, Lh7/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Lio/bidmachine/media3/common/a$b;->u0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    move-result-object v4

    iget-object v5, v1, Lzm/q$k;->c:Ljava/lang/String;

    .line 15
    invoke-virtual {v4, v5}, Lio/bidmachine/media3/common/a$b;->j0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    move-result-object v4

    iget v5, v1, Lzm/q$k;->d:I

    .line 16
    invoke-virtual {v4, v5}, Lio/bidmachine/media3/common/a$b;->w0(I)Lio/bidmachine/media3/common/a$b;

    move-result-object v4

    iget v5, v1, Lzm/q$k;->e:I

    .line 17
    invoke-virtual {v4, v5}, Lio/bidmachine/media3/common/a$b;->s0(I)Lio/bidmachine/media3/common/a$b;

    move-result-object v4

    iget-object v5, v1, Lzm/q$k;->f:Ljava/lang/String;

    .line 18
    invoke-virtual {v4, v5}, Lio/bidmachine/media3/common/a$b;->h0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    move-result-object v4

    .line 19
    iget-object v5, v1, Lzm/q$k;->g:Ljava/lang/String;

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v5, p1

    :goto_0
    invoke-virtual {v4, v5}, Lio/bidmachine/media3/common/a$b;->f0(Ljava/lang/String;)Lio/bidmachine/media3/common/a$b;

    move-result-object v4

    .line 20
    invoke-virtual {v4}, Lio/bidmachine/media3/common/a$b;->N()Lio/bidmachine/media3/common/a;

    move-result-object v4

    iput-object v4, v0, Lio/bidmachine/media3/exoplayer/source/i0;->j:Lio/bidmachine/media3/common/a;

    .line 21
    new-instance v4, Len/g$b;

    invoke-direct {v4}, Len/g$b;-><init>()V

    iget-object v1, v1, Lzm/q$k;->a:Landroid/net/Uri;

    .line 22
    invoke-virtual {v4, v1}, Len/g$b;->i(Landroid/net/Uri;)Len/g$b;

    move-result-object v1

    const/4 v4, 0x1

    .line 23
    invoke-virtual {v1, v4}, Len/g$b;->b(I)Len/g$b;

    move-result-object v1

    .line 24
    invoke-virtual {v1}, Len/g$b;->a()Len/g;

    move-result-object v1

    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/source/i0;->h:Len/g;

    .line 25
    new-instance v9, Lsn/u;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    move-object v1, v9

    move-wide v2, p4

    invoke-direct/range {v1 .. v8}, Lsn/u;-><init>(JZZZLjava/lang/Object;Lzm/q;)V

    iput-object v9, v0, Lio/bidmachine/media3/exoplayer/source/i0;->n:Lzm/a0;

    move-object/from16 v1, p9

    .line 26
    iput-object v1, v0, Lio/bidmachine/media3/exoplayer/source/i0;->p:Lh7/n;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lzm/q$k;Len/d$a;JLio/bidmachine/media3/exoplayer/upstream/b;ZLjava/lang/Object;Lh7/n;Lio/bidmachine/media3/exoplayer/source/i0$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lio/bidmachine/media3/exoplayer/source/i0;-><init>(Ljava/lang/String;Lzm/q$k;Len/d$a;JLio/bidmachine/media3/exoplayer/upstream/b;ZLjava/lang/Object;Lh7/n;)V

    return-void
.end method


# virtual methods
.method protected A()V
    .locals 0

    .line 1
    return-void
.end method

.method public a()Lzm/q;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/media3/exoplayer/source/i0;->o:Lzm/q;

    .line 2
    .line 3
    return-object v0
.end method

.method public f(Lio/bidmachine/media3/exoplayer/source/r$b;Lwn/b;J)Lio/bidmachine/media3/exoplayer/source/q;
    .locals 11

    .line 1
    new-instance p2, Lio/bidmachine/media3/exoplayer/source/h0;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/media3/exoplayer/source/i0;->h:Len/g;

    .line 4
    .line 5
    iget-object v2, p0, Lio/bidmachine/media3/exoplayer/source/i0;->i:Len/d$a;

    .line 6
    .line 7
    iget-object v3, p0, Lio/bidmachine/media3/exoplayer/source/i0;->q:Len/o;

    .line 8
    .line 9
    iget-object v4, p0, Lio/bidmachine/media3/exoplayer/source/i0;->j:Lio/bidmachine/media3/common/a;

    .line 10
    .line 11
    iget-wide v5, p0, Lio/bidmachine/media3/exoplayer/source/i0;->k:J

    .line 12
    .line 13
    iget-object v7, p0, Lio/bidmachine/media3/exoplayer/source/i0;->l:Lio/bidmachine/media3/exoplayer/upstream/b;

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/a;->t(Lio/bidmachine/media3/exoplayer/source/r$b;)Lio/bidmachine/media3/exoplayer/source/s$a;

    .line 16
    .line 17
    .line 18
    move-result-object v8

    .line 19
    iget-boolean v9, p0, Lio/bidmachine/media3/exoplayer/source/i0;->m:Z

    .line 20
    .line 21
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/i0;->p:Lh7/n;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-interface {p1}, Lh7/n;->get()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lxn/a;

    .line 30
    .line 31
    :goto_0
    move-object v10, p1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    const/4 p1, 0x0

    .line 34
    goto :goto_0

    .line 35
    :goto_1
    move-object v0, p2

    .line 36
    invoke-direct/range {v0 .. v10}, Lio/bidmachine/media3/exoplayer/source/h0;-><init>(Len/g;Len/d$a;Len/o;Lio/bidmachine/media3/common/a;JLio/bidmachine/media3/exoplayer/upstream/b;Lio/bidmachine/media3/exoplayer/source/s$a;ZLxn/a;)V

    .line 37
    .line 38
    .line 39
    return-object p2
.end method

.method public m(Lio/bidmachine/media3/exoplayer/source/q;)V
    .locals 0

    .line 1
    check-cast p1, Lio/bidmachine/media3/exoplayer/source/h0;

    .line 2
    .line 3
    invoke-virtual {p1}, Lio/bidmachine/media3/exoplayer/source/h0;->n()V

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

.method protected y(Len/o;)V
    .locals 0
    .param p1    # Len/o;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/media3/exoplayer/source/i0;->q:Len/o;

    .line 2
    .line 3
    iget-object p1, p0, Lio/bidmachine/media3/exoplayer/source/i0;->n:Lzm/a0;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lio/bidmachine/media3/exoplayer/source/a;->z(Lzm/a0;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
