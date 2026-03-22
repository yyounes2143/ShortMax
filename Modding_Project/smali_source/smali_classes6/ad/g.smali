.class public final synthetic Lad/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/billingclient/api/UserChoiceBillingListener;


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
    iput-object p1, p0, Lad/g;->a:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final userSelectedAlternativeBilling(Lcom/android/billingclient/api/UserChoiceDetails;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lad/g;->a:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/shorttv/aar/billing/core/BillingClient;->c(Lcom/shorttv/aar/billing/core/BillingClient;Lcom/android/billingclient/api/UserChoiceDetails;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
