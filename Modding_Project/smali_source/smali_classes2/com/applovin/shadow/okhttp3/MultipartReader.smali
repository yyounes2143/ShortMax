.class public final Lcom/applovin/shadow/okhttp3/MultipartReader;
.super Ljava/lang/Object;
.source "MultipartReader.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/shadow/okhttp3/MultipartReader$Companion;,
        Lcom/applovin/shadow/okhttp3/MultipartReader$Part;,
        Lcom/applovin/shadow/okhttp3/MultipartReader$PartSource;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMultipartReader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MultipartReader.kt\nokhttp3/MultipartReader\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,210:1\n1#2:211\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/applovin/shadow/okhttp3/MultipartReader$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final afterBoundaryOptions:Lcom/applovin/shadow/okio/Options;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final boundary:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private closed:Z

.field private final crlfDashDashBoundary:Lcom/applovin/shadow/okio/ByteString;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private currentPart:Lcom/applovin/shadow/okhttp3/MultipartReader$PartSource;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final dashDashBoundary:Lcom/applovin/shadow/okio/ByteString;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private noMoreParts:Z

.field private partCount:I

.field private final source:Lcom/applovin/shadow/okio/BufferedSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/applovin/shadow/okhttp3/MultipartReader$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/applovin/shadow/okhttp3/MultipartReader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/applovin/shadow/okhttp3/MultipartReader;->Companion:Lcom/applovin/shadow/okhttp3/MultipartReader$Companion;

    .line 8
    .line 9
    sget-object v0, Lcom/applovin/shadow/okio/Options;->Companion:Lcom/applovin/shadow/okio/Options$Companion;

    .line 10
    .line 11
    sget-object v1, Lcom/applovin/shadow/okio/ByteString;->Companion:Lcom/applovin/shadow/okio/ByteString$Companion;

    .line 12
    .line 13
    const-string v2, "\r\n"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lcom/applovin/shadow/okio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lcom/applovin/shadow/okio/ByteString;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "--"

    .line 20
    .line 21
    invoke-virtual {v1, v3}, Lcom/applovin/shadow/okio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lcom/applovin/shadow/okio/ByteString;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string v4, " "

    .line 26
    .line 27
    invoke-virtual {v1, v4}, Lcom/applovin/shadow/okio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lcom/applovin/shadow/okio/ByteString;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const-string v5, "\t"

    .line 32
    .line 33
    invoke-virtual {v1, v5}, Lcom/applovin/shadow/okio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lcom/applovin/shadow/okio/ByteString;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    filled-new-array {v2, v3, v4, v1}, [Lcom/applovin/shadow/okio/ByteString;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/applovin/shadow/okio/Options$Companion;->of([Lcom/applovin/shadow/okio/ByteString;)Lcom/applovin/shadow/okio/Options;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lcom/applovin/shadow/okhttp3/MultipartReader;->afterBoundaryOptions:Lcom/applovin/shadow/okio/Options;

    .line 46
    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/applovin/shadow/okhttp3/ResponseBody;)V
    .locals 2
    .param p1    # Lcom/applovin/shadow/okhttp3/ResponseBody;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/ResponseBody;->source()Lcom/applovin/shadow/okio/BufferedSource;

    move-result-object v0

    .line 13
    invoke-virtual {p1}, Lcom/applovin/shadow/okhttp3/ResponseBody;->contentType()Lcom/applovin/shadow/okhttp3/MediaType;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v1, "boundary"

    invoke-virtual {p1, v1}, Lcom/applovin/shadow/okhttp3/MediaType;->parameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 14
    invoke-direct {p0, v0, p1}, Lcom/applovin/shadow/okhttp3/MultipartReader;-><init>(Lcom/applovin/shadow/okio/BufferedSource;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    const-string v0, "expected the Content-Type to have a boundary parameter"

    invoke-direct {p1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lcom/applovin/shadow/okio/BufferedSource;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/applovin/shadow/okio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boundary"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/MultipartReader;->source:Lcom/applovin/shadow/okio/BufferedSource;

    .line 3
    iput-object p2, p0, Lcom/applovin/shadow/okhttp3/MultipartReader;->boundary:Ljava/lang/String;

    .line 4
    new-instance p1, Lcom/applovin/shadow/okio/Buffer;

    invoke-direct {p1}, Lcom/applovin/shadow/okio/Buffer;-><init>()V

    .line 5
    const-string v0, "--"

    invoke-virtual {p1, v0}, Lcom/applovin/shadow/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/applovin/shadow/okio/Buffer;

    move-result-object p1

    .line 6
    invoke-virtual {p1, p2}, Lcom/applovin/shadow/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/applovin/shadow/okio/Buffer;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/applovin/shadow/okio/Buffer;->readByteString()Lcom/applovin/shadow/okio/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/MultipartReader;->dashDashBoundary:Lcom/applovin/shadow/okio/ByteString;

    .line 8
    new-instance p1, Lcom/applovin/shadow/okio/Buffer;

    invoke-direct {p1}, Lcom/applovin/shadow/okio/Buffer;-><init>()V

    .line 9
    const-string v0, "\r\n--"

    invoke-virtual {p1, v0}, Lcom/applovin/shadow/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/applovin/shadow/okio/Buffer;

    move-result-object p1

    .line 10
    invoke-virtual {p1, p2}, Lcom/applovin/shadow/okio/Buffer;->writeUtf8(Ljava/lang/String;)Lcom/applovin/shadow/okio/Buffer;

    move-result-object p1

    .line 11
    invoke-virtual {p1}, Lcom/applovin/shadow/okio/Buffer;->readByteString()Lcom/applovin/shadow/okio/ByteString;

    move-result-object p1

    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/MultipartReader;->crlfDashDashBoundary:Lcom/applovin/shadow/okio/ByteString;

    return-void
.end method

.method public static final synthetic access$currentPartBytesRemaining(Lcom/applovin/shadow/okhttp3/MultipartReader;J)J
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/applovin/shadow/okhttp3/MultipartReader;->currentPartBytesRemaining(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final synthetic access$getAfterBoundaryOptions$cp()Lcom/applovin/shadow/okio/Options;
    .locals 1

    .line 1
    sget-object v0, Lcom/applovin/shadow/okhttp3/MultipartReader;->afterBoundaryOptions:Lcom/applovin/shadow/okio/Options;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getCurrentPart$p(Lcom/applovin/shadow/okhttp3/MultipartReader;)Lcom/applovin/shadow/okhttp3/MultipartReader$PartSource;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/shadow/okhttp3/MultipartReader;->currentPart:Lcom/applovin/shadow/okhttp3/MultipartReader$PartSource;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$getSource$p(Lcom/applovin/shadow/okhttp3/MultipartReader;)Lcom/applovin/shadow/okio/BufferedSource;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/shadow/okhttp3/MultipartReader;->source:Lcom/applovin/shadow/okio/BufferedSource;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$setCurrentPart$p(Lcom/applovin/shadow/okhttp3/MultipartReader;Lcom/applovin/shadow/okhttp3/MultipartReader$PartSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/MultipartReader;->currentPart:Lcom/applovin/shadow/okhttp3/MultipartReader$PartSource;

    .line 2
    .line 3
    return-void
.end method

.method private final currentPartBytesRemaining(J)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/MultipartReader;->source:Lcom/applovin/shadow/okio/BufferedSource;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/applovin/shadow/okhttp3/MultipartReader;->crlfDashDashBoundary:Lcom/applovin/shadow/okio/ByteString;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/applovin/shadow/okio/ByteString;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    int-to-long v1, v1

    .line 10
    invoke-interface {v0, v1, v2}, Lcom/applovin/shadow/okio/BufferedSource;->require(J)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/MultipartReader;->source:Lcom/applovin/shadow/okio/BufferedSource;

    .line 14
    .line 15
    invoke-interface {v0}, Lcom/applovin/shadow/okio/BufferedSource;->getBuffer()Lcom/applovin/shadow/okio/Buffer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/applovin/shadow/okhttp3/MultipartReader;->crlfDashDashBoundary:Lcom/applovin/shadow/okio/ByteString;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/applovin/shadow/okio/Buffer;->indexOf(Lcom/applovin/shadow/okio/ByteString;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    const-wide/16 v2, -0x1

    .line 26
    .line 27
    cmp-long v2, v0, v2

    .line 28
    .line 29
    if-nez v2, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/MultipartReader;->source:Lcom/applovin/shadow/okio/BufferedSource;

    .line 32
    .line 33
    invoke-interface {v0}, Lcom/applovin/shadow/okio/BufferedSource;->getBuffer()Lcom/applovin/shadow/okio/Buffer;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/applovin/shadow/okio/Buffer;->size()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    iget-object v2, p0, Lcom/applovin/shadow/okhttp3/MultipartReader;->crlfDashDashBoundary:Lcom/applovin/shadow/okio/ByteString;

    .line 42
    .line 43
    invoke-virtual {v2}, Lcom/applovin/shadow/okio/ByteString;->size()I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    int-to-long v2, v2

    .line 48
    sub-long/2addr v0, v2

    .line 49
    const-wide/16 v2, 0x1

    .line 50
    .line 51
    add-long/2addr v0, v2

    .line 52
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 53
    .line 54
    .line 55
    move-result-wide p1

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    .line 58
    .line 59
    .line 60
    move-result-wide p1

    .line 61
    :goto_0
    return-wide p1
.end method


# virtual methods
.method public final boundary()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/MultipartReader;->boundary:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/applovin/shadow/okhttp3/MultipartReader;->closed:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/applovin/shadow/okhttp3/MultipartReader;->closed:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lcom/applovin/shadow/okhttp3/MultipartReader;->currentPart:Lcom/applovin/shadow/okhttp3/MultipartReader$PartSource;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/MultipartReader;->source:Lcom/applovin/shadow/okio/BufferedSource;

    .line 13
    .line 14
    invoke-interface {v0}, Lcom/applovin/shadow/okio/Source;->close()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final nextPart()Lcom/applovin/shadow/okhttp3/MultipartReader$Part;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/applovin/shadow/okhttp3/MultipartReader;->closed:Z

    .line 2
    .line 3
    if-nez v0, :cond_9

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/applovin/shadow/okhttp3/MultipartReader;->noMoreParts:Z

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    iget v0, p0, Lcom/applovin/shadow/okhttp3/MultipartReader;->partCount:I

    .line 12
    .line 13
    const-wide/16 v2, 0x0

    .line 14
    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/MultipartReader;->source:Lcom/applovin/shadow/okio/BufferedSource;

    .line 18
    .line 19
    iget-object v4, p0, Lcom/applovin/shadow/okhttp3/MultipartReader;->dashDashBoundary:Lcom/applovin/shadow/okio/ByteString;

    .line 20
    .line 21
    invoke-interface {v0, v2, v3, v4}, Lcom/applovin/shadow/okio/BufferedSource;->rangeEquals(JLcom/applovin/shadow/okio/ByteString;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/MultipartReader;->source:Lcom/applovin/shadow/okio/BufferedSource;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/applovin/shadow/okhttp3/MultipartReader;->dashDashBoundary:Lcom/applovin/shadow/okio/ByteString;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/applovin/shadow/okio/ByteString;->size()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    int-to-long v2, v2

    .line 36
    invoke-interface {v0, v2, v3}, Lcom/applovin/shadow/okio/BufferedSource;->skip(J)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    const-wide/16 v4, 0x2000

    .line 41
    .line 42
    invoke-direct {p0, v4, v5}, Lcom/applovin/shadow/okhttp3/MultipartReader;->currentPartBytesRemaining(J)J

    .line 43
    .line 44
    .line 45
    move-result-wide v4

    .line 46
    cmp-long v0, v4, v2

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/MultipartReader;->source:Lcom/applovin/shadow/okio/BufferedSource;

    .line 51
    .line 52
    invoke-interface {v0, v4, v5}, Lcom/applovin/shadow/okio/BufferedSource;->skip(J)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/MultipartReader;->source:Lcom/applovin/shadow/okio/BufferedSource;

    .line 57
    .line 58
    iget-object v2, p0, Lcom/applovin/shadow/okhttp3/MultipartReader;->crlfDashDashBoundary:Lcom/applovin/shadow/okio/ByteString;

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/applovin/shadow/okio/ByteString;->size()I

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    int-to-long v2, v2

    .line 65
    invoke-interface {v0, v2, v3}, Lcom/applovin/shadow/okio/BufferedSource;->skip(J)V

    .line 66
    .line 67
    .line 68
    :goto_1
    const/4 v0, 0x0

    .line 69
    :goto_2
    iget-object v2, p0, Lcom/applovin/shadow/okhttp3/MultipartReader;->source:Lcom/applovin/shadow/okio/BufferedSource;

    .line 70
    .line 71
    sget-object v3, Lcom/applovin/shadow/okhttp3/MultipartReader;->afterBoundaryOptions:Lcom/applovin/shadow/okio/Options;

    .line 72
    .line 73
    invoke-interface {v2, v3}, Lcom/applovin/shadow/okio/BufferedSource;->select(Lcom/applovin/shadow/okio/Options;)I

    .line 74
    .line 75
    .line 76
    move-result v2

    .line 77
    const/4 v3, -0x1

    .line 78
    const-string/jumbo v4, "unexpected characters after boundary"

    .line 79
    .line 80
    .line 81
    if-eq v2, v3, :cond_8

    .line 82
    .line 83
    const/4 v3, 0x1

    .line 84
    if-eqz v2, :cond_7

    .line 85
    .line 86
    if-eq v2, v3, :cond_4

    .line 87
    .line 88
    const/4 v4, 0x2

    .line 89
    if-eq v2, v4, :cond_3

    .line 90
    .line 91
    const/4 v4, 0x3

    .line 92
    if-eq v2, v4, :cond_3

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    move v0, v3

    .line 96
    goto :goto_2

    .line 97
    :cond_4
    if-nez v0, :cond_6

    .line 98
    .line 99
    iget v0, p0, Lcom/applovin/shadow/okhttp3/MultipartReader;->partCount:I

    .line 100
    .line 101
    if-eqz v0, :cond_5

    .line 102
    .line 103
    iput-boolean v3, p0, Lcom/applovin/shadow/okhttp3/MultipartReader;->noMoreParts:Z

    .line 104
    .line 105
    return-object v1

    .line 106
    :cond_5
    new-instance v0, Ljava/net/ProtocolException;

    .line 107
    .line 108
    const-string v1, "expected at least 1 part"

    .line 109
    .line 110
    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw v0

    .line 114
    :cond_6
    new-instance v0, Ljava/net/ProtocolException;

    .line 115
    .line 116
    invoke-direct {v0, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    throw v0

    .line 120
    :cond_7
    iget v0, p0, Lcom/applovin/shadow/okhttp3/MultipartReader;->partCount:I

    .line 121
    .line 122
    add-int/2addr v0, v3

    .line 123
    iput v0, p0, Lcom/applovin/shadow/okhttp3/MultipartReader;->partCount:I

    .line 124
    .line 125
    new-instance v0, Lcom/applovin/shadow/okhttp3/internal/http1/HeadersReader;

    .line 126
    .line 127
    iget-object v1, p0, Lcom/applovin/shadow/okhttp3/MultipartReader;->source:Lcom/applovin/shadow/okio/BufferedSource;

    .line 128
    .line 129
    invoke-direct {v0, v1}, Lcom/applovin/shadow/okhttp3/internal/http1/HeadersReader;-><init>(Lcom/applovin/shadow/okio/BufferedSource;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Lcom/applovin/shadow/okhttp3/internal/http1/HeadersReader;->readHeaders()Lcom/applovin/shadow/okhttp3/Headers;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    new-instance v1, Lcom/applovin/shadow/okhttp3/MultipartReader$PartSource;

    .line 137
    .line 138
    invoke-direct {v1, p0}, Lcom/applovin/shadow/okhttp3/MultipartReader$PartSource;-><init>(Lcom/applovin/shadow/okhttp3/MultipartReader;)V

    .line 139
    .line 140
    .line 141
    iput-object v1, p0, Lcom/applovin/shadow/okhttp3/MultipartReader;->currentPart:Lcom/applovin/shadow/okhttp3/MultipartReader$PartSource;

    .line 142
    .line 143
    new-instance v2, Lcom/applovin/shadow/okhttp3/MultipartReader$Part;

    .line 144
    .line 145
    invoke-static {v1}, Lcom/applovin/shadow/okio/Okio;->buffer(Lcom/applovin/shadow/okio/Source;)Lcom/applovin/shadow/okio/BufferedSource;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-direct {v2, v0, v1}, Lcom/applovin/shadow/okhttp3/MultipartReader$Part;-><init>(Lcom/applovin/shadow/okhttp3/Headers;Lcom/applovin/shadow/okio/BufferedSource;)V

    .line 150
    .line 151
    .line 152
    return-object v2

    .line 153
    :cond_8
    new-instance v0, Ljava/net/ProtocolException;

    .line 154
    .line 155
    invoke-direct {v0, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    throw v0

    .line 159
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 160
    .line 161
    const-string v1, "closed"

    .line 162
    .line 163
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    throw v0
.end method
