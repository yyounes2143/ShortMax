.class public Lio/bidmachine/banner/BannerView;
.super Lio/bidmachine/AdView;
.source "BannerView.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/AdView<",
        "Lio/bidmachine/banner/BannerView;",
        "Lio/bidmachine/banner/a;",
        "Lnm/b;",
        "Lio/bidmachine/ViewAdObject<",
        "Lnm/b;",
        "Lxq/e;",
        "Lxq/g;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lio/bidmachine/AdView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1, p2}, Lio/bidmachine/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lio/bidmachine/AdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Lio/bidmachine/banner/a;
    .locals 1

    .line 1
    new-instance v0, Lio/bidmachine/banner/a;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lio/bidmachine/banner/a;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method protected bridge synthetic createAd(Landroid/content/Context;)Lio/bidmachine/ViewAd;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lio/bidmachine/banner/BannerView;->a(Landroid/content/Context;)Lio/bidmachine/banner/a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
