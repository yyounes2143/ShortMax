.class Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdListener$2;
.super Ljava/lang/Object;
.source "InMobiMediationAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdListener;->handleNativeAdLoaded(Lcom/inmobi/ads/InMobiNative;Lcom/inmobi/ads/AdMetaInfo;Landroid/graphics/drawable/Drawable;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdListener;

.field final synthetic val$adMetaInfo:Lcom/inmobi/ads/AdMetaInfo;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$iconDrawable:Landroid/graphics/drawable/Drawable;

.field final synthetic val$inMobiNative:Lcom/inmobi/ads/InMobiNative;


# direct methods
.method constructor <init>(Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdListener;Landroid/content/Context;Landroid/graphics/drawable/Drawable;Lcom/inmobi/ads/InMobiNative;Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdListener$2;->this$1:Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdListener;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdListener$2;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdListener$2;->val$iconDrawable:Landroid/graphics/drawable/Drawable;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdListener$2;->val$inMobiNative:Lcom/inmobi/ads/InMobiNative;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdListener$2;->val$adMetaInfo:Lcom/inmobi/ads/AdMetaInfo;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    new-instance v0, Landroid/widget/ImageView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdListener$2;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdListener$2;->val$iconDrawable:Landroid/graphics/drawable/Drawable;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Landroid/widget/FrameLayout;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdListener$2;->val$context:Landroid/content/Context;

    .line 16
    .line 17
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    new-instance v1, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    .line 21
    .line 22
    invoke-direct {v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;-><init>()V

    .line 23
    .line 24
    .line 25
    sget-object v2, Lcom/applovin/mediation/MaxAdFormat;->NATIVE:Lcom/applovin/mediation/MaxAdFormat;

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setAdFormat(Lcom/applovin/mediation/MaxAdFormat;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget-object v3, p0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdListener$2;->val$inMobiNative:Lcom/inmobi/ads/InMobiNative;

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/inmobi/ads/InMobiNative;->getAdTitle()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v1, v3}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setTitle(Ljava/lang/String;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget-object v3, p0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdListener$2;->val$inMobiNative:Lcom/inmobi/ads/InMobiNative;

    .line 42
    .line 43
    invoke-virtual {v3}, Lcom/inmobi/ads/InMobiNative;->getAdDescription()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    invoke-virtual {v1, v3}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setBody(Ljava/lang/String;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v3, p0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdListener$2;->val$inMobiNative:Lcom/inmobi/ads/InMobiNative;

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/inmobi/ads/InMobiNative;->getAdCtaText()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v3

    .line 57
    invoke-virtual {v1, v3}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setCallToAction(Ljava/lang/String;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    new-instance v3, Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;

    .line 62
    .line 63
    iget-object v4, p0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdListener$2;->val$iconDrawable:Landroid/graphics/drawable/Drawable;

    .line 64
    .line 65
    invoke-direct {v3, v4}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, v3}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setIcon(Lcom/applovin/mediation/nativeAds/MaxNativeAd$MaxNativeAdImage;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v1, v0}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setMediaView(Landroid/view/View;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object v1, p0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdListener$2;->this$1:Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdListener;

    .line 77
    .line 78
    invoke-static {v1}, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdListener;->access$1500(Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdListener;)F

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setMediaContentAspectRatio(F)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdListener$2;->val$inMobiNative:Lcom/inmobi/ads/InMobiNative;

    .line 87
    .line 88
    invoke-virtual {v1}, Lcom/inmobi/ads/InMobiNative;->getAdRating()F

    .line 89
    .line 90
    .line 91
    move-result v1

    .line 92
    float-to-double v3, v1

    .line 93
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;->setStarRating(Ljava/lang/Double;)Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    new-instance v1, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$MaxInMobiNativeAd;

    .line 102
    .line 103
    iget-object v3, p0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdListener$2;->this$1:Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdListener;

    .line 104
    .line 105
    iget-object v4, v3, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdListener;->this$0:Lcom/applovin/mediation/adapters/InMobiMediationAdapter;

    .line 106
    .line 107
    invoke-static {v3}, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdListener;->access$1600(Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdListener;)Lcom/applovin/mediation/adapter/listeners/MaxNativeAdAdapterListener;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-direct {v1, v4, v3, v0, v2}, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$MaxInMobiNativeAd;-><init>(Lcom/applovin/mediation/adapters/InMobiMediationAdapter;Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;Lcom/applovin/mediation/MaxAdFormat;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdListener$2;->val$adMetaInfo:Lcom/inmobi/ads/AdMetaInfo;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/inmobi/ads/AdMetaInfo;->getCreativeID()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-static {v0}, Lcom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-eqz v0, :cond_0

    .line 125
    .line 126
    new-instance v0, Landroid/os/Bundle;

    .line 127
    .line 128
    const/4 v2, 0x1

    .line 129
    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 130
    .line 131
    .line 132
    iget-object v2, p0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdListener$2;->val$adMetaInfo:Lcom/inmobi/ads/AdMetaInfo;

    .line 133
    .line 134
    invoke-virtual {v2}, Lcom/inmobi/ads/AdMetaInfo;->getCreativeID()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    const-string v3, "creative_id"

    .line 139
    .line 140
    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    iget-object v2, p0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdListener$2;->this$1:Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdListener;

    .line 144
    .line 145
    invoke-static {v2}, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdListener;->access$1600(Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdListener;)Lcom/applovin/mediation/adapter/listeners/MaxNativeAdAdapterListener;

    .line 146
    .line 147
    .line 148
    move-result-object v2

    .line 149
    invoke-interface {v2, v1, v0}, Lcom/applovin/mediation/adapter/listeners/MaxNativeAdAdapterListener;->onNativeAdLoaded(Lcom/applovin/mediation/nativeAds/MaxNativeAd;Landroid/os/Bundle;)V

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdListener$2;->this$1:Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdListener;

    .line 154
    .line 155
    invoke-static {v0}, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdListener;->access$1600(Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdListener;)Lcom/applovin/mediation/adapter/listeners/MaxNativeAdAdapterListener;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    const/4 v2, 0x0

    .line 160
    invoke-interface {v0, v1, v2}, Lcom/applovin/mediation/adapter/listeners/MaxNativeAdAdapterListener;->onNativeAdLoaded(Lcom/applovin/mediation/nativeAds/MaxNativeAd;Landroid/os/Bundle;)V

    .line 161
    .line 162
    .line 163
    :goto_0
    return-void
.end method
