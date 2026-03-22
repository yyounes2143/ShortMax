.class public abstract Lio/bidmachine/ApiRequest$ApiDataBinder;
.super Lio/bidmachine/core/NetworkRequest$f;
.source "ApiRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ApiRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ApiDataBinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestDataType:",
        "Ljava/lang/Object;",
        "ResponseDataType:",
        "Ljava/lang/Object;",
        ">",
        "Lio/bidmachine/core/NetworkRequest$f<",
        "TRequestDataType;TResponseDataType;",
        "Lfr/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/core/NetworkRequest$f;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
