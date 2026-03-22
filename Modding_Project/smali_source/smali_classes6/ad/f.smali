.class public final synthetic Lad/f;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/billingclient/api/PurchasesUpdatedListener;


# instance fields
.field public final synthetic a:Lcom/shorttv/aar/billing/core/BillingClient;


# direct methods
.method public synthetic constructor <init>(Lcom/shorttv/aar/billing/core/BillingClient;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lad/f;->a:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPurchasesUpdated(Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lad/f;->a:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 2
    .line 3
    invoke-static {v0, p1, p2}, Lcom/shorttv/aar/billing/core/BillingClient;->e(Lcom/shorttv/aar/billing/core/BillingClient;Lcom/android/billingclient/api/BillingResult;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
