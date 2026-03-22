.class interface abstract Lcom/pandora/ttlicense2/LicenseRetryTrigger$LicenseRetryListener;
.super Ljava/lang/Object;
.source "LicenseRetryTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandora/ttlicense2/LicenseRetryTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "LicenseRetryListener"
.end annotation


# virtual methods
.method public abstract onActivityResumed()V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract onNetworkConnectionChanged(Landroid/net/NetworkInfo;)V
    .param p1    # Landroid/net/NetworkInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method
