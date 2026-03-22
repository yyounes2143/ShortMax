.class public final Lai/turbolink/sdk/campaign/properties/ListenerRewardsProperties;
.super Ljava/lang/Object;
.source "ListenerRewardsProperties.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private createdAt:I

.field private hashId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private kvData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lai/turbolink/sdk/deeplink/LinkDataProperties;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lai/turbolink/sdk/campaign/properties/ListenerRewardsProperties;->hashId:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lai/turbolink/sdk/campaign/properties/ListenerRewardsProperties;->kvData:Ljava/util/List;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final getCreateAt()I
    .locals 1

    .line 1
    iget v0, p0, Lai/turbolink/sdk/campaign/properties/ListenerRewardsProperties;->createdAt:I

    .line 2
    .line 3
    return v0
.end method

.method public final getHashId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/campaign/properties/ListenerRewardsProperties;->hashId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getKVData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lai/turbolink/sdk/deeplink/LinkDataProperties;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/campaign/properties/ListenerRewardsProperties;->kvData:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setCreateAt(I)Lai/turbolink/sdk/campaign/properties/ListenerRewardsProperties;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iput p1, p0, Lai/turbolink/sdk/campaign/properties/ListenerRewardsProperties;->createdAt:I

    .line 2
    .line 3
    return-object p0
.end method

.method public final setHashId(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/ListenerRewardsProperties;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "hashId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/campaign/properties/ListenerRewardsProperties;->hashId:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setKVData(Ljava/util/List;)Lai/turbolink/sdk/campaign/properties/ListenerRewardsProperties;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lai/turbolink/sdk/deeplink/LinkDataProperties;",
            ">;)",
            "Lai/turbolink/sdk/campaign/properties/ListenerRewardsProperties;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "kvData"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/campaign/properties/ListenerRewardsProperties;->kvData:Ljava/util/List;

    .line 7
    .line 8
    return-object p0
.end method
