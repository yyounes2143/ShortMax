.class public Lhm/v;
.super Lio/bidmachine/core/NetworkRequest;
.source "WaterfallNetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhm/v$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/core/NetworkRequest<",
        "Lio/bidmachine/protobuf/Waterfall$Result;",
        "Lio/bidmachine/protobuf/Waterfall$Configuration;",
        "Lfr/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lio/bidmachine/protobuf/Waterfall$Result;I)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/protobuf/Waterfall$Result;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/bidmachine/core/NetworkRequest$Method;->Post:Lio/bidmachine/core/NetworkRequest$Method;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1, p2}, Lio/bidmachine/core/NetworkRequest;-><init>(Lio/bidmachine/core/NetworkRequest$Method;Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lhm/v;->a:Ljava/lang/String;

    .line 8
    .line 9
    iput p3, p0, Lhm/v;->b:I

    .line 10
    .line 11
    new-instance p1, Lhm/v$b;

    .line 12
    .line 13
    invoke-direct {p1, v1}, Lhm/v$b;-><init>(Lhm/v$a;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Lio/bidmachine/core/NetworkRequest;->setDataBinder(Lio/bidmachine/core/NetworkRequest$f;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method protected getBaseUrl()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lhm/v;->a:Ljava/lang/String;

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

    .line 8
    instance-of p1, p2, Ljava/net/UnknownHostException;

    if-eqz p1, :cond_0

    .line 9
    sget-object p1, Lfr/a;->e:Lfr/a;

    return-object p1

    .line 10
    :cond_0
    instance-of p1, p2, Ljava/net/SocketTimeoutException;

    if-nez p1, :cond_2

    instance-of p1, p2, Lorg/apache/http/conn/ConnectTimeoutException;

    if-eqz p1, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    const-string p1, "Unknown api request error"

    invoke-static {p1, p2}, Lfr/a;->l(Ljava/lang/String;Ljava/lang/Throwable;)Lfr/a;

    move-result-object p1

    return-object p1

    .line 12
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
    invoke-virtual {p0, p1, p2}, Lhm/v;->obtainError(Ljava/net/URLConnection;I)Lfr/a;

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
    invoke-virtual {p0, p1, p2}, Lhm/v;->obtainError(Ljava/net/URLConnection;Ljava/lang/Throwable;)Lfr/a;

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
    iget v0, p0, Lhm/v;->b:I

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lhm/v;->b:I

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
