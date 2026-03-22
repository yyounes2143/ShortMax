.class public final synthetic Lcom/applovin/mediation/adapters/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;


# instance fields
.field public final synthetic a:Lcom/applovin/mediation/adapters/GoogleMediationAdapter;

.field public final synthetic b:Lcom/applovin/mediation/adapter/MaxAdapter$OnCompletionListener;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/mediation/adapters/GoogleMediationAdapter;Lcom/applovin/mediation/adapter/MaxAdapter$OnCompletionListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/mediation/adapters/c;->a:Lcom/applovin/mediation/adapters/GoogleMediationAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/mediation/adapters/c;->b:Lcom/applovin/mediation/adapter/MaxAdapter$OnCompletionListener;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onInitializationComplete(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/mediation/adapters/c;->a:Lcom/applovin/mediation/adapters/GoogleMediationAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/mediation/adapters/c;->b:Lcom/applovin/mediation/adapter/MaxAdapter$OnCompletionListener;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/applovin/mediation/adapters/GoogleMediationAdapter;->b(Lcom/applovin/mediation/adapters/GoogleMediationAdapter;Lcom/applovin/mediation/adapter/MaxAdapter$OnCompletionListener;Lcom/google/android/gms/ads/initialization/InitializationStatus;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
