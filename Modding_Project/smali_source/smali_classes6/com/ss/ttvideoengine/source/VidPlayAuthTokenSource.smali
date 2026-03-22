.class public Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;
.super Ljava/lang/Object;
.source "VidPlayAuthTokenSource.java"

# interfaces
.implements Lcom/ss/ttvideoengine/strategy/source/StrategySource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;
    }
.end annotation


# static fields
.field public static final DEFAULT_SUPPORTED_ENCODE_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TAG:Ljava/lang/String; = "VidPlayAuthTokenSource"


# instance fields
.field private final codecStrategy:I

.field private final encodeType:Ljava/lang/String;

.field private final playAuthToken:Ljava/lang/String;

.field private final resolution:Lcom/ss/ttvideoengine/Resolution;

.field private final supportedEncodeTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final tag:Ljava/lang/Object;

.field private final vid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "h265"

    .line 2
    .line 3
    const-string v1, "h266"

    .line 4
    .line 5
    const-string v2, "h264"

    .line 6
    .line 7
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    sput-object v0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->DEFAULT_SUPPORTED_ENCODE_TYPES:Ljava/util/List;

    .line 20
    .line 21
    return-void
.end method

.method private constructor <init>(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;->access$000(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->vid:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;->access$100(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->playAuthToken:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;->access$200(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->encodeType:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;->access$300(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->supportedEncodeTypes:Ljava/util/List;

    .line 7
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;->access$400(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;)Lcom/ss/ttvideoengine/Resolution;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->resolution:Lcom/ss/ttvideoengine/Resolution;

    .line 8
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;->access$500(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;)I

    move-result v0

    iput v0, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->codecStrategy:I

    .line 9
    invoke-static {p1}, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;->access$600(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->tag:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;-><init>(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource$Builder;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;)Lcom/ss/ttvideoengine/Resolution;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->resolution:Lcom/ss/ttvideoengine/Resolution;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$1100(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->codecStrategy:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$700(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->vid:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$800(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->playAuthToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$900(Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->encodeType:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public codecStrategy()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->codecStrategy:I

    .line 2
    .line 3
    return v0
.end method

.method public encodeType()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->encodeType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public playAuthToken()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->playAuthToken:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public resolution()Lcom/ss/ttvideoengine/Resolution;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->resolution:Lcom/ss/ttvideoengine/Resolution;

    .line 2
    .line 3
    return-object v0
.end method

.method public supportedEncodeTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->supportedEncodeTypes:Ljava/util/List;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public tag()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->tag:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "VidPlayAuthTokenSource{vid=\'"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->vid:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x27

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, ", playAuthToken=\'"

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->playAuthToken:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, ", encodeType=\'"

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-object v2, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->encodeType:Ljava/lang/String;

    .line 40
    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, ", supportedEncodeTypes="

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->supportedEncodeTypes:Ljava/util/List;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, ", resolution="

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->resolution:Lcom/ss/ttvideoengine/Resolution;

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v1, ", codecStrategy="

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget v1, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->codecStrategy:I

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const/16 v1, 0x7d

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    return-object v0
.end method

.method public type()Lcom/ss/ttvideoengine/source/Source$Type;
    .locals 1

    .line 1
    sget-object v0, Lcom/ss/ttvideoengine/source/Source$Type;->VID_PLAY_AUTH_TOKEN_SOURCE:Lcom/ss/ttvideoengine/source/Source$Type;

    .line 2
    .line 3
    return-object v0
.end method

.method public vid()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/source/VidPlayAuthTokenSource;->vid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
