.class public final Lcom/applovin/shadow/okhttp3/ResponseBody$Companion$asResponseBody$1;
.super Lcom/applovin/shadow/okhttp3/ResponseBody;
.source "ResponseBody.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/shadow/okhttp3/ResponseBody$Companion;->create(Lcom/applovin/shadow/okio/BufferedSource;Lcom/applovin/shadow/okhttp3/MediaType;J)Lcom/applovin/shadow/okhttp3/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic $contentLength:J

.field final synthetic $contentType:Lcom/applovin/shadow/okhttp3/MediaType;

.field final synthetic $this_asResponseBody:Lcom/applovin/shadow/okio/BufferedSource;


# direct methods
.method constructor <init>(Lcom/applovin/shadow/okhttp3/MediaType;JLcom/applovin/shadow/okio/BufferedSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/shadow/okhttp3/ResponseBody$Companion$asResponseBody$1;->$contentType:Lcom/applovin/shadow/okhttp3/MediaType;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/applovin/shadow/okhttp3/ResponseBody$Companion$asResponseBody$1;->$contentLength:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/applovin/shadow/okhttp3/ResponseBody$Companion$asResponseBody$1;->$this_asResponseBody:Lcom/applovin/shadow/okio/BufferedSource;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/applovin/shadow/okhttp3/ResponseBody;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/applovin/shadow/okhttp3/ResponseBody$Companion$asResponseBody$1;->$contentLength:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public contentType()Lcom/applovin/shadow/okhttp3/MediaType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/ResponseBody$Companion$asResponseBody$1;->$contentType:Lcom/applovin/shadow/okhttp3/MediaType;

    .line 2
    .line 3
    return-object v0
.end method

.method public source()Lcom/applovin/shadow/okio/BufferedSource;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/applovin/shadow/okhttp3/ResponseBody$Companion$asResponseBody$1;->$this_asResponseBody:Lcom/applovin/shadow/okio/BufferedSource;

    .line 2
    .line 3
    return-object v0
.end method
