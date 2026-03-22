.class public abstract Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;
.super Lio/bidmachine/AdRequest$AdRequestBuilderImpl;
.source "FullScreenAdRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/FullScreenAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "FullScreenRequestBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SelfType:",
        "Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder<",
        "TSelfType;TReturnType;>;ReturnType:",
        "Lio/bidmachine/FullScreenAdRequest<",
        "TReturnType;>;>",
        "Lio/bidmachine/AdRequest$AdRequestBuilderImpl<",
        "TSelfType;TReturnType;",
        "Lio/bidmachine/FullScreenAdRequestParameters;",
        ">;"
    }
.end annotation


# instance fields
.field protected adContentType:Lio/bidmachine/AdContentType;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lio/bidmachine/AdContentType;->All:Lio/bidmachine/AdContentType;

    .line 5
    .line 6
    iput-object v0, p0, Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;->adContentType:Lio/bidmachine/AdContentType;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method protected setAdContentType(Lio/bidmachine/AdContentType;)Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;
    .locals 0
    .param p1    # Lio/bidmachine/AdContentType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/AdContentType;",
            ")TSelfType;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/bidmachine/FullScreenAdRequest$FullScreenRequestBuilder;->adContentType:Lio/bidmachine/AdContentType;

    .line 2
    .line 3
    return-object p0
.end method
