.class public final Lcom/moloco/sdk/internal/services/bidtoken/z$c;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/moloco/sdk/internal/services/bidtoken/z;->c(Lcom/moloco/sdk/acm/recorder/a;Lcom/moloco/sdk/internal/services/bidtoken/n;ZZLrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.moloco.sdk.internal.services.bidtoken.ServerBidTokenServiceImpl$fetchServerBidToken$bidTokenComponents$1"
    f = "ServerBidTokenService.kt"
    l = {
        0xae
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public h:I

.field public final synthetic i:Lcom/moloco/sdk/internal/services/bidtoken/z;

.field public final synthetic j:Lcom/moloco/sdk/internal/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moloco/sdk/internal/g0<",
            "Lcom/moloco/sdk/internal/services/bidtoken/n;",
            "Lcom/moloco/sdk/internal/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/internal/services/bidtoken/z;Lcom/moloco/sdk/internal/g0;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/internal/services/bidtoken/z;",
            "Lcom/moloco/sdk/internal/g0<",
            "Lcom/moloco/sdk/internal/services/bidtoken/n;",
            "Lcom/moloco/sdk/internal/q;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/moloco/sdk/internal/services/bidtoken/z$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/z$c;->i:Lcom/moloco/sdk/internal/services/bidtoken/z;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/services/bidtoken/z$c;->j:Lcom/moloco/sdk/internal/g0;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Lrs/c;)Lrs/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/moloco/sdk/internal/services/bidtoken/z$c;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/z$c;->i:Lcom/moloco/sdk/internal/services/bidtoken/z;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/moloco/sdk/internal/services/bidtoken/z$c;->j:Lcom/moloco/sdk/internal/g0;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p1}, Lcom/moloco/sdk/internal/services/bidtoken/z$c;-><init>(Lcom/moloco/sdk/internal/services/bidtoken/z;Lcom/moloco/sdk/internal/g0;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public final i(Lrs/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/internal/services/bidtoken/z$c;->create(Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/moloco/sdk/internal/services/bidtoken/z$c;

    .line 6
    .line 7
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/moloco/sdk/internal/services/bidtoken/z$c;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lrs/c;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/moloco/sdk/internal/services/bidtoken/z$c;->i(Lrs/c;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
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
    iget v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/z$c;->h:I

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
    iget-object p1, p0, Lcom/moloco/sdk/internal/services/bidtoken/z$c;->i:Lcom/moloco/sdk/internal/services/bidtoken/z;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/moloco/sdk/internal/services/bidtoken/z;->b(Lcom/moloco/sdk/internal/services/bidtoken/z;)Lcom/moloco/sdk/internal/services/bidtoken/y;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object v1, p0, Lcom/moloco/sdk/internal/services/bidtoken/z$c;->j:Lcom/moloco/sdk/internal/g0;

    .line 34
    .line 35
    check-cast v1, Lcom/moloco/sdk/internal/g0$b;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/moloco/sdk/internal/g0$b;->a()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Lcom/moloco/sdk/internal/services/bidtoken/n;

    .line 42
    .line 43
    iput v2, p0, Lcom/moloco/sdk/internal/services/bidtoken/z$c;->h:I

    .line 44
    .line 45
    invoke-interface {p1, v1, p0}, Lcom/moloco/sdk/internal/services/bidtoken/y;->b(Lcom/moloco/sdk/internal/services/bidtoken/n;Lrs/c;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-ne p1, v0, :cond_2

    .line 50
    .line 51
    return-object v0

    .line 52
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 53
    .line 54
    return-object p1
.end method
