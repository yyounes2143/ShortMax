.class Lio/bidmachine/nativead/NativeRequest$b;
.super Lio/bidmachine/UnifiedAdRequestParamsImpl;
.source "NativeRequest.java"

# interfaces
.implements Lxq/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/nativead/NativeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/UnifiedAdRequestParamsImpl<",
        "Lio/bidmachine/nativead/a;",
        ">;",
        "Lxq/n;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lio/bidmachine/nativead/a;Lio/bidmachine/TargetingParams;Llp/d;)V
    .locals 0
    .param p1    # Lio/bidmachine/nativead/a;
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

.method synthetic constructor <init>(Lio/bidmachine/nativead/a;Lio/bidmachine/TargetingParams;Llp/d;Lio/bidmachine/nativead/NativeRequest$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/nativead/NativeRequest$b;-><init>(Lio/bidmachine/nativead/a;Lio/bidmachine/TargetingParams;Llp/d;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAdRequestParameters()Lio/bidmachine/nativead/a;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lio/bidmachine/UnifiedAdRequestParamsImpl;->getAdRequestParameters()Lio/bidmachine/AdRequestParameters;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lio/bidmachine/nativead/a;

    .line 6
    .line 7
    return-object v0
.end method
