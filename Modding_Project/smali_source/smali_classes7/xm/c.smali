.class public final Lxm/c;
.super Lio/bidmachine/FullScreenAdRequest;
.source "InterstitialRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lxm/c$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/FullScreenAdRequest<",
        "Lxm/c;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lio/bidmachine/FullScreenAdRequestParameters;)V
    .locals 0
    .param p1    # Lio/bidmachine/FullScreenAdRequestParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/FullScreenAdRequest;-><init>(Lio/bidmachine/FullScreenAdRequestParameters;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/FullScreenAdRequestParameters;Lxm/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lxm/c;-><init>(Lio/bidmachine/FullScreenAdRequestParameters;)V

    return-void
.end method
