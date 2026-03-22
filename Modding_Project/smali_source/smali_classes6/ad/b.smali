.class public final synthetic Lad/b;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/shorttv/aar/billing/core/BillingClient;

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/shorttv/aar/billing/core/BillingClient;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lad/b;->a:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 5
    .line 6
    iput-object p2, p0, Lad/b;->b:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lad/b;->a:Lcom/shorttv/aar/billing/core/BillingClient;

    .line 2
    .line 3
    iget-object v1, p0, Lad/b;->b:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/shorttv/aar/billing/core/BillingClient;->g(Lcom/shorttv/aar/billing/core/BillingClient;Landroid/content/Context;)Lkotlin/Unit;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method
