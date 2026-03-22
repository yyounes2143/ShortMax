.class public final Lcom/facebook/i0;
.super Ljava/io/FilterOutputStream;
.source "ProgressOutputStream.kt"

# interfaces
.implements Lcom/facebook/j0;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lcom/facebook/a0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/facebook/GraphRequest;",
            "Lcom/facebook/l0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:J

.field private final d:J

.field private e:J

.field private f:J

.field private g:Lcom/facebook/l0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Lcom/facebook/a0;Ljava/util/Map;J)V
    .locals 1
    .param p1    # Ljava/io/OutputStream;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/a0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/OutputStream;",
            "Lcom/facebook/a0;",
            "Ljava/util/Map<",
            "Lcom/facebook/GraphRequest;",
            "Lcom/facebook/l0;",
            ">;J)V"
        }
    .end annotation

    .line 1
    const-string v0, "out"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "requests"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "progressMap"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lcom/facebook/i0;->a:Lcom/facebook/a0;

    .line 20
    .line 21
    iput-object p3, p0, Lcom/facebook/i0;->b:Ljava/util/Map;

    .line 22
    .line 23
    iput-wide p4, p0, Lcom/facebook/i0;->c:J

    .line 24
    .line 25
    invoke-static {}, Lcom/facebook/v;->B()J

    .line 26
    .line 27
    .line 28
    move-result-wide p1

    .line 29
    iput-wide p1, p0, Lcom/facebook/i0;->d:J

    .line 30
    .line 31
    return-void
.end method

.method public static synthetic b(Lcom/facebook/a0$a;Lcom/facebook/i0;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/facebook/i0;->l(Lcom/facebook/a0$a;Lcom/facebook/i0;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final g(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/facebook/i0;->g:Lcom/facebook/l0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/facebook/l0;->b(J)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-wide v0, p0, Lcom/facebook/i0;->e:J

    .line 9
    .line 10
    add-long/2addr v0, p1

    .line 11
    iput-wide v0, p0, Lcom/facebook/i0;->e:J

    .line 12
    .line 13
    iget-wide p1, p0, Lcom/facebook/i0;->f:J

    .line 14
    .line 15
    iget-wide v2, p0, Lcom/facebook/i0;->d:J

    .line 16
    .line 17
    add-long/2addr p1, v2

    .line 18
    cmp-long p1, v0, p1

    .line 19
    .line 20
    if-gez p1, :cond_1

    .line 21
    .line 22
    iget-wide p1, p0, Lcom/facebook/i0;->c:J

    .line 23
    .line 24
    cmp-long p1, v0, p1

    .line 25
    .line 26
    if-ltz p1, :cond_2

    .line 27
    .line 28
    :cond_1
    invoke-direct {p0}, Lcom/facebook/i0;->k()V

    .line 29
    .line 30
    .line 31
    :cond_2
    return-void
.end method

.method private final k()V
    .locals 10

    .line 1
    iget-wide v0, p0, Lcom/facebook/i0;->e:J

    .line 2
    .line 3
    iget-wide v2, p0, Lcom/facebook/i0;->f:J

    .line 4
    .line 5
    cmp-long v0, v0, v2

    .line 6
    .line 7
    if-lez v0, :cond_3

    .line 8
    .line 9
    iget-object v0, p0, Lcom/facebook/i0;->a:Lcom/facebook/a0;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/facebook/a0;->n()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/facebook/a0$a;

    .line 30
    .line 31
    instance-of v2, v1, Lcom/facebook/a0$c;

    .line 32
    .line 33
    if-eqz v2, :cond_0

    .line 34
    .line 35
    iget-object v2, p0, Lcom/facebook/i0;->a:Lcom/facebook/a0;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/facebook/a0;->m()Landroid/os/Handler;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    if-eqz v2, :cond_1

    .line 42
    .line 43
    new-instance v3, Lcom/facebook/h0;

    .line 44
    .line 45
    invoke-direct {v3, v1, p0}, Lcom/facebook/h0;-><init>(Lcom/facebook/a0$a;Lcom/facebook/i0;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    move-object v4, v1

    .line 53
    check-cast v4, Lcom/facebook/a0$c;

    .line 54
    .line 55
    iget-object v5, p0, Lcom/facebook/i0;->a:Lcom/facebook/a0;

    .line 56
    .line 57
    iget-wide v6, p0, Lcom/facebook/i0;->e:J

    .line 58
    .line 59
    iget-wide v8, p0, Lcom/facebook/i0;->c:J

    .line 60
    .line 61
    invoke-interface/range {v4 .. v9}, Lcom/facebook/a0$c;->b(Lcom/facebook/a0;JJ)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    iget-wide v0, p0, Lcom/facebook/i0;->e:J

    .line 66
    .line 67
    iput-wide v0, p0, Lcom/facebook/i0;->f:J

    .line 68
    .line 69
    :cond_3
    return-void
.end method

.method private static final l(Lcom/facebook/a0$a;Lcom/facebook/i0;)V
    .locals 7

    .line 1
    const-string v0, "$callback"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "this$0"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    move-object v1, p0

    .line 12
    check-cast v1, Lcom/facebook/a0$c;

    .line 13
    .line 14
    iget-object v2, p1, Lcom/facebook/i0;->a:Lcom/facebook/a0;

    .line 15
    .line 16
    iget-wide v3, p1, Lcom/facebook/i0;->e:J

    .line 17
    .line 18
    iget-wide v5, p1, Lcom/facebook/i0;->c:J

    .line 19
    .line 20
    invoke-interface/range {v1 .. v6}, Lcom/facebook/a0$c;->b(Lcom/facebook/a0;JJ)V

    .line 21
    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/GraphRequest;)V
    .locals 1
    .param p1    # Lcom/facebook/GraphRequest;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/facebook/i0;->b:Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/facebook/l0;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    iput-object p1, p0, Lcom/facebook/i0;->g:Lcom/facebook/l0;

    .line 14
    .line 15
    return-void
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/io/FilterOutputStream;->close()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/facebook/i0;->b:Ljava/util/Map;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    check-cast v1, Lcom/facebook/l0;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/facebook/l0;->d()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-direct {p0}, Lcom/facebook/i0;->k()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    const-wide/16 v0, 0x1

    .line 6
    invoke-direct {p0, v0, v1}, Lcom/facebook/i0;->g(J)V

    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 2
    array-length p1, p1

    int-to-long v0, p1

    invoke-direct {p0, v0, v1}, Lcom/facebook/i0;->g(J)V

    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Ljava/io/FilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long p1, p3

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/facebook/i0;->g(J)V

    return-void
.end method
