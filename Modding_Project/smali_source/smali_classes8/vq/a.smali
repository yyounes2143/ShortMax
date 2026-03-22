.class public final Lvq/a;
.super Lio/bidmachine/FullScreenAd;
.source "RewardedAd.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/FullScreenAd<",
        "Lvq/a;",
        "Lvq/c;",
        "Lio/bidmachine/FullScreenAdObject<",
        "Lvq/c;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lio/bidmachine/AdsType;->Rewarded:Lio/bidmachine/AdsType;

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lio/bidmachine/FullScreenAd;-><init>(Landroid/content/Context;Lio/bidmachine/AdsType;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected c(Lio/bidmachine/ContextProvider;Lvq/c;Lio/bidmachine/NetworkAdapter;Llp/b;Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/FullScreenAdObject;
    .locals 6
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lvq/c;
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
            "Lvq/c;",
            "Lio/bidmachine/NetworkAdapter;",
            "Llp/b;",
            "Lio/bidmachine/AdProcessCallback;",
            ")",
            "Lio/bidmachine/FullScreenAdObject<",
            "Lvq/c;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lio/bidmachine/NetworkAdapter;->createRewarded()Lxq/h;

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
    new-instance p3, Lio/bidmachine/FullScreenAdObject;

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
    invoke-direct/range {v0 .. v5}, Lio/bidmachine/FullScreenAdObject;-><init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdProcessCallback;Lio/bidmachine/FullScreenAdRequest;Llp/b;Lxq/h;)V

    .line 17
    .line 18
    .line 19
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
    check-cast p2, Lvq/c;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lvq/a;->c(Lio/bidmachine/ContextProvider;Lvq/c;Lio/bidmachine/NetworkAdapter;Llp/b;Lio/bidmachine/AdProcessCallback;)Lio/bidmachine/FullScreenAdObject;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
