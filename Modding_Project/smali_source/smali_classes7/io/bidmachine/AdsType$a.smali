.class Lio/bidmachine/AdsType$a;
.super Lom/b;
.source "AdsType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/AdsType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lom/b<",
        "Lxq/g;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lom/b;-><init>(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public bridge synthetic j(Lio/bidmachine/ContextProvider;Lxq/d;)Landroid/graphics/Point;
    .locals 0
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lxq/d;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p2, Lxq/g;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/AdsType$a;->k(Lio/bidmachine/ContextProvider;Lxq/g;)Landroid/graphics/Point;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public k(Lio/bidmachine/ContextProvider;Lxq/g;)Landroid/graphics/Point;
    .locals 1
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lxq/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-interface {p2}, Lxq/g;->getAdRequestParameters()Lnm/a;

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
    new-instance p2, Landroid/graphics/Point;

    .line 10
    .line 11
    iget v0, p1, Lio/bidmachine/banner/BannerSize;->width:I

    .line 12
    .line 13
    iget p1, p1, Lio/bidmachine/banner/BannerSize;->height:I

    .line 14
    .line 15
    invoke-direct {p2, v0, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 16
    .line 17
    .line 18
    return-object p2
.end method
