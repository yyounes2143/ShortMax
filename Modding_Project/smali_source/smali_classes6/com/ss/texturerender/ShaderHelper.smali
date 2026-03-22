.class public Lcom/ss/texturerender/ShaderHelper;
.super Ljava/lang/Object;
.source "ShaderHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ShaderHelper"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static compileShader(ILjava/lang/String;)I
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/opengl/GLES20;->glCreateShader(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    const-string v0, "ShaderHelper"

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    new-array v2, v2, [I

    .line 12
    .line 13
    invoke-static {p0, p1}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p0}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 17
    .line 18
    .line 19
    const p1, 0x8b81

    .line 20
    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    invoke-static {p0, p1, v2, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 24
    .line 25
    .line 26
    aget p1, v2, v3

    .line 27
    .line 28
    if-nez p1, :cond_0

    .line 29
    .line 30
    new-instance p1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v2, "Fail to compile shader"

    .line 36
    .line 37
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-static {p0}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {v1, v0, p1}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-static {p0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 55
    .line 56
    .line 57
    move p0, v3

    .line 58
    :cond_0
    if-nez p0, :cond_1

    .line 59
    .line 60
    new-instance p1, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v2, "EGL Error: "

    .line 66
    .line 67
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    invoke-static {v2}, Landroid/opengl/GLUtils;->getEGLErrorString(I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-static {v1, v0, p1}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :cond_1
    return p0
.end method

.method public static createAndLinkProgram(II[Ljava/lang/String;)I
    .locals 3

    .line 1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    new-array v1, v1, [I

    .line 9
    .line 10
    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 11
    .line 12
    .line 13
    invoke-static {v0, p0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    if-eqz p2, :cond_0

    .line 18
    .line 19
    move p1, p0

    .line 20
    :goto_0
    array-length v2, p2

    .line 21
    if-ge p1, v2, :cond_0

    .line 22
    .line 23
    aget-object v2, p2, p1

    .line 24
    .line 25
    invoke-static {v0, p1, v2}, Landroid/opengl/GLES20;->glBindAttribLocation(IILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    add-int/lit8 p1, p1, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {v0}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 32
    .line 33
    .line 34
    const p1, 0x8b82

    .line 35
    .line 36
    .line 37
    invoke-static {v0, p1, v1, p0}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 38
    .line 39
    .line 40
    aget p1, v1, p0

    .line 41
    .line 42
    if-nez p1, :cond_1

    .line 43
    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string p2, "Failed to compile program: "

    .line 50
    .line 51
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-static {v0}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    const/4 p2, -0x1

    .line 66
    const-string v1, "ShaderHelper"

    .line 67
    .line 68
    invoke-static {p2, v1, p1}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 72
    .line 73
    .line 74
    move v0, p0

    .line 75
    :cond_1
    return v0
.end method
