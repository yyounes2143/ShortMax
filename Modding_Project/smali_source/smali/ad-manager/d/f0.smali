.class public final Lad-manager/d/f0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public h:I

.field public final synthetic i:Lca/f;


# direct methods
.method public constructor <init>(Lca/f;Lrs/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lad-manager/d/f0;->i:Lca/f;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 1

    .line 1
    new-instance p1, Lad-manager/d/f0;

    .line 2
    .line 3
    iget-object v0, p0, Lad-manager/d/f0;->i:Lca/f;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lad-manager/d/f0;-><init>(Lca/f;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Lgt/g0;

    .line 2
    .line 3
    check-cast p2, Lrs/c;

    .line 4
    .line 5
    new-instance p1, Lad-manager/d/f0;

    .line 6
    .line 7
    iget-object v0, p0, Lad-manager/d/f0;->i:Lca/f;

    .line 8
    .line 9
    invoke-direct {p1, v0, p2}, Lad-manager/d/f0;-><init>(Lca/f;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Lad-manager/d/f0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
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
    iget v1, p0, Lad-manager/d/f0;->h:I

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
    iget-object p1, p0, Lad-manager/d/f0;->i:Lca/f;

    .line 28
    .line 29
    invoke-virtual {p1}, Lca/f;->j()J

    .line 30
    .line 31
    .line 32
    move-result-wide v3

    .line 33
    iput v2, p0, Lad-manager/d/f0;->h:I

    .line 34
    .line 35
    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->b(JLrs/c;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-ne p1, v0, :cond_2

    .line 40
    .line 41
    return-object v0

    .line 42
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 43
    .line 44
    return-object p1
.end method
