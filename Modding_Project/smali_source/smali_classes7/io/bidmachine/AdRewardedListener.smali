.class public interface abstract Lio/bidmachine/AdRewardedListener;
.super Ljava/lang/Object;
.source "AdRewardedListener.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<AdType::",
        "Lio/bidmachine/IAd;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onAdRewarded(Lio/bidmachine/IAd;)V
    .param p1    # Lio/bidmachine/IAd;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TAdType;)V"
        }
    .end annotation
.end method
