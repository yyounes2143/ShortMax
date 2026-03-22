.class public Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;
.super Ljava/lang/Exception;
.source "UnityAdsNetworkException.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final client:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final code:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final cronetCode:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final message:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final protocol:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final type:Lcom/unity3d/ads/core/data/model/OperationType;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final url:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/unity3d/ads/core/data/model/OperationType;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/ads/core/data/model/OperationType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "message"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 4
    iput-object p1, p0, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->message:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->type:Lcom/unity3d/ads/core/data/model/OperationType;

    .line 6
    iput-object p3, p0, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->code:Ljava/lang/Integer;

    .line 7
    iput-object p4, p0, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->url:Ljava/lang/String;

    .line 8
    iput-object p5, p0, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->protocol:Ljava/lang/String;

    .line 9
    iput-object p6, p0, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->cronetCode:Ljava/lang/Integer;

    .line 10
    iput-object p7, p0, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->client:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/unity3d/ads/core/data/model/OperationType;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 v0, p8, 0x2

    if-eqz v0, :cond_0

    .line 1
    sget-object v0, Lcom/unity3d/ads/core/data/model/OperationType;->UNKNOWN:Lcom/unity3d/ads/core/data/model/OperationType;

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    and-int/lit8 v1, p8, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    move-object v1, p3

    :goto_1
    and-int/lit8 v3, p8, 0x8

    if-eqz v3, :cond_2

    move-object v3, v2

    goto :goto_2

    :cond_2
    move-object v3, p4

    :goto_2
    and-int/lit8 v4, p8, 0x10

    if-eqz v4, :cond_3

    move-object v4, v2

    goto :goto_3

    :cond_3
    move-object v4, p5

    :goto_3
    and-int/lit8 v5, p8, 0x20

    if-eqz v5, :cond_4

    move-object v5, v2

    goto :goto_4

    :cond_4
    move-object v5, p6

    :goto_4
    and-int/lit8 v6, p8, 0x40

    if-eqz v6, :cond_5

    goto :goto_5

    :cond_5
    move-object v2, p7

    :goto_5
    move-object p2, p0

    move-object p3, p1

    move-object p4, v0

    move-object p5, v1

    move-object p6, v3

    move-object p7, v4

    move-object p8, v5

    move-object/from16 p9, v2

    .line 2
    invoke-direct/range {p2 .. p9}, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;-><init>(Ljava/lang/String;Lcom/unity3d/ads/core/data/model/OperationType;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getClient()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->client:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCode()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->code:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCronetCode()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->cronetCode:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getProtocol()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->protocol:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getType()Lcom/unity3d/ads/core/data/model/OperationType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->type:Lcom/unity3d/ads/core/data/model/OperationType;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/core/data/model/exception/UnityAdsNetworkException;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
