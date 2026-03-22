.class Lcom/ss/texturerender/RenderFactory;
.super Ljava/lang/Object;
.source "RenderFactory.java"


# static fields
.field public static final PICO_VIDEO_VR:Ljava/lang/String; = "com.ss.texturerenderpicovr.PicoVRVideoTextureRender"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static createRender(Lcom/ss/texturerender/effect/EffectConfig;ILandroid/opengl/EGLContext;Landroid/opengl/EGLConfig;Z)Lcom/ss/texturerender/TextureRenderer;
    .locals 7

    .line 1
    const-string v0, "PicoTextureRender"

    .line 2
    .line 3
    and-int/lit8 v1, p1, 0x4

    .line 4
    .line 5
    if-lez v1, :cond_0

    .line 6
    .line 7
    new-instance p4, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;

    .line 8
    .line 9
    invoke-direct {p4, p0, p1, p2, p3}, Lcom/ss/texturerender/overlay/OverlayVideoTextureRenderer;-><init>(Lcom/ss/texturerender/effect/EffectConfig;ILandroid/opengl/EGLContext;Landroid/opengl/EGLConfig;)V

    .line 10
    .line 11
    .line 12
    return-object p4

    .line 13
    :cond_0
    and-int/lit8 v1, p1, 0x8

    .line 14
    .line 15
    if-lez v1, :cond_3

    .line 16
    .line 17
    const/4 p2, 0x0

    .line 18
    :try_start_0
    const-string p3, "com.ss.texturerenderpicovr.PicoVRVideoTextureRender"

    .line 19
    .line 20
    const/4 p4, 0x0

    .line 21
    invoke-static {p4, p3}, Lcom/ss/texturerender/TextureRenderHelper;->getClzUsingPluginLoader(ILjava/lang/String;)Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    if-eqz p3, :cond_2

    .line 26
    .line 27
    const-class p4, Lcom/ss/texturerender/effect/EffectConfig;

    .line 28
    .line 29
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 30
    .line 31
    filled-new-array {p4, v1}, [Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object p4

    .line 35
    invoke-virtual {p3, p4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    if-eqz p3, :cond_1

    .line 40
    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    .line 43
    .line 44
    move-result-object p4

    .line 45
    filled-new-array {p0, p4}, [Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    invoke-virtual {p3, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Lcom/ss/texturerender/TextureRenderer;

    .line 54
    .line 55
    move-object p2, p0

    .line 56
    goto :goto_1

    .line 57
    :catch_0
    move-exception p0

    .line 58
    goto :goto_0

    .line 59
    :cond_1
    const-string p0, "PicoTextureCreate fail constructor is null"

    .line 60
    .line 61
    invoke-static {p1, v0, p0}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    const-string p0, "PicoTextureCreate fail srClz is null"

    .line 66
    .line 67
    invoke-static {p1, v0, p0}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string p4, "PicoTextureCreate fail:"

    .line 77
    .line 78
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-static {p1, v0, p0}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    :goto_1
    return-object p2

    .line 96
    :cond_3
    new-instance v6, Lcom/ss/texturerender/VideoTextureRenderer;

    .line 97
    .line 98
    move-object v0, v6

    .line 99
    move-object v1, p0

    .line 100
    move v2, p1

    .line 101
    move-object v3, p2

    .line 102
    move-object v4, p3

    .line 103
    move v5, p4

    .line 104
    invoke-direct/range {v0 .. v5}, Lcom/ss/texturerender/VideoTextureRenderer;-><init>(Lcom/ss/texturerender/effect/EffectConfig;ILandroid/opengl/EGLContext;Landroid/opengl/EGLConfig;Z)V

    .line 105
    .line 106
    .line 107
    return-object v6
.end method
