.class interface abstract Lcom/pandora/ttlicense2/LicenseSession$LicenseSessionListener;
.super Ljava/lang/Object;
.source "LicenseSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandora/ttlicense2/LicenseSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "LicenseSessionListener"
.end annotation


# virtual methods
.method public abstract onLicenseError(Ljava/lang/Exception;Z)V
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract onLicenseRetry()V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract onLicenseSuccess(Lcom/pandora/ttlicense2/LicenseFile;)V
    .param p1    # Lcom/pandora/ttlicense2/LicenseFile;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract onLicenseSuccessSync(Lcom/pandora/ttlicense2/LicenseFile;)V
    .param p1    # Lcom/pandora/ttlicense2/LicenseFile;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onLicenseUpdateError(Ljava/lang/Exception;Z)V
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract onLicenseUpdateRetry()V
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract onLicenseUpdateSuccess(Lcom/pandora/ttlicense2/LicenseFile;)V
    .param p1    # Lcom/pandora/ttlicense2/LicenseFile;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation
.end method

.method public abstract onLicenseUpdateSuccessSync(Lcom/pandora/ttlicense2/LicenseFile;)V
    .param p1    # Lcom/pandora/ttlicense2/LicenseFile;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/WorkerThread;
    .end annotation
.end method
