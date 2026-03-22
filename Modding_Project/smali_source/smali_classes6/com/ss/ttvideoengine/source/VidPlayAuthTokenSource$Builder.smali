.class public Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;
.super Ljava/lang/Object;
.source "VidPlayAuthTokenSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private codecStrategy:I

.field private encodeType:Ljava/lang/String;

.field private playAuthToken:Ljava/lang/String;

.field private resolution:Lcom/ss/ttvideoengine/Resolution;

.field private supportedEncodeTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tag:Ljava/lang/Object;

.field private vid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->access$700(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;->vid:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->access$800(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;->playAuthToken:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->access$900(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;->encodeType:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->access$1000(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;)Lcom/ss/ttvideoengine/Resolution;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;->resolution:Lcom/ss/ttvideoengine/Resolution;

    .line 7
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->access$1100(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;)I

    move-result p1

    iput p1, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;->codecStrategy:I

    return-void
.end method

.method static synthetic access$000(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;->vid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;->playAuthToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;->encodeType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;->supportedEncodeTypes:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$400(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;)Lcom/ss/ttvideoengine/Resolution;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;->resolution:Lcom/ss/ttvideoengine/Resolution;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;->codecStrategy:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$600(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;->tag:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public build()Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;->vid:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_6

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;->playAuthToken:Ljava/lang/String;

    .line 6
    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;->resolution:Lcom/ss/ttvideoengine/Resolution;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    sget-object v0, Lcom/ss/ttvideoengine/Resolution;->Standard:Lcom/ss/ttvideoengine/Resolution;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;->resolution:Lcom/ss/ttvideoengine/Resolution;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;->supportedEncodeTypes:Ljava/util/List;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;->encodeType:Ljava/lang/String;

    .line 22
    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 37
    .line 38
    .line 39
    const-string/jumbo v2, "supportedEncodeTypes:"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;->supportedEncodeTypes:Ljava/util/List;

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v2, " must contains encodeType:"

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v2, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;->encodeType:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    throw v0

    .line 68
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;->supportedEncodeTypes:Ljava/util/List;

    .line 69
    .line 70
    if-eqz v0, :cond_3

    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    :cond_3
    sget-object v0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->DEFAULT_SUPPORTED_ENCODE_TYPES:Ljava/util/List;

    .line 79
    .line 80
    iput-object v0, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;->supportedEncodeTypes:Ljava/util/List;

    .line 81
    .line 82
    :cond_4
    new-instance v0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;

    .line 83
    .line 84
    const/4 v1, 0x0

    .line 85
    invoke-direct {v0, p0, v1}, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;-><init>(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$1;)V

    .line 86
    .line 87
    .line 88
    return-object v0

    .line 89
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    .line 90
    .line 91
    const-string v1, "playAuthToken is null"

    .line 92
    .line 93
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    throw v0

    .line 97
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    .line 98
    .line 99
    const-string/jumbo v1, "vid is null"

    .line 100
    .line 101
    .line 102
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v0
.end method

.method public setCodecStrategy(I)Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;->codecStrategy:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setEncodeType(Ljava/lang/String;)Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;->encodeType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setPlayAuthToken(Ljava/lang/String;)Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;->playAuthToken:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string v0, "playAuthToken is null"

    .line 9
    .line 10
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw p1
.end method

.method public setResolution(Lcom/ss/ttvideoengine/Resolution;)Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;
    .locals 0
    .param p1    # Lcom/ss/ttvideoengine/Resolution;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;->resolution:Lcom/ss/ttvideoengine/Resolution;

    .line 2
    .line 3
    return-object p0
.end method

.method public setSupportedEncodeTypes(Ljava/util/List;)Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;->supportedEncodeTypes:Ljava/util/List;

    .line 15
    .line 16
    return-object p0

    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string/jumbo v0, "supportedEncodeTypes can\'t be null or empty!"

    .line 20
    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method public setTag(Ljava/lang/Object;)Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;->tag:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public setVid(Ljava/lang/String;)Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;->vid:Ljava/lang/String;

    .line 4
    .line 5
    return-object p0

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 7
    .line 8
    const-string/jumbo v0, "vid is null"

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw p1
.end method
