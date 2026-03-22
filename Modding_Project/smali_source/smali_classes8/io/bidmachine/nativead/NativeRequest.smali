.class public final Lio/bidmachine/nativead/NativeRequest;
.super Lio/bidmachine/AdRequest;
.source "NativeRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/nativead/NativeRequest$b;,
        Lio/bidmachine/nativead/NativeRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/AdRequest<",
        "Lio/bidmachine/nativead/NativeRequest;",
        "Lio/bidmachine/nativead/a;",
        "Lxq/n;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lio/bidmachine/nativead/a;)V
    .locals 0
    .param p1    # Lio/bidmachine/nativead/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/AdRequest;-><init>(Lio/bidmachine/AdRequestParameters;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/nativead/a;Lio/bidmachine/nativead/NativeRequest$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/nativead/NativeRequest;-><init>(Lio/bidmachine/nativead/a;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createUnifiedAdRequestParams(Lio/bidmachine/AdRequestParameters;Lio/bidmachine/TargetingParams;Llp/d;)Lxq/d;
    .locals 0
    .param p1    # Lio/bidmachine/AdRequestParameters;
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
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    check-cast p1, Lio/bidmachine/nativead/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/nativead/NativeRequest;->j(Lio/bidmachine/nativead/a;Lio/bidmachine/TargetingParams;Llp/d;)Lxq/n;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected j(Lio/bidmachine/nativead/a;Lio/bidmachine/TargetingParams;Llp/d;)Lxq/n;
    .locals 2
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
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/nativead/NativeRequest$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, p2, p3, v1}, Lio/bidmachine/nativead/NativeRequest$b;-><init>(Lio/bidmachine/nativead/a;Lio/bidmachine/TargetingParams;Llp/d;Lio/bidmachine/nativead/NativeRequest$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method protected processBidPayload(Lio/bidmachine/protobuf/ResponsePayload;)V
    .locals 2
    .param p1    # Lio/bidmachine/protobuf/ResponsePayload;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getAdRequestParameters()Lio/bidmachine/AdRequestParameters;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lio/bidmachine/nativead/a;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Lio/bidmachine/nativead/a;->d(Z)V

    .line 9
    .line 10
    .line 11
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest;->processBidPayload(Lio/bidmachine/protobuf/ResponsePayload;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
