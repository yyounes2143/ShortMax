.class public Lcom/ss/texturerender/AdaptiveGradingWrapper;
.super Ljava/lang/Object;
.source "AdaptiveGradingWrapper.java"


# static fields
.field private static final HEIGHT_DEFAULT:I = 0x2d0

.field private static final LOG_TAG:Ljava/lang/String; = "AdaptiveGradingWrapper"

.field private static final MAX_RETRY_COUNT:I = 0x3

.field private static final VIDEO_ADAPTIVE_GRADING_CLASS_NAME:Ljava/lang/String; = "com.bytedance.bmf_mods.AdaptiveGrading"

.field private static final WIDTH_DEFAULT:I = 0x5a0


# instance fields
.field private mAdaptiveGradingObject:Ljava/lang/Object;

.field private mBrightnessThreshold:[F

.field private mCacheFile:Ljava/lang/String;

.field private mContrastThreshold:[F

.field private mFreeMethod:Ljava/lang/reflect/Method;

.field private mInitMethod:Ljava/lang/reflect/Method;

.field private mMaxHeight:I

.field private mMaxInitRetryCount:I

.field private mMaxWidth:I

.field private mProcessMethod:Ljava/lang/reflect/Method;

.field private mProcessOesMethod:Ljava/lang/reflect/Method;

.field private mSaturationThreshold:[F

.field private mTexType:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mAdaptiveGradingObject:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mInitMethod:Ljava/lang/reflect/Method;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mProcessMethod:Ljava/lang/reflect/Method;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mProcessOesMethod:Ljava/lang/reflect/Method;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mFreeMethod:Ljava/lang/reflect/Method;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mMaxInitRetryCount:I

    .line 17
    .line 18
    iput p1, p0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mTexType:I

    .line 19
    .line 20
    const-string v0, "AdaptiveGradingWrapper"

    .line 21
    .line 22
    const-string v1, "new AdaptiveGradingWrapper"

    .line 23
    .line 24
    invoke-static {p1, v0, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private _initObjAndMethod()V
    .locals 15

    .line 1
    :try_start_0
    const-string v0, "com.bytedance.bmf_mods.AdaptiveGrading"

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v1, v0}, Lcom/ss/texturerender/TextureRenderHelper;->getClzUsingPluginLoader(ILjava/lang/String;)Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string v1, "Init"

    .line 11
    .line 12
    sget-object v12, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 13
    .line 14
    const-class v4, Ljava/lang/String;

    .line 15
    .line 16
    const-class v5, [F

    .line 17
    .line 18
    const-class v6, [F

    .line 19
    .line 20
    const-class v7, [F

    .line 21
    .line 22
    move-object v2, v12

    .line 23
    move-object v3, v12

    .line 24
    filled-new-array/range {v2 .. v7}, [Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, p0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mInitMethod:Ljava/lang/reflect/Method;

    .line 33
    .line 34
    const-string v1, "ProcessTexture"

    .line 35
    .line 36
    sget-object v13, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 37
    .line 38
    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 39
    .line 40
    move-object v2, v12

    .line 41
    move-object v3, v12

    .line 42
    move-object v4, v12

    .line 43
    move-object v5, v13

    .line 44
    move-object v6, v13

    .line 45
    move-object v7, v13

    .line 46
    move-object v8, v13

    .line 47
    move-object v9, v13

    .line 48
    move-object v10, v13

    .line 49
    move-object v11, v14

    .line 50
    filled-new-array/range {v2 .. v11}, [Ljava/lang/Class;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iput-object v1, p0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mProcessMethod:Ljava/lang/reflect/Method;

    .line 59
    .line 60
    const-string v1, "ProcessOesTexture"

    .line 61
    .line 62
    const-class v5, [F

    .line 63
    .line 64
    move-object v2, v12

    .line 65
    move-object v3, v12

    .line 66
    move-object v4, v12

    .line 67
    move-object v6, v13

    .line 68
    move-object v7, v13

    .line 69
    move-object v8, v13

    .line 70
    move-object v9, v13

    .line 71
    move-object v10, v13

    .line 72
    move-object v11, v13

    .line 73
    move-object v12, v14

    .line 74
    filled-new-array/range {v2 .. v12}, [Ljava/lang/Class;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    iput-object v1, p0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mProcessOesMethod:Ljava/lang/reflect/Method;

    .line 83
    .line 84
    const-string v1, "Free"

    .line 85
    .line 86
    const/4 v2, 0x0

    .line 87
    new-array v2, v2, [Ljava/lang/Class;

    .line 88
    .line 89
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iput-object v1, p0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mFreeMethod:Ljava/lang/reflect/Method;

    .line 94
    .line 95
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iput-object v0, p0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mAdaptiveGradingObject:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :catch_0
    move-exception v0

    .line 103
    iget v1, p0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mTexType:I

    .line 104
    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 108
    .line 109
    .line 110
    const-string v3, "VideoOCLSR get fail:"

    .line 111
    .line 112
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    const-string v2, "AdaptiveGradingWrapper"

    .line 127
    .line 128
    invoke-static {v1, v2, v0}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mAdaptiveGradingObject:Ljava/lang/Object;

    .line 133
    .line 134
    iput-object v0, p0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mInitMethod:Ljava/lang/reflect/Method;

    .line 135
    .line 136
    iput-object v0, p0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mFreeMethod:Ljava/lang/reflect/Method;

    .line 137
    .line 138
    iput-object v0, p0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mProcessMethod:Ljava/lang/reflect/Method;

    .line 139
    .line 140
    :cond_0
    :goto_0
    return-void
.end method

.method private varargs _invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p1, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    return-object p1

    .line 10
    :catch_0
    move-exception p1

    .line 11
    iget p2, p0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mTexType:I

    .line 12
    .line 13
    const-string p3, "AdaptiveGradingWrapper"

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p2, p3, p1}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    return-object p1
.end method


# virtual methods
.method public free()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mFreeMethod:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mAdaptiveGradingObject:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    .line 8
    invoke-direct {p0, v0, v1, v2}, Lcom/ss/texturerender/AdaptiveGradingWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mAdaptiveGradingObject:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object v0, p0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mInitMethod:Ljava/lang/reflect/Method;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mFreeMethod:Ljava/lang/reflect/Method;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mProcessMethod:Ljava/lang/reflect/Method;

    .line 19
    .line 20
    return-void
.end method

.method public init(IILjava/lang/String;[F[F[F)Z
    .locals 7
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mAdaptiveGradingObject:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mInitMethod:Ljava/lang/reflect/Method;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/ss/texturerender/AdaptiveGradingWrapper;->_initObjAndMethod()V

    .line 10
    .line 11
    .line 12
    :cond_1
    if-gtz p1, :cond_2

    .line 13
    .line 14
    const/16 p1, 0x5a0

    .line 15
    .line 16
    :cond_2
    iput p1, p0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mMaxWidth:I

    .line 17
    .line 18
    if-gtz p2, :cond_3

    .line 19
    .line 20
    const/16 p2, 0x2d0

    .line 21
    .line 22
    :cond_3
    iput p2, p0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mMaxHeight:I

    .line 23
    .line 24
    iput-object p3, p0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mCacheFile:Ljava/lang/String;

    .line 25
    .line 26
    iput-object p4, p0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mBrightnessThreshold:[F

    .line 27
    .line 28
    iput-object p5, p0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mContrastThreshold:[F

    .line 29
    .line 30
    iput-object p6, p0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mSaturationThreshold:[F

    .line 31
    .line 32
    iget-object p2, p0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mInitMethod:Ljava/lang/reflect/Method;

    .line 33
    .line 34
    iget-object v0, p0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mAdaptiveGradingObject:Ljava/lang/Object;

    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget p1, p0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mMaxHeight:I

    .line 41
    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    move-object v3, p3

    .line 47
    move-object v4, p4

    .line 48
    move-object v5, p5

    .line 49
    move-object v6, p6

    .line 50
    filled-new-array/range {v1 .. v6}, [Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-direct {p0, p2, v0, p1}, Lcom/ss/texturerender/AdaptiveGradingWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-eqz p1, :cond_5

    .line 59
    .line 60
    instance-of p2, p1, Ljava/lang/Integer;

    .line 61
    .line 62
    if-eqz p2, :cond_5

    .line 63
    .line 64
    move-object p2, p1

    .line 65
    check-cast p2, Ljava/lang/Integer;

    .line 66
    .line 67
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-gez p2, :cond_4

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_4
    const/4 p1, 0x1

    .line 75
    return p1

    .line 76
    :cond_5
    :goto_0
    iget p2, p0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mTexType:I

    .line 77
    .line 78
    new-instance p3, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string p4, "AdaptiveGrading init error:"

    .line 84
    .line 85
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const-string p3, "AdaptiveGrading"

    .line 96
    .line 97
    invoke-static {p2, p3, p1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0}, Lcom/ss/texturerender/AdaptiveGradingWrapper;->free()V

    .line 101
    .line 102
    .line 103
    const/4 p1, 0x0

    .line 104
    return p1
.end method

.method public process(IIIFFFFFFZ)I
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mAdaptiveGradingObject:Ljava/lang/Object;

    .line 3
    .line 4
    const-string v2, "AdaptiveGrading"

    .line 5
    .line 6
    if-eqz v1, :cond_5

    .line 7
    .line 8
    iget-object v3, v0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mInitMethod:Ljava/lang/reflect/Method;

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    if-ltz p1, :cond_4

    .line 14
    .line 15
    if-lez p2, :cond_4

    .line 16
    .line 17
    if-gtz p3, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    iget-object v2, v0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mProcessMethod:Ljava/lang/reflect/Method;

    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 35
    .line 36
    .line 37
    move-result-object v6

    .line 38
    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 39
    .line 40
    .line 41
    move-result-object v7

    .line 42
    invoke-static/range {p6 .. p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 43
    .line 44
    .line 45
    move-result-object v8

    .line 46
    invoke-static/range {p7 .. p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 47
    .line 48
    .line 49
    move-result-object v9

    .line 50
    invoke-static/range {p8 .. p8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 51
    .line 52
    .line 53
    move-result-object v10

    .line 54
    invoke-static/range {p9 .. p9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 55
    .line 56
    .line 57
    move-result-object v11

    .line 58
    invoke-static/range {p10 .. p10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 59
    .line 60
    .line 61
    move-result-object v12

    .line 62
    filled-new-array/range {v3 .. v12}, [Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-direct {p0, v2, v1, v3}, Lcom/ss/texturerender/AdaptiveGradingWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    if-eqz v1, :cond_3

    .line 71
    .line 72
    instance-of v2, v1, Ljava/lang/Integer;

    .line 73
    .line 74
    if-eqz v2, :cond_3

    .line 75
    .line 76
    check-cast v1, Ljava/lang/Integer;

    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result v2

    .line 82
    if-gez v2, :cond_2

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 86
    .line 87
    .line 88
    move-result v1

    .line 89
    return v1

    .line 90
    :cond_3
    :goto_0
    return p1

    .line 91
    :cond_4
    :goto_1
    iget v1, v0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mTexType:I

    .line 92
    .line 93
    const-string v3, "AdaptiveGrading width height = 0"

    .line 94
    .line 95
    invoke-static {v1, v2, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return p1

    .line 99
    :cond_5
    :goto_2
    iget v1, v0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mTexType:I

    .line 100
    .line 101
    const-string v3, "AdaptiveGrading mInitMethod null"

    .line 102
    .line 103
    invoke-static {v1, v2, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return p1
.end method

.method public processOES(III[FFFFFFFZ)I
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mAdaptiveGradingObject:Ljava/lang/Object;

    .line 3
    .line 4
    const-string v2, "AdaptiveGrading"

    .line 5
    .line 6
    if-eqz v1, :cond_5

    .line 7
    .line 8
    iget-object v3, v0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mInitMethod:Ljava/lang/reflect/Method;

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    goto :goto_2

    .line 13
    :cond_0
    if-ltz p1, :cond_4

    .line 14
    .line 15
    if-lez p2, :cond_4

    .line 16
    .line 17
    if-gtz p3, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    iget-object v2, v0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mProcessOesMethod:Ljava/lang/reflect/Method;

    .line 21
    .line 22
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v3

    .line 26
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    invoke-static/range {p6 .. p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    invoke-static/range {p7 .. p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    invoke-static/range {p8 .. p8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 47
    .line 48
    .line 49
    move-result-object v10

    .line 50
    invoke-static/range {p9 .. p9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 51
    .line 52
    .line 53
    move-result-object v11

    .line 54
    invoke-static/range {p10 .. p10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 55
    .line 56
    .line 57
    move-result-object v12

    .line 58
    invoke-static/range {p11 .. p11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 59
    .line 60
    .line 61
    move-result-object v13

    .line 62
    move-object/from16 v6, p4

    .line 63
    .line 64
    filled-new-array/range {v3 .. v13}, [Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-direct {p0, v2, v1, v3}, Lcom/ss/texturerender/AdaptiveGradingWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-eqz v1, :cond_3

    .line 73
    .line 74
    instance-of v2, v1, Ljava/lang/Integer;

    .line 75
    .line 76
    if-eqz v2, :cond_3

    .line 77
    .line 78
    check-cast v1, Ljava/lang/Integer;

    .line 79
    .line 80
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-gez v2, :cond_2

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    return v1

    .line 92
    :cond_3
    :goto_0
    return p1

    .line 93
    :cond_4
    :goto_1
    iget v1, v0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mTexType:I

    .line 94
    .line 95
    const-string v3, "AdaptiveGrading oes width height = 0"

    .line 96
    .line 97
    invoke-static {v1, v2, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    return p1

    .line 101
    :cond_5
    :goto_2
    iget v1, v0, Lcom/ss/texturerender/AdaptiveGradingWrapper;->mTexType:I

    .line 102
    .line 103
    const-string v3, "AdaptiveGrading oes mInitMethod null"

    .line 104
    .line 105
    invoke-static {v1, v2, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return p1
.end method
