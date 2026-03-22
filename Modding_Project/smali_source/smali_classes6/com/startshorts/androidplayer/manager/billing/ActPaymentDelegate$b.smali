.class public final Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$b;
.super Lle/g;
.source "ActPaymentDelegate.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->s(Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nActPaymentDelegate.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ActPaymentDelegate.kt\ncom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$connectBillingClient$1\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,573:1\n1863#2:574\n1863#2,2:575\n1864#2:577\n*S KotlinDebug\n*F\n+ 1 ActPaymentDelegate.kt\ncom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$connectBillingClient$1\n*L\n323#1:574\n324#1:575,2\n323#1:577\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;

.field final synthetic b:Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$b;->a:Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$b;->b:Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Lle/g;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lzc/a;)V
    .locals 4

    .line 1
    const-string v0, "error"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

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
    const-string v2, "ActPaymentDelegate"

    .line 26
    .line 27
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$b;->a:Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->l(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1}, Lzc/a;->c()Lcom/shorttv/aar/billing/bean/ErrorType;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    sget-object v1, Lcom/shorttv/aar/billing/bean/ErrorType;->CONNECT_FAILED:Lcom/shorttv/aar/billing/bean/ErrorType;

    .line 40
    .line 41
    if-ne v0, v1, :cond_1

    .line 42
    .line 43
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$b;->a:Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$b;->b:Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 46
    .line 47
    invoke-virtual {p1}, Lzc/a;->b()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    if-nez v2, :cond_0

    .line 52
    .line 53
    const-string v2, "Unknown Error"

    .line 54
    .line 55
    :cond_0
    const/4 v3, 0x0

    .line 56
    invoke-static {v0, v1, v3, v2}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->k(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Ljava/util/List;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {p1}, Lzc/a;->c()Lcom/shorttv/aar/billing/bean/ErrorType;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    sget-object v1, Lcom/shorttv/aar/billing/bean/ErrorType;->PURCHASE_FAILED:Lcom/shorttv/aar/billing/bean/ErrorType;

    .line 65
    .line 66
    if-ne v0, v1, :cond_2

    .line 67
    .line 68
    invoke-virtual {p1}, Lzc/a;->a()Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    sget-object v1, Lcom/shorttv/aar/billing/bean/ErrorCode;->USER_CANCELED:Lcom/shorttv/aar/billing/bean/ErrorCode;

    .line 73
    .line 74
    if-ne v0, v1, :cond_2

    .line 75
    .line 76
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$b;->b:Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 77
    .line 78
    sget v1, Lcom/startshorts/androidplayer/R$string;->common_user_canceled:I

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->x(I)V

    .line 81
    .line 82
    .line 83
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$b;->a:Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;

    .line 84
    .line 85
    invoke-static {v0}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->h(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;)Lkotlin/jvm/functions/Function2;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-eqz v0, :cond_4

    .line 90
    .line 91
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 92
    .line 93
    invoke-virtual {p1}, Lzc/a;->b()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    if-nez p1, :cond_3

    .line 98
    .line 99
    const-string p1, ""

    .line 100
    .line 101
    :cond_3
    invoke-interface {v0, v1, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    :cond_4
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "gpSkuId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "onExchangeCoinsFailed -> gpSkuId("

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, ") errMsg("

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const/16 p1, 0x29

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v1, "ActPaymentDelegate"

    .line 39
    .line 40
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$b;->a:Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->h(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;)Lkotlin/jvm/functions/Function2;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 52
    .line 53
    if-nez p2, :cond_0

    .line 54
    .line 55
    const-string p2, ""

    .line 56
    .line 57
    :cond_0
    invoke-interface {p1, v0, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string p4, "gpSkuId"

    .line 2
    .line 3
    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p4, "priceInfo"

    .line 7
    .line 8
    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object p4, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "onExchangeCoinsSuccess -> gpOrderId("

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ") gpSkuId("

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p2, ") priceInfo("

    .line 35
    .line 36
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const/16 p2, 0x29

    .line 43
    .line 44
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    const-string v0, "ActPaymentDelegate"

    .line 52
    .line 53
    invoke-virtual {p4, v0, p2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$b;->a:Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;

    .line 57
    .line 58
    invoke-static {p2, p1, p3}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->m(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$b;->a:Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->h(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;)Lkotlin/jvm/functions/Function2;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_0

    .line 68
    .line 69
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 70
    .line 71
    const-string p3, ""

    .line 72
    .line 73
    invoke-interface {p1, p2, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    :cond_0
    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "gpSkuId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "onExchangePremiumFailed -> gpSkuId("

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, ") errMsg("

    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const/16 p1, 0x29

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v1, "ActPaymentDelegate"

    .line 39
    .line 40
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$b;->a:Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;

    .line 44
    .line 45
    invoke-static {p1}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->h(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;)Lkotlin/jvm/functions/Function2;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 52
    .line 53
    if-nez p2, :cond_0

    .line 54
    .line 55
    const-string p2, ""

    .line 56
    .line 57
    :cond_0
    invoke-interface {p1, v0, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    :cond_1
    return-void
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V
    .locals 3

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
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "onExchangePremiumSuccess -> gpOrderId("

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, ") gpSkuId("

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string p2, ") priceInfo("

    .line 35
    .line 36
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const/16 p2, 0x29

    .line 43
    .line 44
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    const-string v1, "ActPaymentDelegate"

    .line 52
    .line 53
    invoke-virtual {v0, v1, p2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object p2, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$b;->a:Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;

    .line 57
    .line 58
    invoke-static {p2, p1, p3}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->n(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$b;->a:Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->h(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;)Lkotlin/jvm/functions/Function2;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_0

    .line 68
    .line 69
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 70
    .line 71
    const-string p3, ""

    .line 72
    .line 73
    invoke-interface {p1, p2, p3}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    :cond_0
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
    move-object v0, p1

    .line 2
    check-cast v0, Ljava/util/Collection;

    .line 3
    .line 4
    if-eqz v0, :cond_3

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_1

    .line 13
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    check-cast p1, Ljava/lang/Iterable;

    .line 19
    .line 20
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_2

    .line 29
    .line 30
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lzc/h;

    .line 35
    .line 36
    invoke-virtual {v1}, Lzc/h;->a()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    .line 42
    check-cast v1, Ljava/lang/Iterable;

    .line 43
    .line 44
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_2
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$b;->a:Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;

    .line 63
    .line 64
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$b;->b:Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 65
    .line 66
    const-string v2, ""

    .line 67
    .line 68
    invoke-static {p1, v1, v0, v2}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->k(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Ljava/util/List;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$b;->a:Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;

    .line 73
    .line 74
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$b;->b:Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 75
    .line 76
    const/4 v1, 0x0

    .line 77
    const-string v2, "No products find"

    .line 78
    .line 79
    invoke-static {p1, v0, v1, v2}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->k(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Ljava/util/List;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :goto_2
    return-void
.end method

.method public g()V
    .locals 3

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 2
    .line 3
    const-string v1, "ActPaymentDelegate"

    .line 4
    .line 5
    const-string v2, "onSetupFinished"

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$b;->a:Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->r(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;Z)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$b;->a:Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->q(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;Z)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$b;->a:Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->i(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$b;->a:Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;

    .line 31
    .line 32
    invoke-static {v0}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->j(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;)Ljava/util/List;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    iget-object v1, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$b;->a:Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;

    .line 39
    .line 40
    invoke-static {v1, v0}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->p(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;Ljava/util/List;)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate$b;->a:Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;

    .line 45
    .line 46
    invoke-static {v0}, Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;->o(Lcom/startshorts/androidplayer/manager/billing/ActPaymentDelegate;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    return-void
.end method
