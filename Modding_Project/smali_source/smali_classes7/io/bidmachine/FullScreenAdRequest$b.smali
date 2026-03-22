.class Lio/bidmachine/FullScreenAdRequest$b;
.super Lio/bidmachine/UnifiedAdRequestParamsImpl;
.source "FullScreenAdRequest.java"

# interfaces
.implements Lxq/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/FullScreenAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/UnifiedAdRequestParamsImpl<",
        "Lio/bidmachine/FullScreenAdRequestParameters;",
        ">;",
        "Lxq/j;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lio/bidmachine/FullScreenAdRequestParameters;Lio/bidmachine/TargetingParams;Llp/d;)V
    .locals 0
    .param p1    # Lio/bidmachine/FullScreenAdRequestParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/TargetingParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Llp/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/UnifiedAdRequestParamsImpl;-><init>(Lio/bidmachine/AdRequestParameters;Lio/bidmachine/TargetingParams;Llp/d;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/FullScreenAdRequestParameters;Lio/bidmachine/TargetingParams;Llp/d;Lio/bidmachine/FullScreenAdRequest$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/FullScreenAdRequest$b;-><init>(Lio/bidmachine/FullScreenAdRequestParameters;Lio/bidmachine/TargetingParams;Llp/d;)V

    return-void
.end method
