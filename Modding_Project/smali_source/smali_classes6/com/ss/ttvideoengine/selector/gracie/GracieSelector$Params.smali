.class public Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;
.super Ljava/lang/Object;
.source "GracieSelector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/selector/gracie/GracieSelector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation


# instance fields
.field mMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
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
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;->mMaps:Ljava/util/Map;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public abrMax(ILjava/lang/String;)Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;->mMaps:Ljava/util/Map;

    .line 8
    .line 9
    sget-object v1, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;->GRACIE_MAX_RESOLUTION_QUALITY:Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_0
    if-ltz p1, :cond_1

    .line 23
    .line 24
    iget-object p2, p0, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;->mMaps:Ljava/util/Map;

    .line 25
    .line 26
    sget-object v0, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;->GRACIE_MAX_RESOLUTION_INDEX:Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_1
    return-object p0
.end method

.method public aggressivePortraitLowBitrate(I)Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;->mMaps:Ljava/util/Map;

    .line 2
    .line 3
    sget-object v1, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;->AGGR_PORTRAIT_LOW_BIT:Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    return-object p0
.end method

.method public build()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;->mMaps:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public cellularMax(ILjava/lang/String;)Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;->mMaps:Ljava/util/Map;

    .line 8
    .line 9
    sget-object v1, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;->CELLULAR_MAX_RESOLUTION_QUALITY:Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_0
    if-ltz p1, :cond_1

    .line 23
    .line 24
    iget-object p2, p0, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;->mMaps:Ljava/util/Map;

    .line 25
    .line 26
    sget-object v0, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;->CELLULAR_MAX_RESOLUTION_INDEX:Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_1
    return-object p0
.end method

.method public displaySize(II)Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;->mMaps:Ljava/util/Map;

    .line 2
    .line 3
    sget-object v1, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;->DISPLAY_WIDTH:Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;->mMaps:Ljava/util/Map;

    .line 21
    .line 22
    sget-object v0, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;->DISPLAY_HEIGHT:Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    return-object p0
.end method

.method public downgrade(ILjava/lang/String;)Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;->mMaps:Ljava/util/Map;

    .line 8
    .line 9
    sget-object v1, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;->DOWNGRADE_RESOLUTION_QUALITY:Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_0
    if-ltz p1, :cond_1

    .line 23
    .line 24
    iget-object p2, p0, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;->mMaps:Ljava/util/Map;

    .line 25
    .line 26
    sget-object v0, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;->DOWNGRADE_RESOLUTION_INDEX:Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_1
    return-object p0
.end method

.method public screenSize(II)Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;->mMaps:Ljava/util/Map;

    .line 2
    .line 3
    sget-object v1, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;->SCREEN_WIDTH:Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;->mMaps:Ljava/util/Map;

    .line 21
    .line 22
    sget-object v0, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;->SCREEN_HEIGHT:Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    return-object p0
.end method

.method public srStrategyConfig(Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;)Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-object p0

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;->setStrategyType(I)Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;->mMaps:Ljava/util/Map;

    .line 9
    .line 10
    sget-object v1, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;->SR_STRATEGY_CONFIG:Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    return-object p0
.end method

.method public tags(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;->mMaps:Ljava/util/Map;

    .line 8
    .line 9
    sget-object v1, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;->TAG:Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;->mMaps:Ljava/util/Map;

    .line 29
    .line 30
    sget-object v0, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;->SUB_TAG:Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_1
    return-object p0
.end method

.method public userExpected(ILjava/lang/String;)Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;->mMaps:Ljava/util/Map;

    .line 8
    .line 9
    sget-object v1, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;->USER_EXPECTED_RESOLUTION_QUALITY:Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_0
    if-ltz p1, :cond_1

    .line 23
    .line 24
    iget-object p2, p0, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;->mMaps:Ljava/util/Map;

    .line 25
    .line 26
    sget-object v0, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;->USER_EXPECTED_RESOLUTION_INDEX:Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_1
    return-object p0
.end method

.method public wifiDefault(ILjava/lang/String;)Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;->mMaps:Ljava/util/Map;

    .line 8
    .line 9
    sget-object v1, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;->WIFI_DEFAULT_RESOLUTION_QUALITY:Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    :cond_0
    if-ltz p1, :cond_1

    .line 23
    .line 24
    iget-object p2, p0, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$Params;->mMaps:Ljava/util/Map;

    .line 25
    .line 26
    sget-object v0, Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;->WIFI_DEFAULT_RESOLUTION_INDEX:Lcom/ss/ttvideoengine/selector/gracie/GracieSelector$ParamsKey;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    :cond_1
    return-object p0
.end method
