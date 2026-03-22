.class public abstract Lcom/huawei/hms/common/internal/BaseHmsClient;
.super Ljava/lang/Object;
.source "BaseHmsClient.java"

# interfaces
.implements Lcom/huawei/hms/support/api/client/AidlApiClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/common/internal/BaseHmsClient$ConnectionResultWrapper;,
        Lcom/huawei/hms/common/internal/BaseHmsClient$ConnectionCallbacks;,
        Lcom/huawei/hms/common/internal/BaseHmsClient$OnConnectionFailedListener;
    }
.end annotation


# static fields
.field private static final j:Ljava/lang/Object;

.field private static final k:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final l:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static m:Lcom/huawei/hms/adapter/BinderAdapter;

.field private static n:Lcom/huawei/hms/adapter/BinderAdapter;


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private final c:Lcom/huawei/hms/common/internal/ClientSettings;

.field private volatile d:Lcom/huawei/hms/core/aidl/d;

.field protected e:Ljava/lang/String;

.field private final f:Lcom/huawei/hms/common/internal/BaseHmsClient$ConnectionCallbacks;

.field private final g:Lcom/huawei/hms/common/internal/BaseHmsClient$OnConnectionFailedListener;

.field private h:Landroid/os/Handler;

.field private i:Lcom/huawei/hms/common/HuaweiApi$RequestHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/huawei/hms/common/internal/BaseHmsClient;->j:Ljava/lang/Object;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/huawei/hms/common/internal/BaseHmsClient;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/huawei/hms/common/internal/BaseHmsClient;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/huawei/hms/common/internal/ClientSettings;Lcom/huawei/hms/common/internal/BaseHmsClient$OnConnectionFailedListener;Lcom/huawei/hms/common/internal/BaseHmsClient$ConnectionCallbacks;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->h:Landroid/os/Handler;

    .line 6
    .line 7
    iput-object p1, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->a:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->c:Lcom/huawei/hms/common/internal/ClientSettings;

    .line 10
    .line 11
    if-eqz p2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2}, Lcom/huawei/hms/common/internal/ClientSettings;->getAppID()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->b:Ljava/lang/String;

    .line 18
    .line 19
    :cond_0
    iput-object p3, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->g:Lcom/huawei/hms/common/internal/BaseHmsClient$OnConnectionFailedListener;

    .line 20
    .line 21
    iput-object p4, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->f:Lcom/huawei/hms/common/internal/BaseHmsClient$ConnectionCallbacks;

    .line 22
    .line 23
    return-void
.end method

.method static synthetic a(Lcom/huawei/hms/common/internal/BaseHmsClient;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/huawei/hms/common/internal/BaseHmsClient;Lcom/huawei/hms/core/aidl/d;)Lcom/huawei/hms/core/aidl/d;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->d:Lcom/huawei/hms/core/aidl/d;

    .line 2
    .line 3
    return-object p1
.end method

.method private d(I)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "notifyFailed result: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "BaseHmsClient"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Landroid/os/Message;

    .line 24
    .line 25
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 26
    .line 27
    .line 28
    const/16 v1, 0x271c

    .line 29
    .line 30
    iput v1, v0, Landroid/os/Message;->what:I

    .line 31
    .line 32
    new-instance v1, Lcom/huawei/hms/common/internal/BaseHmsClient$ConnectionResultWrapper;

    .line 33
    .line 34
    iget-object v2, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->i:Lcom/huawei/hms/common/HuaweiApi$RequestHandler;

    .line 35
    .line 36
    new-instance v3, Lcom/huawei/hms/api/ConnectionResult;

    .line 37
    .line 38
    invoke-direct {v3, p1}, Lcom/huawei/hms/api/ConnectionResult;-><init>(I)V

    .line 39
    .line 40
    .line 41
    invoke-direct {v1, v2, v3}, Lcom/huawei/hms/common/internal/BaseHmsClient$ConnectionResultWrapper;-><init>(Lcom/huawei/hms/common/HuaweiApi$RequestHandler;Lcom/huawei/hms/api/ConnectionResult;)V

    .line 42
    .line 43
    .line 44
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 45
    .line 46
    invoke-static {}, Lcom/huawei/hms/common/internal/RequestManager;->getHandler()Landroid/os/Handler;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->g:Lcom/huawei/hms/common/internal/BaseHmsClient$OnConnectionFailedListener;

    .line 54
    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    instance-of v1, v0, Lcom/huawei/hms/common/HuaweiApi$RequestHandler;

    .line 58
    .line 59
    if-nez v1, :cond_0

    .line 60
    .line 61
    new-instance v1, Lcom/huawei/hms/api/ConnectionResult;

    .line 62
    .line 63
    invoke-direct {v1, p1}, Lcom/huawei/hms/api/ConnectionResult;-><init>(I)V

    .line 64
    .line 65
    .line 66
    invoke-interface {v0, v1}, Lcom/huawei/hms/common/internal/BaseHmsClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/huawei/hms/api/ConnectionResult;)V

    .line 67
    .line 68
    .line 69
    :cond_0
    return-void
.end method

.method private e(IZ)V
    .locals 4

    .line 1
    const-string v0, "====== HMSSDK version: 61200300 ======"

    .line 2
    .line 3
    const-string v1, "BaseHmsClient"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->c:Lcom/huawei/hms/common/internal/ClientSettings;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/ClientSettings;->isUseInnerHms()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    sget-object v0, Lcom/huawei/hms/common/internal/BaseHmsClient;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    sget-object v0, Lcom/huawei/hms/common/internal/BaseHmsClient;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v3, "Enter connect, Connection Status: "

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v1, v2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    if-nez p2, :cond_2

    .line 47
    .line 48
    const/4 p2, 0x3

    .line 49
    if-eq v0, p2, :cond_1

    .line 50
    .line 51
    const/4 p2, 0x5

    .line 52
    if-ne v0, p2, :cond_2

    .line 53
    .line 54
    :cond_1
    return-void

    .line 55
    :cond_2
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->getMinApkVersion()I

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-le p2, p1, :cond_3

    .line 60
    .line 61
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->getMinApkVersion()I

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v0, "connect minVersion:"

    .line 71
    .line 72
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v0, " packageName:"

    .line 79
    .line 80
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->c:Lcom/huawei/hms/common/internal/ClientSettings;

    .line 84
    .line 85
    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/ClientSettings;->getInnerHmsPkg()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-static {v1, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    iget-object p2, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->a:Landroid/content/Context;

    .line 100
    .line 101
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p2

    .line 105
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->c:Lcom/huawei/hms/common/internal/ClientSettings;

    .line 106
    .line 107
    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/ClientSettings;->getInnerHmsPkg()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 112
    .line 113
    .line 114
    move-result p2

    .line 115
    if-eqz p2, :cond_4

    .line 116
    .line 117
    const-string p1, "service packageName is same, bind core service return"

    .line 118
    .line 119
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->c()V

    .line 123
    .line 124
    .line 125
    return-void

    .line 126
    :cond_4
    iget-object p2, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->a:Landroid/content/Context;

    .line 127
    .line 128
    invoke-static {p2}, Lcom/huawei/hms/utils/Util;->isAvailableLibExist(Landroid/content/Context;)Z

    .line 129
    .line 130
    .line 131
    move-result p2

    .line 132
    if-eqz p2, :cond_8

    .line 133
    .line 134
    new-instance p2, Lcom/huawei/hms/adapter/AvailableAdapter;

    .line 135
    .line 136
    invoke-direct {p2, p1}, Lcom/huawei/hms/adapter/AvailableAdapter;-><init>(I)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->a:Landroid/content/Context;

    .line 140
    .line 141
    invoke-virtual {p2, p1}, Lcom/huawei/hms/adapter/AvailableAdapter;->isHuaweiMobileServicesAvailable(Landroid/content/Context;)I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string v2, "check available result: "

    .line 151
    .line 152
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    if-nez p1, :cond_5

    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->c()V

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_5
    invoke-virtual {p2, p1}, Lcom/huawei/hms/adapter/AvailableAdapter;->isUserResolvableError(I)Z

    .line 172
    .line 173
    .line 174
    move-result v0

    .line 175
    if-eqz v0, :cond_6

    .line 176
    .line 177
    const-string v0, "bindCoreService3.0 fail, start resolution now."

    .line 178
    .line 179
    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-direct {p0, p2, p1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->n(Lcom/huawei/hms/adapter/AvailableAdapter;I)V

    .line 183
    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_6
    invoke-virtual {p2, p1}, Lcom/huawei/hms/adapter/AvailableAdapter;->isUserNoticeError(I)Z

    .line 187
    .line 188
    .line 189
    move-result v0

    .line 190
    if-eqz v0, :cond_7

    .line 191
    .line 192
    const-string v0, "bindCoreService3.0 fail, start notice now."

    .line 193
    .line 194
    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    invoke-direct {p0, p2, p1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->f(Lcom/huawei/hms/adapter/AvailableAdapter;I)V

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_7
    new-instance p2, Ljava/lang/StringBuilder;

    .line 202
    .line 203
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 204
    .line 205
    .line 206
    const-string v0, "bindCoreService3.0 fail: "

    .line 207
    .line 208
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 209
    .line 210
    .line 211
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    const-string v0, " is not resolvable."

    .line 215
    .line 216
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p2

    .line 223
    invoke-static {v1, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-direct {p0, p1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->d(I)V

    .line 227
    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_8
    invoke-static {}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getInstance()Lcom/huawei/hms/api/HuaweiApiAvailability;

    .line 231
    .line 232
    .line 233
    move-result-object p2

    .line 234
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->a:Landroid/content/Context;

    .line 235
    .line 236
    invoke-virtual {p2, v0, p1}, Lcom/huawei/hms/api/HuaweiApiAvailability;->isHuaweiMobileServicesAvailable(Landroid/content/Context;I)I

    .line 237
    .line 238
    .line 239
    move-result p1

    .line 240
    new-instance p2, Ljava/lang/StringBuilder;

    .line 241
    .line 242
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 243
    .line 244
    .line 245
    const-string v0, "HuaweiApiAvailability check available result: "

    .line 246
    .line 247
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 248
    .line 249
    .line 250
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 251
    .line 252
    .line 253
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object p2

    .line 257
    invoke-static {v1, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    if-nez p1, :cond_9

    .line 261
    .line 262
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->c()V

    .line 263
    .line 264
    .line 265
    goto :goto_2

    .line 266
    :cond_9
    invoke-direct {p0, p1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->d(I)V

    .line 267
    .line 268
    .line 269
    :goto_2
    return-void
.end method

.method private f(Lcom/huawei/hms/adapter/AvailableAdapter;I)V
    .locals 3

    .line 1
    const-string v0, "BaseHmsClient"

    .line 2
    .line 3
    const-string v1, "enter notice"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->u()Lcom/huawei/hms/common/internal/ClientSettings;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/ClientSettings;->isHasActivity()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v1, 0x1a

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    const/16 p1, 0x1d

    .line 21
    .line 22
    if-ne p2, p1, :cond_0

    .line 23
    .line 24
    const/16 p2, 0x9

    .line 25
    .line 26
    :cond_0
    invoke-static {}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getInstance()Lcom/huawei/hms/api/HuaweiApiAvailability;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->a:Landroid/content/Context;

    .line 31
    .line 32
    const/4 v2, 0x0

    .line 33
    invoke-virtual {p1, v0, p2, v2}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getErrPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    new-instance p2, Lcom/huawei/hms/api/ConnectionResult;

    .line 38
    .line 39
    invoke-direct {p2, v1, p1}, Lcom/huawei/hms/api/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {p0, p2}, Lcom/huawei/hms/common/internal/BaseHmsClient;->g(Lcom/huawei/hms/api/ConnectionResult;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->u()Lcom/huawei/hms/common/internal/ClientSettings;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-virtual {p2}, Lcom/huawei/hms/common/internal/ClientSettings;->getCpActivity()Landroid/app/Activity;

    .line 51
    .line 52
    .line 53
    move-result-object p2

    .line 54
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->getContext()Landroid/content/Context;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-static {p2, v0}, Lcom/huawei/hms/utils/Util;->getActiveActivity(Landroid/app/Activity;Landroid/content/Context;)Landroid/app/Activity;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    if-eqz p2, :cond_2

    .line 63
    .line 64
    new-instance v0, Lcom/huawei/hms/common/internal/BaseHmsClient$2;

    .line 65
    .line 66
    invoke-direct {v0, p0}, Lcom/huawei/hms/common/internal/BaseHmsClient$2;-><init>(Lcom/huawei/hms/common/internal/BaseHmsClient;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, p2, v0}, Lcom/huawei/hms/adapter/AvailableAdapter;->startNotice(Landroid/app/Activity;Lcom/huawei/hms/adapter/AvailableAdapter$AvailableCallBack;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    invoke-direct {p0, v1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->d(I)V

    .line 74
    .line 75
    .line 76
    :goto_0
    return-void
.end method

.method private g(Lcom/huawei/hms/api/ConnectionResult;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "notifyFailed result: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/huawei/hms/api/ConnectionResult;->getErrorCode()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "BaseHmsClient"

    .line 23
    .line 24
    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    new-instance v0, Landroid/os/Message;

    .line 28
    .line 29
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 30
    .line 31
    .line 32
    const/16 v1, 0x271c

    .line 33
    .line 34
    iput v1, v0, Landroid/os/Message;->what:I

    .line 35
    .line 36
    iget-object v1, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->i:Lcom/huawei/hms/common/HuaweiApi$RequestHandler;

    .line 37
    .line 38
    const/4 v2, 0x0

    .line 39
    iput-object v2, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->i:Lcom/huawei/hms/common/HuaweiApi$RequestHandler;

    .line 40
    .line 41
    new-instance v2, Lcom/huawei/hms/common/internal/BaseHmsClient$ConnectionResultWrapper;

    .line 42
    .line 43
    invoke-direct {v2, v1, p1}, Lcom/huawei/hms/common/internal/BaseHmsClient$ConnectionResultWrapper;-><init>(Lcom/huawei/hms/common/HuaweiApi$RequestHandler;Lcom/huawei/hms/api/ConnectionResult;)V

    .line 44
    .line 45
    .line 46
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 47
    .line 48
    invoke-static {}, Lcom/huawei/hms/common/internal/RequestManager;->getHandler()Landroid/os/Handler;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->g:Lcom/huawei/hms/common/internal/BaseHmsClient$OnConnectionFailedListener;

    .line 56
    .line 57
    if-eqz v0, :cond_0

    .line 58
    .line 59
    instance-of v1, v0, Lcom/huawei/hms/common/HuaweiApi$RequestHandler;

    .line 60
    .line 61
    if-nez v1, :cond_0

    .line 62
    .line 63
    invoke-interface {v0, p1}, Lcom/huawei/hms/common/internal/BaseHmsClient$OnConnectionFailedListener;->onConnectionFailed(Lcom/huawei/hms/api/ConnectionResult;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    return-void
.end method

.method static synthetic h(Lcom/huawei/hms/common/internal/BaseHmsClient;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->d(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic i(Lcom/huawei/hms/common/internal/BaseHmsClient;Lcom/huawei/hms/api/ConnectionResult;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->g(Lcom/huawei/hms/api/ConnectionResult;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private j(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->c:Lcom/huawei/hms/common/internal/ClientSettings;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/ClientSettings;->isUseInnerHms()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x5

    .line 8
    const-string v2, "The binder is already connected."

    .line 9
    .line 10
    const-string v3, "BaseHmsClient"

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->a:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {v0, p2, p1}, Lcom/huawei/hms/adapter/InnerBinderAdapter;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/adapter/BinderAdapter;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sput-object p1, Lcom/huawei/hms/common/internal/BaseHmsClient;->n:Lcom/huawei/hms/adapter/BinderAdapter;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->isConnected()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    invoke-static {v3, v2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->getAdapter()Lcom/huawei/hms/adapter/BinderAdapter;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lcom/huawei/hms/adapter/BinderAdapter;->updateDelayTask()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->getAdapter()Lcom/huawei/hms/adapter/BinderAdapter;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1}, Lcom/huawei/hms/adapter/BinderAdapter;->getServiceBinder()Landroid/os/IBinder;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-virtual {p0, p1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->connectedInternal(Landroid/os/IBinder;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    invoke-virtual {p0, v1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->m(I)V

    .line 51
    .line 52
    .line 53
    sget-object p1, Lcom/huawei/hms/common/internal/BaseHmsClient;->n:Lcom/huawei/hms/adapter/BinderAdapter;

    .line 54
    .line 55
    invoke-direct {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->r()Lcom/huawei/hms/adapter/BinderAdapter$BinderCallBack;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-virtual {p1, p2}, Lcom/huawei/hms/adapter/BinderAdapter;->binder(Lcom/huawei/hms/adapter/BinderAdapter$BinderCallBack;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->a:Landroid/content/Context;

    .line 64
    .line 65
    invoke-static {v0, p2, p1}, Lcom/huawei/hms/adapter/OuterBinderAdapter;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/huawei/hms/adapter/BinderAdapter;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    sput-object p1, Lcom/huawei/hms/common/internal/BaseHmsClient;->m:Lcom/huawei/hms/adapter/BinderAdapter;

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->isConnected()Z

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-eqz p1, :cond_2

    .line 76
    .line 77
    invoke-static {v3, v2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->getAdapter()Lcom/huawei/hms/adapter/BinderAdapter;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lcom/huawei/hms/adapter/BinderAdapter;->updateDelayTask()V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->getAdapter()Lcom/huawei/hms/adapter/BinderAdapter;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lcom/huawei/hms/adapter/BinderAdapter;->getServiceBinder()Landroid/os/IBinder;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p0, p1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->connectedInternal(Landroid/os/IBinder;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_2
    invoke-virtual {p0, v1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->m(I)V

    .line 100
    .line 101
    .line 102
    sget-object p1, Lcom/huawei/hms/common/internal/BaseHmsClient;->m:Lcom/huawei/hms/adapter/BinderAdapter;

    .line 103
    .line 104
    invoke-direct {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->r()Lcom/huawei/hms/adapter/BinderAdapter$BinderCallBack;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-virtual {p1, p2}, Lcom/huawei/hms/adapter/BinderAdapter;->binder(Lcom/huawei/hms/adapter/BinderAdapter$BinderCallBack;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method static synthetic k(Lcom/huawei/hms/common/internal/BaseHmsClient;)Lcom/huawei/hms/common/internal/BaseHmsClient$ConnectionCallbacks;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->f:Lcom/huawei/hms/common/internal/BaseHmsClient$ConnectionCallbacks;

    .line 2
    .line 3
    return-object p0
.end method

.method private l()V
    .locals 3

    .line 1
    sget-object v0, Lcom/huawei/hms/common/internal/BaseHmsClient;->j:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->h:Landroid/os/Handler;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    iput-object v1, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->h:Landroid/os/Handler;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :catchall_0
    move-exception v1

    .line 17
    goto :goto_1

    .line 18
    :cond_0
    :goto_0
    monitor-exit v0

    .line 19
    return-void

    .line 20
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw v1
.end method

.method private n(Lcom/huawei/hms/adapter/AvailableAdapter;I)V
    .locals 3

    .line 1
    const-string v0, "BaseHmsClient"

    .line 2
    .line 3
    const-string v1, "enter HmsCore resolution"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->u()Lcom/huawei/hms/common/internal/ClientSettings;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/ClientSettings;->isHasActivity()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/16 v1, 0x1a

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    invoke-static {}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getInstance()Lcom/huawei/hms/api/HuaweiApiAvailability;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->a:Landroid/content/Context;

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-virtual {p1, v0, p2, v2}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getErrPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance p2, Lcom/huawei/hms/api/ConnectionResult;

    .line 32
    .line 33
    invoke-direct {p2, v1, p1}, Lcom/huawei/hms/api/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0, p2}, Lcom/huawei/hms/common/internal/BaseHmsClient;->g(Lcom/huawei/hms/api/ConnectionResult;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->u()Lcom/huawei/hms/common/internal/ClientSettings;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p2}, Lcom/huawei/hms/common/internal/ClientSettings;->getCpActivity()Landroid/app/Activity;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->getContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {p2, v0}, Lcom/huawei/hms/utils/Util;->getActiveActivity(Landroid/app/Activity;Landroid/content/Context;)Landroid/app/Activity;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    if-eqz p2, :cond_1

    .line 57
    .line 58
    new-instance v0, Lcom/huawei/hms/common/internal/BaseHmsClient$3;

    .line 59
    .line 60
    invoke-direct {v0, p0}, Lcom/huawei/hms/common/internal/BaseHmsClient$3;-><init>(Lcom/huawei/hms/common/internal/BaseHmsClient;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, p2, v0}, Lcom/huawei/hms/adapter/AvailableAdapter;->startResolution(Landroid/app/Activity;Lcom/huawei/hms/adapter/AvailableAdapter$AvailableCallBack;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_1
    invoke-direct {p0, v1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->d(I)V

    .line 68
    .line 69
    .line 70
    :goto_0
    return-void
.end method

.method private o()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/huawei/hms/utils/HMSPackageManager;->getHMSPackageStatesForMultiService()Lcom/huawei/hms/utils/PackageManagerHelper$PackageStates;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sget-object v1, Lcom/huawei/hms/utils/PackageManagerHelper$PackageStates;->ENABLED:Lcom/huawei/hms/utils/PackageManagerHelper$PackageStates;

    .line 12
    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    return v0
.end method

.method static synthetic p(Lcom/huawei/hms/common/internal/BaseHmsClient;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->o()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private r()Lcom/huawei/hms/adapter/BinderAdapter$BinderCallBack;
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hms/common/internal/BaseHmsClient$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/huawei/hms/common/internal/BaseHmsClient$1;-><init>(Lcom/huawei/hms/common/internal/BaseHmsClient;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private s()V
    .locals 2

    .line 1
    const-string v0, "Failed to get service as interface, trying to unbind."

    .line 2
    .line 3
    const-string v1, "BaseHmsClient"

    .line 4
    .line 5
    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->c:Lcom/huawei/hms/common/internal/ClientSettings;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/ClientSettings;->isUseInnerHms()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    sget-object v0, Lcom/huawei/hms/common/internal/BaseHmsClient;->n:Lcom/huawei/hms/adapter/BinderAdapter;

    .line 17
    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const-string v0, "mInnerBinderAdapter is null."

    .line 21
    .line 22
    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-virtual {v0}, Lcom/huawei/hms/adapter/BinderAdapter;->unBind()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    sget-object v0, Lcom/huawei/hms/common/internal/BaseHmsClient;->m:Lcom/huawei/hms/adapter/BinderAdapter;

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    const-string v0, "mOuterBinderAdapter is null."

    .line 35
    .line 36
    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :cond_2
    invoke-virtual {v0}, Lcom/huawei/hms/adapter/BinderAdapter;->unBind()V

    .line 41
    .line 42
    .line 43
    :goto_0
    const/4 v0, 0x1

    .line 44
    invoke-virtual {p0, v0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->m(I)V

    .line 45
    .line 46
    .line 47
    const/16 v0, 0xa

    .line 48
    .line 49
    invoke-direct {p0, v0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->d(I)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method private t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->c:Lcom/huawei/hms/common/internal/ClientSettings;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/ClientSettings;->isUseInnerHms()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    sget-object v0, Lcom/huawei/hms/common/internal/BaseHmsClient;->n:Lcom/huawei/hms/adapter/BinderAdapter;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/huawei/hms/adapter/BinderAdapter;->unBind()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void

    .line 17
    :cond_1
    sget-object v0, Lcom/huawei/hms/common/internal/BaseHmsClient;->m:Lcom/huawei/hms/adapter/BinderAdapter;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/huawei/hms/adapter/BinderAdapter;->unBind()V

    .line 22
    .line 23
    .line 24
    :cond_2
    return-void
.end method


# virtual methods
.method c()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->c:Lcom/huawei/hms/common/internal/ClientSettings;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/ClientSettings;->getInnerHmsPkg()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->getServiceAction()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v3, "enter bindCoreService, packageName is "

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v3, ", serviceAction is "

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    const-string v3, "BaseHmsClient"

    .line 37
    .line 38
    invoke-static {v3, v2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0, v0, v1}, Lcom/huawei/hms/common/internal/BaseHmsClient;->j(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method public connect(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->e(IZ)V

    return-void
.end method

.method public connect(IZ)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/common/internal/BaseHmsClient;->e(IZ)V

    return-void
.end method

.method public connectedInternal(Landroid/os/IBinder;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/huawei/hms/core/aidl/d$a;->i(Landroid/os/IBinder;)Lcom/huawei/hms/core/aidl/d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->d:Lcom/huawei/hms/core/aidl/d;

    .line 6
    .line 7
    iget-object p1, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->d:Lcom/huawei/hms/core/aidl/d;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const-string p1, "BaseHmsClient"

    .line 12
    .line 13
    const-string v0, "mService is null, try to unBind."

    .line 14
    .line 15
    invoke-static {p1, v0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    invoke-direct {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->s()V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->onConnecting()V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public disconnect()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->c:Lcom/huawei/hms/common/internal/ClientSettings;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/ClientSettings;->isUseInnerHms()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/huawei/hms/common/internal/BaseHmsClient;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    sget-object v0, Lcom/huawei/hms/common/internal/BaseHmsClient;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "Enter disconnect, Connection Status: "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    const-string v2, "BaseHmsClient"

    .line 37
    .line 38
    invoke-static {v2, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const/4 v1, 0x3

    .line 42
    const/4 v2, 0x1

    .line 43
    if-eq v0, v1, :cond_2

    .line 44
    .line 45
    const/4 v1, 0x5

    .line 46
    if-eq v0, v1, :cond_1

    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    invoke-direct {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->l()V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v2}, Lcom/huawei/hms/common/internal/BaseHmsClient;->m(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_2
    invoke-direct {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->t()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v2}, Lcom/huawei/hms/common/internal/BaseHmsClient;->m(I)V

    .line 60
    .line 61
    .line 62
    :goto_2
    return-void
.end method

.method public getAdapter()Lcom/huawei/hms/adapter/BinderAdapter;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "getAdapter:isInner:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->c:Lcom/huawei/hms/common/internal/ClientSettings;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/huawei/hms/common/internal/ClientSettings;->isUseInnerHms()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", mInnerBinderAdapter:"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    sget-object v1, Lcom/huawei/hms/common/internal/BaseHmsClient;->n:Lcom/huawei/hms/adapter/BinderAdapter;

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, ", mOuterBinderAdapter:"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    sget-object v1, Lcom/huawei/hms/common/internal/BaseHmsClient;->m:Lcom/huawei/hms/adapter/BinderAdapter;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "BaseHmsClient"

    .line 45
    .line 46
    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->c:Lcom/huawei/hms/common/internal/ClientSettings;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/ClientSettings;->isUseInnerHms()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    sget-object v0, Lcom/huawei/hms/common/internal/BaseHmsClient;->n:Lcom/huawei/hms/adapter/BinderAdapter;

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    sget-object v0, Lcom/huawei/hms/common/internal/BaseHmsClient;->m:Lcom/huawei/hms/adapter/BinderAdapter;

    .line 61
    .line 62
    :goto_0
    return-object v0
.end method

.method public getApiNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->c:Lcom/huawei/hms/common/internal/ClientSettings;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/ClientSettings;->getApiName()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getAppID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getConnectionStatus()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->c:Lcom/huawei/hms/common/internal/ClientSettings;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/ClientSettings;->isUseInnerHms()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/huawei/hms/common/internal/BaseHmsClient;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    sget-object v0, Lcom/huawei/hms/common/internal/BaseHmsClient;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :goto_1
    return v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->a:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCpID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->c:Lcom/huawei/hms/common/internal/ClientSettings;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/ClientSettings;->getCpID()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getMinApkVersion()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const v0, 0x1c9c380

    .line 2
    .line 3
    .line 4
    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->c:Lcom/huawei/hms/common/internal/ClientSettings;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/ClientSettings;->getClientPackageName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getRequestHmsVersionCode()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->getMinApkVersion()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public getService()Lcom/huawei/hms/core/aidl/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->d:Lcom/huawei/hms/core/aidl/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public getServiceAction()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->c:Lcom/huawei/hms/common/internal/ClientSettings;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/huawei/hms/common/internal/ClientSettings;->isUseInnerHms()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/huawei/hms/utils/HMSPackageManager;->getInnerServiceAction()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {v0}, Lcom/huawei/hms/utils/HMSPackageManager;->getServiceAction()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :goto_0
    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSubAppInfo()Lcom/huawei/hms/support/api/client/SubAppInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->c:Lcom/huawei/hms/common/internal/ClientSettings;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/ClientSettings;->getSubAppID()Lcom/huawei/hms/support/api/client/SubAppInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getTransportName()Ljava/lang/String;
    .locals 1

    .line 1
    const-class v0, Lcom/huawei/hms/api/IPCTransport;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isConnected()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->c:Lcom/huawei/hms/common/internal/ClientSettings;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/ClientSettings;->isUseInnerHms()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x3

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lcom/huawei/hms/common/internal/BaseHmsClient;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-ne v0, v1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object v0, Lcom/huawei/hms/common/internal/BaseHmsClient;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    :goto_0
    const/4 v0, 0x1

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v0, 0x0

    .line 30
    :goto_1
    return v0
.end method

.method public isConnecting()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->c:Lcom/huawei/hms/common/internal/ClientSettings;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/ClientSettings;->isUseInnerHms()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/huawei/hms/common/internal/BaseHmsClient;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    sget-object v0, Lcom/huawei/hms/common/internal/BaseHmsClient;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :goto_1
    const/4 v1, 0x5

    .line 20
    if-ne v0, v1, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    goto :goto_2

    .line 24
    :cond_1
    const/4 v0, 0x0

    .line 25
    :goto_2
    return v0
.end method

.method m(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->c:Lcom/huawei/hms/common/internal/ClientSettings;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/ClientSettings;->isUseInnerHms()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    sget-object v0, Lcom/huawei/hms/common/internal/BaseHmsClient;->l:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    sget-object v0, Lcom/huawei/hms/common/internal/BaseHmsClient;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    .line 17
    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method

.method public onConnecting()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->q()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected final q()V
    .locals 2

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-virtual {p0, v0}, Lcom/huawei/hms/common/internal/BaseHmsClient;->m(I)V

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/huawei/hms/common/internal/RequestManager;->getHandler()Landroid/os/Handler;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0x271b

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->f:Lcom/huawei/hms/common/internal/BaseHmsClient$ConnectionCallbacks;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    instance-of v1, v0, Lcom/huawei/hms/common/HuaweiApi$RequestHandler;

    .line 19
    .line 20
    if-nez v1, :cond_0

    .line 21
    .line 22
    invoke-interface {v0}, Lcom/huawei/hms/common/internal/BaseHmsClient$ConnectionCallbacks;->onConnected()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final setInternalRequest(Lcom/huawei/hms/common/HuaweiApi$RequestHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->i:Lcom/huawei/hms/common/HuaweiApi$RequestHandler;

    .line 2
    .line 3
    return-void
.end method

.method public setService(Lcom/huawei/hms/core/aidl/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->d:Lcom/huawei/hms/core/aidl/d;

    .line 2
    .line 3
    return-void
.end method

.method protected u()Lcom/huawei/hms/common/internal/ClientSettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/common/internal/BaseHmsClient;->c:Lcom/huawei/hms/common/internal/ClientSettings;

    .line 2
    .line 3
    return-object v0
.end method
