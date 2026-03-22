.class public final Lnm/b$c;
.super Lio/bidmachine/AdRequest$AdRequestBuilderImpl;
.source "BannerRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnm/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/AdRequest$AdRequestBuilderImpl<",
        "Lnm/b$c;",
        "Lnm/b;",
        "Lnm/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lio/bidmachine/banner/BannerSize;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected a(Lnm/a;)Lnm/b;
    .locals 2
    .param p1    # Lnm/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lnm/b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lnm/b;-><init>(Lnm/a;Lnm/b$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method protected b()Lnm/a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lnm/b$c;->a:Lio/bidmachine/banner/BannerSize;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v1, Lnm/a;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Lnm/a;-><init>(Lio/bidmachine/banner/BannerSize;)V

    .line 8
    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string v1, "BannerSize can\'t be null"

    .line 14
    .line 15
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    throw v0
.end method

.method public bridge synthetic build()Lio/bidmachine/AdRequest;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->build()Lio/bidmachine/AdRequest;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic build(Lio/bidmachine/AdRequestParameters;)Lio/bidmachine/AdRequest;
    .locals 0
    .param p1    # Lio/bidmachine/AdRequestParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    check-cast p1, Lnm/a;

    invoke-virtual {p0, p1}, Lnm/b$c;->a(Lnm/a;)Lnm/b;

    move-result-object p1

    return-object p1
.end method

.method public c(Lio/bidmachine/banner/BannerSize;)Lnm/b$c;
    .locals 0
    .param p1    # Lio/bidmachine/banner/BannerSize;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lnm/b$c;->a:Lio/bidmachine/banner/BannerSize;

    .line 2
    .line 3
    return-object p0
.end method

.method protected bridge synthetic createAdRequestParameters()Lio/bidmachine/AdRequestParameters;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lnm/b$c;->b()Lnm/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic setBidPayload(Ljava/lang/String;)Llp/f;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setBidPayload(Ljava/lang/String;)Llp/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic setCustomParams(Lio/bidmachine/CustomParams;)Llp/f;
    .locals 0
    .param p1    # Lio/bidmachine/CustomParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setCustomParams(Lio/bidmachine/CustomParams;)Llp/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic setListener(Lio/bidmachine/AdRequest$AdRequestListener;)Llp/f;
    .locals 0
    .param p1    # Lio/bidmachine/AdRequest$AdRequestListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setListener(Lio/bidmachine/AdRequest$AdRequestListener;)Llp/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic setLoadingTimeOut(Ljava/lang/Integer;)Llp/f;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setLoadingTimeOut(Ljava/lang/Integer;)Llp/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic setNetworks(Ljava/lang/String;)Llp/f;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setNetworks(Ljava/lang/String;)Llp/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setNetworks(Ljava/util/List;)Llp/f;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setNetworks(Ljava/util/List;)Llp/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setPlacementId(Ljava/lang/String;)Llp/f;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setPlacementId(Ljava/lang/String;)Llp/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic setPriceFloorParams(Lio/bidmachine/PriceFloorParams;)Llp/f;
    .locals 0
    .param p1    # Lio/bidmachine/PriceFloorParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setPriceFloorParams(Lio/bidmachine/PriceFloorParams;)Llp/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic setSessionAdParams(Lio/bidmachine/SessionAdParams;)Llp/f;
    .locals 0
    .param p1    # Lio/bidmachine/SessionAdParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setSessionAdParams(Lio/bidmachine/SessionAdParams;)Llp/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic setTargetingParams(Lio/bidmachine/TargetingParams;)Llp/f;
    .locals 0
    .param p1    # Lio/bidmachine/TargetingParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;->setTargetingParams(Lio/bidmachine/TargetingParams;)Llp/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method
