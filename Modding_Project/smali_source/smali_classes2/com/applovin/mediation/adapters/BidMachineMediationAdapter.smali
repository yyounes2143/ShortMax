.class public Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;
.super Lcom/applovin/mediation/adapters/MediationAdapterBase;
.source "BidMachineMediationAdapter.java"

# interfaces
.implements Lcom/applovin/mediation/adapter/MaxSignalProvider;
.implements Lcom/applovin/mediation/adapter/MaxInterstitialAdapter;
.implements Lcom/applovin/mediation/adapter/MaxRewardedAdapter;
.implements Lcom/applovin/mediation/adapter/MaxAdViewAdapter;
.implements Lcom/applovin/mediation/adapter/MaxNativeAdAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$InterstitialAdListener;,
        Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$RewardedAdListener;,
        Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$AdViewListener;,
        Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener;,
        Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$MaxBidMachineNativeAd;
    }
.end annotation


# static fields
.field private static final DEFAULT_IMAGE_TASK_TIMEOUT_SECONDS:I = 0xa

.field private static final initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static status:Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;


# instance fields
.field private adView:Lio/bidmachine/banner/BannerView;

.field private interstitialAd:Lxm/a;

.field private nativeAd:Lmp/b;

.field private rewardedAd:Lvq/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/applovin/sdk/AppLovinSdk;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/applovin/mediation/adapters/MediationAdapterBase;-><init>(Lcom/applovin/sdk/AppLovinSdk;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$000()Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->status:Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$002(Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;)Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;
    .locals 0

    .line 1
    sput-object p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->status:Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;Llp/c;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->getCreativeId(Llp/c;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$200(Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;Lfr/a;)Lcom/applovin/mediation/adapter/MaxAdapterError;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->toMaxError(Lfr/a;)Lcom/applovin/mediation/adapter/MaxAdapterError;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$600(Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;)Lmp/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->nativeAd:Lmp/b;

    .line 2
    .line 3
    return-object p0
.end method

.method private getCreativeId(Llp/c;)Ljava/lang/String;
    .locals 0
    .param p1    # Llp/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Llp/c;->getCreativeId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 9
    :goto_0
    return-object p1
.end method

.method private toAdSize(Lcom/applovin/mediation/MaxAdFormat;)Lio/bidmachine/banner/BannerSize;
    .locals 3

    .line 1
    sget-object v0, Lcom/applovin/mediation/MaxAdFormat;->BANNER:Lcom/applovin/mediation/MaxAdFormat;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    sget-object p1, Lio/bidmachine/banner/BannerSize;->Size_320x50:Lio/bidmachine/banner/BannerSize;

    .line 6
    .line 7
    return-object p1

    .line 8
    :cond_0
    sget-object v0, Lcom/applovin/mediation/MaxAdFormat;->LEADER:Lcom/applovin/mediation/MaxAdFormat;

    .line 9
    .line 10
    if-ne p1, v0, :cond_1

    .line 11
    .line 12
    sget-object p1, Lio/bidmachine/banner/BannerSize;->Size_728x90:Lio/bidmachine/banner/BannerSize;

    .line 13
    .line 14
    return-object p1

    .line 15
    :cond_1
    sget-object v0, Lcom/applovin/mediation/MaxAdFormat;->MREC:Lcom/applovin/mediation/MaxAdFormat;

    .line 16
    .line 17
    if-ne p1, v0, :cond_2

    .line 18
    .line 19
    sget-object p1, Lio/bidmachine/banner/BannerSize;->Size_300x250:Lio/bidmachine/banner/BannerSize;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, "Invalid ad format: "

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method private toAdsFormat(Lcom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;)Lio/bidmachine/AdsFormat;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;->getAdFormat()Lcom/applovin/mediation/MaxAdFormat;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    sget-object v0, Lcom/applovin/mediation/MaxAdFormat;->BANNER:Lcom/applovin/mediation/MaxAdFormat;

    .line 6
    .line 7
    if-ne p1, v0, :cond_0

    .line 8
    .line 9
    sget-object p1, Lio/bidmachine/AdsFormat;->Banner_320x50:Lio/bidmachine/AdsFormat;

    .line 10
    .line 11
    return-object p1

    .line 12
    :cond_0
    sget-object v0, Lcom/applovin/mediation/MaxAdFormat;->MREC:Lcom/applovin/mediation/MaxAdFormat;

    .line 13
    .line 14
    if-ne p1, v0, :cond_1

    .line 15
    .line 16
    sget-object p1, Lio/bidmachine/AdsFormat;->Banner_300x250:Lio/bidmachine/AdsFormat;

    .line 17
    .line 18
    return-object p1

    .line 19
    :cond_1
    sget-object v0, Lcom/applovin/mediation/MaxAdFormat;->LEADER:Lcom/applovin/mediation/MaxAdFormat;

    .line 20
    .line 21
    if-ne p1, v0, :cond_2

    .line 22
    .line 23
    sget-object p1, Lio/bidmachine/AdsFormat;->Banner_728x90:Lio/bidmachine/AdsFormat;

    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_2
    sget-object v0, Lcom/applovin/mediation/MaxAdFormat;->NATIVE:Lcom/applovin/mediation/MaxAdFormat;

    .line 27
    .line 28
    if-ne p1, v0, :cond_3

    .line 29
    .line 30
    sget-object p1, Lio/bidmachine/AdsFormat;->Native:Lio/bidmachine/AdsFormat;

    .line 31
    .line 32
    return-object p1

    .line 33
    :cond_3
    sget-object v0, Lcom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lcom/applovin/mediation/MaxAdFormat;

    .line 34
    .line 35
    if-ne p1, v0, :cond_4

    .line 36
    .line 37
    sget-object p1, Lio/bidmachine/AdsFormat;->Interstitial:Lio/bidmachine/AdsFormat;

    .line 38
    .line 39
    return-object p1

    .line 40
    :cond_4
    sget-object v0, Lcom/applovin/mediation/MaxAdFormat;->REWARDED:Lcom/applovin/mediation/MaxAdFormat;

    .line 41
    .line 42
    if-ne p1, v0, :cond_5

    .line 43
    .line 44
    sget-object p1, Lio/bidmachine/AdsFormat;->Rewarded:Lio/bidmachine/AdsFormat;

    .line 45
    .line 46
    return-object p1

    .line 47
    :cond_5
    const/4 p1, 0x0

    .line 48
    return-object p1
.end method

.method private toMaxError(Lfr/a;)Lcom/applovin/mediation/adapter/MaxAdapterError;
    .locals 4

    .line 1
    invoke-virtual {p1}, Lfr/a;->e()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/applovin/mediation/adapter/MaxAdapterError;->UNSPECIFIED:Lcom/applovin/mediation/adapter/MaxAdapterError;

    .line 6
    .line 7
    const/16 v2, 0xc8

    .line 8
    .line 9
    if-eq v0, v2, :cond_0

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    packed-switch v0, :pswitch_data_1

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :pswitch_0
    sget-object v1, Lcom/applovin/mediation/adapter/MaxAdapterError;->BAD_REQUEST:Lcom/applovin/mediation/adapter/MaxAdapterError;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :pswitch_1
    sget-object v1, Lcom/applovin/mediation/adapter/MaxAdapterError;->AD_EXPIRED:Lcom/applovin/mediation/adapter/MaxAdapterError;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :pswitch_2
    sget-object v1, Lcom/applovin/mediation/adapter/MaxAdapterError;->NO_FILL:Lcom/applovin/mediation/adapter/MaxAdapterError;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :pswitch_3
    sget-object v1, Lcom/applovin/mediation/adapter/MaxAdapterError;->TIMEOUT:Lcom/applovin/mediation/adapter/MaxAdapterError;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :pswitch_4
    sget-object v1, Lcom/applovin/mediation/adapter/MaxAdapterError;->INTERNAL_ERROR:Lcom/applovin/mediation/adapter/MaxAdapterError;

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :pswitch_5
    sget-object v1, Lcom/applovin/mediation/adapter/MaxAdapterError;->NO_CONNECTION:Lcom/applovin/mediation/adapter/MaxAdapterError;

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    :pswitch_6
    sget-object v1, Lcom/applovin/mediation/adapter/MaxAdapterError;->SERVER_ERROR:Lcom/applovin/mediation/adapter/MaxAdapterError;

    .line 37
    .line 38
    :goto_0
    new-instance v2, Lcom/applovin/mediation/adapter/MaxAdapterError;

    .line 39
    .line 40
    invoke-virtual {v1}, Lcom/applovin/impl/mediation/MaxErrorImpl;->getCode()I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-virtual {v1}, Lcom/applovin/impl/mediation/MaxErrorImpl;->getMessage()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {p1}, Lfr/a;->g()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {v2, v3, v1, v0, p1}, Lcom/applovin/mediation/adapter/MaxAdapterError;-><init>(ILjava/lang/String;ILjava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v2

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    .line 58
    .line 59
    .line 60
    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    :pswitch_data_1
    .packed-switch 0x6a
        :pswitch_4
        :pswitch_1
        :pswitch_4
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method private updateSettings(Lcom/applovin/mediation/adapter/parameters/MaxAdapterParameters;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcom/applovin/mediation/adapter/parameters/MaxAdapterParameters;->hasUserConsent()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-static {v0, v1}, Lio/bidmachine/BidMachine;->setConsentConfig(ZLjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-interface {p1}, Lcom/applovin/mediation/adapter/parameters/MaxAdapterParameters;->isDoNotSell()Ljava/lang/Boolean;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-eqz p1, :cond_2

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    const-string p1, "1YY-"

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const-string p1, "1YN-"

    .line 31
    .line 32
    :goto_0
    invoke-static {p1}, Lio/bidmachine/BidMachine;->setUSPrivacyString(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    const-string p1, "1---"

    .line 37
    .line 38
    invoke-static {p1}, Lio/bidmachine/BidMachine;->setUSPrivacyString(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :goto_1
    return-void
.end method


# virtual methods
.method public collectSignal(Lcom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;)V
    .locals 3
    .param p2    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "Collecting signal for "

    .line 7
    .line 8
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-interface {p1}, Lcom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;->getAdFormat()Lcom/applovin/mediation/MaxAdFormat;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, " ad..."

    .line 23
    .line 24
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p0, p2}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-direct {p0, p1}, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->updateSettings(Lcom/applovin/mediation/adapter/parameters/MaxAdapterParameters;)V

    .line 35
    .line 36
    .line 37
    invoke-direct {p0, p1}, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->toAdsFormat(Lcom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;)Lio/bidmachine/AdsFormat;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    if-nez p2, :cond_0

    .line 42
    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string p2, "Signal collection failed with error: "

    .line 49
    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string p2, "invalid ad format - ad format is null"

    .line 54
    .line 55
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-interface {p3, p2}, Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;->onSignalCollectionFailed(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    return-void

    .line 69
    :cond_0
    invoke-interface {p1}, Lcom/applovin/mediation/adapter/parameters/MaxAdapterParameters;->getAdUnitId()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    new-instance v1, Lio/bidmachine/AdPlacementConfig$Builder;

    .line 74
    .line 75
    invoke-direct {v1, p2}, Lio/bidmachine/AdPlacementConfig$Builder;-><init>(Lio/bidmachine/AdsFormat;)V

    .line 76
    .line 77
    .line 78
    sget-object p2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    .line 79
    .line 80
    invoke-interface {p1}, Lcom/applovin/mediation/adapter/parameters/MaxAdapterParameters;->getServerParameters()Landroid/os/Bundle;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const-string v2, "placement_ids"

    .line 85
    .line 86
    invoke-static {v2, p2, p1}, Lcom/applovin/impl/sdk/utils/BundleUtils;->getBundle(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    .line 91
    .line 92
    .line 93
    move-result p2

    .line 94
    if-eqz p2, :cond_2

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {p1}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    .line 101
    .line 102
    .line 103
    move-result p2

    .line 104
    if-eqz p2, :cond_1

    .line 105
    .line 106
    invoke-virtual {v1, p1}, Lio/bidmachine/AdPlacementConfig$Builder;->withPlacementId(Ljava/lang/String;)Lio/bidmachine/AdPlacementConfig$Builder;

    .line 107
    .line 108
    .line 109
    goto :goto_0

    .line 110
    :cond_1
    const-string p1, "No valid slot ID found during signal collection"

    .line 111
    .line 112
    invoke-virtual {p0, p1}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->getApplicationContext()Landroid/content/Context;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    invoke-virtual {v1}, Lio/bidmachine/AdPlacementConfig$Builder;->build()Lio/bidmachine/AdPlacementConfig;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    new-instance v0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$2;

    .line 124
    .line 125
    invoke-direct {v0, p0, p3}, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$2;-><init>(Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;)V

    .line 126
    .line 127
    .line 128
    invoke-static {p1, p2, v0}, Lio/bidmachine/BidMachine;->getBidToken(Landroid/content/Context;Lio/bidmachine/AdPlacementConfig;Lio/bidmachine/BidTokenCallback;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public getAdapterVersion()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "3.4.0.0"

    .line 2
    .line 3
    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 2

    .line 1
    const-class v0, Lio/bidmachine/BidMachine;

    .line 2
    .line 3
    const-string v1, "VERSION"

    .line 4
    .line 5
    invoke-virtual {p0, v0, v1}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->getVersionString(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public initialize(Lcom/applovin/mediation/adapter/parameters/MaxAdapterInitializationParameters;Landroid/app/Activity;Lcom/applovin/mediation/adapter/MaxAdapter$OnCompletionListener;)V
    .locals 2
    .param p2    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    sget-object p2, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    invoke-virtual {p2, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    sget-object p2, Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->INITIALIZING:Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

    .line 12
    .line 13
    sput-object p2, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->status:Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

    .line 14
    .line 15
    invoke-interface {p1}, Lcom/applovin/mediation/adapter/parameters/MaxAdapterParameters;->getServerParameters()Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    const-string v0, "source_id"

    .line 20
    .line 21
    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v1, "Initializing BidMachine SDK with source id: "

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p0, v0}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    invoke-interface {p1}, Lcom/applovin/mediation/adapter/parameters/MaxAdapterParameters;->isTesting()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    invoke-static {v0}, Lio/bidmachine/BidMachine;->setLoggingEnabled(Z)V

    .line 50
    .line 51
    .line 52
    invoke-interface {p1}, Lcom/applovin/mediation/adapter/parameters/MaxAdapterParameters;->isTesting()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    invoke-static {v0}, Lio/bidmachine/BidMachine;->setTestMode(Z)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, p1}, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->updateSettings(Lcom/applovin/mediation/adapter/parameters/MaxAdapterParameters;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->getApplicationContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    new-instance v0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$1;

    .line 67
    .line 68
    invoke-direct {v0, p0, p2, p3}, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$1;-><init>(Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;Ljava/lang/String;Lcom/applovin/mediation/adapter/MaxAdapter$OnCompletionListener;)V

    .line 69
    .line 70
    .line 71
    invoke-static {p1, p2, v0}, Lio/bidmachine/BidMachine;->initialize(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/InitializationCallback;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_0
    sget-object p1, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->status:Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

    .line 76
    .line 77
    const/4 p2, 0x0

    .line 78
    invoke-interface {p3, p1, p2}, Lcom/applovin/mediation/adapter/MaxAdapter$OnCompletionListener;->onCompletion(Lcom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    :goto_0
    return-void
.end method

.method public loadAdViewAd(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lcom/applovin/mediation/MaxAdFormat;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;)V
    .locals 1
    .param p3    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance p3, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "Loading "

    .line 7
    .line 8
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v0, " ad..."

    .line 19
    .line 20
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p3

    .line 27
    invoke-virtual {p0, p3}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0, p1}, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->updateSettings(Lcom/applovin/mediation/adapter/parameters/MaxAdapterParameters;)V

    .line 31
    .line 32
    .line 33
    new-instance p3, Lio/bidmachine/banner/BannerView;

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->getApplicationContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-direct {p3, v0}, Lio/bidmachine/banner/BannerView;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    iput-object p3, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->adView:Lio/bidmachine/banner/BannerView;

    .line 43
    .line 44
    new-instance v0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$AdViewListener;

    .line 45
    .line 46
    invoke-direct {v0, p0, p4}, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$AdViewListener;-><init>(Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p3, v0}, Lio/bidmachine/AdView;->setListener(Lio/bidmachine/AdListener;)Lio/bidmachine/AdView;

    .line 50
    .line 51
    .line 52
    iget-object p3, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->adView:Lio/bidmachine/banner/BannerView;

    .line 53
    .line 54
    new-instance p4, Lnm/b$c;

    .line 55
    .line 56
    invoke-direct {p4}, Lnm/b$c;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0, p2}, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->toAdSize(Lcom/applovin/mediation/MaxAdFormat;)Lio/bidmachine/banner/BannerSize;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p4, p2}, Lnm/b$c;->c(Lio/bidmachine/banner/BannerSize;)Lnm/b$c;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-interface {p1}, Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;->getBidResponse()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p2, p1}, Lnm/b$c;->setBidPayload(Ljava/lang/String;)Llp/f;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Lnm/b$c;

    .line 76
    .line 77
    invoke-virtual {p1}, Lnm/b$c;->build()Lio/bidmachine/AdRequest;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Lnm/b;

    .line 82
    .line 83
    invoke-virtual {p3, p1}, Lio/bidmachine/AdView;->load(Lio/bidmachine/AdRequest;)Lio/bidmachine/AdView;

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public loadInterstitialAd(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;)V
    .locals 1
    .param p2    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "Loading interstitial ad..."

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->updateSettings(Lcom/applovin/mediation/adapter/parameters/MaxAdapterParameters;)V

    .line 7
    .line 8
    .line 9
    new-instance p2, Lxm/a;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p2, v0}, Lxm/a;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->interstitialAd:Lxm/a;

    .line 19
    .line 20
    new-instance v0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$InterstitialAdListener;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$InterstitialAdListener;-><init>(Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0}, Lio/bidmachine/BidMachineAd;->setListener(Lio/bidmachine/AdListener;)Lio/bidmachine/IAd;

    .line 26
    .line 27
    .line 28
    iget-object p2, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->interstitialAd:Lxm/a;

    .line 29
    .line 30
    new-instance p3, Lxm/c$b;

    .line 31
    .line 32
    invoke-direct {p3}, Lxm/c$b;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;->getBidResponse()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p3, p1}, Lxm/c$b;->setBidPayload(Ljava/lang/String;)Llp/f;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lxm/c$b;

    .line 44
    .line 45
    invoke-virtual {p1}, Lxm/c$b;->build()Lio/bidmachine/AdRequest;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lxm/c;

    .line 50
    .line 51
    invoke-virtual {p2, p1}, Lio/bidmachine/BidMachineAd;->load(Lio/bidmachine/AdRequest;)Lio/bidmachine/IAd;

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public loadNativeAd(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxNativeAdAdapterListener;)V
    .locals 2
    .param p2    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "Loading native ad..."

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->updateSettings(Lcom/applovin/mediation/adapter/parameters/MaxAdapterParameters;)V

    .line 7
    .line 8
    .line 9
    new-instance p2, Lmp/b;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p2, v0}, Lmp/b;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->nativeAd:Lmp/b;

    .line 19
    .line 20
    new-instance v0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener;

    .line 21
    .line 22
    invoke-interface {p1}, Lcom/applovin/mediation/adapter/parameters/MaxAdapterParameters;->getServerParameters()Landroid/os/Bundle;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v0, p0, v1, p3}, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$NativeAdListener;-><init>(Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;Landroid/os/Bundle;Lcom/applovin/mediation/adapter/listeners/MaxNativeAdAdapterListener;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, v0}, Lio/bidmachine/BidMachineAd;->setListener(Lio/bidmachine/AdListener;)Lio/bidmachine/IAd;

    .line 30
    .line 31
    .line 32
    iget-object p2, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->nativeAd:Lmp/b;

    .line 33
    .line 34
    new-instance p3, Lio/bidmachine/nativead/NativeRequest$Builder;

    .line 35
    .line 36
    invoke-direct {p3}, Lio/bidmachine/nativead/NativeRequest$Builder;-><init>()V

    .line 37
    .line 38
    .line 39
    sget-object v0, Lio/bidmachine/MediaAssetType;->All:Lio/bidmachine/MediaAssetType;

    .line 40
    .line 41
    filled-new-array {v0}, [Lio/bidmachine/MediaAssetType;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p3, v0}, Lio/bidmachine/nativead/NativeRequest$Builder;->c([Lio/bidmachine/MediaAssetType;)Lio/bidmachine/nativead/NativeRequest$Builder;

    .line 46
    .line 47
    .line 48
    move-result-object p3

    .line 49
    invoke-interface {p1}, Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;->getBidResponse()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {p3, p1}, Lio/bidmachine/nativead/NativeRequest$Builder;->setBidPayload(Ljava/lang/String;)Llp/f;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lio/bidmachine/nativead/NativeRequest$Builder;

    .line 58
    .line 59
    invoke-virtual {p1}, Lio/bidmachine/nativead/NativeRequest$Builder;->build()Lio/bidmachine/AdRequest;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Lio/bidmachine/nativead/NativeRequest;

    .line 64
    .line 65
    invoke-virtual {p2, p1}, Lio/bidmachine/BidMachineAd;->load(Lio/bidmachine/AdRequest;)Lio/bidmachine/IAd;

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public loadRewardedAd(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;)V
    .locals 1
    .param p2    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "Loading rewarded ad..."

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->updateSettings(Lcom/applovin/mediation/adapter/parameters/MaxAdapterParameters;)V

    .line 7
    .line 8
    .line 9
    new-instance p2, Lvq/a;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-direct {p2, v0}, Lvq/a;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    iput-object p2, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->rewardedAd:Lvq/a;

    .line 19
    .line 20
    new-instance v0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$RewardedAdListener;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter$RewardedAdListener;-><init>(Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v0}, Lio/bidmachine/BidMachineAd;->setListener(Lio/bidmachine/AdListener;)Lio/bidmachine/IAd;

    .line 26
    .line 27
    .line 28
    iget-object p2, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->rewardedAd:Lvq/a;

    .line 29
    .line 30
    new-instance p3, Lvq/c$b;

    .line 31
    .line 32
    invoke-direct {p3}, Lvq/c$b;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-interface {p1}, Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;->getBidResponse()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p3, p1}, Lvq/c$b;->setBidPayload(Ljava/lang/String;)Llp/f;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    check-cast p1, Lvq/c$b;

    .line 44
    .line 45
    invoke-virtual {p1}, Lvq/c$b;->build()Lio/bidmachine/AdRequest;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lvq/c;

    .line 50
    .line 51
    invoke-virtual {p2, p1}, Lio/bidmachine/BidMachineAd;->load(Lio/bidmachine/AdRequest;)Lio/bidmachine/IAd;

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->interstitialAd:Lxm/a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->setListener(Lio/bidmachine/AdListener;)Lio/bidmachine/IAd;

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->interstitialAd:Lxm/a;

    .line 10
    .line 11
    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->destroy()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->interstitialAd:Lxm/a;

    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->rewardedAd:Lvq/a;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->setListener(Lio/bidmachine/AdListener;)Lio/bidmachine/IAd;

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->rewardedAd:Lvq/a;

    .line 24
    .line 25
    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->destroy()V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->rewardedAd:Lvq/a;

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->adView:Lio/bidmachine/banner/BannerView;

    .line 31
    .line 32
    if-eqz v0, :cond_2

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lio/bidmachine/AdView;->setListener(Lio/bidmachine/AdListener;)Lio/bidmachine/AdView;

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->adView:Lio/bidmachine/banner/BannerView;

    .line 38
    .line 39
    invoke-virtual {v0}, Lio/bidmachine/AdView;->destroy()V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->adView:Lio/bidmachine/banner/BannerView;

    .line 43
    .line 44
    :cond_2
    iget-object v0, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->nativeAd:Lmp/b;

    .line 45
    .line 46
    if-eqz v0, :cond_3

    .line 47
    .line 48
    invoke-virtual {v0}, Lmp/b;->l()V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->nativeAd:Lmp/b;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lio/bidmachine/BidMachineAd;->setListener(Lio/bidmachine/AdListener;)Lio/bidmachine/IAd;

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->nativeAd:Lmp/b;

    .line 57
    .line 58
    invoke-virtual {v0}, Lio/bidmachine/BidMachineAd;->destroy()V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->nativeAd:Lmp/b;

    .line 62
    .line 63
    :cond_3
    return-void
.end method

.method public showInterstitialAd(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;)V
    .locals 2
    .param p2    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p1, "Showing interstitial ad..."

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->interstitialAd:Lxm/a;

    .line 7
    .line 8
    invoke-virtual {p1}, Lio/bidmachine/BidMachineAd;->isExpired()Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const-string p1, "Unable to show interstitial - ad expired"

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance p1, Lcom/applovin/mediation/adapter/MaxAdapterError;

    .line 20
    .line 21
    sget-object p2, Lcom/applovin/mediation/adapter/MaxAdapterError;->AD_DISPLAY_FAILED:Lcom/applovin/mediation/adapter/MaxAdapterError;

    .line 22
    .line 23
    sget-object v0, Lcom/applovin/mediation/adapter/MaxAdapterError;->AD_EXPIRED:Lcom/applovin/mediation/adapter/MaxAdapterError;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/applovin/impl/mediation/MaxErrorImpl;->getCode()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {v0}, Lcom/applovin/impl/mediation/MaxErrorImpl;->getMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-direct {p1, p2, v1, v0}, Lcom/applovin/mediation/adapter/MaxAdapterError;-><init>(Lcom/applovin/mediation/adapter/MaxAdapterError;ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p3, p1}, Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;->onInterstitialAdDisplayFailed(Lcom/applovin/mediation/adapter/MaxAdapterError;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->interstitialAd:Lxm/a;

    .line 41
    .line 42
    invoke-virtual {p1}, Lio/bidmachine/BidMachineAd;->canShow()Z

    .line 43
    .line 44
    .line 45
    move-result p1

    .line 46
    if-nez p1, :cond_1

    .line 47
    .line 48
    const-string p1, "Unable to show interstitial - ad not ready"

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Lcom/applovin/mediation/adapter/MaxAdapterError;

    .line 54
    .line 55
    sget-object p2, Lcom/applovin/mediation/adapter/MaxAdapterError;->AD_DISPLAY_FAILED:Lcom/applovin/mediation/adapter/MaxAdapterError;

    .line 56
    .line 57
    sget-object v0, Lcom/applovin/mediation/adapter/MaxAdapterError;->AD_NOT_READY:Lcom/applovin/mediation/adapter/MaxAdapterError;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/applovin/impl/mediation/MaxErrorImpl;->getCode()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-virtual {v0}, Lcom/applovin/impl/mediation/MaxErrorImpl;->getMessage()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-direct {p1, p2, v1, v0}, Lcom/applovin/mediation/adapter/MaxAdapterError;-><init>(Lcom/applovin/mediation/adapter/MaxAdapterError;ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p3, p1}, Lcom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;->onInterstitialAdDisplayFailed(Lcom/applovin/mediation/adapter/MaxAdapterError;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_1
    iget-object p1, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->interstitialAd:Lxm/a;

    .line 75
    .line 76
    invoke-virtual {p1}, Lio/bidmachine/FullScreenAd;->show()V

    .line 77
    .line 78
    .line 79
    return-void
.end method

.method public showRewardedAd(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;)V
    .locals 2
    .param p2    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "Showing rewarded ad..."

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->rewardedAd:Lvq/a;

    .line 7
    .line 8
    invoke-virtual {p2}, Lio/bidmachine/BidMachineAd;->isExpired()Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    const-string p1, "Unable to show rewarded ad - ad expired"

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    new-instance p1, Lcom/applovin/mediation/adapter/MaxAdapterError;

    .line 20
    .line 21
    sget-object p2, Lcom/applovin/mediation/adapter/MaxAdapterError;->AD_DISPLAY_FAILED:Lcom/applovin/mediation/adapter/MaxAdapterError;

    .line 22
    .line 23
    sget-object v0, Lcom/applovin/mediation/adapter/MaxAdapterError;->AD_EXPIRED:Lcom/applovin/mediation/adapter/MaxAdapterError;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/applovin/impl/mediation/MaxErrorImpl;->getCode()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    invoke-virtual {v0}, Lcom/applovin/impl/mediation/MaxErrorImpl;->getMessage()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-direct {p1, p2, v1, v0}, Lcom/applovin/mediation/adapter/MaxAdapterError;-><init>(Lcom/applovin/mediation/adapter/MaxAdapterError;ILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-interface {p3, p1}, Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;->onRewardedAdDisplayFailed(Lcom/applovin/mediation/adapter/MaxAdapterError;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    iget-object p2, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->rewardedAd:Lvq/a;

    .line 41
    .line 42
    invoke-virtual {p2}, Lio/bidmachine/BidMachineAd;->canShow()Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-nez p2, :cond_1

    .line 47
    .line 48
    const-string p1, "Unable to show rewarded ad - ad not ready"

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance p1, Lcom/applovin/mediation/adapter/MaxAdapterError;

    .line 54
    .line 55
    sget-object p2, Lcom/applovin/mediation/adapter/MaxAdapterError;->AD_DISPLAY_FAILED:Lcom/applovin/mediation/adapter/MaxAdapterError;

    .line 56
    .line 57
    sget-object v0, Lcom/applovin/mediation/adapter/MaxAdapterError;->AD_NOT_READY:Lcom/applovin/mediation/adapter/MaxAdapterError;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/applovin/impl/mediation/MaxErrorImpl;->getCode()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    invoke-virtual {v0}, Lcom/applovin/impl/mediation/MaxErrorImpl;->getMessage()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-direct {p1, p2, v1, v0}, Lcom/applovin/mediation/adapter/MaxAdapterError;-><init>(Lcom/applovin/mediation/adapter/MaxAdapterError;ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-interface {p3, p1}, Lcom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;->onRewardedAdDisplayFailed(Lcom/applovin/mediation/adapter/MaxAdapterError;)V

    .line 71
    .line 72
    .line 73
    return-void

    .line 74
    :cond_1
    invoke-virtual {p0, p1}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->configureReward(Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/applovin/mediation/adapters/BidMachineMediationAdapter;->rewardedAd:Lvq/a;

    .line 78
    .line 79
    invoke-virtual {p1}, Lio/bidmachine/FullScreenAd;->show()V

    .line 80
    .line 81
    .line 82
    return-void
.end method
