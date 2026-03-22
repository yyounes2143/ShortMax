.class public final Lmp/b;
.super Lio/bidmachine/BidMachineAd;
.source "NativeAd.java"

# interfaces
.implements Lmp/j;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/BidMachineAd<",
        "Lmp/b;",
        "Lio/bidmachine/nativead/NativeRequest;",
        "Lmp/d;",
        "Llp/b;",
        "Lxq/n;",
        "Ljava/lang/Object;",
        ">;",
        "Lmp/j;"
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
    sget-object v0, Lio/bidmachine/AdsType;->Native:Lio/bidmachine/AdsType;

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lio/bidmachine/BidMachineAd;-><init>(Landroid/content/Context;Lio/bidmachine/AdsType;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private j()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getLoadedAdObject()Llp/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "not loaded, please load ads first"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lio/bidmachine/BidMachineAd;->log(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    return v0
.end method


# virtual methods
.method protected c(Lio/bidmachine/ContextProvider;Lio/bidmachine/nativead/NativeRequest;Lio/bidmachine/NetworkAdapter;Llp/b;Lio/bidmachine/AdProcessCallback;)Lmp/d;
    .locals 6
    .param p1    # Lio/bidmachine/ContextProvider;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/nativead/NativeRequest;
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
    invoke-virtual {p3}, Lio/bidmachine/NetworkAdapter;->createNativeAd()Lxq/l;

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
    new-instance p3, Lmp/d;

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
    invoke-direct/range {v0 .. v5}, Lmp/d;-><init>(Lio/bidmachine/ContextProvider;Lio/bidmachine/AdProcessCallback;Lio/bidmachine/nativead/NativeRequest;Llp/b;Lxq/l;)V

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
    check-cast p2, Lio/bidmachine/nativead/NativeRequest;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lmp/b;->c(Lio/bidmachine/ContextProvider;Lio/bidmachine/nativead/NativeRequest;Lio/bidmachine/NetworkAdapter;Llp/b;Lio/bidmachine/AdProcessCallback;)Lmp/d;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public d()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lmp/b;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getLoadedAdObject()Llp/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lmp/d;

    .line 12
    .line 13
    invoke-virtual {v0}, Lmp/d;->E()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lmp/b;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getLoadedAdObject()Llp/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lmp/d;

    .line 12
    .line 13
    invoke-virtual {v0}, Lmp/d;->G()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return-object v0
.end method

.method public f(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lmp/b;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getLoadedAdObject()Llp/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lmp/d;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Lmp/d;->H(Landroid/content/Context;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    :goto_0
    return-object p1
.end method

.method public getIcon()Lio/bidmachine/ImageData;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lmp/b;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getLoadedAdObject()Llp/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lmp/d;

    .line 12
    .line 13
    invoke-virtual {v0}, Lmp/d;->getIcon()Lio/bidmachine/ImageData;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return-object v0
.end method

.method public getMainImage()Lio/bidmachine/ImageData;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lmp/b;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getLoadedAdObject()Llp/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lmp/d;

    .line 12
    .line 13
    invoke-virtual {v0}, Lmp/d;->getMainImage()Lio/bidmachine/ImageData;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return-object v0
.end method

.method public h()F
    .locals 1

    .line 1
    invoke-direct {p0}, Lmp/b;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getLoadedAdObject()Llp/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lmp/d;

    .line 12
    .line 13
    invoke-virtual {v0}, Lmp/d;->I()F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    .line 19
    .line 20
    :goto_0
    return v0
.end method

.method public hasVideo()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lmp/b;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getLoadedAdObject()Llp/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lmp/d;

    .line 12
    .line 13
    invoke-virtual {v0}, Lmp/d;->hasVideo()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    :goto_0
    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lmp/b;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getLoadedAdObject()Llp/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lmp/d;

    .line 12
    .line 13
    invoke-virtual {v0}, Lmp/d;->J()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    return-object v0
.end method

.method public isDuplicateShowDisabled()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public k(Landroid/view/ViewGroup;Landroid/view/View;Lio/bidmachine/nativead/view/NativeMediaView;Ljava/util/Set;)V
    .locals 7
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lio/bidmachine/nativead/view/NativeMediaView;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/Set;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Landroid/view/View;",
            "Lio/bidmachine/nativead/view/NativeMediaView;",
            "Ljava/util/Set<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->prepareShow()Llp/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    move-object v1, v0

    .line 6
    check-cast v1, Lmp/d;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v6, p0, Lio/bidmachine/BidMachineAd;->rendererConfiguration:Lio/bidmachine/RendererConfiguration;

    .line 12
    .line 13
    move-object v2, p1

    .line 14
    move-object v3, p2

    .line 15
    move-object v4, p3

    .line 16
    move-object v5, p4

    .line 17
    invoke-virtual/range {v1 .. v6}, Lmp/d;->P(Landroid/view/ViewGroup;Landroid/view/View;Lio/bidmachine/nativead/view/NativeMediaView;Ljava/util/Set;Lio/bidmachine/RendererConfiguration;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public l()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmp/b;->j()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lio/bidmachine/BidMachineAd;->getLoadedAdObject()Llp/a;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lmp/d;

    .line 12
    .line 13
    invoke-virtual {v0}, Lmp/d;->U()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
