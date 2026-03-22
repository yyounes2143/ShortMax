.class public interface abstract Lcom/ss/ttvideoengine/DataLoaderResourceProvider;
.super Ljava/lang/Object;
.source "DataLoaderResourceProvider.java"


# virtual methods
.method public getCacheDir()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public abstract getKey()Ljava/lang/String;
.end method

.method public abstract getPreloadSize()J
.end method

.method public abstract getUrls()[Ljava/lang/String;
.end method
