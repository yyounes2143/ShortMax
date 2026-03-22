.class public Lcom/ss/ttvideoengine/source/strategy/CodecStrategy;
.super Ljava/lang/Object;
.source "CodecStrategy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;,
        Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;,
        Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Decoder;,
        Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$SmartUrlVod;
    }
.end annotation


# static fields
.field public static final COST_SAVING_FIRST_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;",
            ">;"
        }
    .end annotation
.end field

.field public static final FALLBACK_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;",
            ">;"
        }
    .end annotation
.end field

.field public static final HARDWARE_DECODE_FIRST_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;",
            ">;"
        }
    .end annotation
.end field

.field public static final KEY_COST_SAVING_FIST:I = 0x1

.field public static final KEY_HARDWARE_DECODE_FIRST:I = 0x2

.field public static final TAG:Ljava/lang/String; = "CodecStrategy"


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;->h266_SOFTWARE:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 2
    .line 3
    sget-object v1, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;->h265_HARDWARE:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 4
    .line 5
    sget-object v2, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;->h265_SOFTWARE:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 6
    .line 7
    sget-object v3, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;->H264_HARDWARE:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 8
    .line 9
    sget-object v4, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;->H264_SOFTWARE:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 10
    .line 11
    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 12
    .line 13
    .line 14
    move-result-object v5

    .line 15
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    sput-object v5, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy;->COST_SAVING_FIRST_LIST:Ljava/util/List;

    .line 24
    .line 25
    filled-new-array {v1, v3, v0, v2, v4}, [Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    sput-object v5, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy;->HARDWARE_DECODE_FIRST_LIST:Ljava/util/List;

    .line 38
    .line 39
    filled-new-array {v4, v3, v2, v1, v0}, [Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sput-object v0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy;->FALLBACK_LIST:Ljava/util/List;

    .line 52
    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static dimensions(Lcom/ss/ttvideoengine/strategy/source/StrategySource;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/strategy/source/StrategySource;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/ss/ttvideoengine/source/Source;->codecStrategy()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    sget-object v0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy;->COST_SAVING_FIRST_LIST:Ljava/util/List;

    .line 9
    .line 10
    invoke-static {p0, v0}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy;->supportedDimensions(Lcom/ss/ttvideoengine/strategy/source/StrategySource;Ljava/util/List;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0

    .line 15
    :cond_0
    const/4 v1, 0x2

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    sget-object v0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy;->HARDWARE_DECODE_FIRST_LIST:Ljava/util/List;

    .line 19
    .line 20
    invoke-static {p0, v0}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy;->supportedDimensions(Lcom/ss/ttvideoengine/strategy/source/StrategySource;Ljava/util/List;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    return-object p0

    .line 25
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string/jumbo v2, "unsupported strategy! "

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p0
.end method

.method public static dump()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v1, "smartUrl="

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->getSmartUrlEnabled()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string v1, ", 4_h="

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->getH264HardwareEnable()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", b_h="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->geth265HardwareEnable()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", b_s="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->geth265SoftwareEnable()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, ", b_s_cap="

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->geth265SoftwareCapabilityEnable()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, ", b2_s="

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-static {}, Lcom/ss/ttvideoengine/InfoWrapper;->geth266SoftwareEnable()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    return-object v0
.end method

.method public static fallbackDimensions(Lcom/ss/ttvideoengine/strategy/source/StrategySource;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/strategy/source/StrategySource;",
            ")",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy;->FALLBACK_LIST:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy;->supportedDimensions(Lcom/ss/ttvideoengine/strategy/source/StrategySource;Ljava/util/List;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method

.method public static isCodecStrategyValid(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_1

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-ne p0, v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :cond_1
    :goto_0
    return v0
.end method

.method private static resolveDirectUrl(Lcom/ss/ttvideoengine/source/DirectUrlSource;Ljava/util/List;Ljava/util/List;)Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;
    .locals 3
    .param p0    # Lcom/ss/ttvideoengine/source/DirectUrlSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/source/DirectUrlSource;",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;",
            ">;)",
            "Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/source/DirectUrlSource;->allItems()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_3

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 28
    .line 29
    if-eqz p2, :cond_2

    .line 30
    .line 31
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    :cond_2
    iget-object v2, v0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;->encodeType:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {p0, v2}, Lcom/ss/ttvideoengine/source/DirectUrlSource;->findItemByEncodeType(Ljava/lang/String;)Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    new-instance p1, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;

    .line 46
    .line 47
    invoke-direct {p1, p0, v0, v2, v1}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;-><init>(Lcom/ss/ttvideoengine/source/DirectUrlSource;Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;)V

    .line 48
    .line 49
    .line 50
    return-object p1

    .line 51
    :cond_3
    return-object v1
.end method

.method public static resolveFallback(Lcom/ss/ttvideoengine/strategy/source/StrategySource;Ljava/util/List;)Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;
    .locals 4
    .param p0    # Lcom/ss/ttvideoengine/strategy/source/StrategySource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/strategy/source/StrategySource;",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;",
            ">;)",
            "Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy;->fallbackDimensions(Lcom/ss/ttvideoengine/strategy/source/StrategySource;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0}, Lcom/ss/ttvideoengine/source/Source;->type()Lcom/ss/ttvideoengine/source/Source$Type;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$1;->$SwitchMap$com$ss$ttvideoengine$source$Source$Type:[I

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    aget v2, v2, v3

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    if-eq v2, v3, :cond_1

    .line 19
    .line 20
    const/4 v3, 0x2

    .line 21
    if-ne v2, v3, :cond_0

    .line 22
    .line 23
    check-cast p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;

    .line 24
    .line 25
    invoke-static {p0, v0, p1}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy;->resolveVidPlayAuthToken(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;Ljava/util/List;Ljava/util/List;)Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0

    .line 30
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    new-instance p1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string/jumbo v0, "unsupported type! "

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p0

    .line 54
    :cond_1
    check-cast p0, Lcom/ss/ttvideoengine/source/DirectUrlSource;

    .line 55
    .line 56
    invoke-static {p0, v0, p1}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy;->resolveDirectUrl(Lcom/ss/ttvideoengine/source/DirectUrlSource;Ljava/util/List;Ljava/util/List;)Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;

    .line 57
    .line 58
    .line 59
    move-result-object p0

    .line 60
    return-object p0
.end method

.method private static resolveSmartUrl(Lcom/ss/ttvideoengine/source/DirectUrlSource;Ljava/util/List;Ljava/util/List;)Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;
    .locals 4
    .param p0    # Lcom/ss/ttvideoengine/source/DirectUrlSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/source/DirectUrlSource;",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;",
            ">;)",
            "Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/source/DirectUrlSource;->allItems()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    return-object v1

    .line 13
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_3

    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 33
    .line 34
    if-eqz p2, :cond_2

    .line 35
    .line 36
    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_1

    .line 41
    .line 42
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    return-object v1

    .line 53
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    :cond_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    if-eqz p2, :cond_7

    .line 62
    .line 63
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    check-cast p2, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 68
    .line 69
    iget-object v0, p2, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;->encodeType:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {p0, v0}, Lcom/ss/ttvideoengine/source/DirectUrlSource;->findItemByEncodeType(Ljava/lang/String;)Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    if-eqz v0, :cond_6

    .line 76
    .line 77
    new-instance p1, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;

    .line 78
    .line 79
    invoke-direct {p1, p0, p2, v0, v1}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;-><init>(Lcom/ss/ttvideoengine/source/DirectUrlSource;Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;)V

    .line 80
    .line 81
    .line 82
    return-object p1

    .line 83
    :cond_6
    iget-object v0, p2, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;->encodeType:Ljava/lang/String;

    .line 84
    .line 85
    invoke-static {}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$SmartUrlVod;->encodeType()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_5

    .line 94
    .line 95
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/source/DirectUrlSource;->firstItem()Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    new-instance v0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;

    .line 100
    .line 101
    invoke-direct {v0, p0, p2, v1, p1}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;-><init>(Lcom/ss/ttvideoengine/source/DirectUrlSource;Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;)V

    .line 102
    .line 103
    .line 104
    return-object v0

    .line 105
    :cond_7
    return-object v1
.end method

.method public static resolveStartPlayback(Lcom/ss/ttvideoengine/strategy/source/StrategySource;Z)Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;
    .locals 5
    .param p0    # Lcom/ss/ttvideoengine/strategy/source/StrategySource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy;->dimensions(Lcom/ss/ttvideoengine/strategy/source/StrategySource;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p0}, Lcom/ss/ttvideoengine/source/Source;->type()Lcom/ss/ttvideoengine/source/Source$Type;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    sget-object v2, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$1;->$SwitchMap$com$ss$ttvideoengine$source$Source$Type:[I

    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    aget v2, v2, v3

    .line 16
    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    if-eq v2, v3, :cond_1

    .line 20
    .line 21
    const/4 p1, 0x2

    .line 22
    if-ne v2, p1, :cond_0

    .line 23
    .line 24
    check-cast p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;

    .line 25
    .line 26
    invoke-static {p0, v0, v4}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy;->resolveVidPlayAuthToken(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;Ljava/util/List;Ljava/util/List;)Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0

    .line 31
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 32
    .line 33
    new-instance p1, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    const-string/jumbo v0, "unsupported type! "

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p0

    .line 55
    :cond_1
    check-cast p0, Lcom/ss/ttvideoengine/source/DirectUrlSource;

    .line 56
    .line 57
    invoke-static {p0}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$SmartUrlVod;->isEnable(Lcom/ss/ttvideoengine/source/DirectUrlSource;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    invoke-static {p0, v0, v4}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy;->resolveSmartUrl(Lcom/ss/ttvideoengine/source/DirectUrlSource;Ljava/util/List;Ljava/util/List;)Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    return-object p0

    .line 70
    :cond_2
    invoke-static {p0, v0, v4}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy;->resolveDirectUrl(Lcom/ss/ttvideoengine/source/DirectUrlSource;Ljava/util/List;Ljava/util/List;)Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    return-object p0
.end method

.method private static resolveVidPlayAuthToken(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;Ljava/util/List;Ljava/util/List;)Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;
    .locals 3
    .param p0    # Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;",
            ">;",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;",
            ">;)",
            "Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 16
    .line 17
    if-eqz p2, :cond_1

    .line 18
    .line 19
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->encodeType()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->encodeType()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v2, v0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;->encodeType:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    :cond_2
    new-instance p1, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;

    .line 44
    .line 45
    invoke-direct {p1, p0, v0}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;-><init>(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;)V

    .line 46
    .line 47
    .line 48
    return-object p1

    .line 49
    :cond_3
    const/4 p0, 0x0

    .line 50
    return-object p0
.end method

.method public static resolveWithEncoderType(Ljava/lang/String;Lcom/ss/ttvideoengine/strategy/source/StrategySource;Ljava/util/List;)Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/ss/ttvideoengine/strategy/source/StrategySource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/ss/ttvideoengine/strategy/source/StrategySource;",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;",
            ">;)",
            "Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy;->dimensions(Lcom/ss/ttvideoengine/strategy/source/StrategySource;)Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_2

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 20
    .line 21
    if-eqz p2, :cond_1

    .line 22
    .line 23
    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_0

    .line 28
    .line 29
    :cond_1
    iget-object v1, v0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;->encodeType:Ljava/lang/String;

    .line 30
    .line 31
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-eqz v1, :cond_0

    .line 36
    .line 37
    return-object v0

    .line 38
    :cond_2
    const/4 p0, 0x0

    .line 39
    return-object p0
.end method

.method private static supportedDimensions(Lcom/ss/ttvideoengine/strategy/source/StrategySource;Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ss/ttvideoengine/strategy/source/StrategySource;",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/ss/ttvideoengine/source/Source;->type()Lcom/ss/ttvideoengine/source/Source$Type;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/ss/ttvideoengine/source/Source$Type;->VID_PLAY_AUTH_TOKEN_SOURCE:Lcom/ss/ttvideoengine/source/Source$Type;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    check-cast p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->supportedEncodeTypes()Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Decoder;->isSupport(Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;)Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-eqz v2, :cond_1

    .line 43
    .line 44
    if-eqz p0, :cond_2

    .line 45
    .line 46
    iget-object v2, v1, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;->encodeType:Ljava/lang/String;

    .line 47
    .line 48
    invoke-interface {p0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_1

    .line 53
    .line 54
    :cond_2
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_3
    return-object v0
.end method
