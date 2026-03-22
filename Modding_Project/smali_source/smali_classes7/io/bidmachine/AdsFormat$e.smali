.class Lio/bidmachine/AdsFormat$e;
.super Lio/bidmachine/AdsFormat$l;
.source "AdsFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdsFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/AdsFormat$l<",
        "Lxq/g;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/bidmachine/AdsType;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/AdsFormat$l;-><init>(Lio/bidmachine/AdsType;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method bridge synthetic c(Lxq/d;Lio/bidmachine/AdContentType;)Z
    .locals 0
    .param p1    # Lxq/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/AdContentType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lxq/g;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/AdsFormat$e;->d(Lxq/g;Lio/bidmachine/AdContentType;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method d(Lxq/g;Lio/bidmachine/AdContentType;)Z
    .locals 0
    .param p1    # Lxq/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/AdContentType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p1}, Lxq/g;->getAdRequestParameters()Lnm/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lnm/a;->b()Lio/bidmachine/banner/BannerSize;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object p2, Lio/bidmachine/banner/BannerSize;->Size_300x250:Lio/bidmachine/banner/BannerSize;

    .line 10
    .line 11
    if-ne p1, p2, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    :goto_0
    return p1
.end method
