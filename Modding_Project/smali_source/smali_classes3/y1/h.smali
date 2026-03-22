.class public final synthetic Ly1/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/facebook/appevents/iap/d;

.field public final synthetic b:Ljava/lang/Runnable;

.field public final synthetic c:Lcom/facebook/appevents/iap/InAppPurchaseUtils$IAPProductType;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/facebook/appevents/iap/d;Ljava/lang/Runnable;Lcom/facebook/appevents/iap/InAppPurchaseUtils$IAPProductType;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ly1/h;->a:Lcom/facebook/appevents/iap/d;

    .line 5
    .line 6
    iput-object p2, p0, Ly1/h;->b:Ljava/lang/Runnable;

    .line 7
    .line 8
    iput-object p3, p0, Ly1/h;->c:Lcom/facebook/appevents/iap/InAppPurchaseUtils$IAPProductType;

    .line 9
    .line 10
    iput-object p4, p0, Ly1/h;->d:Ljava/util/List;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Ly1/h;->a:Lcom/facebook/appevents/iap/d;

    .line 2
    .line 3
    iget-object v1, p0, Ly1/h;->b:Ljava/lang/Runnable;

    .line 4
    .line 5
    iget-object v2, p0, Ly1/h;->c:Lcom/facebook/appevents/iap/InAppPurchaseUtils$IAPProductType;

    .line 6
    .line 7
    iget-object v3, p0, Ly1/h;->d:Ljava/util/List;

    .line 8
    .line 9
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/appevents/iap/d;->c(Lcom/facebook/appevents/iap/d;Ljava/lang/Runnable;Lcom/facebook/appevents/iap/InAppPurchaseUtils$IAPProductType;Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
