.class public final Lokhttp3/ResponseBody$Companion$asResponseBody$1;
.super Lokhttp3/ResponseBody;
.source "ResponseBody.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/ResponseBody$Companion;->f(Lokio/BufferedSource;Lokhttp3/MediaType;J)Lokhttp3/ResponseBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lokhttp3/MediaType;

.field final synthetic b:J

.field final synthetic c:Lokio/BufferedSource;


# direct methods
.method constructor <init>(Lokhttp3/MediaType;JLokio/BufferedSource;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lokhttp3/ResponseBody$Companion$asResponseBody$1;->a:Lokhttp3/MediaType;

    .line 2
    .line 3
    iput-wide p2, p0, Lokhttp3/ResponseBody$Companion$asResponseBody$1;->b:J

    .line 4
    .line 5
    iput-object p4, p0, Lokhttp3/ResponseBody$Companion$asResponseBody$1;->c:Lokio/BufferedSource;

    .line 6
    .line 7
    invoke-direct {p0}, Lokhttp3/ResponseBody;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public contentLength()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lokhttp3/ResponseBody$Companion$asResponseBody$1;->b:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/ResponseBody$Companion$asResponseBody$1;->a:Lokhttp3/MediaType;

    .line 2
    .line 3
    return-object v0
.end method

.method public source()Lokio/BufferedSource;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lokhttp3/ResponseBody$Companion$asResponseBody$1;->c:Lokio/BufferedSource;

    .line 2
    .line 3
    return-object v0
.end method
