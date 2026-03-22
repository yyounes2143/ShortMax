.class public final synthetic Lcom/applovin/mediation/adapters/e;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/applovin/mediation/adapters/MolocoMediationAdapter;

.field public final synthetic b:Lcom/applovin/mediation/MaxAdFormat;

.field public final synthetic c:Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

.field public final synthetic d:Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

.field public final synthetic e:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/mediation/adapters/MolocoMediationAdapter;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/mediation/adapters/e;->a:Lcom/applovin/mediation/adapters/MolocoMediationAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/mediation/adapters/e;->b:Lcom/applovin/mediation/MaxAdFormat;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/applovin/mediation/adapters/e;->c:Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/applovin/mediation/adapters/e;->d:Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/applovin/mediation/adapters/e;->e:Landroid/app/Activity;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/applovin/mediation/adapters/e;->a:Lcom/applovin/mediation/adapters/MolocoMediationAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/mediation/adapters/e;->b:Lcom/applovin/mediation/MaxAdFormat;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/applovin/mediation/adapters/e;->c:Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/applovin/mediation/adapters/e;->d:Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/applovin/mediation/adapters/e;->e:Landroid/app/Activity;

    .line 10
    .line 11
    move-object v5, p1

    .line 12
    check-cast v5, Lcom/moloco/sdk/publisher/NativeAd;

    .line 13
    .line 14
    move-object v6, p2

    .line 15
    check-cast v6, Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;

    .line 16
    .line 17
    invoke-static/range {v0 .. v6}, Lcom/applovin/mediation/adapters/MolocoMediationAdapter;->c(Lcom/applovin/mediation/adapters/MolocoMediationAdapter;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Landroid/app/Activity;Lcom/moloco/sdk/publisher/NativeAd;Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;)Lkotlin/Unit;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method
