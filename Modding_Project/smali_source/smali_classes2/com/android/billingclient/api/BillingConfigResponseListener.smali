.class public interface abstract Lcom/android/billingclient/api/BillingConfigResponseListener;
.super Ljava/lang/Object;
.source "com.android.billingclient:billing@@8.0.0"


# annotations
.annotation build Lcom/android/billingclient/api/zzi;
.end annotation


# virtual methods
.method public abstract onBillingConfigResponse(Lcom/android/billingclient/api/BillingResult;Lcom/android/billingclient/api/BillingConfig;)V
    .param p1    # Lcom/android/billingclient/api/BillingResult;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/billingclient/api/BillingConfig;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method
