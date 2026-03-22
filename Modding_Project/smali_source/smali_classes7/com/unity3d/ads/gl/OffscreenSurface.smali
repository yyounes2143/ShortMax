.class public final Lcom/unity3d/ads/gl/OffscreenSurface;
.super Lcom/unity3d/ads/gl/EglSurfaceBase;
.source "OffscreenSurface.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>(Lcom/unity3d/ads/gl/EglCore;II)V
    .locals 1
    .param p1    # Lcom/unity3d/ads/gl/EglCore;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "eglCore"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/unity3d/ads/gl/EglSurfaceBase;-><init>(Lcom/unity3d/ads/gl/EglCore;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0, p2, p3}, Lcom/unity3d/ads/gl/EglSurfaceBase;->createOffscreenSurface(II)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final release()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/unity3d/ads/gl/EglSurfaceBase;->releaseEglSurface()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
