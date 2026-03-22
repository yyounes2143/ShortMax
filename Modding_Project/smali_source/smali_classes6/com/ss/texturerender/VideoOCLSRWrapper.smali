.class public Lcom/ss/texturerender/VideoOCLSRWrapper;
.super Lcom/ss/texturerender/VideoOCLSRBaseWrapper;
.source "VideoOCLSRWrapper.java"


# static fields
.field private static final HEIGHT_DEFAULT:I = 0x2d0

.field private static final LOG_TAG:Ljava/lang/String; = "VideoOCLSRWrapper"

.field private static final VIDEO_OCLSR_CLASS_NAME:Ljava/lang/String; = "com.ss.lens.algorithm.VideoOCLSR"

.field private static final WIDTH_DEFAULT:I = 0x5a0


# instance fields
.field private mGetOutputMethod:Ljava/lang/reflect/Method;

.field private mInitMethod:Ljava/lang/reflect/Method;

.field private mInitMethodMax:Ljava/lang/reflect/Method;

.field private mInitMethodMaxMalisync:Ljava/lang/reflect/Method;

.field private mInitWithLicenseMethod:Ljava/lang/reflect/Method;

.field private mProcessMethod:Ljava/lang/reflect/Method;

.field private mProcessOesMethod:Ljava/lang/reflect/Method;

.field private mReleaseMethod:Ljava/lang/reflect/Method;

.field private mSRObject:Ljava/lang/Object;

.field private mTexType:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/ss/texturerender/VideoOCLSRBaseWrapper;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mSRObject:Ljava/lang/Object;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mInitMethod:Ljava/lang/reflect/Method;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mInitMethodMax:Ljava/lang/reflect/Method;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mInitMethodMaxMalisync:Ljava/lang/reflect/Method;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mInitWithLicenseMethod:Ljava/lang/reflect/Method;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mProcessOesMethod:Ljava/lang/reflect/Method;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mProcessMethod:Ljava/lang/reflect/Method;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mGetOutputMethod:Ljava/lang/reflect/Method;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mReleaseMethod:Ljava/lang/reflect/Method;

    .line 22
    .line 23
    iput p1, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mTexType:I

    .line 24
    .line 25
    const-string v0, "VideoOCLSRWrapper"

    .line 26
    .line 27
    const-string v1, "new VideoOCLSRWrapper"

    .line 28
    .line 29
    invoke-static {p1, v0, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0}, Lcom/ss/texturerender/VideoOCLSRWrapper;->_initObjAndMethod()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method private _initObjAndMethod()V
    .locals 12

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "VideoOCLSRWrapper"

    .line 4
    .line 5
    const-string v2, "InitVideoOclSr"

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :try_start_0
    const-string v4, "com.ss.lens.algorithm.VideoOCLSR"

    .line 9
    .line 10
    const/4 v5, 0x1

    .line 11
    invoke-static {v5, v4}, Lcom/ss/texturerender/TextureRenderHelper;->getClzUsingPluginLoader(ILjava/lang/String;)Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 15
    if-eqz v4, :cond_0

    .line 16
    .line 17
    :try_start_1
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 18
    .line 19
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 20
    .line 21
    filled-new-array {v0, v5, v6}, [Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v7

    .line 25
    invoke-virtual {v4, v2, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    iput-object v7, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mInitMethod:Ljava/lang/reflect/Method;

    .line 30
    .line 31
    filled-new-array {v0, v5, v6, v5, v5}, [Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v4, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mInitMethodMax:Ljava/lang/reflect/Method;

    .line 40
    .line 41
    const-string v0, "VideoOclSrOesProcess"

    .line 42
    .line 43
    const-class v7, [F

    .line 44
    .line 45
    filled-new-array {v5, v5, v5, v7, v6}, [Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object v7

    .line 49
    invoke-virtual {v4, v0, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mProcessOesMethod:Ljava/lang/reflect/Method;

    .line 54
    .line 55
    const-string v0, "VideoOclSrProcess"

    .line 56
    .line 57
    filled-new-array {v5, v5, v5, v6}, [Ljava/lang/Class;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    invoke-virtual {v4, v0, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mProcessMethod:Ljava/lang/reflect/Method;

    .line 66
    .line 67
    const-string v0, "GetVideoOclSrOutput"

    .line 68
    .line 69
    const/4 v5, 0x0

    .line 70
    new-array v6, v5, [Ljava/lang/Class;

    .line 71
    .line 72
    invoke-virtual {v4, v0, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mGetOutputMethod:Ljava/lang/reflect/Method;

    .line 77
    .line 78
    const-string v0, "ReleaseVideoOclSr"

    .line 79
    .line 80
    new-array v5, v5, [Ljava/lang/Class;

    .line 81
    .line 82
    invoke-virtual {v4, v0, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mReleaseMethod:Ljava/lang/reflect/Method;

    .line 87
    .line 88
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    iput-object v0, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mSRObject:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 93
    .line 94
    goto :goto_1

    .line 95
    :catch_0
    move-exception v0

    .line 96
    goto :goto_0

    .line 97
    :catch_1
    move-exception v0

    .line 98
    move-object v4, v3

    .line 99
    :goto_0
    iget v5, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mTexType:I

    .line 100
    .line 101
    new-instance v6, Ljava/lang/StringBuilder;

    .line 102
    .line 103
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 104
    .line 105
    .line 106
    const-string v7, "VideoOCLSR get fail:"

    .line 107
    .line 108
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-static {v5, v1, v0}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    iput-object v3, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mSRObject:Ljava/lang/Object;

    .line 126
    .line 127
    iput-object v3, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mInitMethod:Ljava/lang/reflect/Method;

    .line 128
    .line 129
    iput-object v3, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mInitMethodMax:Ljava/lang/reflect/Method;

    .line 130
    .line 131
    iput-object v3, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mProcessOesMethod:Ljava/lang/reflect/Method;

    .line 132
    .line 133
    iput-object v3, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mProcessMethod:Ljava/lang/reflect/Method;

    .line 134
    .line 135
    iput-object v3, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mGetOutputMethod:Ljava/lang/reflect/Method;

    .line 136
    .line 137
    iput-object v3, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mReleaseMethod:Ljava/lang/reflect/Method;

    .line 138
    .line 139
    :cond_0
    :goto_1
    const-string v0, "getmethod error:"

    .line 140
    .line 141
    if-eqz v4, :cond_1

    .line 142
    .line 143
    :try_start_2
    const-class v5, Ljava/lang/String;

    .line 144
    .line 145
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 146
    .line 147
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 148
    .line 149
    move-object v6, v10

    .line 150
    move-object v7, v8

    .line 151
    move-object v9, v10

    .line 152
    filled-new-array/range {v5 .. v10}, [Ljava/lang/Class;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    invoke-virtual {v4, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 157
    .line 158
    .line 159
    move-result-object v2

    .line 160
    iput-object v2, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mInitMethodMaxMalisync:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 161
    .line 162
    goto :goto_2

    .line 163
    :catch_2
    move-exception v2

    .line 164
    iget v3, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mTexType:I

    .line 165
    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    const-string v2, ",old lens version maybe"

    .line 182
    .line 183
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v2

    .line 190
    invoke-static {v3, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    :cond_1
    :goto_2
    if-eqz v4, :cond_2

    .line 194
    .line 195
    :try_start_3
    const-string v2, "InitVideoOclSrWithLicense"

    .line 196
    .line 197
    const-class v5, Ljava/lang/String;

    .line 198
    .line 199
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 200
    .line 201
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 202
    .line 203
    const-class v9, Ljava/lang/String;

    .line 204
    .line 205
    move-object v6, v11

    .line 206
    move-object v7, v8

    .line 207
    move-object v10, v11

    .line 208
    filled-new-array/range {v5 .. v11}, [Ljava/lang/Class;

    .line 209
    .line 210
    .line 211
    move-result-object v3

    .line 212
    invoke-virtual {v4, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    iput-object v2, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mInitWithLicenseMethod:Ljava/lang/reflect/Method;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 217
    .line 218
    goto :goto_3

    .line 219
    :catch_3
    move-exception v2

    .line 220
    iget v3, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mTexType:I

    .line 221
    .line 222
    new-instance v4, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    const-string v0, ", maybe no license"

    .line 238
    .line 239
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .line 241
    .line 242
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-static {v3, v1, v0}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    :cond_2
    :goto_3
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
    iget p2, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mTexType:I

    .line 12
    .line 13
    const-string p3, "VideoOCLSRWrapper"

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
.method public GetVideoOclSrOutput()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mSRObject:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mGetOutputMethod:Ljava/lang/reflect/Method;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/ss/texturerender/VideoOCLSRWrapper;->_initObjAndMethod()V

    .line 10
    .line 11
    .line 12
    :cond_1
    iget-object v0, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mGetOutputMethod:Ljava/lang/reflect/Method;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mSRObject:Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    new-array v2, v2, [Ljava/lang/Object;

    .line 18
    .line 19
    invoke-direct {p0, v0, v1, v2}, Lcom/ss/texturerender/VideoOCLSRWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    const/4 v0, -0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_2
    check-cast v0, Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    :goto_0
    return v0
.end method

.method public InitVideoAsyncOclSr(Ljava/lang/String;IZZIILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 0

    .line 1
    move-object p7, p0

    .line 2
    move-object p8, p1

    .line 3
    move p9, p2

    .line 4
    move p10, p3

    .line 5
    move p11, p5

    .line 6
    move p12, p6

    .line 7
    invoke-virtual/range {p7 .. p12}, Lcom/ss/texturerender/VideoOCLSRWrapper;->InitVideoOclSr(Ljava/lang/String;IZII)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public InitVideoOclSr(Ljava/lang/String;IZII)Z
    .locals 2

    .line 10
    iget-object v0, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mSRObject:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mInitMethodMax:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 11
    :cond_0
    invoke-direct {p0}, Lcom/ss/texturerender/VideoOCLSRWrapper;->_initObjAndMethod()V

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mInitMethodMax:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mSRObject:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    filled-new-array {p1, p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/ss/texturerender/VideoOCLSRWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 13
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public InitVideoOclSr(Ljava/lang/String;IZLjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)Z
    .locals 11

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mSRObject:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mInitWithLicenseMethod:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/ss/texturerender/VideoOCLSRWrapper;->_initObjAndMethod()V

    .line 3
    :cond_1
    iget-object v1, v0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mSRObject:Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 4
    iget-object v2, v0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mInitWithLicenseMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_2

    .line 5
    iget v1, v0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mTexType:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mInitWithLicenseMethod "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v3, p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "VideoOCLSRWrapper"

    invoke-static {v1, v4, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v1, v0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mInitWithLicenseMethod:Ljava/lang/reflect/Method;

    iget-object v2, v0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mSRObject:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v4, 0x2d0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v4, 0x5a0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    move-object v4, p1

    move-object v8, p4

    filled-new-array/range {v4 .. v10}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/ss/texturerender/VideoOCLSRWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 7
    :cond_2
    iget-object v2, v0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mInitMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_3

    .line 8
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v5, p1

    filled-new-array {p1, v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v2, v1, v3}, Lcom/ss/texturerender/VideoOCLSRWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    .line 9
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public InitVideoOclSr(Ljava/lang/String;IZZIILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;)Z
    .locals 10

    move-object v0, p0

    move-object v1, p1

    .line 14
    iget-object v2, v0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mSRObject:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mInitWithLicenseMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    .line 15
    :cond_0
    invoke-direct {p0}, Lcom/ss/texturerender/VideoOCLSRWrapper;->_initObjAndMethod()V

    .line 16
    :cond_1
    iget-object v2, v0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mSRObject:Ljava/lang/Object;

    if-eqz v2, :cond_5

    .line 17
    iget-object v3, v0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mInitWithLicenseMethod:Ljava/lang/reflect/Method;

    const-string v4, "VideoOCLSRWrapper"

    if-eqz v3, :cond_2

    .line 18
    iget v2, v0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mTexType:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mInitWithLicenseMethod "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v5, p7

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v4, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v8, v0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mInitWithLicenseMethod:Ljava/lang/reflect/Method;

    iget-object v9, v0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mSRObject:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object v1, p1

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v8, v9, v1}, Lcom/ss/texturerender/VideoOCLSRWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto/16 :goto_0

    .line 20
    :cond_2
    iget-object v3, v0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mInitMethodMaxMalisync:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_3

    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object p2, v4

    move-object p3, v5

    move-object p4, v6

    move-object p5, v7

    move-object/from16 p6, v8

    filled-new-array/range {p1 .. p6}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v3, v2, v1}, Lcom/ss/texturerender/VideoOCLSRWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 22
    :cond_3
    iget-object v2, v0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mInitMethodMax:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_4

    .line 23
    iget v2, v0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mTexType:I

    const-string v3, "mInitMethodMaxMalisync null, use mInitMethodMax"

    invoke-static {v2, v4, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v2, v0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mInitMethodMax:Ljava/lang/reflect/Method;

    iget-object v3, v0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mSRObject:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {p1, v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v2, v3, v1}, Lcom/ss/texturerender/VideoOCLSRWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 25
    :cond_4
    iget-object v2, v0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mInitMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_5

    .line 26
    iget v2, v0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mTexType:I

    const-string v3, "mInitMethodMaxMalisync/mInitMethodMax null,use mInitMethod"

    invoke-static {v2, v4, v3}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v2, v0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mInitMethod:Ljava/lang/reflect/Method;

    iget-object v3, v0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mSRObject:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    filled-new-array {p1, v4, v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v2, v3, v1}, Lcom/ss/texturerender/VideoOCLSRWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_6

    .line 28
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public ReleaseVideoOclSr()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mSRObject:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mReleaseMethod:Ljava/lang/reflect/Method;

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
    invoke-direct {p0, v1, v0, v2}, Lcom/ss/texturerender/VideoOCLSRWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iget v0, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mTexType:I

    .line 16
    .line 17
    const-string v1, "VideoOCLSRWrapper"

    .line 18
    .line 19
    const-string v2, "ReleaseVideoOclSr"

    .line 20
    .line 21
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mSRObject:Ljava/lang/Object;

    .line 26
    .line 27
    return-void
.end method

.method public VideoOclSrOesProcess(III[FZIIIIIJIILandroid/os/Bundle;)I
    .locals 8

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mSRObject:Ljava/lang/Object;

    .line 3
    .line 4
    if-eqz v1, :cond_0

    .line 5
    .line 6
    iget-object v1, v0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mProcessOesMethod:Ljava/lang/reflect/Method;

    .line 7
    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    :cond_0
    invoke-direct {p0}, Lcom/ss/texturerender/VideoOCLSRWrapper;->_initObjAndMethod()V

    .line 11
    .line 12
    .line 13
    :cond_1
    iget-object v1, v0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mProcessOesMethod:Ljava/lang/reflect/Method;

    .line 14
    .line 15
    iget-object v2, v0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mSRObject:Ljava/lang/Object;

    .line 16
    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    move-object v7, p4

    .line 34
    filled-new-array {v3, v4, v5, p4, v6}, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    invoke-direct {p0, v1, v2, v3}, Lcom/ss/texturerender/VideoOCLSRWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    if-eqz v1, :cond_2

    .line 43
    .line 44
    iget v2, v0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mTexType:I

    .line 45
    .line 46
    const-string v3, "VideoOCLSRWrapper"

    .line 47
    .line 48
    const-string v4, "lensTextureProcess sucess"

    .line 49
    .line 50
    invoke-static {v2, v3, v4}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :cond_2
    if-nez v1, :cond_3

    .line 54
    .line 55
    const/4 v1, -0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_3
    check-cast v1, Ljava/lang/Integer;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    :goto_0
    return v1
.end method

.method public VideoOclSrProcess(IIIZIIIIIJIILandroid/os/Bundle;)I
    .locals 0

    .line 1
    iget-object p5, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mSRObject:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    iget-object p5, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mProcessMethod:Ljava/lang/reflect/Method;

    .line 6
    .line 7
    if-nez p5, :cond_1

    .line 8
    .line 9
    :cond_0
    invoke-direct {p0}, Lcom/ss/texturerender/VideoOCLSRWrapper;->_initObjAndMethod()V

    .line 10
    .line 11
    .line 12
    :cond_1
    iget-object p5, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mProcessMethod:Ljava/lang/reflect/Method;

    .line 13
    .line 14
    iget-object p6, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mSRObject:Ljava/lang/Object;

    .line 15
    .line 16
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object p3

    .line 28
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 29
    .line 30
    .line 31
    move-result-object p4

    .line 32
    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-direct {p0, p5, p6, p1}, Lcom/ss/texturerender/VideoOCLSRWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    if-eqz p1, :cond_2

    .line 41
    .line 42
    iget p2, p0, Lcom/ss/texturerender/VideoOCLSRWrapper;->mTexType:I

    .line 43
    .line 44
    const-string p3, "VideoOCLSRWrapper"

    .line 45
    .line 46
    const-string p4, "lensTextureProcess sucess"

    .line 47
    .line 48
    invoke-static {p2, p3, p4}, Lcom/ss/texturerender/TextureRenderLog;->d(ILjava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    if-nez p1, :cond_3

    .line 52
    .line 53
    const/4 p1, -0x1

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    check-cast p1, Ljava/lang/Integer;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    :goto_0
    return p1
.end method

.method public glSrInit(Ljava/lang/String;IZII)Z
    .locals 6

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    move v2, p2

    .line 4
    move v3, p3

    .line 5
    move v4, p5

    .line 6
    move v5, p4

    .line 7
    invoke-virtual/range {v0 .. v5}, Lcom/ss/texturerender/VideoOCLSRWrapper;->InitVideoOclSr(Ljava/lang/String;IZII)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method
