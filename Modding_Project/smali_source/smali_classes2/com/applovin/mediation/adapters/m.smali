.class public final synthetic Lcom/applovin/mediation/adapters/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/unity3d/ads/IUnityAdsTokenListener;


# instance fields
.field public final synthetic a:Lcom/applovin/mediation/adapters/UnityAdsMediationAdapter;

.field public final synthetic b:Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/mediation/adapters/UnityAdsMediationAdapter;Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/mediation/adapters/m;->a:Lcom/applovin/mediation/adapters/UnityAdsMediationAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/mediation/adapters/m;->b:Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onUnityAdsTokenReady(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/mediation/adapters/m;->a:Lcom/applovin/mediation/adapters/UnityAdsMediationAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/mediation/adapters/m;->b:Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/applovin/mediation/adapters/UnityAdsMediationAdapter;->a(Lcom/applovin/mediation/adapters/UnityAdsMediationAdapter;Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
