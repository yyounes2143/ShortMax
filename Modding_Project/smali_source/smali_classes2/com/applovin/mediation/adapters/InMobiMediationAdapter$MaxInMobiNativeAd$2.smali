.class Lcom/applovin/mediation/adapters/InMobiMediationAdapter$MaxInMobiNativeAd$2;
.super Ljava/lang/Object;
.source "InMobiMediationAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/mediation/adapters/InMobiMediationAdapter$MaxInMobiNativeAd;->prepareForInteraction(Ljava/util/List;Landroid/view/ViewGroup;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/applovin/mediation/adapters/InMobiMediationAdapter$MaxInMobiNativeAd;

.field final synthetic val$nativeAd:Lcom/inmobi/ads/InMobiNative;


# direct methods
.method constructor <init>(Lcom/applovin/mediation/adapters/InMobiMediationAdapter$MaxInMobiNativeAd;Lcom/inmobi/ads/InMobiNative;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$MaxInMobiNativeAd$2;->this$1:Lcom/applovin/mediation/adapters/InMobiMediationAdapter$MaxInMobiNativeAd;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$MaxInMobiNativeAd$2;->val$nativeAd:Lcom/inmobi/ads/InMobiNative;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$MaxInMobiNativeAd$2;->this$1:Lcom/applovin/mediation/adapters/InMobiMediationAdapter$MaxInMobiNativeAd;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$MaxInMobiNativeAd;->this$0:Lcom/applovin/mediation/adapters/InMobiMediationAdapter;

    .line 4
    .line 5
    const-string v0, "Native ad clicked from click listener"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$MaxInMobiNativeAd$2;->val$nativeAd:Lcom/inmobi/ads/InMobiNative;

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiNative;->reportAdClickAndOpenLandingPage()V

    .line 13
    .line 14
    .line 15
    return-void
.end method
