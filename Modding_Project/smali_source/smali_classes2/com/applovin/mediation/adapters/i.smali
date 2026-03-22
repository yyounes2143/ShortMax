.class public final synthetic Lcom/applovin/mediation/adapters/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/moloco/sdk/publisher/MolocoInitializationListener;


# instance fields
.field public final synthetic a:Lcom/applovin/mediation/adapters/MolocoMediationAdapter;

.field public final synthetic b:Lcom/applovin/mediation/adapter/MaxAdapter$OnCompletionListener;


# direct methods
.method public synthetic constructor <init>(Lcom/applovin/mediation/adapters/MolocoMediationAdapter;Lcom/applovin/mediation/adapter/MaxAdapter$OnCompletionListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/applovin/mediation/adapters/i;->a:Lcom/applovin/mediation/adapters/MolocoMediationAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/applovin/mediation/adapters/i;->b:Lcom/applovin/mediation/adapter/MaxAdapter$OnCompletionListener;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onMolocoInitializationStatus(Lcom/moloco/sdk/publisher/MolocoInitStatus;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/mediation/adapters/i;->a:Lcom/applovin/mediation/adapters/MolocoMediationAdapter;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/mediation/adapters/i;->b:Lcom/applovin/mediation/adapter/MaxAdapter$OnCompletionListener;

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/applovin/mediation/adapters/MolocoMediationAdapter;->g(Lcom/applovin/mediation/adapters/MolocoMediationAdapter;Lcom/applovin/mediation/adapter/MaxAdapter$OnCompletionListener;Lcom/moloco/sdk/publisher/MolocoInitStatus;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
