.class public final Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$b;
.super Lle/g;
.source "BillingViewModel.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBillingViewModel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BillingViewModel.kt\ncom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$connect$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,602:1\n1863#2:603\n1863#2,2:604\n1864#2:606\n*S KotlinDebug\n*F\n+ 1 BillingViewModel.kt\ncom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$connect$1\n*L\n312#1:603\n313#1:604,2\n312#1:606\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$b;->a:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    invoke-direct {p0}, Lle/g;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic k(Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$b;->l(Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final l(Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;)Lkotlin/Unit;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/billing/b$k;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$k;-><init>(Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p0, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    sget-object p1, Lcom/startshorts/androidplayer/viewmodel/billing/b$f;->a:Lcom/startshorts/androidplayer/viewmodel/billing/b$f;

    .line 21
    .line 22
    invoke-static {p0, p1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0
.end method


# virtual methods
.method public a(Lzc/a;)V
    .locals 3

    .line 1
    const-string v0, "error"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$b;->a:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "onError -> "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->f(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lzc/a;->c()Lcom/shorttv/aar/billing/bean/ErrorType;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sget-object v1, Lcom/shorttv/aar/billing/bean/ErrorType;->CONNECT_FAILED:Lcom/shorttv/aar/billing/bean/ErrorType;

    .line 33
    .line 34
    if-ne v0, v1, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$b;->a:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/billing/b$m;

    .line 43
    .line 44
    const/4 v1, 0x0

    .line 45
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$m;-><init>(Ljava/util/List;)V

    .line 46
    .line 47
    .line 48
    invoke-static {p1, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    invoke-virtual {p1}, Lzc/a;->c()Lcom/shorttv/aar/billing/bean/ErrorType;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    sget-object v1, Lcom/shorttv/aar/billing/bean/ErrorType;->PURCHASE_FAILED:Lcom/shorttv/aar/billing/bean/ErrorType;

    .line 57
    .line 58
    if-ne v0, v1, :cond_2

    .line 59
    .line 60
    invoke-virtual {p1}, Lzc/a;->a()Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sget-object v1, Lcom/shorttv/aar/billing/bean/ErrorCode;->USER_CANCELED:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 65
    .line 66
    if-ne v0, v1, :cond_1

    .line 67
    .line 68
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$b;->a:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    sget-object v0, Lcom/startshorts/androidplayer/viewmodel/billing/b$u;->a:Lcom/startshorts/androidplayer/viewmodel/billing/b$u;

    .line 75
    .line 76
    invoke-static {p1, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    invoke-virtual {p1}, Lzc/a;->a()Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    sget-object v0, Lcom/shorttv/aar/billing/bean/ErrorCode;->ITEM_ALREADY_OWNED:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 85
    .line 86
    if-ne p1, v0, :cond_3

    .line 87
    .line 88
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 89
    .line 90
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$b;->a:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 91
    .line 92
    new-instance v1, Lrk/f;

    .line 93
    .line 94
    invoke-direct {v1, v0}, Lrk/f;-><init>(Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->X0(Lkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/r;

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$b;->a:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    sget-object v0, Lcom/startshorts/androidplayer/viewmodel/billing/b$l;->a:Lcom/startshorts/androidplayer/viewmodel/billing/b$l;

    .line 108
    .line 109
    invoke-static {p1, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    :cond_3
    :goto_0
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p2, "gpSkuId"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$b;->a:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget-object p2, Lcom/startshorts/androidplayer/viewmodel/billing/b$b;->a:Lcom/startshorts/androidplayer/viewmodel/billing/b$b;

    .line 13
    .line 14
    invoke-static {p1, p2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "gpSkuId"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "priceInfo"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$b;->a:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/b$c;

    .line 18
    .line 19
    invoke-direct {v1, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/viewmodel/billing/b$c;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    const/4 p3, 0x3

    .line 29
    const/4 p4, 0x0

    .line 30
    invoke-static {p1, p4, p2, p3, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->c1(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p2, "gpSkuId"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$b;->a:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    sget-object p2, Lcom/startshorts/androidplayer/viewmodel/billing/b$d;->a:Lcom/startshorts/androidplayer/viewmodel/billing/b$d;

    .line 13
    .line 14
    invoke-static {p1, p2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V
    .locals 2

    .line 1
    const-string v0, "gpSkuId"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "priceInfo"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$b;->a:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/b$e;

    .line 18
    .line 19
    invoke-direct {v1, p1, p2, p3}, Lcom/startshorts/androidplayer/viewmodel/billing/b$e;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    const/4 p3, 0x3

    .line 29
    const/4 v0, 0x0

    .line 30
    invoke-static {p1, v0, p2, p3, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->c1(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sget-object p1, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->a:Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;

    .line 34
    .line 35
    const-string p2, "topup"

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->f(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public f(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lzc/h;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$b;->a:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onProductDetails -> list("

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const/16 v2, 0x29

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    move-object v0, p1

    .line 33
    check-cast v0, Ljava/util/Collection;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    check-cast p1, Ljava/lang/Iterable;

    .line 50
    .line 51
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_2

    .line 60
    .line 61
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    check-cast v1, Lzc/h;

    .line 66
    .line 67
    invoke-virtual {v1}, Lzc/h;->a()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    if-eqz v1, :cond_1

    .line 72
    .line 73
    check-cast v1, Ljava/lang/Iterable;

    .line 74
    .line 75
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_1

    .line 84
    .line 85
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$b;->a:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/b$m;

    .line 100
    .line 101
    invoke-direct {v1, v0}, Lcom/startshorts/androidplayer/viewmodel/billing/b$m;-><init>(Ljava/util/List;)V

    .line 102
    .line 103
    .line 104
    invoke-static {p1, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$b;->a:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/billing/b$m;

    .line 115
    .line 116
    const/4 v1, 0x0

    .line 117
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$m;-><init>(Ljava/util/List;)V

    .line 118
    .line 119
    .line 120
    invoke-static {p1, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 121
    .line 122
    .line 123
    :goto_2
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$b;->a:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->J(Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$b;->a:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    sget-object v1, Lcom/startshorts/androidplayer/viewmodel/billing/b$q;->a:Lcom/startshorts/androidplayer/viewmodel/billing/b$q;

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public h(Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;)V
    .locals 2

    .line 1
    const-string v0, "rechargeUserInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$b;->a:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/b$k;

    .line 13
    .line 14
    invoke-direct {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/billing/b$k;-><init>(Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public i(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    const-string p2, "gpSkuId"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$b;->a:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance p2, Lcom/startshorts/androidplayer/viewmodel/billing/b$s;

    .line 13
    .line 14
    invoke-direct {p2, p3}, Lcom/startshorts/androidplayer/viewmodel/billing/b$s;-><init>(I)V

    .line 15
    .line 16
    .line 17
    invoke-static {p1, p2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public j(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;I)V
    .locals 2

    .line 1
    const-string v0, "gpSkuId"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "priceInfo"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel$b;->a:Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->Q()Landroidx/lifecycle/MutableLiveData;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/billing/b$t;

    .line 18
    .line 19
    invoke-direct {v1, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/viewmodel/billing/b$t;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;I)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    const/4 p3, 0x3

    .line 29
    const/4 p4, 0x0

    .line 30
    invoke-static {p1, p4, p2, p3, p2}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->c1(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method
