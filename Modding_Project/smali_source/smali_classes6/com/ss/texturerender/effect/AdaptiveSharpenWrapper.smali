.class public Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;
.super Lcom/ss/texturerender/SharpenBaseWrapper;
.source "AdaptiveSharpenWrapper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TR_AdaptiveSharpenWrapper"

.field private static final VIDEO_SHARPEN_CLASS_NAME:Ljava/lang/String; = "com.ss.lens.algorithm.AdaptiveSharpen"


# instance fields
.field private mGetOutputMethod:Ljava/lang/reflect/Method;

.field private mInitMethod:Ljava/lang/reflect/Method;

.field private mProcessMethod:Ljava/lang/reflect/Method;

.field private mProcessOESMethod:Ljava/lang/reflect/Method;

.field private mReleaseMethod:Ljava/lang/reflect/Method;

.field private mSharpenObject:Ljava/lang/Object;

.field private mTexType:I


# direct methods
.method public constructor <init>(I)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    invoke-direct/range {p0 .. p0}, Lcom/ss/texturerender/SharpenBaseWrapper;-><init>()V

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    iput-object v2, v1, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;->mSharpenObject:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object v2, v1, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;->mInitMethod:Ljava/lang/reflect/Method;

    .line 12
    .line 13
    iput-object v2, v1, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;->mProcessMethod:Ljava/lang/reflect/Method;

    .line 14
    .line 15
    iput-object v2, v1, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;->mProcessOESMethod:Ljava/lang/reflect/Method;

    .line 16
    .line 17
    iput-object v2, v1, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;->mGetOutputMethod:Ljava/lang/reflect/Method;

    .line 18
    .line 19
    iput-object v2, v1, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;->mReleaseMethod:Ljava/lang/reflect/Method;

    .line 20
    .line 21
    iput v0, v1, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;->mTexType:I

    .line 22
    .line 23
    const-string v3, "new AdaptiveSharpenWrapper"

    .line 24
    .line 25
    const-string v4, "TR_AdaptiveSharpenWrapper"

    .line 26
    .line 27
    invoke-static {v0, v4, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :try_start_0
    const-string v0, "com.ss.lens.algorithm.AdaptiveSharpen"

    .line 31
    .line 32
    const/4 v3, 0x1

    .line 33
    invoke-static {v3, v0}, Lcom/ss/texturerender/TextureRenderHelper;->getClzUsingPluginLoader(ILjava/lang/String;)Ljava/lang/Class;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    const-string v3, "InitAdaptiveSharpen"

    .line 40
    .line 41
    sget-object v14, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 42
    .line 43
    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 44
    .line 45
    filled-new-array {v14, v15, v15, v15}, [Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    iput-object v3, v1, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;->mInitMethod:Ljava/lang/reflect/Method;

    .line 54
    .line 55
    const-string v3, "AdaptiveSharpenProcess"

    .line 56
    .line 57
    sget-object v16, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 58
    .line 59
    move-object v5, v15

    .line 60
    move-object v6, v15

    .line 61
    move-object v7, v15

    .line 62
    move-object v8, v14

    .line 63
    move-object v9, v15

    .line 64
    move-object/from16 v10, v16

    .line 65
    .line 66
    move-object/from16 v11, v16

    .line 67
    .line 68
    move-object/from16 v12, v16

    .line 69
    .line 70
    move-object v13, v15

    .line 71
    filled-new-array/range {v5 .. v13}, [Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    iput-object v3, v1, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;->mProcessMethod:Ljava/lang/reflect/Method;

    .line 80
    .line 81
    const-string v3, "AdaptiveSharpenOesProcess"

    .line 82
    .line 83
    const-class v8, [F

    .line 84
    .line 85
    move-object v5, v15

    .line 86
    move-object v6, v15

    .line 87
    move-object v7, v15

    .line 88
    move-object v9, v14

    .line 89
    move-object v10, v15

    .line 90
    move-object/from16 v11, v16

    .line 91
    .line 92
    move-object/from16 v12, v16

    .line 93
    .line 94
    move-object/from16 v13, v16

    .line 95
    .line 96
    move-object v14, v15

    .line 97
    filled-new-array/range {v5 .. v14}, [Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    move-result-object v5

    .line 101
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    iput-object v3, v1, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;->mProcessOESMethod:Ljava/lang/reflect/Method;

    .line 106
    .line 107
    const-string v3, "GetAdaptiveSharpenOutput"

    .line 108
    .line 109
    const/4 v5, 0x0

    .line 110
    new-array v6, v5, [Ljava/lang/Class;

    .line 111
    .line 112
    invoke-virtual {v0, v3, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 113
    .line 114
    .line 115
    move-result-object v3

    .line 116
    iput-object v3, v1, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;->mGetOutputMethod:Ljava/lang/reflect/Method;

    .line 117
    .line 118
    const-string v3, "ReleaseAdaptiveSharpen"

    .line 119
    .line 120
    new-array v5, v5, [Ljava/lang/Class;

    .line 121
    .line 122
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    iput-object v3, v1, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;->mReleaseMethod:Ljava/lang/reflect/Method;

    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iput-object v0, v1, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;->mSharpenObject:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    iget v3, v1, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;->mTexType:I

    .line 137
    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v6, "AdaptiveSharpen get fail:"

    .line 144
    .line 145
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-static {v3, v4, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    iput-object v2, v1, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;->mSharpenObject:Ljava/lang/Object;

    .line 163
    .line 164
    iput-object v2, v1, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;->mInitMethod:Ljava/lang/reflect/Method;

    .line 165
    .line 166
    iput-object v2, v1, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;->mProcessMethod:Ljava/lang/reflect/Method;

    .line 167
    .line 168
    iput-object v2, v1, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;->mGetOutputMethod:Ljava/lang/reflect/Method;

    .line 169
    .line 170
    iput-object v2, v1, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;->mReleaseMethod:Ljava/lang/reflect/Method;

    .line 171
    .line 172
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
    iget p2, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;->mTexType:I

    .line 12
    .line 13
    const-string p3, "TR_AdaptiveSharpenWrapper"

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
.method public AdaptiveSharpenOesProcess(III[FZIFFFI)I
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;->mSharpenObject:Ljava/lang/Object;

    .line 3
    .line 4
    const/4 v2, -0x1

    .line 5
    if-eqz v1, :cond_2

    .line 6
    .line 7
    iget-object v3, v0, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;->mProcessOESMethod:Ljava/lang/reflect/Method;

    .line 8
    .line 9
    if-nez v3, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v5

    .line 20
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object v6

    .line 24
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    .line 26
    .line 27
    move-result-object v8

    .line 28
    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v9

    .line 32
    invoke-static/range {p7 .. p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 33
    .line 34
    .line 35
    move-result-object v10

    .line 36
    invoke-static/range {p8 .. p8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 37
    .line 38
    .line 39
    move-result-object v11

    .line 40
    invoke-static/range {p9 .. p9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 41
    .line 42
    .line 43
    move-result-object v12

    .line 44
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v13

    .line 48
    move-object/from16 v7, p4

    .line 49
    .line 50
    filled-new-array/range {v4 .. v13}, [Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v4

    .line 54
    invoke-direct {p0, v3, v1, v4}, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    if-nez v1, :cond_1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    check-cast v1, Ljava/lang/Integer;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    :cond_2
    :goto_0
    return v2
.end method

.method public AdaptiveSharpenProcess(IIIZIFFFI)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;->mSharpenObject:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v2, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;->mProcessMethod:Ljava/lang/reflect/Method;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 24
    .line 25
    .line 26
    move-result-object p4

    .line 27
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p5

    .line 31
    invoke-static {p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 32
    .line 33
    .line 34
    move-result-object p6

    .line 35
    invoke-static {p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 36
    .line 37
    .line 38
    move-result-object p7

    .line 39
    invoke-static {p8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 40
    .line 41
    .line 42
    move-result-object p8

    .line 43
    invoke-static {p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object p9

    .line 47
    filled-new-array/range {p1 .. p9}, [Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-direct {p0, v2, v0, p1}, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-nez p1, :cond_1

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    check-cast p1, Ljava/lang/Integer;

    .line 59
    .line 60
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    :cond_2
    :goto_0
    return v1
.end method

.method public GetAdaptiveSharpenOutput()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;->mSharpenObject:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v2, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;->mGetOutputMethod:Ljava/lang/reflect/Method;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v3, 0x0

    .line 12
    new-array v3, v3, [Ljava/lang/Object;

    .line 13
    .line 14
    invoke-direct {p0, v2, v0, v3}, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    check-cast v0, Ljava/lang/Integer;

    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    :cond_2
    :goto_0
    return v1
.end method

.method public InitAdaptiveSharpen(ZIII)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;->mSharpenObject:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v2, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;->mInitMethod:Ljava/lang/reflect/Method;

    .line 7
    .line 8
    if-nez v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    .line 25
    .line 26
    move-result-object p4

    .line 27
    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {p0, v2, v0, p1}, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    check-cast p1, Ljava/lang/Boolean;

    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    :cond_2
    :goto_0
    return v1
.end method

.method public ReleaseAdaptiveSharpen()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;->mSharpenObject:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;->mReleaseMethod:Ljava/lang/reflect/Method;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    new-array v2, v2, [Ljava/lang/Object;

    .line 11
    .line 12
    invoke-direct {p0, v1, v0, v2}, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iget v0, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;->mTexType:I

    .line 16
    .line 17
    const-string v1, "TR_AdaptiveSharpenWrapper"

    .line 18
    .line 19
    const-string v2, "ReleaseAdaptiveSharpen"

    .line 20
    .line 21
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/ss/texturerender/effect/AdaptiveSharpenWrapper;->mSharpenObject:Ljava/lang/Object;

    .line 26
    .line 27
    return-void
.end method
