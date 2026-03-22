.class public Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;
.super Ljava/lang/Object;
.source "CodecStrategyAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PreloadSourceSetter;,
        Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;,
        Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$SourceSetter;
    }
.end annotation


# instance fields
.field public final TAG:Ljava/lang/String;

.field private final mErrorDimensions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;",
            ">;"
        }
    .end annotation
.end field

.field private mResolveResult:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;

.field private mSmartUrlFetcher:Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;

.field private mSource:Lcom/ss/ttvideoengine/strategy/source/StrategySource;

.field private final mSourceSetter:Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$SourceSetter;


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)V
    .locals 1

    .line 5
    new-instance v0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;

    invoke-direct {v0, p1}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;-><init>(Lcom/ss/ttvideoengine/TTVideoEngineImpl;)V

    invoke-direct {p0, v0}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;-><init>(Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$SourceSetter;)V

    return-void
.end method

.method public constructor <init>(Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$SourceSetter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mErrorDimensions:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mSourceSetter:Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$SourceSetter;

    .line 4
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->createTag(Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$SourceSetter;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method private correctDimension(Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;)V
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mResolveResult:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iput-object p2, v0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;->correctedDimension:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 9
    .line 10
    :cond_1
    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;->access$000(Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method static createTag(Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$SourceSetter;)Ljava/lang/String;
    .locals 0
    .param p0    # Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$SourceSetter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p0}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$SourceSetter;->createTag()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static resolveVideoModelEncoderType(Lcom/ss/ttvideoengine/model/IVideoModel;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-interface {p0}, Lcom/ss/ttvideoengine/model/IVideoModel;->getCodecs()[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    if-nez p0, :cond_1

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_1
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    const-string v0, "h266"

    .line 17
    .line 18
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    const-string v0, "h265"

    .line 26
    .line 27
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    if-eqz p0, :cond_3

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_3
    const-string v0, "h264"

    .line 35
    .line 36
    :goto_0
    return-object v0
.end method

.method private setupSource(Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$SourceSetter;Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;)V
    .locals 8

    .line 1
    iput-object p2, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mResolveResult:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;

    .line 2
    iget-object v0, p2, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;->source:Lcom/ss/ttvideoengine/strategy/source/StrategySource;

    .line 3
    iget-object v1, p2, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;->correctedDimension:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    if-eqz v1, :cond_0

    :goto_0
    move-object v7, v1

    goto :goto_1

    .line 4
    :cond_0
    iget-object v1, p2, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;->dimension:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    goto :goto_0

    .line 5
    :goto_1
    invoke-interface {v0}, Lcom/ss/ttvideoengine/source/Source;->type()Lcom/ss/ttvideoengine/source/Source$Type;

    move-result-object v1

    .line 6
    sget-object v2, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$1;->$SwitchMap$com$ss$ttvideoengine$source$Source$Type:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 p2, 0x2

    if-ne v2, p2, :cond_1

    .line 7
    check-cast v0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;

    .line 8
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->vid()Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->playAuthToken()Ljava/lang/String;

    move-result-object v4

    .line 10
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->resolution()Lcom/ss/ttvideoengine/Resolution;

    move-result-object v5

    const/4 v6, 0x0

    move-object v2, p1

    .line 11
    invoke-interface/range {v2 .. v7}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$SourceSetter;->setVideoID(Ljava/lang/String;Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;Ljava/lang/String;Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;)V

    goto :goto_2

    .line 12
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unsupported source type! "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_2
    iget-object v1, p2, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;->urlItem:Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;

    .line 14
    iget-object v2, p2, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;->requestItem:Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;

    if-eqz v1, :cond_3

    .line 15
    invoke-interface {v0}, Lcom/ss/ttvideoengine/source/Source;->vid()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v1, v7, v0}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$SourceSetter;->setDirectUrl(Ljava/lang/String;Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;Z)V

    goto :goto_2

    :cond_3
    if-eqz v2, :cond_4

    .line 16
    invoke-interface {v0}, Lcom/ss/ttvideoengine/source/Source;->vid()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v2, v7, v3}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$SourceSetter;->setDirectUrl(Ljava/lang/String;Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;Z)V

    :goto_2
    return-void

    .line 17
    :cond_4
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 18
    iget-object p1, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setupSource CodecStrategy error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void
.end method

.method private setupSource(Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$SourceSetter;Lcom/ss/ttvideoengine/strategy/source/StrategySource;)V
    .locals 7

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mResolveResult:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;

    .line 20
    invoke-interface {p2}, Lcom/ss/ttvideoengine/source/Source;->type()Lcom/ss/ttvideoengine/source/Source$Type;

    move-result-object v1

    .line 21
    sget-object v2, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$1;->$SwitchMap$com$ss$ttvideoengine$source$Source$Type:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    const/4 v0, 0x3

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 22
    :cond_0
    check-cast p2, Lcom/ss/ttvideoengine/source/VideoModelSource;

    .line 23
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/source/VideoModelSource;->vid()Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/source/VideoModelSource;->videoModel()Lcom/ss/ttvideoengine/model/IVideoModel;

    move-result-object v1

    .line 25
    invoke-virtual {p2}, Lcom/ss/ttvideoengine/source/VideoModelSource;->resolution()Lcom/ss/ttvideoengine/Resolution;

    move-result-object p2

    .line 26
    invoke-interface {p1, v0, v1, p2}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$SourceSetter;->setVideoModel(Ljava/lang/String;Lcom/ss/ttvideoengine/model/IVideoModel;Lcom/ss/ttvideoengine/Resolution;)V

    goto :goto_0

    .line 27
    :cond_1
    move-object v0, p2

    check-cast v0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;

    .line 28
    invoke-interface {p2}, Lcom/ss/ttvideoengine/source/Source;->vid()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->playAuthToken()Ljava/lang/String;

    move-result-object v3

    .line 30
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->resolution()Lcom/ss/ttvideoengine/Resolution;

    move-result-object v4

    .line 31
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->encodeType()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, p1

    .line 32
    invoke-interface/range {v1 .. v6}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$SourceSetter;->setVideoID(Ljava/lang/String;Ljava/lang/String;Lcom/ss/ttvideoengine/Resolution;Ljava/lang/String;Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;)V

    goto :goto_0

    .line 33
    :cond_2
    move-object v1, p2

    check-cast v1, Lcom/ss/ttvideoengine/source/DirectUrlSource;

    .line 34
    invoke-virtual {v1}, Lcom/ss/ttvideoengine/source/DirectUrlSource;->firstItem()Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;

    move-result-object v1

    .line 35
    invoke-interface {p2}, Lcom/ss/ttvideoengine/source/Source;->vid()Ljava/lang/String;

    move-result-object p2

    const/4 v2, 0x0

    invoke-interface {p1, p2, v1, v0, v2}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$SourceSetter;->setDirectUrl(Ljava/lang/String;Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public cancelFetchSmartUrlInfo()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mSmartUrlFetcher:Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mResolveResult:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mSource:Lcom/ss/ttvideoengine/strategy/source/StrategySource;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->TAG:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "cancelFetchSmartUrlInfo "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mSource:Lcom/ss/ttvideoengine/strategy/source/StrategySource;

    .line 33
    .line 34
    invoke-interface {v2}, Lcom/ss/ttvideoengine/source/Source;->vid()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v2, " "

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget-object v2, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mResolveResult:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;

    .line 47
    .line 48
    iget-object v2, v2, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;->requestItem:Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mSmartUrlFetcher:Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->cancel()V

    .line 63
    .line 64
    .line 65
    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mSmartUrlFetcher:Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;

    .line 67
    .line 68
    return-void
.end method

.method public correctStrategy(Lcom/ss/ttvideoengine/model/IVideoModel;)V
    .locals 8

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mSourceSetter:Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$SourceSetter;

    .line 5
    .line 6
    if-eqz v0, :cond_d

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$SourceSetter;->type()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    goto/16 :goto_1

    .line 15
    .line 16
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mSourceSetter:Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$SourceSetter;

    .line 17
    .line 18
    check-cast v0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mResolveResult:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;

    .line 21
    .line 22
    if-nez v1, :cond_2

    .line 23
    .line 24
    return-void

    .line 25
    :cond_2
    iget-object v2, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mSource:Lcom/ss/ttvideoengine/strategy/source/StrategySource;

    .line 26
    .line 27
    if-nez v2, :cond_3

    .line 28
    .line 29
    return-void

    .line 30
    :cond_3
    invoke-interface {v2}, Lcom/ss/ttvideoengine/source/Source;->isCodecStrategyValid()Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-nez v3, :cond_4

    .line 35
    .line 36
    return-void

    .line 37
    :cond_4
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->resolveVideoModelEncoderType(Lcom/ss/ttvideoengine/model/IVideoModel;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    if-nez p1, :cond_5

    .line 42
    .line 43
    return-void

    .line 44
    :cond_5
    iget-object v1, v1, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;->dimension:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 45
    .line 46
    iget-object v3, v1, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;->encodeType:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_7

    .line 53
    .line 54
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d()Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    if-eqz p1, :cond_6

    .line 59
    .line 60
    iget-object p1, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->TAG:Ljava/lang/String;

    .line 61
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    const-string v2, "correctStrategy result is [right] "

    .line 68
    .line 69
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    :cond_6
    return-void

    .line 83
    :cond_7
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d()Z

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    if-eqz v3, :cond_8

    .line 88
    .line 89
    iget-object v3, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->TAG:Ljava/lang/String;

    .line 90
    .line 91
    new-instance v4, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v5, "correctStrategy result is [wrong] "

    .line 97
    .line 98
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v5, " "

    .line 105
    .line 106
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    invoke-static {v3, v4}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    :cond_8
    invoke-static {}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;->values()[Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 120
    .line 121
    .line 122
    move-result-object v3

    .line 123
    array-length v4, v3

    .line 124
    const/4 v5, 0x0

    .line 125
    :goto_0
    if-ge v5, v4, :cond_a

    .line 126
    .line 127
    aget-object v6, v3, v5

    .line 128
    .line 129
    iget-object v6, v6, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;->encodeType:Ljava/lang/String;

    .line 130
    .line 131
    iget-object v7, v1, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;->encodeType:Ljava/lang/String;

    .line 132
    .line 133
    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 134
    .line 135
    .line 136
    move-result v6

    .line 137
    if-eqz v6, :cond_9

    .line 138
    .line 139
    iget-object v6, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mErrorDimensions:Ljava/util/List;

    .line 140
    .line 141
    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    :cond_9
    add-int/lit8 v5, v5, 0x1

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_a
    iget-object v3, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mErrorDimensions:Ljava/util/List;

    .line 148
    .line 149
    invoke-static {p1, v2, v3}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy;->resolveWithEncoderType(Ljava/lang/String;Lcom/ss/ttvideoengine/strategy/source/StrategySource;Ljava/util/List;)Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d()Z

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    if-eqz v2, :cond_b

    .line 158
    .line 159
    iget-object v2, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->TAG:Ljava/lang/String;

    .line 160
    .line 161
    new-instance v3, Ljava/lang/StringBuilder;

    .line 162
    .line 163
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string v4, "correctStrategy corrected dimension = "

    .line 167
    .line 168
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    const-string v4, "; old = "

    .line 175
    .line 176
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v1

    .line 186
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    .line 188
    .line 189
    :cond_b
    if-nez p1, :cond_c

    .line 190
    .line 191
    return-void

    .line 192
    :cond_c
    invoke-direct {p0, v0, p1}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->correctDimension(Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;)V

    .line 193
    .line 194
    .line 195
    :cond_d
    :goto_1
    return-void
.end method

.method public fallbackToDirectUrl()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mSourceSetter:Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$SourceSetter;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mSource:Lcom/ss/ttvideoengine/strategy/source/StrategySource;

    .line 8
    .line 9
    if-eqz v2, :cond_1

    .line 10
    .line 11
    invoke-interface {v2}, Lcom/ss/ttvideoengine/source/Source;->type()Lcom/ss/ttvideoengine/source/Source$Type;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    sget-object v3, Lcom/ss/ttvideoengine/source/Source$Type;->DIRECT_URL_SOURCE:Lcom/ss/ttvideoengine/source/Source$Type;

    .line 16
    .line 17
    if-ne v2, v3, :cond_1

    .line 18
    .line 19
    iget-object v2, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mSource:Lcom/ss/ttvideoengine/strategy/source/StrategySource;

    .line 20
    .line 21
    check-cast v2, Lcom/ss/ttvideoengine/source/DirectUrlSource;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v2, 0x0

    .line 25
    :goto_0
    if-nez v2, :cond_2

    .line 26
    .line 27
    return v1

    .line 28
    :cond_2
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy;->resolveStartPlayback(Lcom/ss/ttvideoengine/strategy/source/StrategySource;Z)Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d()Z

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    if-eqz v3, :cond_3

    .line 37
    .line 38
    iget-object v3, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->TAG:Ljava/lang/String;

    .line 39
    .line 40
    new-instance v4, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    const-string v5, "fallbackToDirectUrl "

    .line 46
    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v5, " "

    .line 54
    .line 55
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v4

    .line 65
    invoke-static {v3, v4}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :cond_3
    if-nez v1, :cond_4

    .line 69
    .line 70
    invoke-direct {p0, v0, v2}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->setupSource(Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$SourceSetter;Lcom/ss/ttvideoengine/strategy/source/StrategySource;)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->setupSource(Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$SourceSetter;Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;)V

    .line 75
    .line 76
    .line 77
    :goto_1
    invoke-interface {v0}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$SourceSetter;->type()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-nez v1, :cond_5

    .line 82
    .line 83
    check-cast v0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;->play()V

    .line 86
    .line 87
    .line 88
    :cond_5
    const/4 v0, 0x1

    .line 89
    return v0
.end method

.method public fetchSmartUrlInfo(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Callback;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mSmartUrlFetcher:Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->cancel()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mSmartUrlFetcher:Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mSource:Lcom/ss/ttvideoengine/strategy/source/StrategySource;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    return-void

    .line 16
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mResolveResult:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;

    .line 17
    .line 18
    if-nez v0, :cond_2

    .line 19
    .line 20
    return-void

    .line 21
    :cond_2
    iget-object v0, v0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;->requestItem:Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;

    .line 22
    .line 23
    if-nez v0, :cond_3

    .line 24
    .line 25
    return-void

    .line 26
    :cond_3
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d()Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_4

    .line 31
    .line 32
    iget-object v1, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->TAG:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string v3, "fetchSmartUrlInfo "

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-object v3, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mSource:Lcom/ss/ttvideoengine/strategy/source/StrategySource;

    .line 45
    .line 46
    invoke-interface {v3}, Lcom/ss/ttvideoengine/source/Source;->vid()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v3, " "

    .line 54
    .line 55
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-object v3, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mResolveResult:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;

    .line 59
    .line 60
    iget-object v3, v3, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;->requestItem:Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;

    .line 61
    .line 62
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :cond_4
    new-instance v1, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;

    .line 73
    .line 74
    invoke-direct {v1, p1}, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;-><init>(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$Callback;)V

    .line 75
    .line 76
    .line 77
    iput-object v1, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mSmartUrlFetcher:Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;

    .line 78
    .line 79
    new-instance p1, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;

    .line 80
    .line 81
    invoke-direct {p1}, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;-><init>()V

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mSource:Lcom/ss/ttvideoengine/strategy/source/StrategySource;

    .line 85
    .line 86
    invoke-interface {v1}, Lcom/ss/ttvideoengine/source/Source;->vid()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    iput-object v1, p1, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;->videoId:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->getUrl()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    iput-object v1, p1, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;->playUrl:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;->getCacheKey()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    iput-object v0, p1, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;->cacheKey:Ljava/lang/String;

    .line 103
    .line 104
    invoke-static {}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$SmartUrlVod;->encodeType()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    iput-object v0, p1, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;->codec:Ljava/lang/String;

    .line 109
    .line 110
    invoke-static {}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$SmartUrlVod;->videoResolution()Lcom/ss/ttvideoengine/Resolution;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    sget v1, Lcom/ss/ttvideoengine/model/VideoRef;->TYPE_VIDEO:I

    .line 115
    .line 116
    invoke-virtual {v0, v1}, Lcom/ss/ttvideoengine/Resolution;->toString(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iput-object v0, p1, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;->definition:Ljava/lang/String;

    .line 121
    .line 122
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mSmartUrlFetcher:Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;

    .line 123
    .line 124
    invoke-virtual {v0, p1}, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->setRequestParams(Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher$RequestParams;)V

    .line 125
    .line 126
    .line 127
    iget-object p1, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mSmartUrlFetcher:Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/source/strategy/SmartUrlFetcher;->start()V

    .line 130
    .line 131
    .line 132
    return-void
.end method

.method public getStrategySource()Lcom/ss/ttvideoengine/strategy/source/StrategySource;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mSource:Lcom/ss/ttvideoengine/strategy/source/StrategySource;

    .line 2
    .line 3
    return-object v0
.end method

.method public interceptFallbackRetry(Lcom/ss/ttvideoengine/utils/Error;)Z
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mSourceSetter:Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$SourceSetter;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    invoke-interface {p1}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$SourceSetter;->type()I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    return v0

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mSourceSetter:Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$SourceSetter;

    .line 15
    .line 16
    check-cast p1, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;

    .line 17
    .line 18
    iget-object v1, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mSource:Lcom/ss/ttvideoengine/strategy/source/StrategySource;

    .line 19
    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    return v0

    .line 23
    :cond_2
    invoke-interface {v1}, Lcom/ss/ttvideoengine/source/Source;->isCodecStrategyValid()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-nez v2, :cond_3

    .line 28
    .line 29
    return v0

    .line 30
    :cond_3
    iget-object v2, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mResolveResult:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;

    .line 31
    .line 32
    if-nez v2, :cond_4

    .line 33
    .line 34
    return v0

    .line 35
    :cond_4
    iget-object v3, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mErrorDimensions:Ljava/util/List;

    .line 36
    .line 37
    iget-object v4, v2, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;->dimension:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 38
    .line 39
    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_5

    .line 44
    .line 45
    iget-object v3, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mErrorDimensions:Ljava/util/List;

    .line 46
    .line 47
    iget-object v2, v2, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;->dimension:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 48
    .line 49
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    :cond_5
    iget-object v2, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mErrorDimensions:Ljava/util/List;

    .line 53
    .line 54
    invoke-static {v1, v2}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy;->resolveFallback(Lcom/ss/ttvideoengine/strategy/source/StrategySource;Ljava/util/List;)Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const-string v3, " "

    .line 59
    .line 60
    if-nez v2, :cond_7

    .line 61
    .line 62
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-eqz p1, :cond_6

    .line 67
    .line 68
    iget-object p1, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->TAG:Ljava/lang/String;

    .line 69
    .line 70
    new-instance v2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    const-string v4, "resolveFallback return null! "

    .line 76
    .line 77
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-object v1, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mErrorDimensions:Ljava/util/List;

    .line 87
    .line 88
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-static {}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy;->dump()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-static {p1, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_6
    return v0

    .line 109
    :cond_7
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d()Z

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    if-eqz v0, :cond_8

    .line 114
    .line 115
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->TAG:Ljava/lang/String;

    .line 116
    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v4, "resolveFallback "

    .line 123
    .line 124
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-static {}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy;->dump()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :cond_8
    invoke-direct {p0, p1, v2}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->setupSource(Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$SourceSetter;Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$PlayerSourceSetter;->play()V

    .line 151
    .line 152
    .line 153
    const/4 p1, 0x1

    .line 154
    return p1
.end method

.method public isCodecStrategyValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mSource:Lcom/ss/ttvideoengine/strategy/source/StrategySource;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-interface {v0}, Lcom/ss/ttvideoengine/source/Source;->isCodecStrategyValid()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public isFetchSmartUrl()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mSource:Lcom/ss/ttvideoengine/strategy/source/StrategySource;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-interface {v0}, Lcom/ss/ttvideoengine/source/Source;->type()Lcom/ss/ttvideoengine/source/Source$Type;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v2, Lcom/ss/ttvideoengine/source/Source$Type;->DIRECT_URL_SOURCE:Lcom/ss/ttvideoengine/source/Source$Type;

    .line 12
    .line 13
    if-ne v0, v2, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mSource:Lcom/ss/ttvideoengine/strategy/source/StrategySource;

    .line 16
    .line 17
    check-cast v0, Lcom/ss/ttvideoengine/source/DirectUrlSource;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$SmartUrlVod;->isEnable(Lcom/ss/ttvideoengine/source/DirectUrlSource;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mResolveResult:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, v0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;->requestItem:Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    const/4 v1, 0x1

    .line 34
    :cond_1
    return v1
.end method

.method public release()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->reset()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mErrorDimensions:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public reset()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->TAG:Ljava/lang/String;

    .line 8
    .line 9
    const-string v1, "reset"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->cancelFetchSmartUrlInfo()V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mSource:Lcom/ss/ttvideoengine/strategy/source/StrategySource;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mResolveResult:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;

    .line 21
    .line 22
    return-void
.end method

.method public setStrategySource(Lcom/ss/ttvideoengine/strategy/source/StrategySource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ss/ttvideoengine/utils/EngineException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->reset()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_3

    .line 5
    .line 6
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v1, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string/jumbo v2, "setStrategySource "

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->TAG:Ljava/lang/String;

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-static {}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy;->dump()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-static {v0, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    :cond_0
    iput-object p1, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mSource:Lcom/ss/ttvideoengine/strategy/source/StrategySource;

    .line 60
    .line 61
    invoke-interface {p1}, Lcom/ss/ttvideoengine/source/Source;->isCodecStrategyValid()Z

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    if-eqz v0, :cond_2

    .line 66
    .line 67
    const/4 v0, 0x1

    .line 68
    invoke-static {p1, v0}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy;->resolveStartPlayback(Lcom/ss/ttvideoengine/strategy/source/StrategySource;Z)Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    if-eqz v0, :cond_1

    .line 73
    .line 74
    iget-object p1, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mSourceSetter:Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$SourceSetter;

    .line 75
    .line 76
    invoke-direct {p0, p1, v0}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->setupSource(Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$SourceSetter;Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;)V

    .line 77
    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mSourceSetter:Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$SourceSetter;

    .line 81
    .line 82
    invoke-direct {p0, v0, p1}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->setupSource(Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$SourceSetter;Lcom/ss/ttvideoengine/strategy/source/StrategySource;)V

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->mSourceSetter:Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$SourceSetter;

    .line 87
    .line 88
    invoke-direct {p0, v0, p1}, Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter;->setupSource(Lcom/ss/ttvideoengine/source/strategy/CodecStrategyAdapter$SourceSetter;Lcom/ss/ttvideoengine/strategy/source/StrategySource;)V

    .line 89
    .line 90
    .line 91
    :goto_0
    return-void

    .line 92
    :cond_3
    new-instance p1, Lcom/ss/ttvideoengine/utils/EngineException;

    .line 93
    .line 94
    new-instance v0, Lcom/ss/ttvideoengine/utils/Error;

    .line 95
    .line 96
    const-string v1, "kTTVideoErrorDomainSetStrategySource"

    .line 97
    .line 98
    const/16 v2, -0x26ed

    .line 99
    .line 100
    invoke-direct {v0, v1, v2}, Lcom/ss/ttvideoengine/utils/Error;-><init>(Ljava/lang/String;I)V

    .line 101
    .line 102
    .line 103
    invoke-direct {p1, v0}, Lcom/ss/ttvideoengine/utils/EngineException;-><init>(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 104
    .line 105
    .line 106
    throw p1
.end method
