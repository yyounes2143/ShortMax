.class public final Lcom/unity3d/ads/core/data/datasource/AndroidLegacyConfigStoreDataSource;
.super Ljava/lang/Object;
.source "AndroidLegacyConfigStoreDataSource.kt"

# interfaces
.implements Lcom/unity3d/ads/core/data/datasource/ByteStringDataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/data/datasource/AndroidLegacyConfigStoreDataSource$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAndroidLegacyConfigStoreDataSource.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidLegacyConfigStoreDataSource.kt\ncom/unity3d/ads/core/data/datasource/AndroidLegacyConfigStoreDataSource\n+ 2 ByteStringStoreKt.kt\ncom/unity3d/ads/datastore/ByteStringStoreKtKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,42:1\n10#2:43\n1#3:44\n*S KotlinDebug\n*F\n+ 1 AndroidLegacyConfigStoreDataSource.kt\ncom/unity3d/ads/core/data/datasource/AndroidLegacyConfigStoreDataSource\n*L\n26#1:43\n26#1:44\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/ads/core/data/datasource/AndroidLegacyConfigStoreDataSource$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final KEY_CONFIGURATION_STORE:Ljava/lang/String; = "configuration.store"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final storageManager:Lcom/unity3d/ads/core/data/manager/StorageManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/unity3d/ads/core/data/datasource/AndroidLegacyConfigStoreDataSource$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/data/datasource/AndroidLegacyConfigStoreDataSource$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/unity3d/ads/core/data/datasource/AndroidLegacyConfigStoreDataSource;->Companion:Lcom/unity3d/ads/core/data/datasource/AndroidLegacyConfigStoreDataSource$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/unity3d/ads/core/data/manager/StorageManager;)V
    .locals 1
    .param p1    # Lcom/unity3d/ads/core/data/manager/StorageManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "storageManager"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidLegacyConfigStoreDataSource;->storageManager:Lcom/unity3d/ads/core/data/manager/StorageManager;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public get(Lrs/c;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/unity3d/ads/core/data/datasource/AndroidLegacyConfigStoreDataSource;->storageManager:Lcom/unity3d/ads/core/data/manager/StorageManager;

    .line 2
    .line 3
    sget-object v0, Lcom/unity3d/services/core/device/StorageManager$StorageType;->PRIVATE:Lcom/unity3d/services/core/device/StorageManager$StorageType;

    .line 4
    .line 5
    invoke-interface {p1, v0}, Lcom/unity3d/ads/core/data/manager/StorageManager;->getStorage(Lcom/unity3d/services/core/device/StorageManager$StorageType;)Lcom/unity3d/services/core/device/Storage;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string v0, "configuration.store"

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/unity3d/services/core/misc/JsonStorage;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    instance-of v0, p1, Ljava/lang/String;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    check-cast p1, Ljava/lang/String;

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object p1, v1

    .line 24
    :goto_0
    :try_start_0
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 25
    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    invoke-static {p1, v0}, Lcom/unity3d/ads/core/extensions/ProtobufExtensionsKt;->fromBase64(Ljava/lang/String;Z)Lcom/google/protobuf/ByteString;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    goto :goto_1

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    move-object p1, v1

    .line 37
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    goto :goto_3

    .line 42
    :goto_2
    sget-object v0, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 43
    .line 44
    invoke-static {p1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    :goto_3
    invoke-static {p1}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    goto :goto_4

    .line 59
    :cond_2
    move-object v1, p1

    .line 60
    :goto_4
    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 61
    .line 62
    sget-object p1, Lcom/unity3d/ads/datastore/ByteStringStoreKt$Dsl;->Companion:Lcom/unity3d/ads/datastore/ByteStringStoreKt$Dsl$Companion;

    .line 63
    .line 64
    invoke-static {}, Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;->newBuilder()Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore$Builder;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    const-string v2, "newBuilder()"

    .line 69
    .line 70
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1, v0}, Lcom/unity3d/ads/datastore/ByteStringStoreKt$Dsl$Companion;->_create(Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore$Builder;)Lcom/unity3d/ads/datastore/ByteStringStoreKt$Dsl;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-nez v1, :cond_3

    .line 78
    .line 79
    sget-object v1, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    .line 80
    .line 81
    const-string v0, "EMPTY"

    .line 82
    .line 83
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :cond_3
    invoke-virtual {p1, v1}, Lcom/unity3d/ads/datastore/ByteStringStoreKt$Dsl;->setData(Lcom/google/protobuf/ByteString;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/unity3d/ads/datastore/ByteStringStoreKt$Dsl;->_build()Lcom/unity3d/ads/datastore/ByteStringStoreOuterClass$ByteStringStore;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    return-object p1
.end method

.method public set(Lcom/google/protobuf/ByteString;Lrs/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lcom/google/protobuf/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ByteString;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/unity3d/ads/core/data/datasource/AndroidLegacyConfigStoreDataSource;->storageManager:Lcom/unity3d/ads/core/data/manager/StorageManager;

    .line 2
    .line 3
    sget-object v0, Lcom/unity3d/services/core/device/StorageManager$StorageType;->PRIVATE:Lcom/unity3d/services/core/device/StorageManager$StorageType;

    .line 4
    .line 5
    invoke-interface {p2, v0}, Lcom/unity3d/ads/core/data/manager/StorageManager;->getStorage(Lcom/unity3d/services/core/device/StorageManager$StorageType;)Lcom/unity3d/services/core/device/Storage;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-static {p1, v0}, Lcom/unity3d/ads/core/extensions/ProtobufExtensionsKt;->toBase64(Lcom/google/protobuf/ByteString;Z)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string v0, "configuration.store"

    .line 15
    .line 16
    invoke-virtual {p2, v0, p1}, Lcom/unity3d/services/core/misc/JsonStorage;->set(Ljava/lang/String;Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Lcom/unity3d/services/core/device/Storage;->writeStorage()Z

    .line 20
    .line 21
    .line 22
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 23
    .line 24
    return-object p1
.end method
