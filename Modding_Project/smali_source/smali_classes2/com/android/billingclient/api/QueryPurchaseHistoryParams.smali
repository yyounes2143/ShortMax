.class public final Lcom/android/billingclient/api/QueryPurchaseHistoryParams;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;
    }
.end annotation


# direct methods
.method synthetic constructor <init>(Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;Lcom/android/billingclient/api/zzcz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static newBuilder()Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/billingclient/api/QueryPurchaseHistoryParams$Builder;-><init>(Lcom/android/billingclient/api/zzcz;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method
