.class public interface abstract Lcom/ss/ttvideoengine/database/IKVStorageProvider;
.super Ljava/lang/Object;
.source "IKVStorageProvider.java"


# virtual methods
.method public getKVStorage(Ljava/lang/String;)Lcom/ss/ttvideoengine/database/IKVStorage;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "Not implemented on this provider"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method
