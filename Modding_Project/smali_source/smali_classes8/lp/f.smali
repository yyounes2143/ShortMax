.class public interface abstract Llp/f;
.super Ljava/lang/Object;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SelfType::",
        "Llp/f;",
        "ReturnType:",
        "Lio/bidmachine/AdRequest;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract setCustomParams(Lio/bidmachine/CustomParams;)Llp/f;
    .param p1    # Lio/bidmachine/CustomParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/CustomParams;",
            ")TSelfType;"
        }
    .end annotation
.end method

.method public abstract setPlacementId(Ljava/lang/String;)Llp/f;
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TSelfType;"
        }
    .end annotation
.end method

.method public abstract setPriceFloorParams(Lio/bidmachine/PriceFloorParams;)Llp/f;
    .param p1    # Lio/bidmachine/PriceFloorParams;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/PriceFloorParams;",
            ")TSelfType;"
        }
    .end annotation
.end method
