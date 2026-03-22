.class public final Lnm/b;
.super Lio/bidmachine/AdRequest;
.source "BannerRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnm/b$b;,
        Lnm/b$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/AdRequest<",
        "Lnm/b;",
        "Lnm/a;",
        "Lxq/g;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lnm/a;)V
    .locals 0
    .param p1    # Lnm/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1}, Lio/bidmachine/AdRequest;-><init>(Lio/bidmachine/AdRequestParameters;)V

    return-void
.end method

.method synthetic constructor <init>(Lnm/a;Lnm/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lnm/b;-><init>(Lnm/a;)V

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
    check-cast p1, Lnm/a;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lnm/b;->j(Lnm/a;Lio/bidmachine/TargetingParams;Llp/d;)Lxq/g;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method protected j(Lnm/a;Lio/bidmachine/TargetingParams;Llp/d;)Lxq/g;
    .locals 2
    .param p1    # Lnm/a;
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
    new-instance v0, Lnm/b$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, p2, p3, v1}, Lnm/b$b;-><init>(Lnm/a;Lio/bidmachine/TargetingParams;Llp/d;Lnm/b$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method public k()Lio/bidmachine/banner/BannerSize;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/AdRequest;->getAdRequestParameters()Lio/bidmachine/AdRequestParameters;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lnm/a;

    .line 6
    .line 7
    invoke-virtual {v0}, Lnm/a;->b()Lio/bidmachine/banner/BannerSize;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method
