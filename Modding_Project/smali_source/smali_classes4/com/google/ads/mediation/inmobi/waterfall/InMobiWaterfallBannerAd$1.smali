.class Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd$1;
.super Ljava/lang/Object;
.source "InMobiWaterfallBannerAd.java"

# interfaces
.implements Lcom/google/ads/mediation/inmobi/InMobiInitializer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd;

.field final synthetic val$closestBannerSize:Lcom/google/android/gms/ads/AdSize;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$placementId:J


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd;Landroid/content/Context;JLcom/google/android/gms/ads/AdSize;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd$1;->this$0:Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd$1;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd$1;->val$placementId:J

    .line 6
    .line 7
    iput-object p5, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd$1;->val$closestBannerSize:Lcom/google/android/gms/ads/AdSize;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onInitializeError(Lcom/google/android/gms/ads/AdError;)V
    .locals 2
    .param p1    # Lcom/google/android/gms/ads/AdError;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/google/ads/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd$1;->this$0:Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd;->access$100(Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onInitializeSuccess()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd$1;->this$0:Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd$1;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd$1;->val$placementId:J

    .line 6
    .line 7
    iget-object v4, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd$1;->val$closestBannerSize:Lcom/google/android/gms/ads/AdSize;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd;->access$000(Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallBannerAd;Landroid/content/Context;JLcom/google/android/gms/ads/AdSize;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
