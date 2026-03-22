.class Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer$1;
.super Ljava/lang/Object;
.source "AppLovinWaterfallRewardedRenderer.java"

# interfaces
.implements Lcom/google/ads/mediation/applovin/AppLovinInitializer$OnInitializeSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$serverParameters:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer;Landroid/os/Bundle;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer$1;->val$serverParameters:Landroid/os/Bundle;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer$1;->val$context:Landroid/content/Context;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onInitializeSuccess()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer$1;->val$serverParameters:Landroid/os/Bundle;

    .line 4
    .line 5
    invoke-static {v1}, Lcom/applovin/mediation/AppLovinUtils;->retrieveZoneId(Landroid/os/Bundle;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v0, v1}, Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer;->access$002(Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer;

    .line 13
    .line 14
    iget-object v1, v0, Lcom/google/ads/mediation/applovin/AppLovinRewardedRenderer;->appLovinInitializer:Lcom/google/ads/mediation/applovin/AppLovinInitializer;

    .line 15
    .line 16
    iget-object v2, p0, Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer$1;->val$context:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Lcom/google/ads/mediation/applovin/AppLovinInitializer;->retrieveSdk(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    iput-object v1, v0, Lcom/google/ads/mediation/applovin/AppLovinRewardedRenderer;->appLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer;->access$000(Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "Requesting rewarded video for zone \'%s\'"

    .line 35
    .line 36
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sget-object v1, Lcom/google/ads/mediation/applovin/AppLovinRewardedRenderer;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    sget-object v0, Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer;->incentivizedAdsMap:Ljava/util/HashMap;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer;

    .line 48
    .line 49
    invoke-static {v2}, Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer;->access$000(Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer;)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    new-instance v0, Lcom/google/android/gms/ads/AdError;

    .line 60
    .line 61
    const-string v2, "Cannot load multiple rewarded ads with the same Zone ID. Let the first ad finish loading before attempting to load another."

    .line 62
    .line 63
    const-string v3, "com.google.ads.mediation.applovin"

    .line 64
    .line 65
    const/16 v4, 0x69

    .line 66
    .line 67
    invoke-direct {v0, v4, v2, v3}, Lcom/google/android/gms/ads/AdError;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer;

    .line 78
    .line 79
    iget-object v1, v1, Lcom/google/ads/mediation/applovin/AppLovinRewardedRenderer;->adLoadCallback:Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 80
    .line 81
    invoke-interface {v1, v0}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_0
    iget-object v1, p0, Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer;

    .line 86
    .line 87
    invoke-static {v1}, Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer;->access$000(Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 92
    .line 93
    iget-object v3, p0, Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer;

    .line 94
    .line 95
    invoke-direct {v2, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer;

    .line 102
    .line 103
    invoke-static {v0}, Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer;->access$000(Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    const-string v1, ""

    .line 108
    .line 109
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_1

    .line 114
    .line 115
    iget-object v0, p0, Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer;

    .line 116
    .line 117
    iget-object v1, v0, Lcom/google/ads/mediation/applovin/AppLovinRewardedRenderer;->appLovinAdFactory:Lcom/google/ads/mediation/applovin/AppLovinAdFactory;

    .line 118
    .line 119
    iget-object v2, v0, Lcom/google/ads/mediation/applovin/AppLovinRewardedRenderer;->appLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

    .line 120
    .line 121
    invoke-virtual {v1, v2}, Lcom/google/ads/mediation/applovin/AppLovinAdFactory;->createIncentivizedInterstitial(Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    iput-object v1, v0, Lcom/google/ads/mediation/applovin/AppLovinRewardedRenderer;->incentivizedInterstitial:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer;

    .line 129
    .line 130
    iget-object v1, v0, Lcom/google/ads/mediation/applovin/AppLovinRewardedRenderer;->appLovinAdFactory:Lcom/google/ads/mediation/applovin/AppLovinAdFactory;

    .line 131
    .line 132
    invoke-static {v0}, Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer;->access$000(Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    iget-object v3, p0, Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer;

    .line 137
    .line 138
    iget-object v3, v3, Lcom/google/ads/mediation/applovin/AppLovinRewardedRenderer;->appLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

    .line 139
    .line 140
    invoke-virtual {v1, v2, v3}, Lcom/google/ads/mediation/applovin/AppLovinAdFactory;->createIncentivizedInterstitial(Ljava/lang/String;Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    iput-object v1, v0, Lcom/google/ads/mediation/applovin/AppLovinRewardedRenderer;->incentivizedInterstitial:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    .line 145
    .line 146
    :goto_0
    iget-object v0, p0, Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinWaterfallRewardedRenderer;

    .line 147
    .line 148
    iget-object v1, v0, Lcom/google/ads/mediation/applovin/AppLovinRewardedRenderer;->incentivizedInterstitial:Lcom/applovin/adview/AppLovinIncentivizedInterstitial;

    .line 149
    .line 150
    invoke-virtual {v1, v0}, Lcom/applovin/adview/AppLovinIncentivizedInterstitial;->preload(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 151
    .line 152
    .line 153
    return-void
.end method
