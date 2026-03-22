.class public final Lad-manager/e/u;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public h:I

.field public final synthetic i:Lca/f;

.field public final synthetic j:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic k:Lkotlinx/coroutines/r;

.field public final synthetic l:Lkotlin/jvm/internal/Ref$ObjectRef;


# direct methods
.method public constructor <init>(Lca/f;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/r;Lkotlin/jvm/internal/Ref$ObjectRef;Lrs/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lad-manager/e/u;->i:Lca/f;

    .line 2
    .line 3
    iput-object p2, p0, Lad-manager/e/u;->j:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iput-object p3, p0, Lad-manager/e/u;->k:Lkotlinx/coroutines/r;

    .line 6
    .line 7
    iput-object p4, p0, Lad-manager/e/u;->l:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 6

    .line 1
    new-instance p1, Lad-manager/e/u;

    .line 2
    .line 3
    iget-object v1, p0, Lad-manager/e/u;->i:Lca/f;

    .line 4
    .line 5
    iget-object v2, p0, Lad-manager/e/u;->j:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    iget-object v3, p0, Lad-manager/e/u;->k:Lkotlinx/coroutines/r;

    .line 8
    .line 9
    iget-object v4, p0, Lad-manager/e/u;->l:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lad-manager/e/u;-><init>(Lca/f;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/r;Lkotlin/jvm/internal/Ref$ObjectRef;Lrs/c;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lgt/g0;

    .line 2
    .line 3
    check-cast p2, Lrs/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lad-manager/e/u;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lad-manager/e/u;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lad-manager/e/u;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lad-manager/e/u;->h:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 17
    .line 18
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 19
    .line 20
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    throw p1

    .line 24
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    new-instance p1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lad-manager/e/u;->i:Lca/f;

    .line 33
    .line 34
    invoke-virtual {v1}, Lca/f;->f()Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-eqz v3, :cond_2

    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    check-cast v3, Lca/e;

    .line 53
    .line 54
    invoke-virtual {v3}, Lca/e;->e()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    sget-object v1, Lda/f;->i:Ld/b;

    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    invoke-static {}, Lda/f;->d()Lkt/f;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    new-instance v3, Lf/k;

    .line 72
    .line 73
    invoke-direct {v3, v1, p1}, Lf/k;-><init>(Lkt/f;Ljava/util/ArrayList;)V

    .line 74
    .line 75
    .line 76
    new-instance p1, Lad-manager/e/q;

    .line 77
    .line 78
    iget-object v1, p0, Lad-manager/e/u;->j:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 79
    .line 80
    iget-object v4, p0, Lad-manager/e/u;->k:Lkotlinx/coroutines/r;

    .line 81
    .line 82
    iget-object v5, p0, Lad-manager/e/u;->l:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 83
    .line 84
    const/4 v6, 0x0

    .line 85
    invoke-direct {p1, v1, v4, v5, v6}, Lad-manager/e/q;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlinx/coroutines/r;Lkotlin/jvm/internal/Ref$ObjectRef;Lrs/c;)V

    .line 86
    .line 87
    .line 88
    iput v2, p0, Lad-manager/e/u;->h:I

    .line 89
    .line 90
    invoke-static {v3, p1, p0}, Lkotlinx/coroutines/flow/c;->m(Lkt/b;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    if-ne p1, v0, :cond_3

    .line 95
    .line 96
    return-object v0

    .line 97
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 98
    .line 99
    return-object p1
.end method
