.class Lcom/applovin/mediation/adapters/MolocoMediationAdapter$MaxMolocoNativeAd;
.super Lcom/applovin/mediation/nativeAds/MaxNativeAd;
.source "MolocoMediationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/mediation/adapters/MolocoMediationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MaxMolocoNativeAd"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applovin/mediation/adapters/MolocoMediationAdapter;


# direct methods
.method public constructor <init>(Lcom/applovin/mediation/adapters/MolocoMediationAdapter;Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$MaxMolocoNativeAd;->this$0:Lcom/applovin/mediation/adapters/MolocoMediationAdapter;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;-><init>(Lcom/applovin/mediation/nativeAds/MaxNativeAd$Builder;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/moloco/sdk/publisher/NativeAd;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$MaxMolocoNativeAd;->lambda$prepareForInteraction$0(Lcom/moloco/sdk/publisher/NativeAd;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$prepareForInteraction$0(Lcom/moloco/sdk/publisher/NativeAd;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lcom/moloco/sdk/publisher/NativeAd;->handleGeneralAdClick()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public prepareForInteraction(Ljava/util/List;Landroid/view/ViewGroup;)Z
    .locals 4
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
    iget-object v0, p0, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$MaxMolocoNativeAd;->this$0:Lcom/applovin/mediation/adapters/MolocoMediationAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/applovin/mediation/adapters/MolocoMediationAdapter;->access$200(Lcom/applovin/mediation/adapters/MolocoMediationAdapter;)Lcom/moloco/sdk/publisher/NativeAd;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$MaxMolocoNativeAd;->this$0:Lcom/applovin/mediation/adapters/MolocoMediationAdapter;

    .line 10
    .line 11
    const-string p2, "Failed to register native ad view: native ad is null."

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
    iget-object v1, p0, Lcom/applovin/mediation/adapters/MolocoMediationAdapter$MaxMolocoNativeAd;->this$0:Lcom/applovin/mediation/adapters/MolocoMediationAdapter;

    .line 19
    .line 20
    new-instance v2, Ljava/lang/StringBuilder;

    .line 21
    .line 22
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 23
    .line 24
    .line 25
    const-string v3, "Preparing views for interaction: "

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v3, " with container: "

    .line 34
    .line 35
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {v1, p2}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->d(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-eqz p2, :cond_1

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    check-cast p2, Landroid/view/View;

    .line 63
    .line 64
    new-instance v1, Lcom/applovin/mediation/adapters/l;

    .line 65
    .line 66
    invoke-direct {v1, v0}, Lcom/applovin/mediation/adapters/l;-><init>(Lcom/moloco/sdk/publisher/NativeAd;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_1
    invoke-virtual {p0}, Lcom/applovin/mediation/nativeAds/MaxNativeAd;->getFormat()Lcom/applovin/mediation/MaxAdFormat;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    sget-object p2, Lcom/applovin/mediation/MaxAdFormat;->NATIVE:Lcom/applovin/mediation/MaxAdFormat;

    .line 78
    .line 79
    if-ne p1, p2, :cond_2

    .line 80
    .line 81
    invoke-interface {v0}, Lcom/moloco/sdk/publisher/NativeAd;->handleImpression()V

    .line 82
    .line 83
    .line 84
    :cond_2
    const/4 p1, 0x1

    .line 85
    return p1
.end method
