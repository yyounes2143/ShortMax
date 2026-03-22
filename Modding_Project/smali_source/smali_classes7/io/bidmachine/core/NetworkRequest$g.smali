.class public abstract Lio/bidmachine/core/NetworkRequest$g;
.super Ljava/lang/Object;
.source "NetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/core/NetworkRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestDataType:",
        "Ljava/lang/Object;",
        "RequestResultType:",
        "Ljava/lang/Object;",
        "ErrorResultType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected abstract a(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "TRequestDataType;TRequestResultType;TErrorResultType;>;",
            "Ljava/net/URLConnection;",
            "[B)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract b(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;[B)[B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "TRequestDataType;TRequestResultType;TErrorResultType;>;",
            "Ljava/net/URLConnection;",
            "[B)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected c(Lio/bidmachine/core/NetworkRequest;Ljava/net/URLConnection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/core/NetworkRequest<",
            "TRequestDataType;TRequestResultType;TErrorResultType;>;",
            "Ljava/net/URLConnection;",
            ")V"
        }
    .end annotation

    .line 1
    return-void
.end method
