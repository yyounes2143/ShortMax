.class public Lio/bidmachine/ApiRequest$Builder;
.super Ljava/lang/Object;
.source "ApiRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestDataType:",
        "Ljava/lang/Object;",
        "ResponseDataType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private callback:Lio/bidmachine/core/NetworkRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/core/NetworkRequest$b<",
            "TResponseDataType;",
            "Lfr/a;",
            ">;"
        }
    .end annotation
.end field

.field private cancelCallback:Lio/bidmachine/core/NetworkRequest$c;

.field private dataBinder:Lio/bidmachine/ApiRequest$ApiDataBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/ApiRequest$ApiDataBinder<",
            "TRequestDataType;TResponseDataType;>;"
        }
    .end annotation
.end field

.field private method:Lio/bidmachine/core/NetworkRequest$Method;

.field private requestData:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequestDataType;"
        }
    .end annotation
.end field

.field private timeOut:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Lio/bidmachine/ApiRequest;->REQUEST_TIMEOUT:I

    .line 5
    .line 6
    iput v0, p0, Lio/bidmachine/ApiRequest$Builder;->timeOut:I

    .line 7
    .line 8
    sget-object v0, Lio/bidmachine/core/NetworkRequest$Method;->Post:Lio/bidmachine/core/NetworkRequest$Method;

    .line 9
    .line 10
    iput-object v0, p0, Lio/bidmachine/ApiRequest$Builder;->method:Lio/bidmachine/core/NetworkRequest$Method;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public build()Lio/bidmachine/ApiRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/bidmachine/ApiRequest<",
            "TRequestDataType;TResponseDataType;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/ApiRequest;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/ApiRequest$Builder;->method:Lio/bidmachine/core/NetworkRequest$Method;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lio/bidmachine/ApiRequest$Builder;->requestData:Ljava/lang/Object;

    .line 7
    .line 8
    invoke-direct {v0, v1, v2, v3, v2}, Lio/bidmachine/ApiRequest;-><init>(Lio/bidmachine/core/NetworkRequest$Method;Ljava/lang/String;Ljava/lang/Object;Lio/bidmachine/ApiRequest$a;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lio/bidmachine/ApiRequest$Builder;->callback:Lio/bidmachine/core/NetworkRequest$b;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lio/bidmachine/core/NetworkRequest;->setCallback(Lio/bidmachine/core/NetworkRequest$b;)V

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lio/bidmachine/ApiRequest$Builder;->cancelCallback:Lio/bidmachine/core/NetworkRequest$c;

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lio/bidmachine/core/NetworkRequest;->setCancelCallback(Lio/bidmachine/core/NetworkRequest$c;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lio/bidmachine/ApiRequest$Builder;->dataBinder:Lio/bidmachine/ApiRequest$ApiDataBinder;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lio/bidmachine/core/NetworkRequest;->setDataBinder(Lio/bidmachine/core/NetworkRequest$f;)V

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lio/bidmachine/ApiRequest$Builder;->url:Ljava/lang/String;

    .line 27
    .line 28
    iput-object v1, v0, Lio/bidmachine/ApiRequest;->requiredUrl:Ljava/lang/String;

    .line 29
    .line 30
    iget v1, p0, Lio/bidmachine/ApiRequest$Builder;->timeOut:I

    .line 31
    .line 32
    iput v1, v0, Lio/bidmachine/ApiRequest;->timeOut:I

    .line 33
    .line 34
    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/bidmachine/ApiRequest$Builder;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public request()Lio/bidmachine/ApiRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/bidmachine/ApiRequest<",
            "TRequestDataType;TResponseDataType;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/ApiRequest$Builder;->build()Lio/bidmachine/ApiRequest;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lio/bidmachine/core/NetworkRequest;->request()V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public setCallback(Lio/bidmachine/core/NetworkRequest$b;)Lio/bidmachine/ApiRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest$b<",
            "TResponseDataType;",
            "Lfr/a;",
            ">;)",
            "Lio/bidmachine/ApiRequest$Builder<",
            "TRequestDataType;TResponseDataType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/ApiRequest$Builder;->callback:Lio/bidmachine/core/NetworkRequest$b;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCancelCallback(Lio/bidmachine/core/NetworkRequest$c;)Lio/bidmachine/ApiRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest$c;",
            ")",
            "Lio/bidmachine/ApiRequest$Builder<",
            "TRequestDataType;TResponseDataType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/ApiRequest$Builder;->cancelCallback:Lio/bidmachine/core/NetworkRequest$c;

    .line 2
    .line 3
    return-object p0
.end method

.method public setDataBinder(Lio/bidmachine/ApiRequest$ApiDataBinder;)Lio/bidmachine/ApiRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ApiRequest$ApiDataBinder<",
            "TRequestDataType;TResponseDataType;>;)",
            "Lio/bidmachine/ApiRequest$Builder<",
            "TRequestDataType;TResponseDataType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/ApiRequest$Builder;->dataBinder:Lio/bidmachine/ApiRequest$ApiDataBinder;

    .line 2
    .line 3
    return-object p0
.end method

.method public setLoadingTimeOut(I)Lio/bidmachine/ApiRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lio/bidmachine/ApiRequest$Builder<",
            "TRequestDataType;TResponseDataType;>;"
        }
    .end annotation

    .line 1
    if-lez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    sget p1, Lio/bidmachine/ApiRequest;->REQUEST_TIMEOUT:I

    .line 5
    .line 6
    :goto_0
    iput p1, p0, Lio/bidmachine/ApiRequest$Builder;->timeOut:I

    .line 7
    .line 8
    return-object p0
.end method

.method public setMethod(Lio/bidmachine/core/NetworkRequest$Method;)Lio/bidmachine/ApiRequest$Builder;
    .locals 0
    .param p1    # Lio/bidmachine/core/NetworkRequest$Method;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest$Method;",
            ")",
            "Lio/bidmachine/ApiRequest$Builder<",
            "TRequestDataType;TResponseDataType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/ApiRequest$Builder;->method:Lio/bidmachine/core/NetworkRequest$Method;

    .line 2
    .line 3
    return-object p0
.end method

.method public setRequestData(Ljava/lang/Object;)Lio/bidmachine/ApiRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequestDataType;)",
            "Lio/bidmachine/ApiRequest$Builder<",
            "TRequestDataType;TResponseDataType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/ApiRequest$Builder;->requestData:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method public url(Ljava/lang/String;)Lio/bidmachine/ApiRequest$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lio/bidmachine/ApiRequest$Builder<",
            "TRequestDataType;TResponseDataType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/ApiRequest$Builder;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
