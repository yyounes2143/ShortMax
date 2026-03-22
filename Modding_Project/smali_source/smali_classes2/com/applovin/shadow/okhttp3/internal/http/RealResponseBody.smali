.class public final Lcom/applovin/shadow/okhttp3/internal/http/RealResponseBody;
.super Lcom/applovin/shadow/okhttp3/ResponseBody;
.source "RealResponseBody.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final contentLength:J

.field private final contentTypeString:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final source:Lcom/applovin/shadow/okio/BufferedSource;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/applovin/shadow/okio/BufferedSource;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/applovin/shadow/okio/BufferedSource;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/applovin/shadow/okhttp3/ResponseBody;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/internal/http/RealResponseBody;->contentTypeString:Ljava/lang/String;

    .line 10
    .line 11
    iput-wide p2, p0, Lcom/applovin/shadow/okhttp3/internal/http/RealResponseBody;->contentLength:J

    .line 12
    .line 13
    iput-object p4, p0, Lcom/applovin/shadow/okhttp3/internal/http/RealResponseBody;->source:Lcom/applovin/shadow/okio/BufferedSource;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/applovin/shadow/okhttp3/internal/http/RealResponseBody;->contentLength:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public contentType()Lcom/applovin/shadow/okhttp3/MediaType;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http/RealResponseBody;->contentTypeString:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lcom/applovin/shadow/okhttp3/MediaType;->Companion:Lcom/applovin/shadow/okhttp3/MediaType$Companion;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Lcom/applovin/shadow/okhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lcom/applovin/shadow/okhttp3/MediaType;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    return-object v0
.end method

.method public source()Lcom/applovin/shadow/okio/BufferedSource;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/internal/http/RealResponseBody;->source:Lcom/applovin/shadow/okio/BufferedSource;

    .line 2
    .line 3
    return-object v0
.end method
