.class public final Lcom/moloco/sdk/internal/services/bidtoken/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/internal/services/bidtoken/b0;


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
    otherwise = 0x2
.end annotation

.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation


# instance fields
.field public final b:Lcom/moloco/sdk/internal/services/bidtoken/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lgt/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Lcom/moloco/sdk/internal/services/bidtoken/y;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final e:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Z

.field public final g:Lqt/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public h:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/moloco/sdk/internal/services/bidtoken/e;Lgt/g0;Lcom/moloco/sdk/internal/services/bidtoken/y;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/internal/services/bidtoken/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/internal/services/bidtoken/y;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "bidTokenApi"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "scope"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v0, "tokenCache"

    .line 12
    .line 13
    .line 14
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/z;->b:Lcom/moloco/sdk/internal/services/bidtoken/e;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/moloco/sdk/internal/services/bidtoken/z;->c:Lgt/g0;

    .line 23
    .line 24
    iput-object p3, p0, Lcom/moloco/sdk/internal/services/bidtoken/z;->d:Lcom/moloco/sdk/internal/services/bidtoken/y;

    .line 25
    .line 26
    const-string p1, "ServerBidTokenServiceImpl"

    .line 27
    .line 28
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/z;->e:Ljava/lang/String;

    .line 29
    .line 30
    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/z;->f:Z

    .line 32
    .line 33
    const/4 p2, 0x0

    .line 34
    const/4 p3, 0x0

    .line 35
    invoke-static {p2, p1, p3}, Lqt/d;->b(ZILjava/lang/Object;)Lqt/a;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/z;->g:Lqt/a;

    .line 40
    .line 41
    return-void
.end method

.method public static final synthetic b(Lcom/moloco/sdk/internal/services/bidtoken/z;)Lcom/moloco/sdk/internal/services/bidtoken/y;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/internal/services/bidtoken/z;->d:Lcom/moloco/sdk/internal/services/bidtoken/y;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic e(Lcom/moloco/sdk/internal/services/bidtoken/z;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/internal/services/bidtoken/z;->f(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic g(Lcom/moloco/sdk/internal/services/bidtoken/z;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/internal/services/bidtoken/z;->h(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lcom/moloco/sdk/acm/recorder/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/acm/recorder/a;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/services/bidtoken/n;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "[Thread: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, "] Fetching bidToken(), acquiring lock"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p0, v0}, Lcom/moloco/sdk/internal/services/bidtoken/z;->h(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/z;->g:Lqt/a;

    .line 35
    .line 36
    new-instance v1, Lcom/moloco/sdk/internal/services/bidtoken/z$a;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    invoke-direct {v1, p0, p1, v2}, Lcom/moloco/sdk/internal/services/bidtoken/z$a;-><init>(Lcom/moloco/sdk/internal/services/bidtoken/z;Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0, v1, p2}, Lcom/moloco/sdk/internal/utils/a;->a(Lqt/a;Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1
.end method

.method public final c(Lcom/moloco/sdk/acm/recorder/a;Lcom/moloco/sdk/internal/services/bidtoken/n;ZZLrs/c;)Ljava/lang/Object;
    .locals 19
    .param p1    # Lcom/moloco/sdk/acm/recorder/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/services/bidtoken/n;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/acm/recorder/a;",
            "Lcom/moloco/sdk/internal/services/bidtoken/n;",
            "ZZ",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/services/bidtoken/n;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    instance-of v3, v2, Lcom/moloco/sdk/internal/services/bidtoken/z$b;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/moloco/sdk/internal/services/bidtoken/z$b;

    iget v4, v3, Lcom/moloco/sdk/internal/services/bidtoken/z$b;->p:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/moloco/sdk/internal/services/bidtoken/z$b;->p:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/moloco/sdk/internal/services/bidtoken/z$b;

    invoke-direct {v3, v0, v2}, Lcom/moloco/sdk/internal/services/bidtoken/z$b;-><init>(Lcom/moloco/sdk/internal/services/bidtoken/z;Lrs/c;)V

    :goto_0
    iget-object v2, v3, Lcom/moloco/sdk/internal/services/bidtoken/z$b;->n:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    move-result-object v4

    .line 1
    iget v5, v3, Lcom/moloco/sdk/internal/services/bidtoken/z$b;->p:I

    const-string v6, "[Thread: "

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v5, :cond_3

    if-eq v5, v8, :cond_2

    if-ne v5, v7, :cond_1

    iget-object v1, v3, Lcom/moloco/sdk/internal/services/bidtoken/z$b;->i:Ljava/lang/Object;

    check-cast v1, Lcom/moloco/sdk/internal/g0;

    iget-object v3, v3, Lcom/moloco/sdk/internal/services/bidtoken/z$b;->h:Ljava/lang/Object;

    check-cast v3, Lcom/moloco/sdk/internal/services/bidtoken/z;

    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-boolean v1, v3, Lcom/moloco/sdk/internal/services/bidtoken/z$b;->m:Z

    iget-boolean v5, v3, Lcom/moloco/sdk/internal/services/bidtoken/z$b;->l:Z

    iget-object v8, v3, Lcom/moloco/sdk/internal/services/bidtoken/z$b;->k:Ljava/lang/Object;

    check-cast v8, Lcom/moloco/sdk/acm/e;

    iget-object v9, v3, Lcom/moloco/sdk/internal/services/bidtoken/z$b;->j:Ljava/lang/Object;

    check-cast v9, Lcom/moloco/sdk/internal/services/bidtoken/n;

    iget-object v10, v3, Lcom/moloco/sdk/internal/services/bidtoken/z$b;->i:Ljava/lang/Object;

    check-cast v10, Lcom/moloco/sdk/acm/recorder/a;

    iget-object v11, v3, Lcom/moloco/sdk/internal/services/bidtoken/z$b;->h:Ljava/lang/Object;

    check-cast v11, Lcom/moloco/sdk/internal/services/bidtoken/z;

    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    move-object/from16 v18, v11

    move v11, v1

    move-object/from16 v1, v18

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 2
    sget-object v2, Lcom/moloco/sdk/internal/client_metrics_data/d;->m:Lcom/moloco/sdk/internal/client_metrics_data/d;

    invoke-virtual {v2}, Lcom/moloco/sdk/internal/client_metrics_data/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/moloco/sdk/acm/recorder/a;->c(Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    move-result-object v2

    .line 3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "] fetchServerBidToken"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/moloco/sdk/internal/services/bidtoken/z;->h(Ljava/lang/String;)V

    .line 4
    iget-object v5, v0, Lcom/moloco/sdk/internal/services/bidtoken/z;->b:Lcom/moloco/sdk/internal/services/bidtoken/e;

    iput-object v0, v3, Lcom/moloco/sdk/internal/services/bidtoken/z$b;->h:Ljava/lang/Object;

    iput-object v1, v3, Lcom/moloco/sdk/internal/services/bidtoken/z$b;->i:Ljava/lang/Object;

    move-object/from16 v9, p2

    iput-object v9, v3, Lcom/moloco/sdk/internal/services/bidtoken/z$b;->j:Ljava/lang/Object;

    iput-object v2, v3, Lcom/moloco/sdk/internal/services/bidtoken/z$b;->k:Ljava/lang/Object;

    move/from16 v10, p3

    iput-boolean v10, v3, Lcom/moloco/sdk/internal/services/bidtoken/z$b;->l:Z

    move/from16 v11, p4

    iput-boolean v11, v3, Lcom/moloco/sdk/internal/services/bidtoken/z$b;->m:Z

    iput v8, v3, Lcom/moloco/sdk/internal/services/bidtoken/z$b;->p:I

    invoke-interface {v5, v1, v3}, Lcom/moloco/sdk/internal/services/bidtoken/e;->a(Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_4

    return-object v4

    :cond_4
    move-object v8, v2

    move-object v2, v5

    move v5, v10

    move-object v10, v1

    move-object v1, v0

    .line 5
    :goto_1
    check-cast v2, Lcom/moloco/sdk/internal/g0;

    .line 6
    instance-of v12, v2, Lcom/moloco/sdk/internal/g0$a;

    const-string/jumbo v13, "was_expiring"

    const-string v14, "async"

    const-string v15, "initial_fetch"

    if-eqz v12, :cond_5

    .line 7
    new-instance v3, Lcom/moloco/sdk/acm/b;

    sget-object v4, Lcom/moloco/sdk/internal/client_metrics_data/a;->t:Lcom/moloco/sdk/internal/client_metrics_data/a;

    invoke-virtual {v4}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 8
    sget-object v4, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    invoke-virtual {v4}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    move-result-object v6

    const-string v7, "failure"

    invoke-virtual {v3, v6, v7}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    move-result-object v3

    .line 9
    sget-object v6, Lcom/moloco/sdk/internal/client_metrics_data/c;->b:Lcom/moloco/sdk/internal/client_metrics_data/c;

    invoke-virtual {v6}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    move-result-object v12

    check-cast v2, Lcom/moloco/sdk/internal/g0$a;

    invoke-virtual {v2}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/moloco/sdk/internal/q;

    invoke-virtual/range {v16 .. v16}, Lcom/moloco/sdk/internal/q;->b()I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v12, v0}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    move-result-object v0

    .line 10
    iget-boolean v3, v1, Lcom/moloco/sdk/internal/services/bidtoken/z;->f:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v15, v3}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    move-result-object v0

    .line 11
    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v13, v3}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    move-result-object v0

    .line 12
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v14, v3}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    move-result-object v0

    .line 13
    invoke-interface {v10, v0}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 14
    invoke-virtual {v4}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, v7}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    move-result-object v0

    .line 15
    invoke-virtual {v6}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/moloco/sdk/internal/q;

    invoke-virtual {v4}, Lcom/moloco/sdk/internal/q;->b()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    move-result-object v0

    .line 16
    iget-boolean v3, v1, Lcom/moloco/sdk/internal/services/bidtoken/z;->f:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v15, v3}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    move-result-object v0

    .line 17
    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v13, v3}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    move-result-object v0

    .line 18
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v14, v3}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    move-result-object v0

    .line 19
    invoke-interface {v10, v0}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 20
    sget-object v11, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 21
    iget-object v12, v1, Lcom/moloco/sdk/internal/services/bidtoken/z;->e:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bidtoken request failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/moloco/sdk/internal/q;

    invoke-virtual {v1}, Lcom/moloco/sdk/internal/q;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", details: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/moloco/sdk/internal/q;

    invoke-virtual {v1}, Lcom/moloco/sdk/internal/q;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0xc

    const/16 v17, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 23
    invoke-static/range {v11 .. v17}, Lcom/moloco/sdk/internal/MolocoLogger;->error$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    goto/16 :goto_3

    .line 24
    :cond_5
    instance-of v0, v2, Lcom/moloco/sdk/internal/g0$b;

    if-eqz v0, :cond_7

    .line 25
    new-instance v0, Lcom/moloco/sdk/acm/b;

    sget-object v9, Lcom/moloco/sdk/internal/client_metrics_data/a;->t:Lcom/moloco/sdk/internal/client_metrics_data/a;

    invoke-virtual {v9}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 26
    sget-object v9, Lcom/moloco/sdk/internal/client_metrics_data/c;->d:Lcom/moloco/sdk/internal/client_metrics_data/c;

    invoke-virtual {v9}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v7, "success"

    invoke-virtual {v0, v12, v7}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    move-result-object v0

    .line 27
    iget-boolean v12, v1, Lcom/moloco/sdk/internal/services/bidtoken/z;->f:Z

    invoke-static {v12}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v15, v12}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    move-result-object v0

    .line 28
    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v13, v12}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    move-result-object v0

    .line 29
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v14, v12}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    move-result-object v0

    .line 30
    invoke-interface {v10, v0}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 31
    invoke-virtual {v9}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0, v7}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    move-result-object v0

    .line 32
    iget-boolean v7, v1, Lcom/moloco/sdk/internal/services/bidtoken/z;->f:Z

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v15, v7}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    move-result-object v0

    .line 33
    invoke-static {v11}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v13, v7}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    move-result-object v0

    .line 34
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v14, v7}, Lcom/moloco/sdk/acm/e;->f(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/e;

    move-result-object v0

    .line 35
    invoke-interface {v10, v0}, Lcom/moloco/sdk/acm/recorder/a;->a(Lcom/moloco/sdk/acm/e;)V

    .line 36
    new-instance v0, Lcom/moloco/sdk/acm/b;

    sget-object v7, Lcom/moloco/sdk/internal/client_metrics_data/a;->u:Lcom/moloco/sdk/internal/client_metrics_data/a;

    invoke-virtual {v7}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v9}, Lcom/moloco/sdk/internal/client_metrics_data/c;->c()Ljava/lang/String;

    move-result-object v7

    const-string v8, "false"

    invoke-virtual {v0, v7, v8}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    move-result-object v0

    .line 38
    iget-boolean v7, v1, Lcom/moloco/sdk/internal/services/bidtoken/z;->f:Z

    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v15, v7}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    move-result-object v0

    .line 39
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v14, v5}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    move-result-object v0

    .line 40
    invoke-interface {v10, v0}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] bidtoken request success"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/moloco/sdk/internal/services/bidtoken/z;->h(Ljava/lang/String;)V

    .line 42
    iget-object v0, v1, Lcom/moloco/sdk/internal/services/bidtoken/z;->g:Lqt/a;

    new-instance v5, Lcom/moloco/sdk/internal/services/bidtoken/z$c;

    const/4 v6, 0x0

    invoke-direct {v5, v1, v2, v6}, Lcom/moloco/sdk/internal/services/bidtoken/z$c;-><init>(Lcom/moloco/sdk/internal/services/bidtoken/z;Lcom/moloco/sdk/internal/g0;Lrs/c;)V

    iput-object v1, v3, Lcom/moloco/sdk/internal/services/bidtoken/z$b;->h:Ljava/lang/Object;

    iput-object v2, v3, Lcom/moloco/sdk/internal/services/bidtoken/z$b;->i:Ljava/lang/Object;

    iput-object v6, v3, Lcom/moloco/sdk/internal/services/bidtoken/z$b;->j:Ljava/lang/Object;

    iput-object v6, v3, Lcom/moloco/sdk/internal/services/bidtoken/z$b;->k:Ljava/lang/Object;

    const/4 v6, 0x2

    iput v6, v3, Lcom/moloco/sdk/internal/services/bidtoken/z$b;->p:I

    invoke-static {v0, v5, v3}, Lcom/moloco/sdk/internal/utils/a;->a(Lqt/a;Lkotlin/jvm/functions/Function1;Lrs/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_6

    return-object v4

    :cond_6
    move-object v3, v1

    move-object v1, v2

    .line 43
    :goto_2
    check-cast v1, Lcom/moloco/sdk/internal/g0$b;

    invoke-virtual {v1}, Lcom/moloco/sdk/internal/g0$b;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/moloco/sdk/internal/services/bidtoken/n;

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, v3, Lcom/moloco/sdk/internal/services/bidtoken/z;->f:Z

    :goto_3
    return-object v9

    .line 45
    :cond_7
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw v0
.end method

.method public final d(Lcom/moloco/sdk/acm/recorder/a;)V
    .locals 7
    .param p1    # Lcom/moloco/sdk/acm/recorder/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
        otherwise = 0x2
    .end annotation

    .line 1
    const-string v0, "metricsRecorder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "[Thread: "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, "] Refreshing token async"

    .line 28
    .line 29
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p0, v0}, Lcom/moloco/sdk/internal/services/bidtoken/z;->h(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lcom/moloco/sdk/acm/b;

    .line 40
    .line 41
    sget-object v2, Lcom/moloco/sdk/internal/client_metrics_data/a;->w:Lcom/moloco/sdk/internal/client_metrics_data/a;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/moloco/sdk/internal/client_metrics_data/a;->c()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-direct {v0, v2}, Lcom/moloco/sdk/acm/b;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v2, p0, Lcom/moloco/sdk/internal/services/bidtoken/z;->h:Lkotlinx/coroutines/r;

    .line 51
    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    invoke-interface {v2}, Lkotlinx/coroutines/r;->isActive()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    goto :goto_0

    .line 59
    :cond_0
    const/4 v2, 0x0

    .line 60
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const-string v3, "async"

    .line 65
    .line 66
    invoke-virtual {v0, v3, v2}, Lcom/moloco/sdk/acm/b;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/moloco/sdk/acm/b;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-interface {p1, v0}, Lcom/moloco/sdk/acm/recorder/a;->b(Lcom/moloco/sdk/acm/b;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/moloco/sdk/internal/services/bidtoken/z;->h:Lkotlinx/coroutines/r;

    .line 74
    .line 75
    if-eqz v0, :cond_1

    .line 76
    .line 77
    invoke-interface {v0}, Lkotlinx/coroutines/r;->isActive()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    const/4 v2, 0x1

    .line 82
    if-ne v0, v2, :cond_1

    .line 83
    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string v0, "] Async refresh already in progress. Returning"

    .line 104
    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/internal/services/bidtoken/z;->h(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-void

    .line 116
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    const-string v1, "] Scheduling to fetch token from server"

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {p0, v0}, Lcom/moloco/sdk/internal/services/bidtoken/z;->h(Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/z;->c:Lgt/g0;

    .line 148
    .line 149
    new-instance v4, Lcom/moloco/sdk/internal/services/bidtoken/z$d;

    .line 150
    .line 151
    const/4 v0, 0x0

    .line 152
    invoke-direct {v4, p0, p1, v0}, Lcom/moloco/sdk/internal/services/bidtoken/z$d;-><init>(Lcom/moloco/sdk/internal/services/bidtoken/z;Lcom/moloco/sdk/acm/recorder/a;Lrs/c;)V

    .line 153
    .line 154
    .line 155
    const/4 v5, 0x3

    .line 156
    const/4 v6, 0x0

    .line 157
    const/4 v2, 0x0

    .line 158
    const/4 v3, 0x0

    .line 159
    invoke-static/range {v1 .. v6}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/z;->h:Lkotlinx/coroutines/r;

    .line 164
    .line 165
    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .locals 6

    .line 1
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/z;->e:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "[Thread: "

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v3, "] "

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const/4 v4, 0x4

    .line 39
    const/4 v5, 0x0

    .line 40
    const/4 v3, 0x0

    .line 41
    invoke-static/range {v0 .. v5}, Lcom/moloco/sdk/internal/MolocoLogger;->debugBuildLog$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public final h(Ljava/lang/String;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/moloco/sdk/internal/MolocoLogger;->INSTANCE:Lcom/moloco/sdk/internal/MolocoLogger;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/z;->e:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v3, "[Thread: "

    .line 11
    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v3, "][sbt] "

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const/16 v5, 0xc

    .line 39
    .line 40
    const/4 v6, 0x0

    .line 41
    const/4 v3, 0x0

    .line 42
    const/4 v4, 0x0

    .line 43
    invoke-static/range {v0 .. v6}, Lcom/moloco/sdk/internal/MolocoLogger;->info$default(Lcom/moloco/sdk/internal/MolocoLogger;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;ZILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
