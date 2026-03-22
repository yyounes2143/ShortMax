.class public final Lokhttp3/MultipartReader;
.super Ljava/lang/Object;
.source "MultipartReader.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/MultipartReader$Companion;,
        Lokhttp3/MultipartReader$Part;,
        Lokhttp3/MultipartReader$PartSource;
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
.field public static final e:Lokhttp3/MultipartReader$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final f:Lokio/Options;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Lokio/BufferedSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Lokio/ByteString;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private c:Z

.field private d:Lokhttp3/MultipartReader$PartSource;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lokhttp3/MultipartReader$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lokhttp3/MultipartReader$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lokhttp3/MultipartReader;->e:Lokhttp3/MultipartReader$Companion;

    .line 8
    .line 9
    sget-object v0, Lokio/Options;->Companion:Lokio/Options$Companion;

    .line 10
    .line 11
    sget-object v1, Lokio/ByteString;->Companion:Lokio/ByteString$Companion;

    .line 12
    .line 13
    const-string v2, "\r\n"

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "--"

    .line 20
    .line 21
    invoke-virtual {v1, v3}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string v4, " "

    .line 26
    .line 27
    invoke-virtual {v1, v4}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    const-string v5, "\t"

    .line 32
    .line 33
    invoke-virtual {v1, v5}, Lokio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lokio/ByteString;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    filled-new-array {v2, v3, v4, v1}, [Lokio/ByteString;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lokio/Options$Companion;->of([Lokio/ByteString;)Lokio/Options;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    sput-object v0, Lokhttp3/MultipartReader;->f:Lokio/Options;

    .line 46
    .line 47
    return-void
.end method

.method public static final synthetic a(Lokhttp3/MultipartReader;J)J
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lokhttp3/MultipartReader;->g(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final synthetic b(Lokhttp3/MultipartReader;)Lokhttp3/MultipartReader$PartSource;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/MultipartReader;->d:Lokhttp3/MultipartReader$PartSource;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic c(Lokhttp3/MultipartReader;)Lokio/BufferedSource;
    .locals 0

    .line 1
    iget-object p0, p0, Lokhttp3/MultipartReader;->a:Lokio/BufferedSource;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic d(Lokhttp3/MultipartReader;Lokhttp3/MultipartReader$PartSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/MultipartReader;->d:Lokhttp3/MultipartReader$PartSource;

    .line 2
    .line 3
    return-void
.end method

.method private final g(J)J
    .locals 4

    .line 1
    iget-object v0, p0, Lokhttp3/MultipartReader;->a:Lokio/BufferedSource;

    .line 2
    .line 3
    iget-object v1, p0, Lokhttp3/MultipartReader;->b:Lokio/ByteString;

    .line 4
    .line 5
    invoke-virtual {v1}, Lokio/ByteString;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    int-to-long v1, v1

    .line 10
    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->require(J)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lokhttp3/MultipartReader;->a:Lokio/BufferedSource;

    .line 14
    .line 15
    invoke-interface {v0}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lokhttp3/MultipartReader;->b:Lokio/ByteString;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lokio/Buffer;->indexOf(Lokio/ByteString;)J

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
    iget-object v0, p0, Lokhttp3/MultipartReader;->a:Lokio/BufferedSource;

    .line 32
    .line 33
    invoke-interface {v0}, Lokio/BufferedSource;->getBuffer()Lokio/Buffer;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lokio/Buffer;->size()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    iget-object v2, p0, Lokhttp3/MultipartReader;->b:Lokio/ByteString;

    .line 42
    .line 43
    invoke-virtual {v2}, Lokio/ByteString;->size()I

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
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lokhttp3/MultipartReader;->c:Z

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
    iput-boolean v0, p0, Lokhttp3/MultipartReader;->c:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lokhttp3/MultipartReader;->d:Lokhttp3/MultipartReader$PartSource;

    .line 11
    .line 12
    iget-object v0, p0, Lokhttp3/MultipartReader;->a:Lokio/BufferedSource;

    .line 13
    .line 14
    invoke-interface {v0}, Lokio/Source;->close()V

    .line 15
    .line 16
    .line 17
    return-void
.end method
