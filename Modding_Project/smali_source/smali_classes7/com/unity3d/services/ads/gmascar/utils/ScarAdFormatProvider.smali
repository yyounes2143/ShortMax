.class public final Lcom/unity3d/services/ads/gmascar/utils/ScarAdFormatProvider;
.super Ljava/lang/Object;
.source "ScarAdFormatProvider.kt"

# interfaces
.implements Lcom/unity3d/services/ads/gmascar/utils/IScarAdFormatProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/services/ads/gmascar/utils/ScarAdFormatProvider$WhenMappings;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final experiments:Lcom/unity3d/services/core/configuration/IExperiments;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final tokenConfiguration:Lcom/unity3d/ads/TokenConfiguration;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/TokenConfiguration;Lcom/unity3d/services/core/configuration/IExperiments;)V
    .locals 1
    .param p1    # Lcom/unity3d/ads/TokenConfiguration;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/services/core/configuration/IExperiments;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "experiments"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/unity3d/services/ads/gmascar/utils/ScarAdFormatProvider;->tokenConfiguration:Lcom/unity3d/ads/TokenConfiguration;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/unity3d/services/ads/gmascar/utils/ScarAdFormatProvider;->experiments:Lcom/unity3d/services/core/configuration/IExperiments;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public buildAdFormatList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/unity3d/services/ads/gmascar/utils/ScarAdFormatProvider;->tokenConfiguration:Lcom/unity3d/ads/TokenConfiguration;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    sget-object v1, Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;->REWARDED:Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;

    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    sget-object v1, Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;->INTERSTITIAL:Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;

    .line 16
    .line 17
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/unity3d/services/ads/gmascar/utils/ScarAdFormatProvider;->experiments:Lcom/unity3d/services/core/configuration/IExperiments;

    .line 21
    .line 22
    invoke-interface {v1}, Lcom/unity3d/services/core/configuration/IExperiments;->isScarBannerHbEnabled()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_2

    .line 27
    .line 28
    sget-object v1, Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;->BANNER:Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;

    .line 29
    .line 30
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {v1}, Lcom/unity3d/ads/TokenConfiguration;->getAdFormat()Lcom/unity3d/ads/AdFormat;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    sget-object v2, Lcom/unity3d/services/ads/gmascar/utils/ScarAdFormatProvider$WhenMappings;->$EnumSwitchMapping$0:[I

    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    aget v1, v2, v1

    .line 45
    .line 46
    const/4 v2, 0x1

    .line 47
    if-ne v1, v2, :cond_1

    .line 48
    .line 49
    iget-object v1, p0, Lcom/unity3d/services/ads/gmascar/utils/ScarAdFormatProvider;->experiments:Lcom/unity3d/services/core/configuration/IExperiments;

    .line 50
    .line 51
    invoke-interface {v1}, Lcom/unity3d/services/core/configuration/IExperiments;->isScarBannerHbEnabled()Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    sget-object v1, Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;->BANNER:Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;

    .line 58
    .line 59
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/unity3d/services/ads/gmascar/utils/ScarAdFormatProvider;->tokenConfiguration:Lcom/unity3d/ads/TokenConfiguration;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/unity3d/ads/TokenConfiguration;->getAdFormat()Lcom/unity3d/ads/AdFormat;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v1}, Lcom/unity3d/ads/core/extensions/AdFormatExtensions;->toUnityAdFormat(Lcom/unity3d/ads/AdFormat;)Lcom/unity3d/scar/adapter/common/scarads/UnityAdFormat;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_0
    return-object v0
.end method

.method public final getExperiments()Lcom/unity3d/services/core/configuration/IExperiments;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/utils/ScarAdFormatProvider;->experiments:Lcom/unity3d/services/core/configuration/IExperiments;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTokenConfiguration()Lcom/unity3d/ads/TokenConfiguration;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/services/ads/gmascar/utils/ScarAdFormatProvider;->tokenConfiguration:Lcom/unity3d/ads/TokenConfiguration;

    .line 2
    .line 3
    return-object v0
.end method
