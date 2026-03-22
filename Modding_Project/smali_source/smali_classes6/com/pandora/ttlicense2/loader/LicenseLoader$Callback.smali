.class public interface abstract Lcom/pandora/ttlicense2/loader/LicenseLoader$Callback;
.super Ljava/lang/Object;
.source "LicenseLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandora/ttlicense2/loader/LicenseLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onLoadCanceled(Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;)V
    .param p1    # Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onLoadComplete(Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;Lcom/pandora/ttlicense2/loader/LicenseLoader$Result;)V
    .param p1    # Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/pandora/ttlicense2/loader/LicenseLoader$Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onLoadError(Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;Ljava/io/IOException;)V
    .param p1    # Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/IOException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onLoadProgressChanged(Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;F)V
    .param p1    # Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onLoadStart(Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;)V
    .param p1    # Lcom/pandora/ttlicense2/loader/LicenseLoader$Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
