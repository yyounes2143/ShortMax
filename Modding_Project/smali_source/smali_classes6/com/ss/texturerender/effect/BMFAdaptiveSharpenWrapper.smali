.class public Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;
.super Lcom/ss/texturerender/SharpenBaseWrapper;
.source "BMFAdaptiveSharpenWrapper.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TR_BMFAdaptiveSharpenWrapper"

.field private static final VIDEO_SHARPEN_CLASS_NAME:Ljava/lang/String; = "com.bytedance.bmf_mods.Sharp"


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
    iput-object v2, v1, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;->mSharpenObject:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object v2, v1, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;->mInitMethod:Ljava/lang/reflect/Method;

    .line 12
    .line 13
    iput-object v2, v1, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;->mProcessMethod:Ljava/lang/reflect/Method;

    .line 14
    .line 15
    iput-object v2, v1, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;->mProcessOESMethod:Ljava/lang/reflect/Method;

    .line 16
    .line 17
    iput-object v2, v1, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;->mGetOutputMethod:Ljava/lang/reflect/Method;

    .line 18
    .line 19
    iput-object v2, v1, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;->mReleaseMethod:Ljava/lang/reflect/Method;

    .line 20
    .line 21
    iput v0, v1, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;->mTexType:I

    .line 22
    .line 23
    const-string v3, "new BMFAdaptiveSharpenWrapper"

    .line 24
    .line 25
    const-string v4, "TR_BMFAdaptiveSharpenWrapper"

    .line 26
    .line 27
    invoke-static {v0, v4, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :try_start_0
    const-string v0, "com.bytedance.bmf_mods.Sharp"

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
    const-string v3, "Init"

    .line 40
    .line 41
    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 42
    .line 43
    const-class v9, Ljava/lang/String;

    .line 44
    .line 45
    sget-object v16, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 46
    .line 47
    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 48
    .line 49
    move-object v5, v15

    .line 50
    move-object v6, v15

    .line 51
    move-object v7, v15

    .line 52
    move-object v8, v15

    .line 53
    move-object/from16 v10, v16

    .line 54
    .line 55
    move-object/from16 v11, v16

    .line 56
    .line 57
    move-object/from16 v12, v16

    .line 58
    .line 59
    move-object/from16 v14, v16

    .line 60
    .line 61
    move-object v2, v15

    .line 62
    move-object/from16 v15, v16

    .line 63
    .line 64
    filled-new-array/range {v5 .. v15}, [Ljava/lang/Class;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    iput-object v3, v1, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;->mInitMethod:Ljava/lang/reflect/Method;

    .line 73
    .line 74
    const-string v3, "ProcessTexture"

    .line 75
    .line 76
    filled-new-array {v2, v2, v2}, [Ljava/lang/Class;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    iput-object v3, v1, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;->mProcessMethod:Ljava/lang/reflect/Method;

    .line 85
    .line 86
    const-string v3, "ProcessOesTexture"

    .line 87
    .line 88
    const-class v8, [F

    .line 89
    .line 90
    const-class v9, [F

    .line 91
    .line 92
    const-class v10, [F

    .line 93
    .line 94
    move-object v5, v2

    .line 95
    move-object v6, v2

    .line 96
    move-object v7, v2

    .line 97
    filled-new-array/range {v5 .. v10}, [Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    iput-object v2, v1, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;->mProcessOESMethod:Ljava/lang/reflect/Method;

    .line 106
    .line 107
    const-string v2, "GetResult"

    .line 108
    .line 109
    const/4 v3, 0x0

    .line 110
    new-array v5, v3, [Ljava/lang/Class;

    .line 111
    .line 112
    invoke-virtual {v0, v2, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    iput-object v2, v1, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;->mGetOutputMethod:Ljava/lang/reflect/Method;

    .line 117
    .line 118
    const-string v2, "Free"

    .line 119
    .line 120
    new-array v3, v3, [Ljava/lang/Class;

    .line 121
    .line 122
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 123
    .line 124
    .line 125
    move-result-object v2

    .line 126
    iput-object v2, v1, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;->mReleaseMethod:Ljava/lang/reflect/Method;

    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iput-object v0, v1, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;->mSharpenObject:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .line 134
    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    iget v2, v1, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;->mTexType:I

    .line 137
    .line 138
    new-instance v3, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v5, "AdaptiveSharpen get fail:"

    .line 144
    .line 145
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-static {v2, v4, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    const/4 v2, 0x0

    .line 163
    iput-object v2, v1, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;->mSharpenObject:Ljava/lang/Object;

    .line 164
    .line 165
    iput-object v2, v1, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;->mInitMethod:Ljava/lang/reflect/Method;

    .line 166
    .line 167
    iput-object v2, v1, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;->mProcessMethod:Ljava/lang/reflect/Method;

    .line 168
    .line 169
    iput-object v2, v1, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;->mGetOutputMethod:Ljava/lang/reflect/Method;

    .line 170
    .line 171
    iput-object v2, v1, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;->mReleaseMethod:Ljava/lang/reflect/Method;

    .line 172
    .line 173
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
    iget p2, p0, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;->mTexType:I

    .line 12
    .line 13
    const-string p3, "TR_BMFAdaptiveSharpenWrapper"

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
.method public AdaptiveSharpenOesProcess(III[F[F[F)I
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;->mSharpenObject:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v2, p0, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;->mProcessOESMethod:Ljava/lang/reflect/Method;

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
    move-result-object v3

    .line 15
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    move-object v6, p4

    .line 24
    move-object v7, p5

    .line 25
    move-object v8, p6

    .line 26
    filled-new-array/range {v3 .. v8}, [Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p0, v2, v0, p1}, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    check-cast p1, Ljava/lang/Integer;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    :cond_2
    :goto_0
    return v1
.end method

.method public AdaptiveSharpenProcess(III)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;->mSharpenObject:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v2, p0, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;->mProcessMethod:Ljava/lang/reflect/Method;

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
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {p0, v2, v0, p1}, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-nez p1, :cond_1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    check-cast p1, Ljava/lang/Integer;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    :cond_2
    :goto_0
    return v1
.end method

.method public GetAdaptiveSharpenOutput()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;->mSharpenObject:Ljava/lang/Object;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    iget-object v2, p0, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;->mGetOutputMethod:Ljava/lang/reflect/Method;

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
    invoke-direct {p0, v2, v0, v3}, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

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

.method public InitAdaptiveSharpen(IIIILjava/lang/String;FFFZFF)I
    .locals 14

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;->mInitMethod:Ljava/lang/reflect/Method;

    .line 3
    .line 4
    iget-object v2, v0, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;->mSharpenObject:Ljava/lang/Object;

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v3

    .line 10
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object v4

    .line 14
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v6

    .line 22
    invoke-static/range {p6 .. p6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 23
    .line 24
    .line 25
    move-result-object v8

    .line 26
    invoke-static/range {p7 .. p7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 27
    .line 28
    .line 29
    move-result-object v9

    .line 30
    invoke-static/range {p8 .. p8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 31
    .line 32
    .line 33
    move-result-object v10

    .line 34
    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 35
    .line 36
    .line 37
    move-result-object v11

    .line 38
    invoke-static/range {p10 .. p10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 39
    .line 40
    .line 41
    move-result-object v12

    .line 42
    invoke-static/range {p11 .. p11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 43
    .line 44
    .line 45
    move-result-object v13

    .line 46
    move-object/from16 v7, p5

    .line 47
    .line 48
    filled-new-array/range {v3 .. v13}, [Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-direct {p0, v1, v2, v3}, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-nez v1, :cond_0

    .line 57
    .line 58
    const/4 v1, -0x1

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    check-cast v1, Ljava/lang/Integer;

    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    :goto_0
    return v1
.end method

.method public ReleaseAdaptiveSharpen()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;->mSharpenObject:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;->mReleaseMethod:Ljava/lang/reflect/Method;

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
    invoke-direct {p0, v1, v0, v2}, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iget v0, p0, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;->mTexType:I

    .line 16
    .line 17
    const-string v1, "TR_BMFAdaptiveSharpenWrapper"

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
    iput-object v0, p0, Lcom/ss/texturerender/effect/BMFAdaptiveSharpenWrapper;->mSharpenObject:Ljava/lang/Object;

    .line 26
    .line 27
    return-void
.end method
