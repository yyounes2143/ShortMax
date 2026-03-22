.class public interface abstract Lcom/ss/ttvideoengine/preRender/PreRenderAlgorithm;
.super Ljava/lang/Object;
.source "PreRenderAlgorithm.java"


# virtual methods
.method public abstract getAutoRange()I
.end method

.method public abstract shouldStartPreRender(Lcom/ss/ttvideoengine/source/Source;Lcom/ss/ttvideoengine/preRender/PreRenderTriggerListener;)V
    .param p1    # Lcom/ss/ttvideoengine/source/Source;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/ss/ttvideoengine/preRender/PreRenderTriggerListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract stop()V
.end method
