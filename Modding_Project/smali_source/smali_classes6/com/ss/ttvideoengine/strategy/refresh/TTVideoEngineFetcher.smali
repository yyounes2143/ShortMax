.class interface abstract Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher;
.super Ljava/lang/Object;
.source "TTVideoEngineFetcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Request:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract cancel()V
.end method

.method public abstract fetch(Ljava/lang/Object;Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;)V
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRequest;",
            "Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineFetcher$Callback<",
            "TResult;>;)V"
        }
    .end annotation
.end method
