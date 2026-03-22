.class final Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel$queryWalletRecords$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "WalletViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;->G(III)Lkotlinx/coroutines/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.viewmodel.wallet.WalletViewModel$queryWalletRecords$1"
    f = "WalletViewModel.kt"
    l = {
        0x44
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:I

.field final synthetic j:I

.field final synthetic k:I

.field final synthetic l:Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;


# direct methods
.method constructor <init>(IIILcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel$queryWalletRecords$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel$queryWalletRecords$1;->i:I

    .line 2
    .line 3
    iput p2, p0, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel$queryWalletRecords$1;->j:I

    .line 4
    .line 5
    iput p3, p0, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel$queryWalletRecords$1;->k:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel$queryWalletRecords$1;->l:Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel$queryWalletRecords$1;

    .line 2
    .line 3
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel$queryWalletRecords$1;->i:I

    .line 4
    .line 5
    iget v2, p0, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel$queryWalletRecords$1;->j:I

    .line 6
    .line 7
    iget v3, p0, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel$queryWalletRecords$1;->k:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel$queryWalletRecords$1;->l:Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel$queryWalletRecords$1;-><init>(IIILcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;Lrs/c;)V

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel$queryWalletRecords$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel$queryWalletRecords$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel$queryWalletRecords$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel$queryWalletRecords$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

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
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel$queryWalletRecords$1;->h:I

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
    check-cast p1, Lkotlin/Result;

    .line 16
    .line 17
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sget-object p1, Lcom/startshorts/androidplayer/repo/wallet/WalletRepo;->a:Lcom/startshorts/androidplayer/repo/wallet/WalletRepo;

    .line 34
    .line 35
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel$queryWalletRecords$1;->i:I

    .line 36
    .line 37
    iget v3, p0, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel$queryWalletRecords$1;->j:I

    .line 38
    .line 39
    iget v4, p0, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel$queryWalletRecords$1;->k:I

    .line 40
    .line 41
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel$queryWalletRecords$1;->h:I

    .line 42
    .line 43
    invoke-virtual {p1, v1, v3, v4, p0}, Lcom/startshorts/androidplayer/repo/wallet/WalletRepo;->i(IIILrs/c;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    if-ne p1, v0, :cond_2

    .line 48
    .line 49
    return-object v0

    .line 50
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel$queryWalletRecords$1;->l:Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;

    .line 51
    .line 52
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    move-object v1, p1

    .line 59
    check-cast v1, Ljava/util/List;

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;->B()Landroidx/lifecycle/MutableLiveData;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/wallet/b$c;

    .line 66
    .line 67
    invoke-direct {v2, v1}, Lcom/startshorts/androidplayer/viewmodel/wallet/b$c;-><init>(Ljava/util/List;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v0, v2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel$queryWalletRecords$1;->l:Lcom/startshorts/androidplayer/viewmodel/wallet/WalletViewModel;

    .line 74
    .line 75
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-eqz p1, :cond_4

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->z(Ljava/lang/Throwable;)V

    .line 82
    .line 83
    .line 84
    :cond_4
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 85
    .line 86
    return-object p1
.end method
