.class final Lcom/unity3d/services/core/di/UnityAdsModule$provideByteStringDataStore$1;
.super Lkotlin/jvm/internal/Lambda;
.source "UnityAdsModule.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/services/core/di/UnityAdsModule;->provideByteStringDataStore(Landroid/content/Context;Lgt/c0;Ljava/lang/String;)Landroidx/datastore/core/DataStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $dataStoreFile:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/unity3d/services/core/di/UnityAdsModule$provideByteStringDataStore$1;->$context:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/unity3d/services/core/di/UnityAdsModule$provideByteStringDataStore$1;->$dataStoreFile:Ljava/lang/String;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/io/File;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/unity3d/services/core/di/UnityAdsModule$provideByteStringDataStore$1;->$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/unity3d/services/core/di/UnityAdsModule$provideByteStringDataStore$1;->$dataStoreFile:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/unity3d/ads/core/extensions/ContextExtensionsKt;->unityAdsDataStoreFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/unity3d/services/core/di/UnityAdsModule$provideByteStringDataStore$1;->invoke()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
