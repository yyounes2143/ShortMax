.class public interface abstract Lcom/ss/texturerender/VideoSurface$FrameRenderCallback;
.super Ljava/lang/Object;
.source "VideoSurface.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/texturerender/VideoSurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FrameRenderCallback"
.end annotation


# virtual methods
.method public abstract onBytebufferCallbck(ILjava/nio/ByteBuffer;IIJ)I
.end method

.method public abstract onTextureCallback(IIILandroid/opengl/EGLContext;IIJ)I
.end method
