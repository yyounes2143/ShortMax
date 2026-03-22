.class public final synthetic Lcom/applovin/mediation/adapters/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic a:Lcom/applovin/mediation/adapters/MolocoMediationAdapter;

.field public final synthetic b:Lcom/applovin/mediation/MaxAdFormat;

.field public final synthetic c:Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

.field public final synthetic d:Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/mediation/adapters/MolocoMediationAdapter;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/mediation/adapters/f;->a:Lcom/applovin/mediation/adapters/MolocoMediationAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/mediation/adapters/f;->b:Lcom/applovin/mediation/MaxAdFormat;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/applovin/mediation/adapters/f;->c:Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/applovin/mediation/adapters/f;->d:Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/applovin/mediation/adapters/f;->a:Lcom/applovin/mediation/adapters/MolocoMediationAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/mediation/adapters/f;->b:Lcom/applovin/mediation/MaxAdFormat;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/applovin/mediation/adapters/f;->c:Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/applovin/mediation/adapters/f;->d:Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

    .line 8
    .line 9
    move-object v4, p1

    .line 10
    check-cast v4, Lcom/moloco/sdk/publisher/Banner;

    .line 11
    .line 12
    move-object v5, p2

    .line 13
    check-cast v5, Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;

    .line 14
    .line 15
    invoke-static/range {v0 .. v5}, Lcom/applovin/mediation/adapters/MolocoMediationAdapter;->j(Lcom/applovin/mediation/adapters/MolocoMediationAdapter;Lcom/applovin/mediation/MaxAdFormat;Lcom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;Lcom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lcom/moloco/sdk/publisher/Banner;Lcom/moloco/sdk/publisher/MolocoAdError$AdCreateError;)Lkotlin/Unit;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method
