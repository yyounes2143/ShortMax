.class public final Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog$c;
.super Lyd/d;
.source "SkuExpansionDialog.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->e0(Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;

.field final synthetic f:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog$c;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog$c;->f:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    const/4 p2, 0x0

    .line 7
    const-wide/16 v0, 0x0

    .line 8
    .line 9
    invoke-direct {p0, v0, v1, p1, p2}, Lyd/d;-><init>(JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 12

    .line 1
    const-string v0, "v"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog$c;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->R(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;)Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance v11, Lcom/startshorts/androidplayer/viewmodel/billing/a$e;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog$c;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;

    .line 15
    .line 16
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->S(Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;)Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/viewmodel/purchase/PurchaseViewModel;->N()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog$c;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseDialogFragment;->h()Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog$c;->f:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 31
    .line 32
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog$c;->e:Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/fragment/purchase/v2/SkuExpansionDialog;->X()Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    const/16 v9, 0xf0

    .line 39
    .line 40
    const/4 v10, 0x0

    .line 41
    const/4 v5, 0x0

    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x0

    .line 44
    const/4 v8, 0x0

    .line 45
    move-object v0, v11

    .line 46
    invoke-direct/range {v0 .. v10}, Lcom/startshorts/androidplayer/viewmodel/billing/a$e;-><init>(Ljava/lang/String;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, v11}, Lcom/startshorts/androidplayer/viewmodel/billing/BillingViewModel;->W(Lcom/startshorts/androidplayer/viewmodel/billing/a;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method
