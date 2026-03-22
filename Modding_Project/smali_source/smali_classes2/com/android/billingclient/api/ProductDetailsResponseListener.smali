.class public interface abstract Lcom/android/billingclient/api/ProductDetailsResponseListener;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"


# virtual methods
.method public abstract onProductDetailsResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/QueryProductDetailsResult;)V
    .param p1    # Lcom/android/billingclient/api/BillingResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/billingclient/api/QueryProductDetailsResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
