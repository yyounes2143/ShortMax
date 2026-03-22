.class public Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;
.super Ljava/lang/Object;
.source "CodecStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/source/strategy/CodecStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResolveResult"
.end annotation


# instance fields
.field public correctedDimension:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final dimension:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final requestItem:Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final source:Lcom/ss/ttvideoengine/strategy/source/StrategySource;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final urlItem:Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ss/ttvideoengine/source/DirectUrlSource;Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;)V
    .locals 0
    .param p1    # Lcom/ss/ttvideoengine/source/DirectUrlSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;->source:Lcom/ss/ttvideoengine/strategy/source/StrategySource;

    .line 8
    iput-object p2, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;->dimension:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 9
    iput-object p3, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;->urlItem:Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;

    .line 10
    iput-object p4, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;->requestItem:Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;

    return-void
.end method

.method public constructor <init>(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;)V
    .locals 0
    .param p1    # Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;->source:Lcom/ss/ttvideoengine/strategy/source/StrategySource;

    .line 3
    iput-object p2, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;->dimension:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;->urlItem:Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;

    .line 5
    iput-object p1, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;->requestItem:Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "ResolveResult{vid="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;->source:Lcom/ss/ttvideoengine/strategy/source/StrategySource;

    .line 12
    .line 13
    invoke-interface {v1}, Lcom/ss/ttvideoengine/source/Source;->vid()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", sourceType="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;->source:Lcom/ss/ttvideoengine/strategy/source/StrategySource;

    .line 26
    .line 27
    invoke-interface {v1}, Lcom/ss/ttvideoengine/source/Source;->type()Lcom/ss/ttvideoengine/source/Source$Type;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ", dimension="

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v1, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;->dimension:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", correctedDimension="

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;->correctedDimension:Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$Dimension;

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v1, ", urlItem="

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;->urlItem:Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v1, ", requestItem="

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    iget-object v1, p0, Lcom/ss/ttvideoengine/source/strategy/CodecStrategy$ResolveResult;->requestItem:Lcom/ss/ttvideoengine/source/DirectUrlSource$UrlItem;

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const/16 v1, 0x7d

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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
