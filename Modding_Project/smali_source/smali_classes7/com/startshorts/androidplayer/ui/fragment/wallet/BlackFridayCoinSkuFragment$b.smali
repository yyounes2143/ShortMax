.class public final Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment$b;
.super Ljava/lang/Object;
.source "BlackFridayCoinSkuFragment.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->O0()Lcom/startshorts/androidplayer/adapter/purchase/BlackFridayCoinSkuAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/startshorts/androidplayer/adapter/base/BaseAdapter$b<",
        "Lcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    check-cast p2, Lcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment$b;->b(Landroid/view/View;Lcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Landroid/view/View;Lcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;I)V
    .locals 11

    .line 1
    const-string p3, "v"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "d"

    .line 7
    .line 8
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-lez p1, :cond_0

    .line 20
    .line 21
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;->isExpiration()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-nez p1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/BlackFridayCoinSku;->isConsume()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-nez p1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->K0(Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    new-instance p3, Lcom/startshorts/androidplayer/viewmodel/billing/a$e;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;->L0(Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;)Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->N()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/wallet/BlackFridayCoinSkuFragment;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->j()Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    const/16 v9, 0xf8

    .line 58
    .line 59
    const/4 v10, 0x0

    .line 60
    const/4 v4, 0x0

    .line 61
    const/4 v5, 0x0

    .line 62
    const/4 v6, 0x0

    .line 63
    const/4 v7, 0x0

    .line 64
    const/4 v8, 0x0

    .line 65
    move-object v0, p3

    .line 66
    move-object v3, p2

    .line 67
    invoke-direct/range {v0 .. v10}, Lcom/startshorts/androidplayer/viewmodel/billing/a$e;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, p3}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    return-void
.end method
