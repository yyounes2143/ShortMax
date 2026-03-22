.class public final Lcom/unity3d/ads/core/configuration/GameServerIdReader;
.super Lcom/unity3d/ads/core/configuration/MetadataReader;
.source "GameServerIdReader.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/core/configuration/GameServerIdReader$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/unity3d/ads/core/configuration/MetadataReader<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/unity3d/ads/core/configuration/GameServerIdReader$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PLAYER_SERVER_ID_KEY:Ljava/lang/String; = "player.server_id.value"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/unity3d/ads/core/configuration/GameServerIdReader$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/unity3d/ads/core/configuration/GameServerIdReader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/unity3d/ads/core/configuration/GameServerIdReader;->Companion:Lcom/unity3d/ads/core/configuration/GameServerIdReader$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/unity3d/services/core/misc/JsonStorage;)V
    .locals 1
    .param p1    # Lcom/unity3d/services/core/misc/JsonStorage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "jsonStorage"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "player.server_id.value"

    .line 7
    .line 8
    invoke-direct {p0, p1, v0}, Lcom/unity3d/ads/core/configuration/MetadataReader;-><init>(Lcom/unity3d/services/core/misc/JsonStorage;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
