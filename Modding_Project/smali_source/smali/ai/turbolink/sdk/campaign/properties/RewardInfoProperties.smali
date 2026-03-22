.class public final Lai/turbolink/sdk/campaign/properties/RewardInfoProperties;
.super Ljava/lang/Object;
.source "ListenerRedirectProperties.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private kvData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lai/turbolink/sdk/deeplink/LinkDataProperties;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private title:Ljava/lang/String;
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
    iput-object v0, p0, Lai/turbolink/sdk/campaign/properties/RewardInfoProperties;->title:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final geTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/campaign/properties/RewardInfoProperties;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getKvData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lai/turbolink/sdk/deeplink/LinkDataProperties;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/campaign/properties/RewardInfoProperties;->kvData:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setKvData(Ljava/util/List;)Lai/turbolink/sdk/campaign/properties/RewardInfoProperties;
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
            "Lai/turbolink/sdk/campaign/properties/RewardInfoProperties;"
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
    iput-object p1, p0, Lai/turbolink/sdk/campaign/properties/RewardInfoProperties;->kvData:Ljava/util/List;

    .line 7
    .line 8
    return-object p0
.end method

.method public final setTitle(Ljava/lang/String;)Lai/turbolink/sdk/campaign/properties/RewardInfoProperties;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "title"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/campaign/properties/RewardInfoProperties;->title:Ljava/lang/String;

    .line 7
    .line 8
    return-object p0
.end method
