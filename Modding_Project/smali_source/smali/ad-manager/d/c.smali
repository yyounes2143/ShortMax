.class public final Lad-manager/d/c;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic h:Le/t;


# direct methods
.method public constructor <init>(Le/t;Lrs/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lad-manager/d/c;->h:Le/t;

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
    new-instance p1, Lad-manager/d/c;

    .line 2
    .line 3
    iget-object v0, p0, Lad-manager/d/c;->h:Le/t;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lad-manager/d/c;-><init>(Le/t;Lrs/c;)V

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
    new-instance p1, Lad-manager/d/c;

    .line 6
    .line 7
    iget-object v0, p0, Lad-manager/d/c;->h:Le/t;

    .line 8
    .line 9
    invoke-direct {p1, v0, p2}, Lad-manager/d/c;-><init>(Le/t;Lrs/c;)V

    .line 10
    .line 11
    .line 12
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 13
    .line 14
    invoke-virtual {p1, p2}, Lad-manager/d/c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iget-object p1, p0, Lad-manager/d/c;->h:Le/t;

    .line 8
    .line 9
    sget v0, Le/t;->q:I

    .line 10
    .line 11
    invoke-virtual {p1}, Le/t;->a0()V

    .line 12
    .line 13
    .line 14
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p1
.end method
