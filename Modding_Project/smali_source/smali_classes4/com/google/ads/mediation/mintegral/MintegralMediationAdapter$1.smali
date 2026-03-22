.class Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter$1;
.super Ljava/lang/Object;
.source "MintegralMediationAdapter.java"

# interfaces
.implements Lcom/mbridge/msdk/out/SDKInitStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter;->initialize(Landroid/content/Context;Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$initializationCompleteCallback:Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter;Landroid/content/Context;Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter$1;->this$0:Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter$1;->val$context:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter$1;->val$initializationCompleteCallback:Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onInitFail(Ljava/lang/String;)V
    .locals 2

    .line 1
    const/16 v0, 0x69

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/google/ads/mediation/mintegral/MintegralConstants;->createSdkError(ILjava/lang/String;)Lcom/google/android/gms/ads/AdError;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object v0, p0, Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter$1;->val$initializationCompleteCallback:Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->getMessage()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;->onInitializationFailed(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    sget-object v0, Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/google/android/gms/ads/AdError;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public onInitSuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter$1;->val$context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {}, Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter;->b()Lcom/mbridge/msdk/MBridgeSDK;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Lcom/google/ads/mediation/mintegral/MintegralUtils;->configureMintegralPrivacy(Landroid/content/Context;Lcom/mbridge/msdk/MBridgeSDK;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/google/ads/mediation/mintegral/MintegralMediationAdapter$1;->val$initializationCompleteCallback:Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/google/android/gms/ads/mediation/InitializationCompleteCallback;->onInitializationSucceeded()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
