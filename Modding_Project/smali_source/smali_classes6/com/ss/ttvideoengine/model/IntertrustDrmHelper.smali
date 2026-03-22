.class public Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;
.super Ljava/lang/Object;
.source "IntertrustDrmHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$IntertrustDrmHelperListener;,
        Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$MyHandler;,
        Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$myNetClientListener;,
        Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$MyIntertrustListener;,
        Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$MyNetworkListener;
    }
.end annotation


# static fields
.field public static final DRM_ERROR_INTERNAL:I = -0x927c0

.field public static final DRM_ERROR_TOKEN_PROCESS:I = -0x927c1

.field public static final DRM_RESULT_FAIL:I = -0x1

.field public static final DRM_RESULT_LIB_UNLOAD:I = -0x3e8

.field public static final DRM_RESULT_OK:I = 0x0

.field public static final DRM_RESULT_PLUGIN_UNLOAD:I = -0x3ea

.field public static final DRM_RESULT_ROOT_DEVICE:I = -0x3eb

.field public static final DRM_RESULT_TOKEN_TEMPLATE_INVALID:I = -0x3e9

.field private static final INTERTRUST_DRM_LISTENER_PATH:Ljava/lang/String; = "com.ss.ttm.drm.intertrust.IntertrustDrmProxy$IntertrustDrmProxyListener"

.field private static final INTERTRUST_DRM_NETWORK_LISTENER_PATH:Ljava/lang/String; = "com.ss.ttm.drm.intertrust.IntertrustDrmProxy$IntertrustDrmProxyNetworkClient"

.field private static final INTERTRUST_DRM_PATH:Ljava/lang/String; = "com.ss.ttm.drm.intertrust.IntertrustDrmProxy"

.field public static final MSG_IS_ERROR:I = 0x1

.field public static final MSG_IS_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "IntertrustDrmHelper"

.field public static final URL_TYPE_DASH:I = 0x2

.field public static final URL_TYPE_HLS:I = 0x1

.field public static final URL_TYPE_SINGLE:I


# instance fields
.field private mDrmClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private mDrmNetworkCallback:Ljava/lang/Object;

.field private mHandler:Landroid/os/Handler;

.field private mInstance:Ljava/lang/Object;

.field private mIntertrustCallback:Ljava/lang/Object;

.field private mListener:Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$IntertrustDrmHelperListener;

.field private mNetworkSession:Lcom/ss/ttvideoengine/net/TTVNetClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mDrmClass:Ljava/lang/Class;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mInstance:Ljava/lang/Object;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mIntertrustCallback:Ljava/lang/Object;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mDrmNetworkCallback:Ljava/lang/Object;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mNetworkSession:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mListener:Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$IntertrustDrmHelperListener;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mHandler:Landroid/os/Handler;

    .line 18
    .line 19
    new-instance v0, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/ss/ttvideoengine/net/TTHTTPNetwork;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mNetworkSession:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 25
    .line 26
    return-void
.end method

.method private _notifyError(Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private _notifySuccess()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mHandler:Landroid/os/Handler;

    .line 9
    .line 10
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method static synthetic access$200(Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;)Lcom/ss/ttvideoengine/net/TTVNetClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mNetworkSession:Lcom/ss/ttvideoengine/net/TTVNetClient;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->_notifySuccess()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;Lcom/ss/ttvideoengine/utils/Error;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->_notifyError(Lcom/ss/ttvideoengine/utils/Error;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mInstance:Ljava/lang/Object;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$600(Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;)Ljava/lang/Class;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mDrmClass:Ljava/lang/Class;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$602(Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;Ljava/lang/Class;)Ljava/lang/Class;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mDrmClass:Ljava/lang/Class;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$700(Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;)Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$IntertrustDrmHelperListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mListener:Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$IntertrustDrmHelperListener;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public init(Landroid/content/Context;I)I
    .locals 8

    .line 1
    const-class v0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;

    .line 2
    .line 3
    const-string v1, "init enter"

    .line 4
    .line 5
    const-string v2, "IntertrustDrmHelper"

    .line 6
    .line 7
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    :try_start_0
    const-string v3, "com.ss.ttm.drm.intertrust.IntertrustDrmProxy"

    .line 12
    .line 13
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iput-object v3, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mDrmClass:Ljava/lang/Class;

    .line 18
    .line 19
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iput-object v3, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mInstance:Ljava/lang/Object;

    .line 24
    .line 25
    const-string v3, "com.ss.ttm.drm.intertrust.IntertrustDrmProxy$IntertrustDrmProxyListener"

    .line 26
    .line 27
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    new-instance v4, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$MyIntertrustListener;

    .line 32
    .line 33
    const/4 v5, 0x0

    .line 34
    invoke-direct {v4, p0, v5}, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$MyIntertrustListener;-><init>(Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$1;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    invoke-static {v6, v7, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    iput-object v4, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mIntertrustCallback:Ljava/lang/Object;

    .line 50
    .line 51
    iget-object v4, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mDrmClass:Ljava/lang/Class;

    .line 52
    .line 53
    const-string/jumbo v6, "setListener"

    .line 54
    .line 55
    .line 56
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v4, v6, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    iget-object v4, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mInstance:Ljava/lang/Object;

    .line 65
    .line 66
    iget-object v6, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mIntertrustCallback:Ljava/lang/Object;

    .line 67
    .line 68
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    const-string v3, "com.ss.ttm.drm.intertrust.IntertrustDrmProxy$IntertrustDrmProxyNetworkClient"

    .line 76
    .line 77
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    new-instance v4, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$MyNetworkListener;

    .line 82
    .line 83
    invoke-direct {v4, p0, v5}, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$MyNetworkListener;-><init>(Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$1;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 91
    .line 92
    .line 93
    move-result-object v5

    .line 94
    invoke-static {v0, v5, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mDrmNetworkCallback:Ljava/lang/Object;

    .line 99
    .line 100
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mDrmClass:Ljava/lang/Class;

    .line 101
    .line 102
    const-string/jumbo v4, "setNetworkClient"

    .line 103
    .line 104
    .line 105
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iget-object v3, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mInstance:Ljava/lang/Object;

    .line 114
    .line 115
    iget-object v4, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mDrmNetworkCallback:Ljava/lang/Object;

    .line 116
    .line 117
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {v0, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    .line 123
    .line 124
    const-class v0, Landroid/content/Context;

    .line 125
    .line 126
    const-string v3, "init"

    .line 127
    .line 128
    if-nez p2, :cond_0

    .line 129
    .line 130
    :try_start_1
    iget-object p2, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mDrmClass:Ljava/lang/Class;

    .line 131
    .line 132
    filled-new-array {v0}, [Ljava/lang/Class;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-virtual {p2, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 137
    .line 138
    .line 139
    move-result-object p2

    .line 140
    iget-object v0, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mInstance:Ljava/lang/Object;

    .line 141
    .line 142
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object p1

    .line 146
    invoke-virtual {p2, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .line 148
    .line 149
    move-result-object p1

    .line 150
    goto :goto_0

    .line 151
    :catch_0
    move-exception p1

    .line 152
    goto :goto_1

    .line 153
    :catch_1
    move-exception p1

    .line 154
    goto :goto_2

    .line 155
    :catch_2
    move-exception p1

    .line 156
    goto :goto_3

    .line 157
    :catch_3
    move-exception p1

    .line 158
    goto :goto_4

    .line 159
    :catch_4
    move-exception p1

    .line 160
    goto/16 :goto_5

    .line 161
    .line 162
    :cond_0
    iget-object v4, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mDrmClass:Ljava/lang/Class;

    .line 163
    .line 164
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 165
    .line 166
    filled-new-array {v0, v5}, [Ljava/lang/Class;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {v4, v3, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 171
    .line 172
    .line 173
    move-result-object v0

    .line 174
    iget-object v3, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mInstance:Ljava/lang/Object;

    .line 175
    .line 176
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-virtual {v0, v3, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .line 186
    .line 187
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .line 188
    :goto_0
    new-instance p2, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$MyHandler;

    .line 189
    .line 190
    invoke-static {}, Lcom/ss/ttvideoengine/utils/TTHelper;->getLooper()Landroid/os/Looper;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-direct {p2, p0, p0, v0}, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$MyHandler;-><init>(Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;Landroid/os/Looper;)V

    .line 195
    .line 196
    .line 197
    iput-object p2, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mHandler:Landroid/os/Handler;

    .line 198
    .line 199
    check-cast p1, Ljava/lang/Integer;

    .line 200
    .line 201
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    return p1

    .line 206
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 207
    .line 208
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .line 210
    .line 211
    const-string v0, "invoke failed:"

    .line 212
    .line 213
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    .line 215
    .line 216
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    .line 229
    .line 230
    return v1

    .line 231
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 232
    .line 233
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 234
    .line 235
    .line 236
    const-string v0, "method not found:"

    .line 237
    .line 238
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p1

    .line 252
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    return v1

    .line 256
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .line 260
    .line 261
    const-string v0, "illegal access exception:"

    .line 262
    .line 263
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object p1

    .line 270
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    return v1

    .line 281
    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 282
    .line 283
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 284
    .line 285
    .line 286
    const-string v0, "instance failed+"

    .line 287
    .line 288
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object p1

    .line 295
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    return v1

    .line 306
    :goto_5
    new-instance p2, Ljava/lang/StringBuilder;

    .line 307
    .line 308
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    .line 310
    .line 311
    const-string v0, "class not found:"

    .line 312
    .line 313
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    .line 315
    .line 316
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object p1

    .line 320
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 324
    .line 325
    .line 326
    move-result-object p1

    .line 327
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    .line 329
    .line 330
    const/16 p1, -0x3ea

    .line 331
    .line 332
    return p1
.end method

.method public makeUrl(Ljava/lang/String;I)Ljava/lang/String;
    .locals 7

    .line 1
    const-string v0, "method invoke failied:"

    .line 2
    .line 3
    const-string v1, "makeUrl enter"

    .line 4
    .line 5
    const-string v2, "IntertrustDrmHelper"

    .line 6
    .line 7
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mInstance:Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    return-object v3

    .line 16
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mDrmClass:Ljava/lang/Class;

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    const-string v1, "com.ss.ttm.drm.intertrust.IntertrustDrmProxy"

    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iput-object v1, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mDrmClass:Ljava/lang/Class;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :catch_1
    move-exception p1

    .line 32
    goto :goto_2

    .line 33
    :catch_2
    move-exception p1

    .line 34
    goto :goto_3

    .line 35
    :catch_3
    move-exception p1

    .line 36
    goto :goto_4

    .line 37
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mDrmClass:Ljava/lang/Class;

    .line 38
    .line 39
    const-string v4, "makeUrl"

    .line 40
    .line 41
    const-class v5, Ljava/lang/String;

    .line 42
    .line 43
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 44
    .line 45
    filled-new-array {v5, v6}, [Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-object v4, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mInstance:Ljava/lang/Object;

    .line 54
    .line 55
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v1, v4, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    check-cast p1, Ljava/lang/String;

    .line 68
    .line 69
    return-object p1

    .line 70
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return-object v3

    .line 93
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-object v3

    .line 116
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    const-string v0, "method not found:"

    .line 122
    .line 123
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    return-object v3

    .line 141
    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 142
    .line 143
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .line 145
    .line 146
    const-string v0, "class not found:"

    .line 147
    .line 148
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    return-object v3
.end method

.method public processToken(ILjava/lang/String;Ljava/lang/String;)I
    .locals 7

    .line 1
    const-string v0, "method invoke failied:"

    .line 2
    .line 3
    const-class v1, Ljava/lang/String;

    .line 4
    .line 5
    const-string v2, "processToken enter"

    .line 6
    .line 7
    const-string v3, "IntertrustDrmHelper"

    .line 8
    .line 9
    invoke-static {v3, v2}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v2, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mInstance:Ljava/lang/Object;

    .line 13
    .line 14
    const/4 v4, -0x1

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    return v4

    .line 18
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mDrmClass:Ljava/lang/Class;

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    const-string v2, "com.ss.ttm.drm.intertrust.IntertrustDrmProxy"

    .line 23
    .line 24
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    iput-object v2, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mDrmClass:Ljava/lang/Class;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :catch_1
    move-exception p1

    .line 34
    goto :goto_2

    .line 35
    :catch_2
    move-exception p1

    .line 36
    goto :goto_3

    .line 37
    :catch_3
    move-exception p1

    .line 38
    goto :goto_4

    .line 39
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mDrmClass:Ljava/lang/Class;

    .line 40
    .line 41
    const-string v5, "processToken"

    .line 42
    .line 43
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 44
    .line 45
    filled-new-array {v6, v1, v1}, [Ljava/lang/Class;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v2, v5, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    iget-object v2, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mInstance:Ljava/lang/Object;

    .line 54
    .line 55
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v1, v2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    check-cast p1, Ljava/lang/Integer;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    return p1

    .line 74
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-static {v3, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    return v4

    .line 97
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-static {v3, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    return v4

    .line 120
    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 121
    .line 122
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .line 124
    .line 125
    const-string p3, "method not found:"

    .line 126
    .line 127
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-static {v3, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return v4

    .line 145
    :goto_4
    new-instance p2, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string p3, "class not found:"

    .line 151
    .line 152
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    invoke-static {v3, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    return v4
.end method

.method public release()V
    .locals 6

    .line 1
    const-string v0, "method invoke failied:"

    .line 2
    .line 3
    const-string v1, "release enter"

    .line 4
    .line 5
    const-string v2, "IntertrustDrmHelper"

    .line 6
    .line 7
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mInstance:Ljava/lang/Object;

    .line 11
    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mDrmClass:Ljava/lang/Class;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    const-string v1, "com.ss.ttm.drm.intertrust.IntertrustDrmProxy"

    .line 20
    .line 21
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    iput-object v1, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mDrmClass:Ljava/lang/Class;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :catch_0
    move-exception v1

    .line 29
    goto :goto_1

    .line 30
    :catch_1
    move-exception v1

    .line 31
    goto :goto_2

    .line 32
    :catch_2
    move-exception v0

    .line 33
    goto :goto_3

    .line 34
    :catch_3
    move-exception v0

    .line 35
    goto :goto_4

    .line 36
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mDrmClass:Ljava/lang/Class;

    .line 37
    .line 38
    const-string v3, "release"

    .line 39
    .line 40
    const/4 v4, 0x0

    .line 41
    new-array v5, v4, [Ljava/lang/Class;

    .line 42
    .line 43
    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget-object v3, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mInstance:Ljava/lang/Object;

    .line 48
    .line 49
    new-array v4, v4, [Ljava/lang/Object;

    .line 50
    .line 51
    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mInstance:Ljava/lang/Object;

    .line 56
    .line 57
    return-void

    .line 58
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v3, "method not found:"

    .line 110
    .line 111
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    return-void

    .line 129
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    const-string v3, "class not found:"

    .line 135
    .line 136
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method public setListener(Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$IntertrustDrmHelperListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mListener:Lcom/ss/ttvideoengine/model/IntertrustDrmHelper$IntertrustDrmHelperListener;

    .line 2
    .line 3
    return-void
.end method

.method public setTokenUrlTemplate(Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string v0, "method invoke failied:"

    .line 2
    .line 3
    const-string/jumbo v1, "setTokenUrlTemplate enter"

    .line 4
    .line 5
    .line 6
    const-string v2, "IntertrustDrmHelper"

    .line 7
    .line 8
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mInstance:Ljava/lang/Object;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mDrmClass:Ljava/lang/Class;

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    const-string v1, "com.ss.ttm.drm.intertrust.IntertrustDrmProxy"

    .line 21
    .line 22
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iput-object v1, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mDrmClass:Ljava/lang/Class;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :catch_1
    move-exception p1

    .line 32
    goto :goto_2

    .line 33
    :catch_2
    move-exception p1

    .line 34
    goto :goto_3

    .line 35
    :catch_3
    move-exception p1

    .line 36
    goto :goto_4

    .line 37
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mDrmClass:Ljava/lang/Class;

    .line 38
    .line 39
    const-string/jumbo v3, "setTokenUrlTemplate"

    .line 40
    .line 41
    .line 42
    const-class v4, Ljava/lang/String;

    .line 43
    .line 44
    filled-new-array {v4}, [Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    iget-object v3, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mInstance:Ljava/lang/Object;

    .line 53
    .line 54
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v1, v3, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    return-void

    .line 62
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 63
    .line 64
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-void

    .line 108
    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 109
    .line 110
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 111
    .line 112
    .line 113
    const-string v1, "method not found:"

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .line 137
    .line 138
    const-string v1, "class not found:"

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-static {v2, p1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    return-void
.end method

.method public start()I
    .locals 7

    .line 1
    const-string v0, "method invoke failied:"

    .line 2
    .line 3
    const-string/jumbo v1, "start enter"

    .line 4
    .line 5
    .line 6
    const-string v2, "IntertrustDrmHelper"

    .line 7
    .line 8
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mInstance:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v3, -0x1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    return v3

    .line 17
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mDrmClass:Ljava/lang/Class;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    const-string v1, "com.ss.ttm.drm.intertrust.IntertrustDrmProxy"

    .line 22
    .line 23
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iput-object v1, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mDrmClass:Ljava/lang/Class;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v1

    .line 31
    goto :goto_1

    .line 32
    :catch_1
    move-exception v1

    .line 33
    goto :goto_2

    .line 34
    :catch_2
    move-exception v0

    .line 35
    goto :goto_3

    .line 36
    :catch_3
    move-exception v0

    .line 37
    goto :goto_4

    .line 38
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mDrmClass:Ljava/lang/Class;

    .line 39
    .line 40
    const-string/jumbo v4, "start"

    .line 41
    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    new-array v6, v5, [Ljava/lang/Class;

    .line 45
    .line 46
    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-object v4, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mInstance:Ljava/lang/Object;

    .line 51
    .line 52
    new-array v5, v5, [Ljava/lang/Object;

    .line 53
    .line 54
    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    check-cast v0, Ljava/lang/Integer;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    return v0

    .line 65
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return v3

    .line 88
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    return v3

    .line 111
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v4, "method not found:"

    .line 117
    .line 118
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return v3

    .line 136
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v4, "class not found:"

    .line 142
    .line 143
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    return v3
.end method

.method public stop()I
    .locals 7

    .line 1
    const-string v0, "method invoke failied:"

    .line 2
    .line 3
    const-string/jumbo v1, "stop enter"

    .line 4
    .line 5
    .line 6
    const-string v2, "IntertrustDrmHelper"

    .line 7
    .line 8
    invoke-static {v2, v1}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mInstance:Ljava/lang/Object;

    .line 12
    .line 13
    const/4 v3, -0x1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    return v3

    .line 17
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mDrmClass:Ljava/lang/Class;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    const-string v1, "com.ss.ttm.drm.intertrust.IntertrustDrmProxy"

    .line 22
    .line 23
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iput-object v1, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mDrmClass:Ljava/lang/Class;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v1

    .line 31
    goto :goto_1

    .line 32
    :catch_1
    move-exception v1

    .line 33
    goto :goto_2

    .line 34
    :catch_2
    move-exception v0

    .line 35
    goto :goto_3

    .line 36
    :catch_3
    move-exception v0

    .line 37
    goto :goto_4

    .line 38
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mDrmClass:Ljava/lang/Class;

    .line 39
    .line 40
    const-string/jumbo v4, "stop"

    .line 41
    .line 42
    .line 43
    const/4 v5, 0x0

    .line 44
    new-array v6, v5, [Ljava/lang/Class;

    .line 45
    .line 46
    invoke-virtual {v1, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    iget-object v4, p0, Lcom/ss/ttvideoengine/model/IntertrustDrmHelper;->mInstance:Ljava/lang/Object;

    .line 51
    .line 52
    new-array v5, v5, [Ljava/lang/Object;

    .line 53
    .line 54
    invoke-virtual {v1, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    check-cast v0, Ljava/lang/Integer;

    .line 59
    .line 60
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    return v0

    .line 65
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    return v3

    .line 88
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    return v3

    .line 111
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v4, "method not found:"

    .line 117
    .line 118
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    return v3

    .line 136
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    const-string v4, "class not found:"

    .line 142
    .line 143
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-static {v2, v0}, Lcom/ss/ttvideoengine/utils/TTVideoEngineLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    return v3
.end method
