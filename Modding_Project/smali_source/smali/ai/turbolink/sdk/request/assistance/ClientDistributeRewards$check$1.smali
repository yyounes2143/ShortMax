.class public final Lai/turbolink/sdk/request/assistance/ClientDistributeRewards$check$1;
.super Ljava/lang/Object;
.source "ClientDistributeRewards.kt"

# interfaces
.implements Lai/turbolink/sdk/request/assistance/ClientDistributeRewards$TurboLinkClientRewardsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lai/turbolink/sdk/request/assistance/ClientDistributeRewards;->check()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p1, "msg"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onSuccess(Lai/turbolink/sdk/campaign/properties/ClientRewardsProperties;)V
    .locals 2
    .param p1    # Lai/turbolink/sdk/campaign/properties/ClientRewardsProperties;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "response"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lai/turbolink/sdk/campaign/properties/ClientRewardsProperties;->getRewards()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-lez v0, :cond_0

    .line 15
    .line 16
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 17
    .line 18
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getClientRewardsListener()Lai/turbolink/sdk/campaign/CampaignBuilder$ClientRewardsListener;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-interface {v0, v1, p1}, Lai/turbolink/sdk/campaign/CampaignBuilder$ClientRewardsListener;->onSuccess(Landroid/content/Context;Lai/turbolink/sdk/campaign/properties/ClientRewardsProperties;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
