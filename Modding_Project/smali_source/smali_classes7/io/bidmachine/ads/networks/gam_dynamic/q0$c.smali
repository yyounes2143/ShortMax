.class public interface abstract Lio/bidmachine/ads/networks/gam_dynamic/q0$c;
.super Ljava/lang/Object;
.source "WaterfallLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ads/networks/gam_dynamic/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract a(Ljava/util/Queue;)V
    .param p1    # Ljava/util/Queue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue<",
            "Lio/bidmachine/protobuf/Waterfall$Result$AdUnit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onAdLoaded()V
.end method
