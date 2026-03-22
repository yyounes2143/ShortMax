.class public final Lad-manager/b/g0;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public h:I

.field public final synthetic i:Landroid/app/Activity;

.field public final synthetic j:Lkotlin/jvm/functions/Function1;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;Lrs/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lad-manager/b/g0;->i:Landroid/app/Activity;

    .line 2
    .line 3
    iput-object p2, p0, Lad-manager/b/g0;->j:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2

    .line 1
    new-instance p1, Lad-manager/b/g0;

    .line 2
    .line 3
    iget-object v0, p0, Lad-manager/b/g0;->i:Landroid/app/Activity;

    .line 4
    .line 5
    iget-object v1, p0, Lad-manager/b/g0;->j:Lkotlin/jvm/functions/Function1;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lad-manager/b/g0;-><init>(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lgt/g0;

    .line 2
    .line 3
    check-cast p2, Lrs/c;

    .line 4
    .line 5
    new-instance p1, Lad-manager/b/g0;

    .line 6
    .line 7
    iget-object v0, p0, Lad-manager/b/g0;->i:Landroid/app/Activity;

    .line 8
    .line 9
    iget-object v1, p0, Lad-manager/b/g0;->j:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    invoke-direct {p1, v0, v1, p2}, Lad-manager/b/g0;-><init>(Landroid/app/Activity;Lkotlin/jvm/functions/Function1;Lrs/c;)V

    .line 12
    .line 13
    .line 14
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    invoke-virtual {p1, p2}, Lad-manager/b/g0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lad-manager/b/g0;->h:I

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
    sget-object p1, Lca/i;->a:Lca/i;

    .line 28
    .line 29
    iget-object v1, p0, Lad-manager/b/g0;->i:Landroid/app/Activity;

    .line 30
    .line 31
    iput v2, p0, Lad-manager/b/g0;->h:I

    .line 32
    .line 33
    invoke-virtual {p1, v1, p0}, Lca/i;->z(Landroid/app/Activity;Lrs/c;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-ne p1, v0, :cond_2

    .line 38
    .line 39
    return-object v0

    .line 40
    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    .line 41
    .line 42
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    iget-object v0, p0, Lad-manager/b/g0;->j:Lkotlin/jvm/functions/Function1;

    .line 47
    .line 48
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 56
    .line 57
    return-object p1
.end method
