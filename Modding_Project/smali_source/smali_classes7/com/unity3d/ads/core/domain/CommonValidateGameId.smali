.class public final Lcom/unity3d/ads/core/domain/CommonValidateGameId;
.super Ljava/lang/Object;
.source "CommonValidateGameId.kt"

# interfaces
.implements Lcom/unity3d/ads/core/domain/ValidateGameId;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final getGameId:Lcom/unity3d/ads/core/domain/GetGameId;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final setGameId:Lcom/unity3d/ads/core/domain/SetGameId;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/core/domain/GetGameId;Lcom/unity3d/ads/core/domain/SetGameId;)V
    .locals 1
    .param p1    # Lcom/unity3d/ads/core/domain/GetGameId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/ads/core/domain/SetGameId;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "getGameId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "setGameId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/unity3d/ads/core/domain/CommonValidateGameId;->getGameId:Lcom/unity3d/ads/core/domain/GetGameId;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/unity3d/ads/core/domain/CommonValidateGameId;->setGameId:Lcom/unity3d/ads/core/domain/SetGameId;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/CommonValidateGameId;->getGameId:Lcom/unity3d/ads/core/domain/GetGameId;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/unity3d/ads/core/domain/GetGameId;->invoke()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    if-nez p1, :cond_1

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    return p1

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/unity3d/ads/core/domain/CommonValidateGameId;->setGameId:Lcom/unity3d/ads/core/domain/SetGameId;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Lcom/unity3d/ads/core/domain/SetGameId;->invoke(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return v1
.end method
