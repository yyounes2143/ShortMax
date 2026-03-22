.class public interface abstract Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher$Factory;
.super Ljava/lang/Object;
.source "TTVideoEngineUrlFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Factory"
.end annotation


# virtual methods
.method public abstract create(Lcom/ss/ttvideoengine/TTVideoEngine;)Lcom/ss/ttvideoengine/strategy/refresh/TTVideoEngineUrlFetcher;
    .param p1    # Lcom/ss/ttvideoengine/TTVideoEngine;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
