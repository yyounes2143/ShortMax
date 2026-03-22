.class public final Lio/bidmachine/nativead/NativeRequest$Builder;
.super Lio/bidmachine/AdRequest$AdRequestBuilderImpl;
.source "NativeRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/nativead/NativeRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/bidmachine/AdRequest$AdRequestBuilderImpl<",
        "Lio/bidmachine/nativead/NativeRequest$Builder;",
        "Lio/bidmachine/nativead/NativeRequest;",
        "Lio/bidmachine/nativead/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/bidmachine/MediaAssetType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/AdRequest$AdRequestBuilderImpl;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lio/bidmachine/nativead/NativeRequest$Builder$1;

    .line 5
    .line 6
    invoke-static {}, Lio/bidmachine/MediaAssetType;->values()[Lio/bidmachine/MediaAssetType;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    array-length v1, v1

    .line 11
    invoke-direct {v0, p0, v1}, Lio/bidmachine/nativead/NativeRequest$Builder$1;-><init>(Lio/bidmachine/nativead/NativeRequest$Builder;I)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lio/bidmachine/nativead/NativeRequest$Builder;->a:Ljava/util/List;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method protected a(Lio/bidmachine/nativead/a;)Lio/bidmachine/nativead/NativeRequest;
    .locals 2
    .param p1    # Lio/bidmachine/nativead/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/nativead/NativeRequest;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p1, v1}, Lio/bidmachine/nativead/NativeRequest;-><init>(Lio/bidmachine/nativead/a;Lio/bidmachine/nativead/NativeRequest$a;)V

    .line 5
    .line 6
    .line 7
    return-object v0
.end method

.method protected b()Lio/bidmachine/nativead/a;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lio/bidmachine/nativead/a;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/nativead/NativeRequest$Builder;->a:Ljava/util/List;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lio/bidmachine/nativead/a;-><init>(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    return-object v0
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
    check-cast p1, Lio/bidmachine/nativead/a;

    invoke-virtual {p0, p1}, Lio/bidmachine/nativead/NativeRequest$Builder;->a(Lio/bidmachine/nativead/a;)Lio/bidmachine/nativead/NativeRequest;

    move-result-object p1

    return-object p1
.end method

.method public varargs c([Lio/bidmachine/MediaAssetType;)Lio/bidmachine/nativead/NativeRequest$Builder;
    .locals 1
    .param p1    # [Lio/bidmachine/MediaAssetType;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    array-length v0, p1

    .line 2
    if-lez v0, :cond_0

    .line 3
    .line 4
    iget-object v0, p0, Lio/bidmachine/nativead/NativeRequest$Builder;->a:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/nativead/NativeRequest$Builder;->a:Ljava/util/List;

    .line 10
    .line 11
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-object p0
.end method

.method protected bridge synthetic createAdRequestParameters()Lio/bidmachine/AdRequestParameters;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/bidmachine/nativead/NativeRequest$Builder;->b()Lio/bidmachine/nativead/a;

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
