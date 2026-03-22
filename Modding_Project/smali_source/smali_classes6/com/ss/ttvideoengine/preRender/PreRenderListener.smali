.class public interface abstract Lcom/ss/ttvideoengine/preRender/PreRenderListener;
.super Ljava/lang/Object;
.source "PreRenderListener.java"


# static fields
.field public static final PRERENDER_ERROR_ENGINE_EMPTY:I = 0x2

.field public static final PRERENDER_ERROR_PREPARE_ERROR:I = 0x3

.field public static final PRERENDER_ERROR_SOURCE_EMPTY:I = 0x1

.field public static final PRERENDER_ERROR_STATE_ERROR:I


# virtual methods
.method public onPreRenderError(Lcom/ss/ttvideoengine/TTVideoEngine;Lcom/ss/ttvideoengine/source/Source;ILcom/ss/ttvideoengine/utils/Error;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPreRenderPause(Lcom/ss/ttvideoengine/TTVideoEngine;Lcom/ss/ttvideoengine/source/Source;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method public onPreRenderStart(Lcom/ss/ttvideoengine/TTVideoEngine;Lcom/ss/ttvideoengine/source/Source;)V
    .locals 0

    .line 1
    return-void
.end method

.method public onPreRenderSuccess(Lcom/ss/ttvideoengine/TTVideoEngine;Lcom/ss/ttvideoengine/source/Source;)V
    .locals 0

    .line 1
    return-void
.end method
