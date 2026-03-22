.class Lcom/applovin/mediation/adapters/InMobiMediationAdapter$MaxInMobiNativeAd;
.super Lcom/applovin/mediation/nativeAds/MaxNativeAd;
.source "InMobiMediationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/mediation/adapters/InMobiMediationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MaxInMobiNativeAd"
.end annotation


# instance fields
.field private final format:Lcom/applovin/mediation/MaxAdFormat;

.field private final listener:Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;

.field final synthetic this$0:Lcom/applovin/mediation/adapters/InMobiMediationAdapter;


# direct methods
.method public constructor <init>(Lcom/applovin/mediation/adapters/InMobiMediationAdapter;Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;Lcom/applovin/mediation/MaxAdFormat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$MaxInMobiNativeAd;->this$0:Lcom/applovin/mediation/adapters/InMobiMediationAdapter;

    .line 2
    .line 3
    invoke-direct {p0, p3}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;-><init>(Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;)V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$MaxInMobiNativeAd;->listener:Lcom/applovin/mediation/adapter/listeners/MaxAdapterListener;

    .line 7
    .line 8
    iput-object p4, p0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$MaxInMobiNativeAd;->format:Lcom/applovin/mediation/MaxAdFormat;

    .line 9
    .line 10
    return-void
.end method

.method static synthetic access$1700(Lcom/applovin/mediation/adapters/InMobiMediationAdapter$MaxInMobiNativeAd;)Lcom/applovin/mediation/MaxAdFormat;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$MaxInMobiNativeAd;->format:Lcom/applovin/mediation/MaxAdFormat;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public prepareForInteraction(Ljava/util/List;Landroid/view/ViewGroup;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/ViewGroup;",
            ")Z"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$MaxInMobiNativeAd;->this$0:Lcom/applovin/mediation/adapters/InMobiMediationAdapter;

    .line 2
    .line 3
    invoke-static {p2}, Lcom/applovin/mediation/adapters/InMobiMediationAdapter;->access$300(Lcom/applovin/mediation/adapters/InMobiMediationAdapter;)Lcom/inmobi/ads/InMobiNative;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$MaxInMobiNativeAd;->this$0:Lcom/applovin/mediation/adapters/InMobiMediationAdapter;

    .line 10
    .line 11
    const-string p2, "Failed to register native ad views: native ad is null."

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->e(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p1, 0x0

    .line 17
    return p1

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getMediaView()Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/FrameLayout;

    .line 23
    .line 24
    new-instance v1, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$MaxInMobiNativeAd$1;

    .line 25
    .line 26
    invoke-direct {v1, p0, v0, p2}, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$MaxInMobiNativeAd$1;-><init>(Lcom/applovin/mediation/adapters/InMobiMediationAdapter$MaxInMobiNativeAd;Landroid/widget/FrameLayout;Lcom/inmobi/ads/InMobiNative;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 30
    .line 31
    .line 32
    new-instance v0, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$MaxInMobiNativeAd$2;

    .line 33
    .line 34
    invoke-direct {v0, p0, p2}, Lcom/applovin/mediation/adapters/InMobiMediationAdapter$MaxInMobiNativeAd$2;-><init>(Lcom/applovin/mediation/adapters/InMobiMediationAdapter$MaxInMobiNativeAd;Lcom/inmobi/ads/InMobiNative;)V

    .line 35
    .line 36
    .line 37
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_2

    .line 46
    .line 47
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    check-cast p2, Landroid/view/View;

    .line 52
    .line 53
    if-eqz p2, :cond_1

    .line 54
    .line 55
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/4 p1, 0x1

    .line 60
    return p1
.end method
