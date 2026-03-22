.class public final synthetic Lcom/applovin/mediation/adapters/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/applovin/mediation/adapters/MolocoMediationAdapter;

.field public final synthetic b:Lcom/applovin/mediation/adapter/listeners/MaxNativeAdAdapterListener;

.field public final synthetic c:Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

.field public final synthetic d:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/mediation/adapters/MolocoMediationAdapter;Lcom/applovin/mediation/adapter/listeners/MaxNativeAdAdapterListener;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/mediation/adapters/k;->a:Lcom/applovin/mediation/adapters/MolocoMediationAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/mediation/adapters/k;->b:Lcom/applovin/mediation/adapter/listeners/MaxNativeAdAdapterListener;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/applovin/mediation/adapters/k;->c:Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/applovin/mediation/adapters/k;->d:Landroid/app/Activity;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/applovin/mediation/adapters/k;->a:Lcom/applovin/mediation/adapters/MolocoMediationAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/mediation/adapters/k;->b:Lcom/applovin/mediation/adapter/listeners/MaxNativeAdAdapterListener;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/applovin/mediation/adapters/k;->c:Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/applovin/mediation/adapters/k;->d:Landroid/app/Activity;

    .line 8
    .line 9
    move-object v4, p1

    .line 10
    check-cast v4, Lcom/moloco/sdk/publisher/NativeAd;

    .line 11
    .line 12
    move-object v5, p2

    .line 13
    check-cast v5, Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;

    .line 14
    .line 15
    invoke-static/range {v0 .. v5}, Lcom/applovin/mediation/adapters/MolocoMediationAdapter;->b(Lcom/applovin/mediation/adapters/MolocoMediationAdapter;Lcom/applovin/mediation/adapter/listeners/MaxNativeAdAdapterListener;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;Lcom/moloco/sdk/publisher/NativeAd;Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;)Lkotlin/Unit;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method
