.class public final Lcom/applovin/shadow/okhttp3/ResponseBody$Companion;
.super Ljava/lang/Object;
.source "ResponseBody.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/shadow/okhttp3/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/applovin/shadow/okhttp3/ResponseBody$Companion;-><init>()V

    return-void
.end method

.method public static synthetic create$default(Lcom/applovin/shadow/okhttp3/ResponseBody$Companion;Lcom/applovin/shadow/okio/BufferedSource;Lcom/applovin/shadow/okhttp3/MediaType;JILjava/lang/Object;)Lcom/applovin/shadow/okhttp3/ResponseBody;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x2

    if-eqz p5, :cond_1

    const-wide/16 p3, -0x1

    .line 4
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/applovin/shadow/okhttp3/ResponseBody$Companion;->create(Lcom/applovin/shadow/okio/BufferedSource;Lcom/applovin/shadow/okhttp3/MediaType;J)Lcom/applovin/shadow/okhttp3/ResponseBody;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic create$default(Lcom/applovin/shadow/okhttp3/ResponseBody$Companion;Lcom/applovin/shadow/okio/ByteString;Lcom/applovin/shadow/okhttp3/MediaType;ILjava/lang/Object;)Lcom/applovin/shadow/okhttp3/ResponseBody;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/applovin/shadow/okhttp3/ResponseBody$Companion;->create(Lcom/applovin/shadow/okio/ByteString;Lcom/applovin/shadow/okhttp3/MediaType;)Lcom/applovin/shadow/okhttp3/ResponseBody;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic create$default(Lcom/applovin/shadow/okhttp3/ResponseBody$Companion;Ljava/lang/String;Lcom/applovin/shadow/okhttp3/MediaType;ILjava/lang/Object;)Lcom/applovin/shadow/okhttp3/ResponseBody;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/applovin/shadow/okhttp3/ResponseBody$Companion;->create(Ljava/lang/String;Lcom/applovin/shadow/okhttp3/MediaType;)Lcom/applovin/shadow/okhttp3/ResponseBody;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic create$default(Lcom/applovin/shadow/okhttp3/ResponseBody$Companion;[BLcom/applovin/shadow/okhttp3/MediaType;ILjava/lang/Object;)Lcom/applovin/shadow/okhttp3/ResponseBody;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/applovin/shadow/okhttp3/ResponseBody$Companion;->create([BLcom/applovin/shadow/okhttp3/MediaType;)Lcom/applovin/shadow/okhttp3/ResponseBody;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final create(Lcom/applovin/shadow/okhttp3/MediaType;JLcom/applovin/shadow/okio/BufferedSource;)Lcom/applovin/shadow/okhttp3/ResponseBody;
    .locals 1
    .param p1    # Lcom/applovin/shadow/okhttp3/MediaType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/applovin/shadow/okio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "content"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0, p4, p1, p2, p3}, Lcom/applovin/shadow/okhttp3/ResponseBody$Companion;->create(Lcom/applovin/shadow/okio/BufferedSource;Lcom/applovin/shadow/okhttp3/MediaType;J)Lcom/applovin/shadow/okhttp3/ResponseBody;

    move-result-object p1

    return-object p1
.end method

.method public final create(Lcom/applovin/shadow/okhttp3/MediaType;Lcom/applovin/shadow/okio/ByteString;)Lcom/applovin/shadow/okhttp3/ResponseBody;
    .locals 1
    .param p1    # Lcom/applovin/shadow/okhttp3/MediaType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, p2, p1}, Lcom/applovin/shadow/okhttp3/ResponseBody$Companion;->create(Lcom/applovin/shadow/okio/ByteString;Lcom/applovin/shadow/okhttp3/MediaType;)Lcom/applovin/shadow/okhttp3/ResponseBody;

    move-result-object p1

    return-object p1
.end method

.method public final create(Lcom/applovin/shadow/okhttp3/MediaType;Ljava/lang/String;)Lcom/applovin/shadow/okhttp3/ResponseBody;
    .locals 1
    .param p1    # Lcom/applovin/shadow/okhttp3/MediaType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0, p2, p1}, Lcom/applovin/shadow/okhttp3/ResponseBody$Companion;->create(Ljava/lang/String;Lcom/applovin/shadow/okhttp3/MediaType;)Lcom/applovin/shadow/okhttp3/ResponseBody;

    move-result-object p1

    return-object p1
.end method

.method public final create(Lcom/applovin/shadow/okhttp3/MediaType;[B)Lcom/applovin/shadow/okhttp3/ResponseBody;
    .locals 1
    .param p1    # Lcom/applovin/shadow/okhttp3/MediaType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lms/c;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "content"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0, p2, p1}, Lcom/applovin/shadow/okhttp3/ResponseBody$Companion;->create([BLcom/applovin/shadow/okhttp3/MediaType;)Lcom/applovin/shadow/okhttp3/ResponseBody;

    move-result-object p1

    return-object p1
.end method

.method public final create(Lcom/applovin/shadow/okio/BufferedSource;Lcom/applovin/shadow/okhttp3/MediaType;J)Lcom/applovin/shadow/okhttp3/ResponseBody;
    .locals 1
    .param p1    # Lcom/applovin/shadow/okio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/applovin/shadow/okhttp3/MediaType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/applovin/shadow/okhttp3/ResponseBody$Companion$asResponseBody$1;

    invoke-direct {v0, p2, p3, p4, p1}, Lcom/applovin/shadow/okhttp3/ResponseBody$Companion$asResponseBody$1;-><init>(Lcom/applovin/shadow/okhttp3/MediaType;JLcom/applovin/shadow/okio/BufferedSource;)V

    return-object v0
.end method

.method public final create(Lcom/applovin/shadow/okio/ByteString;Lcom/applovin/shadow/okhttp3/MediaType;)Lcom/applovin/shadow/okhttp3/ResponseBody;
    .locals 3
    .param p1    # Lcom/applovin/shadow/okio/ByteString;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/applovin/shadow/okhttp3/MediaType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v0, Lcom/applovin/shadow/okio/Buffer;

    invoke-direct {v0}, Lcom/applovin/shadow/okio/Buffer;-><init>()V

    .line 10
    invoke-virtual {v0, p1}, Lcom/applovin/shadow/okio/Buffer;->write(Lcom/applovin/shadow/okio/ByteString;)Lcom/applovin/shadow/okio/Buffer;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Lcom/applovin/shadow/okio/ByteString;->size()I

    move-result p1

    int-to-long v1, p1

    invoke-virtual {p0, v0, p2, v1, v2}, Lcom/applovin/shadow/okhttp3/ResponseBody$Companion;->create(Lcom/applovin/shadow/okio/BufferedSource;Lcom/applovin/shadow/okhttp3/MediaType;J)Lcom/applovin/shadow/okhttp3/ResponseBody;

    move-result-object p1

    return-object p1
.end method

.method public final create(Ljava/lang/String;Lcom/applovin/shadow/okhttp3/MediaType;)Lcom/applovin/shadow/okhttp3/ResponseBody;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/applovin/shadow/okhttp3/MediaType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lkotlin/text/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    if-eqz p2, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2
    invoke-static {p2, v2, v1, v2}, Lcom/applovin/shadow/okhttp3/MediaType;->charset$default(Lcom/applovin/shadow/okhttp3/MediaType;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/nio/charset/Charset;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    sget-object v1, Lcom/applovin/shadow/okhttp3/MediaType;->Companion:Lcom/applovin/shadow/okhttp3/MediaType$Companion;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; charset=utf-8"

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/applovin/shadow/okhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lcom/applovin/shadow/okhttp3/MediaType;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 4
    :cond_1
    :goto_0
    new-instance v1, Lcom/applovin/shadow/okio/Buffer;

    invoke-direct {v1}, Lcom/applovin/shadow/okio/Buffer;-><init>()V

    invoke-virtual {v1, p1, v0}, Lcom/applovin/shadow/okio/Buffer;->writeString(Ljava/lang/String;Ljava/nio/charset/Charset;)Lcom/applovin/shadow/okio/Buffer;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/applovin/shadow/okio/Buffer;->size()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/applovin/shadow/okhttp3/ResponseBody$Companion;->create(Lcom/applovin/shadow/okio/BufferedSource;Lcom/applovin/shadow/okhttp3/MediaType;J)Lcom/applovin/shadow/okhttp3/ResponseBody;

    move-result-object p1

    return-object p1
.end method

.method public final create([BLcom/applovin/shadow/okhttp3/MediaType;)Lcom/applovin/shadow/okhttp3/ResponseBody;
    .locals 3
    .param p1    # [B
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/applovin/shadow/okhttp3/MediaType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/applovin/shadow/okio/Buffer;

    invoke-direct {v0}, Lcom/applovin/shadow/okio/Buffer;-><init>()V

    .line 7
    invoke-virtual {v0, p1}, Lcom/applovin/shadow/okio/Buffer;->write([B)Lcom/applovin/shadow/okio/Buffer;

    move-result-object v0

    .line 8
    array-length p1, p1

    int-to-long v1, p1

    invoke-virtual {p0, v0, p2, v1, v2}, Lcom/applovin/shadow/okhttp3/ResponseBody$Companion;->create(Lcom/applovin/shadow/okio/BufferedSource;Lcom/applovin/shadow/okhttp3/MediaType;J)Lcom/applovin/shadow/okhttp3/ResponseBody;

    move-result-object p1

    return-object p1
.end method
