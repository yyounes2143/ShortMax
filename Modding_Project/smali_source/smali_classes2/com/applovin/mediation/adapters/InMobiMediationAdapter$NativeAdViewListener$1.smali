.class Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdViewListener$1;
.super Ljava/lang/Object;
.source "InMobiMediationAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdViewListener;->onAdLoadSucceeded(Lcom/inmobi/ads/InMobiNative;Lcom/inmobi/ads/AdMetaInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdViewListener;

.field final synthetic val$adMetaInfo:Lcom/inmobi/ads/AdMetaInfo;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$inMobiNative:Lcom/inmobi/ads/InMobiNative;


# direct methods
.method constructor <init>(Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdViewListener;Lcom/inmobi/ads/InMobiNative;Landroid/content/Context;Lcom/inmobi/ads/AdMetaInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdViewListener;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdViewListener$1;->val$inMobiNative:Lcom/inmobi/ads/InMobiNative;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdViewListener$1;->val$context:Landroid/content/Context;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdViewListener$1;->val$adMetaInfo:Lcom/inmobi/ads/AdMetaInfo;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdViewListener;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdViewListener;->this$0:Lcom/applovin/mediation/adapters/InMobiMediationAdapter;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdViewListener$1;->val$inMobiNative:Lcom/inmobi/ads/InMobiNative;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/inmobi/ads/InMobiNative;->getAdIconUrl()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdViewListener$1;->this$1:Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdViewListener;

    .line 12
    .line 13
    invoke-static {v2}, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdViewListener;->access$500(Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdViewListener;)Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    iget-object v3, p0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdViewListener$1;->val$context:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v0, v1, v2, v3}, Lcom/applovin/mediation/adapters/InMobiMediationAdapter;->access$600(Lcom/applovin/mediation/adapters/InMobiMediationAdapter;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdViewListener$1$1;

    .line 24
    .line 25
    invoke-direct {v1, p0, v0}, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdViewListener$1$1;-><init>(Lcom/applovin/mediation/adapters/InMobiMediationAdapter$NativeAdViewListener$1;Landroid/graphics/drawable/Drawable;)V

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Lcom/applovin/sdk/AppLovinSdkUtils;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
