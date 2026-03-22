.class public final Lad-manager/d/x;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public h:I

.field public final synthetic i:Le/k;

.field public final synthetic j:Lca/e;

.field public final synthetic k:Lca/f;


# direct methods
.method public constructor <init>(Le/k;Lca/e;Lca/f;Lrs/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lad-manager/d/x;->i:Le/k;

    .line 2
    .line 3
    iput-object p2, p0, Lad-manager/d/x;->j:Lca/e;

    .line 4
    .line 5
    iput-object p3, p0, Lad-manager/d/x;->k:Lca/f;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3

    .line 1
    new-instance p1, Lad-manager/d/x;

    .line 2
    .line 3
    iget-object v0, p0, Lad-manager/d/x;->i:Le/k;

    .line 4
    .line 5
    iget-object v1, p0, Lad-manager/d/x;->j:Lca/e;

    .line 6
    .line 7
    iget-object v2, p0, Lad-manager/d/x;->k:Lca/f;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lad-manager/d/x;-><init>(Le/k;Lca/e;Lca/f;Lrs/c;)V

    .line 10
    .line 11
    .line 12
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
    invoke-virtual {p0, p1, p2}, Lad-manager/d/x;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lad-manager/d/x;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lad-manager/d/x;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lad-manager/d/x;->h:I

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
    goto :goto_0

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
    iget-object p1, p0, Lad-manager/d/x;->i:Le/k;

    .line 28
    .line 29
    iget-object v1, p0, Lad-manager/d/x;->j:Lca/e;

    .line 30
    .line 31
    iget-object v3, p0, Lad-manager/d/x;->k:Lca/f;

    .line 32
    .line 33
    invoke-virtual {v3}, Lca/f;->j()J

    .line 34
    .line 35
    .line 36
    move-result-wide v3

    .line 37
    iput v2, p0, Lad-manager/d/x;->h:I

    .line 38
    .line 39
    invoke-static {p1, v1, v3, v4, p0}, Le/k;->f(Le/k;Lca/e;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    if-ne p1, v0, :cond_2

    .line 44
    .line 45
    return-object v0

    .line 46
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 47
    .line 48
    return-object p1
.end method
