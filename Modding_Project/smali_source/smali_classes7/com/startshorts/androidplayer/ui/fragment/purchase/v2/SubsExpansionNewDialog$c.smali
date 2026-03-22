.class public final Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$c;
.super Ljava/lang/Object;
.source "SubsExpansionNewDialog.kt"

# interfaces
.implements Lfk/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->e0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$c;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lfk/e$a$a;->a(Lfk/e$a;Ljava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "scene"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$c;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;

    .line 7
    .line 8
    invoke-static {v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->T(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public c(Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;)V
    .locals 5

    .line 1
    const-string v0, "payResultInfo"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lfk/e$a$a;->c(Lfk/e$a;Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;->getOrderStatus()Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x2

    .line 14
    const/4 v2, 0x0

    .line 15
    const/4 v3, 0x0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const/4 v4, 0x1

    .line 24
    if-ne v0, v4, :cond_5

    .line 25
    .line 26
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$c;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;

    .line 27
    .line 28
    sget v4, Lcom/startshorts/androidplayer/R$string;->subscription_detail_activity_subs_success:I

    .line 29
    .line 30
    invoke-static {v0, v4, v2, v1, v3}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->A(Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;IIILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sget-object v0, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 34
    .line 35
    const/4 v1, 0x3

    .line 36
    invoke-static {v0, v2, v3, v1, v3}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->c1(Lcom/startshorts/androidplayer/repo/account/AccountRepo;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    sget-object v0, Lbf/e;->a:Lbf/e;

    .line 40
    .line 41
    invoke-virtual {v0}, Lbf/e;->i()Lbf/e$a;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0}, Lbf/e$a;->i()V

    .line 46
    .line 47
    .line 48
    sget-object v0, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->a:Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;->getCurrencyCode()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    const-string v2, ""

    .line 55
    .line 56
    if-nez v1, :cond_1

    .line 57
    .line 58
    move-object v1, v2

    .line 59
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;->getPrice()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    if-nez v3, :cond_2

    .line 64
    .line 65
    move-object v3, v2

    .line 66
    :cond_2
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/payment/TTPInfoResult;->getOrderNo()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-nez p1, :cond_3

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    move-object v2, p1

    .line 74
    :goto_0
    invoke-virtual {v0, v1, v3, v2}, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$c;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;

    .line 78
    .line 79
    const-string v0, "success"

    .line 80
    .line 81
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->R(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$c;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;

    .line 85
    .line 86
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->Z()Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$b;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    if-eqz p1, :cond_4

    .line 91
    .line 92
    invoke-interface {p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$b;->a()V

    .line 93
    .line 94
    .line 95
    :cond_4
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$c;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;

    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->dismiss()V

    .line 98
    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$c;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;

    .line 102
    .line 103
    sget v0, Lcom/startshorts/androidplayer/R$string;->payment_failure:I

    .line 104
    .line 105
    invoke-static {p1, v0, v2, v1, v3}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->A(Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;IIILjava/lang/Object;)V

    .line 106
    .line 107
    .line 108
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$c;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;

    .line 109
    .line 110
    const-string v0, "failure"

    .line 111
    .line 112
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->R(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :goto_2
    return-void
.end method

.method public d(ILjava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V
    .locals 1

    .line 1
    const-string v0, "gpSkuId"

    .line 2
    .line 3
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "priceInfo"

    .line 7
    .line 8
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$c;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;

    .line 12
    .line 13
    invoke-static {v0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->N(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;ILjava/lang/String;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public e(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$c;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->a0()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$c;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;

    .line 10
    .line 11
    invoke-static {v0, p1}, Ljk/u;->k(Lcom/startshorts/androidplayer/bean/subs/SubsSku;Ljava/util/List;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->L(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->O(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v1, v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->Q(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    invoke-static {v1, v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->P(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 28
    .line 29
    .line 30
    :cond_1
    return-void
.end method

.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog$c;->a:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;->S(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SubsExpansionNewDialog;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
