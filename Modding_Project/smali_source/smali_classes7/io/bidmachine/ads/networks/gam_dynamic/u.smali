.class interface abstract Lio/bidmachine/ads/networks/gam_dynamic/u;
.super Ljava/lang/Object;
.source "InternalAdLoadListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<InternalAdType:",
        "Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a(Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;)V
    .param p1    # Lio/bidmachine/ads/networks/gam_dynamic/InternalAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TInternalAdType;)V"
        }
    .end annotation
.end method

.method public abstract onAdLoadFailed(Lfr/a;)V
    .param p1    # Lfr/a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
