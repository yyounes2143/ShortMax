.class Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallRewardedAd$1;
.super Ljava/lang/Object;
.source "InMobiWaterfallRewardedAd.java"

# interfaces
.implements Lcom/google/ads/mediation/inmobi/InMobiInitializer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallRewardedAd;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallRewardedAd;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$placementId:J


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallRewardedAd;Landroid/content/Context;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallRewardedAd$1;->this$0:Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallRewardedAd;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallRewardedAd$1;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallRewardedAd$1;->val$placementId:J

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
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
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallRewardedAd$1;->this$0:Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallRewardedAd;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallRewardedAd;->access$200(Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallRewardedAd$1;->this$0:Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallRewardedAd;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallRewardedAd;->access$300(Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {v0, p1}, Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;->onFailure(Lcom/google/android/gms/ads/AdError;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method public onInitializeSuccess()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallRewardedAd$1;->this$0:Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallRewardedAd;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallRewardedAd$1;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallRewardedAd$1;->val$placementId:J

    .line 6
    .line 7
    invoke-static {v0}, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallRewardedAd;->access$000(Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallRewardedAd;)Lcom/google/android/gms/ads/mediation/MediationAdLoadCallback;

    .line 8
    .line 9
    .line 10
    move-result-object v4

    .line 11
    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallRewardedAd;->access$100(Lcom/google/ads/mediation/inmobi/waterfall/InMobiWaterfallRewardedAd;Landroid/content/Context;JLcom/google/android/gms/ads/mediation/MediationAdLoadCallback;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
