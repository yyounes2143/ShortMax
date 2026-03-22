.class interface abstract Lio/bidmachine/ads/networks/gam/c0;
.super Ljava/lang/Object;
.source "InternalGAMAdLoadListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<GAMAdType:",
        "Lio/bidmachine/ads/networks/gam/InternalGAMAd;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Lio/bidmachine/ads/networks/gam/InternalGAMAd;)V
    .param p1    # Lio/bidmachine/ads/networks/gam/InternalGAMAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TGAMAdType;)V"
        }
    .end annotation
.end method

.method public abstract onAdLoadFailed(Lfr/a;)V
    .param p1    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
