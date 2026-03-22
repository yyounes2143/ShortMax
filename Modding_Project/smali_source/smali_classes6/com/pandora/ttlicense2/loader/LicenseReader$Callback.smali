.class public interface abstract Lcom/pandora/ttlicense2/loader/LicenseReader$Callback;
.super Ljava/lang/Object;
.source "LicenseReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandora/ttlicense2/loader/LicenseReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public abstract onReadCanceled(Lcom/pandora/ttlicense2/loader/LicenseReader$Request;)V
    .param p1    # Lcom/pandora/ttlicense2/loader/LicenseReader$Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onReadComplete(Lcom/pandora/ttlicense2/loader/LicenseReader$Request;Lcom/pandora/ttlicense2/loader/LicenseReader$Result;)V
    .param p1    # Lcom/pandora/ttlicense2/loader/LicenseReader$Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/pandora/ttlicense2/loader/LicenseReader$Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onReadCompleteSync(Lcom/pandora/ttlicense2/loader/LicenseReader$Request;Lcom/pandora/ttlicense2/loader/LicenseReader$Result;)V
    .param p1    # Lcom/pandora/ttlicense2/loader/LicenseReader$Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/pandora/ttlicense2/loader/LicenseReader$Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onReadError(Lcom/pandora/ttlicense2/loader/LicenseReader$Request;Ljava/io/IOException;)V
    .param p1    # Lcom/pandora/ttlicense2/loader/LicenseReader$Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/IOException;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onReadProgressChanged(Lcom/pandora/ttlicense2/loader/LicenseReader$Request;F)V
    .param p1    # Lcom/pandora/ttlicense2/loader/LicenseReader$Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract onReadStart(Lcom/pandora/ttlicense2/loader/LicenseReader$Request;)V
    .param p1    # Lcom/pandora/ttlicense2/loader/LicenseReader$Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
