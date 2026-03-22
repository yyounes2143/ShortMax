.class public Lcom/ss/texturerender/effect/BMFVQScoreWrapper;
.super Lcom/ss/texturerender/effect/AbsEffect;
.source "BMFVQScoreWrapper.java"


# static fields
.field private static final BMF_VQSCORE_CLASS_NAME:Ljava/lang/String; = "com.bytedance.bmf_mods.VqscoreLive"

.field private static final LOG_TAG:Ljava/lang/String; = "TR_BMFVQScoreWrapper"


# instance fields
.field private final OPENCL:I

.field private final OPENGL:I

.field private final defaultAccessKey:Ljava/lang/String;

.field private final defaultConcurrencyLimit:I

.field private final defaultPlatformSdkVersion:Ljava/lang/String;

.field private mAlgorithmType:I

.field private mBackEnd:I

.field private mCachePath:Ljava/lang/String;

.field private mConcurrencyLimit:I

.field private mDownloadMethod:Ljava/lang/reflect/Method;

.field private mDownlodCallbackMethod:Ljava/lang/reflect/Method;

.field private mForwardType:I

.field private mFreeMethod:Ljava/lang/reflect/Method;

.field private mInitMethod:Ljava/lang/reflect/Method;

.field private mInited:Z

.field private mProcessAverageCostTime:F

.field private mProcessCallbackMethod:Ljava/lang/reflect/Method;

.field private mProcessMethod:Ljava/lang/reflect/Method;

.field private mProcessOesMethod:Ljava/lang/reflect/Method;

.field private mProcessSuccessFrame:F

.field private mProcessSumCostTime:F

.field private mProcessSumFrame:F

.field private mSequenceId:J

.field private mSupportVQSCoreAfterEffect:Z

.field private mVQScoreObject:Ljava/lang/Object;

.field private mVqscoreTimeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    const/16 v0, 0x10

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Lcom/ss/texturerender/effect/AbsEffect;-><init>(II)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mVQScoreObject:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mInitMethod:Ljava/lang/reflect/Method;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mDownlodCallbackMethod:Ljava/lang/reflect/Method;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mProcessCallbackMethod:Ljava/lang/reflect/Method;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mDownloadMethod:Ljava/lang/reflect/Method;

    .line 16
    .line 17
    iput-object p1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mProcessMethod:Ljava/lang/reflect/Method;

    .line 18
    .line 19
    iput-object p1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mProcessOesMethod:Ljava/lang/reflect/Method;

    .line 20
    .line 21
    iput-object p1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mFreeMethod:Ljava/lang/reflect/Method;

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mInited:Z

    .line 25
    .line 26
    const-string v0, ""

    .line 27
    .line 28
    iput-object v0, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mCachePath:Ljava/lang/String;

    .line 29
    .line 30
    const/4 v0, 0x2

    .line 31
    iput v0, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->defaultConcurrencyLimit:I

    .line 32
    .line 33
    const/4 v1, -0x1

    .line 34
    iput v1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mConcurrencyLimit:I

    .line 35
    .line 36
    const-string v1, "142710f02c3a11e8b42429f14557854a"

    .line 37
    .line 38
    iput-object v1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->defaultAccessKey:Ljava/lang/String;

    .line 39
    .line 40
    const-string v1, "11.0.0"

    .line 41
    .line 42
    iput-object v1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->defaultPlatformSdkVersion:Ljava/lang/String;

    .line 43
    .line 44
    iput v0, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->OPENCL:I

    .line 45
    .line 46
    const/4 v1, 0x3

    .line 47
    iput v1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->OPENGL:I

    .line 48
    .line 49
    const-wide/16 v1, 0x0

    .line 50
    .line 51
    iput-wide v1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mSequenceId:J

    .line 52
    .line 53
    iput-boolean p1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mSupportVQSCoreAfterEffect:Z

    .line 54
    .line 55
    const/4 v1, 0x0

    .line 56
    iput v1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mProcessAverageCostTime:F

    .line 57
    .line 58
    iput v1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mProcessSumCostTime:F

    .line 59
    .line 60
    iput v1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mProcessSumFrame:F

    .line 61
    .line 62
    iput v1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mProcessSuccessFrame:F

    .line 63
    .line 64
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    .line 66
    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 67
    .line 68
    .line 69
    iput-object v1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mVqscoreTimeMap:Ljava/util/Map;

    .line 70
    .line 71
    iput v0, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mBackEnd:I

    .line 72
    .line 73
    iput p1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mAlgorithmType:I

    .line 74
    .line 75
    const/4 p1, 0x1

    .line 76
    iput p1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mForwardType:I

    .line 77
    .line 78
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 79
    .line 80
    const-string v1, "TR_BMFVQScoreWrapper"

    .line 81
    .line 82
    const-string v2, "new BMFVQScoreWrapper"

    .line 83
    .line 84
    invoke-static {v0, v1, v2}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iput p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mIsSupportOes:I

    .line 88
    .line 89
    invoke-direct {p0}, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->_initObjAndMethod()V

    .line 90
    .line 91
    .line 92
    return-void
.end method

.method private _initObjAndMethod()V
    .locals 10

    .line 1
    :try_start_0
    const-string v0, "com.bytedance.bmf_mods.VqscoreLive"

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
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 13
    .line 14
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    const-class v7, Ljava/lang/String;

    .line 17
    .line 18
    move-object v2, v9

    .line 19
    move-object v3, v9

    .line 20
    move-object v4, v9

    .line 21
    move-object v5, v9

    .line 22
    move-object v8, v9

    .line 23
    filled-new-array/range {v2 .. v8}, [Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iput-object v1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mInitMethod:Ljava/lang/reflect/Method;

    .line 32
    .line 33
    const-string v1, "SetCallback"

    .line 34
    .line 35
    const-class v2, Lcom/bytedance/bmf_mods_api/VqscoreLiveCallbackAPI;

    .line 36
    .line 37
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iput-object v1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mDownlodCallbackMethod:Ljava/lang/reflect/Method;

    .line 46
    .line 47
    const-string v1, "DownloadModel"

    .line 48
    .line 49
    const-class v2, Landroid/content/Context;

    .line 50
    .line 51
    const-class v3, Ljava/util/Map;

    .line 52
    .line 53
    filled-new-array {v2, v3}, [Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iput-object v1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mDownloadMethod:Ljava/lang/reflect/Method;

    .line 62
    .line 63
    const-string v1, "SetProcessCallback"

    .line 64
    .line 65
    const-class v2, Lcom/bytedance/bmf_mods_api/VqscoreProcessCallbackAPI;

    .line 66
    .line 67
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    iput-object v1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mProcessCallbackMethod:Ljava/lang/reflect/Method;

    .line 76
    .line 77
    const-string v1, "ProcessAsync"

    .line 78
    .line 79
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 80
    .line 81
    filled-new-array {v9, v9, v9, v2}, [Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    iput-object v1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mProcessMethod:Ljava/lang/reflect/Method;

    .line 90
    .line 91
    const-string v1, "ProcessOesAsync"

    .line 92
    .line 93
    const-class v3, [F

    .line 94
    .line 95
    filled-new-array {v9, v9, v9, v3, v2}, [Ljava/lang/Class;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    iput-object v1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mProcessOesMethod:Ljava/lang/reflect/Method;

    .line 104
    .line 105
    const-string v1, "Free"

    .line 106
    .line 107
    const/4 v2, 0x0

    .line 108
    new-array v2, v2, [Ljava/lang/Class;

    .line 109
    .line 110
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    iput-object v1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mFreeMethod:Ljava/lang/reflect/Method;

    .line 115
    .line 116
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    iput-object v0, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mVQScoreObject:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .line 122
    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    iget v1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 125
    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string v3, "BMFVQScore get fail:"

    .line 132
    .line 133
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    const-string v2, "TR_BMFVQScoreWrapper"

    .line 148
    .line 149
    invoke-static {v1, v2, v0}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    const/4 v0, 0x0

    .line 153
    iput-object v0, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mVQScoreObject:Ljava/lang/Object;

    .line 154
    .line 155
    iput-object v0, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mInitMethod:Ljava/lang/reflect/Method;

    .line 156
    .line 157
    iput-object v0, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mDownlodCallbackMethod:Ljava/lang/reflect/Method;

    .line 158
    .line 159
    iput-object v0, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mDownloadMethod:Ljava/lang/reflect/Method;

    .line 160
    .line 161
    iput-object v0, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mProcessCallbackMethod:Ljava/lang/reflect/Method;

    .line 162
    .line 163
    iput-object v0, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mProcessMethod:Ljava/lang/reflect/Method;

    .line 164
    .line 165
    iput-object v0, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mProcessOesMethod:Ljava/lang/reflect/Method;

    .line 166
    .line 167
    iput-object v0, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mFreeMethod:Ljava/lang/reflect/Method;

    .line 168
    .line 169
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
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    iget p2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 15
    .line 16
    const-string p3, "TR_BMFVQScoreWrapper"

    .line 17
    .line 18
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p2, p3, p1}, Lcom/ss/texturerender/TextureRenderLog;->e(ILjava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    const/4 p1, 0x0

    .line 26
    return-object p1
.end method

.method static synthetic access$000(Lcom/ss/texturerender/effect/BMFVQScoreWrapper;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mVqscoreTimeMap:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/ss/texturerender/effect/BMFVQScoreWrapper;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mProcessSuccessFrame:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$108(Lcom/ss/texturerender/effect/BMFVQScoreWrapper;)F
    .locals 2

    .line 1
    iget v0, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mProcessSuccessFrame:F

    .line 2
    .line 3
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    .line 5
    add-float/2addr v1, v0

    .line 6
    iput v1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mProcessSuccessFrame:F

    .line 7
    .line 8
    return v0
.end method

.method static synthetic access$200(Lcom/ss/texturerender/effect/BMFVQScoreWrapper;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mProcessSumCostTime:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$202(Lcom/ss/texturerender/effect/BMFVQScoreWrapper;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mProcessSumCostTime:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$300(Lcom/ss/texturerender/effect/BMFVQScoreWrapper;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mProcessAverageCostTime:F

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$302(Lcom/ss/texturerender/effect/BMFVQScoreWrapper;F)F
    .locals 0

    .line 1
    iput p1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mProcessAverageCostTime:F

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$400(Lcom/ss/texturerender/effect/BMFVQScoreWrapper;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mProcessSumFrame:F

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public downloadModel(Landroid/os/Bundle;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mInited:Z

    .line 2
    .line 3
    if-nez v0, :cond_7

    .line 4
    .line 5
    iget-object v0, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mVQScoreObject:Ljava/lang/Object;

    .line 6
    .line 7
    if-eqz v0, :cond_7

    .line 8
    .line 9
    iget-object v0, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mDownloadMethod:Ljava/lang/reflect/Method;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto/16 :goto_1

    .line 14
    .line 15
    :cond_0
    const-string v0, "access_key"

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    const-string v0, "142710f02c3a11e8b42429f14557854a"

    .line 28
    .line 29
    :cond_1
    const-string v1, "sdk_version"

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    .line 41
    const-string v1, "11.0.0"

    .line 42
    .line 43
    :cond_2
    const-string v2, "host"

    .line 44
    .line 45
    const-string v3, ""

    .line 46
    .line 47
    invoke-virtual {p1, v2, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    const-string v6, "TR_BMFVQScoreWrapper"

    .line 56
    .line 57
    if-eqz v5, :cond_4

    .line 58
    .line 59
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 60
    .line 61
    const-string/jumbo v0, "vqscore host is null"

    .line 62
    .line 63
    .line 64
    invoke-static {p1, v6, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 68
    .line 69
    if-eqz p1, :cond_3

    .line 70
    .line 71
    const/16 v1, 0x13

    .line 72
    .line 73
    iget v2, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 74
    .line 75
    invoke-virtual {p1, v1, v2, v0}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    return-void

    .line 79
    :cond_4
    const-string v5, "cache_dir"

    .line 80
    .line 81
    invoke-virtual {p1, v5, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    iput-object v5, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mCachePath:Ljava/lang/String;

    .line 86
    .line 87
    const-string v5, "concurrency_limit"

    .line 88
    .line 89
    const/4 v7, 0x2

    .line 90
    invoke-virtual {p1, v5, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    iput v5, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mConcurrencyLimit:I

    .line 95
    .line 96
    const-string v5, "enable_post_effect"

    .line 97
    .line 98
    invoke-virtual {p1, v5}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    const/4 v8, 0x0

    .line 103
    const/4 v9, 0x1

    .line 104
    if-ne v5, v9, :cond_5

    .line 105
    .line 106
    move v5, v9

    .line 107
    goto :goto_0

    .line 108
    :cond_5
    move v5, v8

    .line 109
    :goto_0
    iput-boolean v5, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mSupportVQSCoreAfterEffect:Z

    .line 110
    .line 111
    const-string/jumbo v5, "vqscore_backend"

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, v5, v7}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    iput v5, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mBackEnd:I

    .line 119
    .line 120
    const-string/jumbo v5, "vqscore_alg_type"

    .line 121
    .line 122
    .line 123
    invoke-virtual {p1, v5, v8}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    iput v5, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mAlgorithmType:I

    .line 128
    .line 129
    const-string/jumbo v5, "vqscore_download_source"

    .line 130
    .line 131
    .line 132
    invoke-virtual {p1, v5, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    const-string/jumbo v5, "vqscore_forward_type"

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v5, v9}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    iput p1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mForwardType:I

    .line 144
    .line 145
    new-instance p1, Ljava/util/HashMap;

    .line 146
    .line 147
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string v5, "accessKey"

    .line 151
    .line 152
    invoke-interface {p1, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    const-string v0, "platformSdkVersion"

    .line 156
    .line 157
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    invoke-interface {p1, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    if-nez v0, :cond_6

    .line 168
    .line 169
    const-string v0, "downloadSource"

    .line 170
    .line 171
    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    :cond_6
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 175
    .line 176
    new-instance v1, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    const-string/jumbo v2, "vqscore download params: "

    .line 182
    .line 183
    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    invoke-static {v0, v6, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    new-instance v0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper$1;

    .line 198
    .line 199
    invoke-direct {v0, p0}, Lcom/ss/texturerender/effect/BMFVQScoreWrapper$1;-><init>(Lcom/ss/texturerender/effect/BMFVQScoreWrapper;)V

    .line 200
    .line 201
    .line 202
    iget-object v1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mDownlodCallbackMethod:Ljava/lang/reflect/Method;

    .line 203
    .line 204
    iget-object v2, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mVQScoreObject:Ljava/lang/Object;

    .line 205
    .line 206
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-direct {p0, v1, v2, v0}, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    .line 212
    .line 213
    iget-object v0, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mDownloadMethod:Ljava/lang/reflect/Method;

    .line 214
    .line 215
    iget-object v1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mVQScoreObject:Ljava/lang/Object;

    .line 216
    .line 217
    invoke-static {}, Lcom/ss/texturerender/TextureRenderManager;->getManager()Lcom/ss/texturerender/TextureRenderManager;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    invoke-virtual {v2}, Lcom/ss/texturerender/TextureRenderManager;->getContext()Landroid/content/Context;

    .line 222
    .line 223
    .line 224
    move-result-object v2

    .line 225
    filled-new-array {v2, p1}, [Ljava/lang/Object;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    invoke-direct {p0, v0, v1, p1}, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    :cond_7
    :goto_1
    return-void
.end method

.method public init(Landroid/os/Bundle;)I
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mInited:Z

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-nez v0, :cond_3

    .line 5
    .line 6
    iget-object v0, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mVQScoreObject:Ljava/lang/Object;

    .line 7
    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    iget-object v0, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mInitMethod:Ljava/lang/reflect/Method;

    .line 11
    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    if-eqz p1, :cond_3

    .line 15
    .line 16
    const-string v0, "action"

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    const/16 v0, 0x97

    .line 23
    .line 24
    if-eq p1, v0, :cond_0

    .line 25
    .line 26
    goto/16 :goto_1

    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mInitMethod:Ljava/lang/reflect/Method;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mVQScoreObject:Ljava/lang/Object;

    .line 31
    .line 32
    iget v2, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mAlgorithmType:I

    .line 33
    .line 34
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    iget v2, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mBackEnd:I

    .line 39
    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    const/4 v2, 0x1

    .line 45
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    iget v6, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mForwardType:I

    .line 50
    .line 51
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 56
    .line 57
    iget-object v8, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mCachePath:Ljava/lang/String;

    .line 58
    .line 59
    iget v9, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mConcurrencyLimit:I

    .line 60
    .line 61
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v9

    .line 65
    filled-new-array/range {v3 .. v9}, [Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-direct {p0, p1, v0, v3}, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-nez p1, :cond_1

    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_1
    check-cast p1, Ljava/lang/Integer;

    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    :goto_0
    iget p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 83
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string/jumbo v3, "vqscore init result: "

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    const-string v3, "TR_BMFVQScoreWrapper"

    .line 103
    .line 104
    invoke-static {p1, v3, v0}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    if-nez v1, :cond_2

    .line 108
    .line 109
    iput-boolean v2, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mInited:Z

    .line 110
    .line 111
    iget-object p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mParentRender:Lcom/ss/texturerender/TextureRenderer;

    .line 112
    .line 113
    if-eqz p1, :cond_2

    .line 114
    .line 115
    invoke-virtual {p1, v2}, Lcom/ss/texturerender/TextureRenderer;->setVQSCoreInitResult(Z)V

    .line 116
    .line 117
    .line 118
    :cond_2
    if-eqz v1, :cond_3

    .line 119
    .line 120
    iget-object p1, p0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 121
    .line 122
    if-eqz p1, :cond_3

    .line 123
    .line 124
    iget v0, p0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 125
    .line 126
    new-instance v2, Ljava/lang/StringBuilder;

    .line 127
    .line 128
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .line 130
    .line 131
    const-string/jumbo v3, "vqscore init fail, ret: "

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    const/16 v3, 0xf

    .line 145
    .line 146
    invoke-virtual {p1, v3, v0, v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :cond_3
    :goto_1
    return v1
.end method

.method public process(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/effect/FrameBuffer;)Lcom/ss/texturerender/effect/EffectTexture;
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return-object p1
.end method

.method public processVqscore(Lcom/ss/texturerender/effect/EffectTexture;Lcom/ss/texturerender/VideoSurface$VQScoreCallback;Z)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 3
    .line 4
    iget-boolean v2, v0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mInited:Z

    .line 5
    .line 6
    if-eqz v2, :cond_8

    .line 7
    .line 8
    if-eqz v1, :cond_8

    .line 9
    .line 10
    if-eqz p1, :cond_8

    .line 11
    .line 12
    if-eqz p3, :cond_0

    .line 13
    .line 14
    iget-boolean v2, v0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mSupportVQSCoreAfterEffect:Z

    .line 15
    .line 16
    if-eqz v2, :cond_8

    .line 17
    .line 18
    :cond_0
    iget-object v2, v0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mVQScoreObject:Ljava/lang/Object;

    .line 19
    .line 20
    if-eqz v2, :cond_8

    .line 21
    .line 22
    iget-object v2, v0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mProcessMethod:Ljava/lang/reflect/Method;

    .line 23
    .line 24
    if-eqz v2, :cond_8

    .line 25
    .line 26
    iget-object v2, v0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mProcessOesMethod:Ljava/lang/reflect/Method;

    .line 27
    .line 28
    if-eqz v2, :cond_8

    .line 29
    .line 30
    iget-object v2, v0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mProcessCallbackMethod:Ljava/lang/reflect/Method;

    .line 31
    .line 32
    if-nez v2, :cond_1

    .line 33
    .line 34
    goto/16 :goto_2

    .line 35
    .line 36
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    iget-boolean v4, v0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mSupportVQSCoreAfterEffect:Z

    .line 41
    .line 42
    const-wide/16 v5, 0x1

    .line 43
    .line 44
    if-eqz v4, :cond_3

    .line 45
    .line 46
    if-nez p3, :cond_3

    .line 47
    .line 48
    iget-wide v7, v0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mSequenceId:J

    .line 49
    .line 50
    const-wide/16 v9, 0x2

    .line 51
    .line 52
    rem-long v11, v7, v9

    .line 53
    .line 54
    const-wide/16 v13, 0x0

    .line 55
    .line 56
    cmp-long v4, v11, v13

    .line 57
    .line 58
    if-nez v4, :cond_2

    .line 59
    .line 60
    add-long/2addr v7, v5

    .line 61
    iput-wide v7, v0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mSequenceId:J

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    add-long/2addr v7, v9

    .line 65
    iput-wide v7, v0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mSequenceId:J

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    iget-wide v7, v0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mSequenceId:J

    .line 69
    .line 70
    add-long/2addr v7, v5

    .line 71
    iput-wide v7, v0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mSequenceId:J

    .line 72
    .line 73
    :goto_0
    iget-object v4, v0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mVqscoreTimeMap:Ljava/util/Map;

    .line 74
    .line 75
    iget-wide v5, v0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mSequenceId:J

    .line 76
    .line 77
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    iget v2, v0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mProcessSumFrame:F

    .line 89
    .line 90
    const/high16 v3, 0x3f800000    # 1.0f

    .line 91
    .line 92
    add-float/2addr v2, v3

    .line 93
    iput v2, v0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mProcessSumFrame:F

    .line 94
    .line 95
    new-instance v2, Lcom/ss/texturerender/effect/BMFVQScoreWrapper$2;

    .line 96
    .line 97
    invoke-direct {v2, p0, v1}, Lcom/ss/texturerender/effect/BMFVQScoreWrapper$2;-><init>(Lcom/ss/texturerender/effect/BMFVQScoreWrapper;Lcom/ss/texturerender/VideoSurface$VQScoreCallback;)V

    .line 98
    .line 99
    .line 100
    iget-object v1, v0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mProcessCallbackMethod:Ljava/lang/reflect/Method;

    .line 101
    .line 102
    iget-object v3, v0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mVQScoreObject:Ljava/lang/Object;

    .line 103
    .line 104
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-direct {p0, v1, v3, v2}, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexTarget()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    const v2, 0x8d65

    .line 116
    .line 117
    .line 118
    const/4 v3, -0x1

    .line 119
    const/16 v4, 0x10

    .line 120
    .line 121
    if-ne v1, v2, :cond_5

    .line 122
    .line 123
    new-array v2, v4, [F

    .line 124
    .line 125
    iget-object v5, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 126
    .line 127
    invoke-virtual {v5, v2}, Lcom/ss/texturerender/VideoSurfaceTexture;->getTransformMatrix([F)V

    .line 128
    .line 129
    .line 130
    iget-object v5, v0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mProcessOesMethod:Ljava/lang/reflect/Method;

    .line 131
    .line 132
    iget-object v6, v0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mVQScoreObject:Ljava/lang/Object;

    .line 133
    .line 134
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    .line 135
    .line 136
    .line 137
    move-result v7

    .line 138
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v7

    .line 142
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getWidth()I

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v8

    .line 150
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getHeight()I

    .line 151
    .line 152
    .line 153
    move-result v9

    .line 154
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v9

    .line 158
    iget-wide v10, v0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mSequenceId:J

    .line 159
    .line 160
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 161
    .line 162
    .line 163
    move-result-object v10

    .line 164
    filled-new-array {v7, v8, v9, v2, v10}, [Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    invoke-direct {p0, v5, v6, v2}, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    if-nez v2, :cond_4

    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_4
    check-cast v2, Ljava/lang/Integer;

    .line 176
    .line 177
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 178
    .line 179
    .line 180
    move-result v3

    .line 181
    goto :goto_1

    .line 182
    :cond_5
    const/16 v2, 0xde1

    .line 183
    .line 184
    if-ne v1, v2, :cond_7

    .line 185
    .line 186
    iget-object v2, v0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mProcessMethod:Ljava/lang/reflect/Method;

    .line 187
    .line 188
    iget-object v5, v0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mVQScoreObject:Ljava/lang/Object;

    .line 189
    .line 190
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getTexID()I

    .line 191
    .line 192
    .line 193
    move-result v6

    .line 194
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v6

    .line 198
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getWidth()I

    .line 199
    .line 200
    .line 201
    move-result v7

    .line 202
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    .line 204
    .line 205
    move-result-object v7

    .line 206
    invoke-virtual/range {p1 .. p1}, Lcom/ss/texturerender/effect/EffectTexture;->getHeight()I

    .line 207
    .line 208
    .line 209
    move-result v8

    .line 210
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 211
    .line 212
    .line 213
    move-result-object v8

    .line 214
    iget-wide v9, v0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mSequenceId:J

    .line 215
    .line 216
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 217
    .line 218
    .line 219
    move-result-object v9

    .line 220
    filled-new-array {v6, v7, v8, v9}, [Ljava/lang/Object;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    invoke-direct {p0, v2, v5, v6}, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v2

    .line 228
    if-nez v2, :cond_6

    .line 229
    .line 230
    goto :goto_1

    .line 231
    :cond_6
    check-cast v2, Ljava/lang/Integer;

    .line 232
    .line 233
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    goto :goto_1

    .line 238
    :cond_7
    const/4 v3, 0x0

    .line 239
    :goto_1
    iget v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mTexType:I

    .line 240
    .line 241
    new-instance v5, Ljava/lang/StringBuilder;

    .line 242
    .line 243
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 244
    .line 245
    .line 246
    const-string v6, "process sequenceId: "

    .line 247
    .line 248
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    iget-wide v6, v0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mSequenceId:J

    .line 252
    .line 253
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 254
    .line 255
    .line 256
    const-string v6, ", ret: "

    .line 257
    .line 258
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-string v6, ", textarget: "

    .line 265
    .line 266
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    const-string v5, "TR_BMFVQScoreWrapper"

    .line 277
    .line 278
    invoke-static {v2, v5, v1}, Lcom/ss/texturerender/TextureRenderLog;->i(ILjava/lang/String;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    iget-object v1, v0, Lcom/ss/texturerender/effect/AbsEffect;->mSurfaceTexture:Lcom/ss/texturerender/VideoSurfaceTexture;

    .line 282
    .line 283
    if-eqz v1, :cond_8

    .line 284
    .line 285
    if-gez v3, :cond_8

    .line 286
    .line 287
    iget v2, v0, Lcom/ss/texturerender/effect/AbsEffect;->mEffectType:I

    .line 288
    .line 289
    new-instance v5, Ljava/lang/StringBuilder;

    .line 290
    .line 291
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    .line 293
    .line 294
    const-string/jumbo v6, "vqscore process fail, ret: "

    .line 295
    .line 296
    .line 297
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v3

    .line 307
    invoke-virtual {v1, v4, v2, v3}, Lcom/ss/texturerender/VideoSurfaceTexture;->notifyError(IILjava/lang/String;)V

    .line 308
    .line 309
    .line 310
    :cond_8
    :goto_2
    return-void
.end method

.method public release()Lcom/ss/texturerender/effect/AbsEffect;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mVQScoreObject:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mFreeMethod:Ljava/lang/reflect/Method;

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
    invoke-direct {p0, v1, v0, v2}, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->_invokeMethod(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    iput-object v0, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mVQScoreObject:Ljava/lang/Object;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/ss/texturerender/effect/BMFVQScoreWrapper;->mVqscoreTimeMap:Ljava/util/Map;

    .line 19
    .line 20
    invoke-super {p0}, Lcom/ss/texturerender/effect/AbsEffect;->release()Lcom/ss/texturerender/effect/AbsEffect;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method
