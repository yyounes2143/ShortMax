.class Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$2;
.super Ljava/lang/Object;
.source "ByteDanceMediationAdapter.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/init/BiddingTokenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter;->collectSignal(Lcom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;Landroid/app/Activity;Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter;

.field final synthetic val$callback:Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;


# direct methods
.method constructor <init>(Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter;Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$2;->this$0:Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$2;->val$callback:Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onBiddingTokenCollected(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$2;->this$0:Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter;

    .line 2
    .line 3
    const-string v1, "Signal collection successful"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/applovin/mediation/adapters/MediationAdapterBase;->log(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/applovin/mediation/adapters/ByteDanceMediationAdapter$2;->val$callback:Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Lcom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;->onSignalCollected(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
