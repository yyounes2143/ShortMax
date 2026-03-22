.class public interface abstract Lcom/unity3d/ads/core/data/manager/StorageManager;
.super Ljava/lang/Object;
.source "StorageManager.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract addStorageLocation(Lcom/unity3d/services/core/device/StorageManager$StorageType;Ljava/lang/String;)V
    .param p1    # Lcom/unity3d/services/core/device/StorageManager$StorageType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract getStorage(Lcom/unity3d/services/core/device/StorageManager$StorageType;)Lcom/unity3d/services/core/device/Storage;
    .param p1    # Lcom/unity3d/services/core/device/StorageManager$StorageType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract hasInitialized()V
.end method

.method public abstract hasStorage(Lcom/unity3d/services/core/device/StorageManager$StorageType;)Z
    .param p1    # Lcom/unity3d/services/core/device/StorageManager$StorageType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract init(Landroid/content/Context;)Z
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract initStorage(Lcom/unity3d/services/core/device/StorageManager$StorageType;)V
    .param p1    # Lcom/unity3d/services/core/device/StorageManager$StorageType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract removeStorage(Lcom/unity3d/services/core/device/StorageManager$StorageType;)V
    .param p1    # Lcom/unity3d/services/core/device/StorageManager$StorageType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
