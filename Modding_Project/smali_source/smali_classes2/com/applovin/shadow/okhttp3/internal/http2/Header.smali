.class public final Lcom/applovin/shadow/okhttp3/internal/http2/Header;
.super Ljava/lang/Object;
.source "Header.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/applovin/shadow/okhttp3/internal/http2/Header$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/applovin/shadow/okhttp3/internal/http2/Header$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PSEUDO_PREFIX:Lcom/applovin/shadow/okio/ByteString;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RESPONSE_STATUS:Lcom/applovin/shadow/okio/ByteString;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final RESPONSE_STATUS_UTF8:Ljava/lang/String; = ":status"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TARGET_AUTHORITY:Lcom/applovin/shadow/okio/ByteString;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TARGET_AUTHORITY_UTF8:Ljava/lang/String; = ":authority"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TARGET_METHOD:Lcom/applovin/shadow/okio/ByteString;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TARGET_METHOD_UTF8:Ljava/lang/String; = ":method"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TARGET_PATH:Lcom/applovin/shadow/okio/ByteString;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TARGET_PATH_UTF8:Ljava/lang/String; = ":path"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TARGET_SCHEME:Lcom/applovin/shadow/okio/ByteString;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TARGET_SCHEME_UTF8:Ljava/lang/String; = ":scheme"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final hpackSize:I

.field public final name:Lcom/applovin/shadow/okio/ByteString;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final value:Lcom/applovin/shadow/okio/ByteString;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/applovin/shadow/okhttp3/internal/http2/Header$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/applovin/shadow/okhttp3/internal/http2/Header$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/applovin/shadow/okhttp3/internal/http2/Header;->Companion:Lcom/applovin/shadow/okhttp3/internal/http2/Header$Companion;

    .line 8
    .line 9
    sget-object v0, Lcom/applovin/shadow/okio/ByteString;->Companion:Lcom/applovin/shadow/okio/ByteString$Companion;

    .line 10
    .line 11
    const-string v1, ":"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/applovin/shadow/okio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lcom/applovin/shadow/okio/ByteString;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    sput-object v1, Lcom/applovin/shadow/okhttp3/internal/http2/Header;->PSEUDO_PREFIX:Lcom/applovin/shadow/okio/ByteString;

    .line 18
    .line 19
    const-string v1, ":status"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/applovin/shadow/okio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lcom/applovin/shadow/okio/ByteString;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    sput-object v1, Lcom/applovin/shadow/okhttp3/internal/http2/Header;->RESPONSE_STATUS:Lcom/applovin/shadow/okio/ByteString;

    .line 26
    .line 27
    const-string v1, ":method"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/applovin/shadow/okio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lcom/applovin/shadow/okio/ByteString;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    sput-object v1, Lcom/applovin/shadow/okhttp3/internal/http2/Header;->TARGET_METHOD:Lcom/applovin/shadow/okio/ByteString;

    .line 34
    .line 35
    const-string v1, ":path"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lcom/applovin/shadow/okio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lcom/applovin/shadow/okio/ByteString;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    sput-object v1, Lcom/applovin/shadow/okhttp3/internal/http2/Header;->TARGET_PATH:Lcom/applovin/shadow/okio/ByteString;

    .line 42
    .line 43
    const-string v1, ":scheme"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/applovin/shadow/okio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lcom/applovin/shadow/okio/ByteString;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    sput-object v1, Lcom/applovin/shadow/okhttp3/internal/http2/Header;->TARGET_SCHEME:Lcom/applovin/shadow/okio/ByteString;

    .line 50
    .line 51
    const-string v1, ":authority"

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Lcom/applovin/shadow/okio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lcom/applovin/shadow/okio/ByteString;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    sput-object v0, Lcom/applovin/shadow/okhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lcom/applovin/shadow/okio/ByteString;

    .line 58
    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/applovin/shadow/okio/ByteString;Lcom/applovin/shadow/okio/ByteString;)V
    .locals 1
    .param p1    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Header;->name:Lcom/applovin/shadow/okio/ByteString;

    .line 3
    iput-object p2, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Header;->value:Lcom/applovin/shadow/okio/ByteString;

    .line 4
    invoke-virtual {p1}, Lcom/applovin/shadow/okio/ByteString;->size()I

    move-result p1

    add-int/lit8 p1, p1, 0x20

    invoke-virtual {p2}, Lcom/applovin/shadow/okio/ByteString;->size()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Header;->hpackSize:I

    return-void
.end method

.method public constructor <init>(Lcom/applovin/shadow/okio/ByteString;Ljava/lang/String;)V
    .locals 1
    .param p1    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    sget-object v0, Lcom/applovin/shadow/okio/ByteString;->Companion:Lcom/applovin/shadow/okio/ByteString$Companion;

    invoke-virtual {v0, p2}, Lcom/applovin/shadow/okio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lcom/applovin/shadow/okio/ByteString;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/applovin/shadow/okhttp3/internal/http2/Header;-><init>(Lcom/applovin/shadow/okio/ByteString;Lcom/applovin/shadow/okio/ByteString;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "name"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object v0, Lcom/applovin/shadow/okio/ByteString;->Companion:Lcom/applovin/shadow/okio/ByteString$Companion;

    invoke-virtual {v0, p1}, Lcom/applovin/shadow/okio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lcom/applovin/shadow/okio/ByteString;

    move-result-object p1

    invoke-virtual {v0, p2}, Lcom/applovin/shadow/okio/ByteString$Companion;->encodeUtf8(Ljava/lang/String;)Lcom/applovin/shadow/okio/ByteString;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/applovin/shadow/okhttp3/internal/http2/Header;-><init>(Lcom/applovin/shadow/okio/ByteString;Lcom/applovin/shadow/okio/ByteString;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/applovin/shadow/okhttp3/internal/http2/Header;Lcom/applovin/shadow/okio/ByteString;Lcom/applovin/shadow/okio/ByteString;ILjava/lang/Object;)Lcom/applovin/shadow/okhttp3/internal/http2/Header;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Header;->name:Lcom/applovin/shadow/okio/ByteString;

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    .line 9
    if-eqz p3, :cond_1

    .line 10
    .line 11
    iget-object p2, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Header;->value:Lcom/applovin/shadow/okio/ByteString;

    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/applovin/shadow/okhttp3/internal/http2/Header;->copy(Lcom/applovin/shadow/okio/ByteString;Lcom/applovin/shadow/okio/ByteString;)Lcom/applovin/shadow/okhttp3/internal/http2/Header;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/applovin/shadow/okio/ByteString;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Header;->name:Lcom/applovin/shadow/okio/ByteString;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Lcom/applovin/shadow/okio/ByteString;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Header;->value:Lcom/applovin/shadow/okio/ByteString;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(Lcom/applovin/shadow/okio/ByteString;Lcom/applovin/shadow/okio/ByteString;)Lcom/applovin/shadow/okhttp3/internal/http2/Header;
    .locals 1
    .param p1    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string/jumbo v0, "value"

    .line 7
    .line 8
    .line 9
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    new-instance v0, Lcom/applovin/shadow/okhttp3/internal/http2/Header;

    .line 13
    .line 14
    invoke-direct {v0, p1, p2}, Lcom/applovin/shadow/okhttp3/internal/http2/Header;-><init>(Lcom/applovin/shadow/okio/ByteString;Lcom/applovin/shadow/okio/ByteString;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/applovin/shadow/okhttp3/internal/http2/Header;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/applovin/shadow/okhttp3/internal/http2/Header;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Header;->name:Lcom/applovin/shadow/okio/ByteString;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/applovin/shadow/okhttp3/internal/http2/Header;->name:Lcom/applovin/shadow/okio/ByteString;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget-object v1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Header;->value:Lcom/applovin/shadow/okio/ByteString;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/applovin/shadow/okhttp3/internal/http2/Header;->value:Lcom/applovin/shadow/okio/ByteString;

    .line 27
    .line 28
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Header;->name:Lcom/applovin/shadow/okio/ByteString;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/applovin/shadow/okio/ByteString;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-object v1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Header;->value:Lcom/applovin/shadow/okio/ByteString;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/applovin/shadow/okio/ByteString;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Header;->name:Lcom/applovin/shadow/okio/ByteString;

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/applovin/shadow/okio/ByteString;->utf8()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, ": "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/applovin/shadow/okhttp3/internal/http2/Header;->value:Lcom/applovin/shadow/okio/ByteString;

    .line 21
    .line 22
    invoke-virtual {v1}, Lcom/applovin/shadow/okio/ByteString;->utf8()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    return-object v0
.end method
