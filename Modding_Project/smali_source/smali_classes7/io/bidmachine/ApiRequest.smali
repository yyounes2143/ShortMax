.class public Lio/bidmachine/ApiRequest;
.super Lio/bidmachine/core/NetworkRequest;
.source "ApiRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/ApiRequest$ApiEventDataBinder;,
        Lio/bidmachine/ApiRequest$ApiTrackerDataBinder;,
        Lio/bidmachine/ApiRequest$ApiAuctionDataBinder;,
        Lio/bidmachine/ApiRequest$ApiResponseAuctionDataBinder;,
        Lio/bidmachine/ApiRequest$ApiInitDataBinder;,
        Lio/bidmachine/ApiRequest$ApiDataBinder;,
        Lio/bidmachine/ApiRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestDataType:",
        "Ljava/lang/Object;",
        "ResponseType:",
        "Ljava/lang/Object;",
        ">",
        "Lio/bidmachine/core/NetworkRequest<",
        "TRequestDataType;TResponseType;",
        "Lfr/a;",
        ">;"
    }
.end annotation


# static fields
.field static REQUEST_TIMEOUT:I = 0x2710
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field requiredUrl:Ljava/lang/String;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field timeOut:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private constructor <init>(Lio/bidmachine/core/NetworkRequest$Method;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lio/bidmachine/core/NetworkRequest$Method;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest$Method;",
            "Ljava/lang/String;",
            "TRequestDataType;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/core/NetworkRequest;-><init>(Lio/bidmachine/core/NetworkRequest$Method;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    new-instance p1, Lio/bidmachine/core/NetworkRequest$d;

    invoke-direct {p1}, Lio/bidmachine/core/NetworkRequest$d;-><init>()V

    invoke-virtual {p0, p1}, Lio/bidmachine/core/NetworkRequest;->addContentEncoder(Lio/bidmachine/core/NetworkRequest$g;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/core/NetworkRequest$Method;Ljava/lang/String;Ljava/lang/Object;Lio/bidmachine/ApiRequest$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/ApiRequest;-><init>(Lio/bidmachine/core/NetworkRequest$Method;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/Throwable;Ljava/net/URLConnection;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lio/bidmachine/ApiRequest;->lambda$obtainError$0(Ljava/lang/Throwable;Ljava/net/URLConnection;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static synthetic lambda$obtainError$0(Ljava/lang/Throwable;Ljava/net/URLConnection;)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "obtainError: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string p0, "("

    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p0, ")"

    .line 23
    .line 24
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    return-object p0
.end method


# virtual methods
.method protected getBaseUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/ApiRequest;->requiredUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method protected obtainError(Ljava/net/URLConnection;I)Lfr/a;
    .locals 3
    .param p1    # Ljava/net/URLConnection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/16 p1, 0xc8

    if-lt p2, p1, :cond_0

    const/16 p1, 0x12c

    if-ge p2, p1, :cond_0

    .line 3
    sget-object p1, Lfr/a;->s:Lfr/a;

    goto :goto_1

    :cond_0
    const/16 p1, 0x190

    const/16 v0, 0x1f4

    if-lt p2, p1, :cond_1

    if-ge p2, v0, :cond_1

    .line 4
    sget-object p1, Lfr/a;->g:Lfr/a;

    goto :goto_0

    :cond_1
    if-lt p2, v0, :cond_2

    const/16 p1, 0x258

    if-ge p2, p1, :cond_2

    .line 5
    sget-object p1, Lfr/a;->h:Lfr/a;

    goto :goto_0

    .line 6
    :cond_2
    const-string p1, "Unknown server error"

    invoke-static {p1}, Lfr/a;->i(Ljava/lang/String;)Lfr/a;

    move-result-object p1

    .line 7
    :goto_0
    new-instance v0, Lfr/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Server returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " code"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lfr/a;-><init>(Lfr/a;ILjava/lang/String;)V

    move-object p1, v0

    :goto_1
    return-object p1
.end method

.method protected obtainError(Ljava/net/URLConnection;Ljava/lang/Throwable;)Lfr/a;
    .locals 1
    .param p1    # Ljava/net/URLConnection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 8
    new-instance v0, Lio/bidmachine/x0;

    invoke-direct {v0, p2, p1}, Lio/bidmachine/x0;-><init>(Ljava/lang/Throwable;Ljava/net/URLConnection;)V

    invoke-static {v0}, Lio/bidmachine/core/a;->a(Lhr/b;)V

    .line 9
    instance-of p1, p2, Ljava/net/UnknownHostException;

    if-eqz p1, :cond_0

    .line 10
    sget-object p1, Lfr/a;->e:Lfr/a;

    return-object p1

    .line 11
    :cond_0
    instance-of p1, p2, Ljava/net/SocketTimeoutException;

    if-nez p1, :cond_2

    instance-of p1, p2, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    const-string p1, "Unknown api request error"

    invoke-static {p1, p2}, Lfr/a;->l(Ljava/lang/String;Ljava/lang/Throwable;)Lfr/a;

    move-result-object p1

    return-object p1

    .line 13
    :cond_2
    :goto_0
    sget-object p1, Lfr/a;->f:Lfr/a;

    return-object p1
.end method

.method protected bridge synthetic obtainError(Ljava/net/URLConnection;I)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/net/URLConnection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ApiRequest;->obtainError(Ljava/net/URLConnection;I)Lfr/a;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic obtainError(Ljava/net/URLConnection;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/net/URLConnection;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/ApiRequest;->obtainError(Ljava/net/URLConnection;Ljava/lang/Throwable;)Lfr/a;

    move-result-object p1

    return-object p1
.end method

.method protected prepareRequestParams(Ljava/net/URLConnection;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/core/NetworkRequest;->prepareRequestParams(Ljava/net/URLConnection;)V

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lio/bidmachine/ApiRequest;->timeOut:I

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lio/bidmachine/ApiRequest;->timeOut:I

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
