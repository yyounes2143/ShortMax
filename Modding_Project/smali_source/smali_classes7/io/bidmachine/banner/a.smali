.class final Lio/bidmachine/banner/a;
.super Lio/bidmachine/ViewAd;
.source "BannerAd.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/ViewAd<",
        "Lio/bidmachine/banner/a;",
        "Lnm/b;",
        "Lio/bidmachine/ViewAdObject<",
        "Lnm/b;",
        "Lxq/e;",
        "Lxq/g;",
        ">;",
        "Lxq/g;",
        "Lio/bidmachine/AdListener<",
        "Lio/bidmachine/banner/a;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/bidmachine/AdsType;->Banner:Lio/bidmachine/AdsType;

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lio/bidmachine/ViewAd;-><init>(Landroid/content/Context;Lio/bidmachine/AdsType;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected c(Lio/bidmachine/ContextProvider;Lnm/b;Lio/bidmachine/NetworkAdapter;Llp/b;Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/ViewAdObject;
    .locals 6
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lnm/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/NetworkAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Llp/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lio/bidmachine/AdProcessCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/ContextProvider;",
            "Lnm/b;",
            "Lio/bidmachine/NetworkAdapter;",
            "Llp/b;",
            "Lio/bidmachine/AdProcessCallback;",
            ")",
            "Lio/bidmachine/ViewAdObject<",
            "Lnm/b;",
            "Lxq/e;",
            "Lxq/g;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lio/bidmachine/NetworkAdapter;->createBanner()Lxq/e;

    .line 2
    .line 3
    .line 4
    move-result-object v5

    .line 5
    if-nez v5, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return-object p1

    .line 9
    :cond_0
    new-instance p3, Lio/bidmachine/ViewAdObject;

    .line 10
    .line 11
    move-object v0, p3

    .line 12
    move-object v1, p1

    .line 13
    move-object v2, p5

    .line 14
    move-object v3, p2

    .line 15
    move-object v4, p4

    .line 16
    invoke-direct/range {v0 .. v5}, Lio/bidmachine/ViewAdObject;-><init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdProcessCallback;Lio/bidmachine/AdRequest;Llp/b;Lxq/p;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p2}, Lnm/b;->k()Lio/bidmachine/banner/BannerSize;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget p2, p1, Lio/bidmachine/banner/BannerSize;->width:I

    .line 24
    .line 25
    invoke-virtual {p3, p2}, Lio/bidmachine/ViewAdObject;->setWidth(I)V

    .line 26
    .line 27
    .line 28
    iget p1, p1, Lio/bidmachine/banner/BannerSize;->height:I

    .line 29
    .line 30
    invoke-virtual {p3, p1}, Lio/bidmachine/ViewAdObject;->setHeight(I)V

    .line 31
    .line 32
    .line 33
    return-object p3
.end method

.method protected bridge synthetic createAdObject(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdRequest;Lio/bidmachine/NetworkAdapter;Llp/b;Lio/bidmachine/AdProcessCallback;)Llp/a;
    .locals 0
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/AdRequest;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/NetworkAdapter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Llp/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lio/bidmachine/AdProcessCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p2, Lnm/b;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lio/bidmachine/banner/a;->c(Lio/bidmachine/ContextProvider;Lnm/b;Lio/bidmachine/NetworkAdapter;Llp/b;Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/ViewAdObject;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
