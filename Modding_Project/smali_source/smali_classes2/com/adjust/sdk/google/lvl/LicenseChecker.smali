.class public Lcom/adjust/sdk/google/lvl/LicenseChecker;
.super Ljava/lang/Object;
.source "LicenseChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adjust/sdk/google/lvl/LicenseChecker$b;
    }
.end annotation


# static fields
.field private static final ERROR_BINDER_DIED:I = -0x6

.field private static final ERROR_BIND_FAILED:I = -0x5

.field private static final ERROR_GENERIC:I = -0x1

.field private static final ERROR_NO_BINDER:I = -0x3

.field private static final ERROR_REMOTE_EXCEPTION:I = -0x4

.field private static final ERROR_TRANSACT_FAILED:I = -0x2

.field private static final GOOGLE_PLAY_PACKAGE:Ljava/lang/String; = "com.android.vending"

.field private static final LICENSING_SERVICE_DESCRIPTOR:Ljava/lang/String; = "com.android.vending.licensing.ILicensingService"

.field private static final MAX_RETRIES:I = 0x3

.field private static final RESULT_LISTENER_DESCRIPTOR:Ljava/lang/String; = "com.android.vending.licensing.ILicenseResultListener"

.field private static final TRANSACTION_CHECK_LICENSE:I = 0x1


# instance fields
.field private final logger:Lcom/adjust/sdk/ILogger;

.field private mBound:Z

.field private final mCallback:Lcom/adjust/sdk/google/lvl/LicenseRawCallback;

.field private final mContext:Landroid/content/Context;

.field private mServiceBinder:Landroid/os/IBinder;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private final resultListenerBinder:Lcom/adjust/sdk/google/lvl/LicenseChecker$b;

.field private retryCount:I

.field private final timestamp:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/adjust/sdk/google/lvl/LicenseRawCallback;Lcom/adjust/sdk/ILogger;J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->retryCount:I

    .line 6
    .line 7
    new-instance v0, Lcom/adjust/sdk/google/lvl/LicenseChecker$a;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/adjust/sdk/google/lvl/LicenseChecker$a;-><init>(Lcom/adjust/sdk/google/lvl/LicenseChecker;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 13
    .line 14
    iput-object p1, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->mContext:Landroid/content/Context;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->mCallback:Lcom/adjust/sdk/google/lvl/LicenseRawCallback;

    .line 17
    .line 18
    iput-object p3, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->logger:Lcom/adjust/sdk/ILogger;

    .line 19
    .line 20
    iput-wide p4, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->timestamp:J

    .line 21
    .line 22
    new-instance p1, Lcom/adjust/sdk/google/lvl/LicenseChecker$b;

    .line 23
    .line 24
    invoke-direct {p1, p0}, Lcom/adjust/sdk/google/lvl/LicenseChecker$b;-><init>(Lcom/adjust/sdk/google/lvl/LicenseChecker;)V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->resultListenerBinder:Lcom/adjust/sdk/google/lvl/LicenseChecker$b;

    .line 28
    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/adjust/sdk/google/lvl/LicenseChecker;)Lcom/adjust/sdk/ILogger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->logger:Lcom/adjust/sdk/ILogger;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/adjust/sdk/google/lvl/LicenseChecker;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->mServiceBinder:Landroid/os/IBinder;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$102(Lcom/adjust/sdk/google/lvl/LicenseChecker;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->mServiceBinder:Landroid/os/IBinder;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$202(Lcom/adjust/sdk/google/lvl/LicenseChecker;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->mBound:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$300(Lcom/adjust/sdk/google/lvl/LicenseChecker;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->retryCount:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$302(Lcom/adjust/sdk/google/lvl/LicenseChecker;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->retryCount:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$308(Lcom/adjust/sdk/google/lvl/LicenseChecker;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->retryCount:I

    .line 2
    .line 3
    add-int/lit8 v1, v0, 0x1

    .line 4
    .line 5
    iput v1, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->retryCount:I

    .line 6
    .line 7
    return v0
.end method

.method static synthetic access$400(Lcom/adjust/sdk/google/lvl/LicenseChecker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/adjust/sdk/google/lvl/LicenseChecker;->executeLicenseCheck()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$500(Lcom/adjust/sdk/google/lvl/LicenseChecker;)Lcom/adjust/sdk/google/lvl/LicenseRawCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->mCallback:Lcom/adjust/sdk/google/lvl/LicenseRawCallback;

    .line 2
    .line 3
    return-object p0
.end method

.method private executeLicenseCheck()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->mServiceBinder:Landroid/os/IBinder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->logger:Lcom/adjust/sdk/ILogger;

    .line 7
    .line 8
    const-string v2, "LVL binder unavailable for license check"

    .line 9
    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    .line 12
    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->mCallback:Lcom/adjust/sdk/google/lvl/LicenseRawCallback;

    .line 16
    .line 17
    const/4 v1, -0x3

    .line 18
    invoke-interface {v0, v1}, Lcom/adjust/sdk/google/lvl/LicenseRawCallback;->onError(I)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :catch_0
    move-exception v0

    .line 23
    goto/16 :goto_2

    .line 24
    .line 25
    :catch_1
    move-exception v0

    .line 26
    goto/16 :goto_3

    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->mContext:Landroid/content/Context;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-wide v2, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->timestamp:J

    .line 35
    .line 36
    invoke-static {v2, v3}, Lcom/adjust/sdk/google/lvl/LicenseChecker;->generateNonce(J)J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    iget-object v4, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->logger:Lcom/adjust/sdk/ILogger;

    .line 41
    .line 42
    new-instance v5, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v6, "LVL generated nonce: "

    .line 48
    .line 49
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    new-array v6, v1, [Ljava/lang/Object;

    .line 60
    .line 61
    invoke-interface {v4, v5, v6}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 65
    .line 66
    .line 67
    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :try_start_1
    const-string v5, "com.android.vending.licensing.ILicensingService"

    .line 69
    .line 70
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v4, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->resultListenerBinder:Lcom/adjust/sdk/google/lvl/LicenseChecker$b;

    .line 80
    .line 81
    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->mServiceBinder:Landroid/os/IBinder;

    .line 85
    .line 86
    const/4 v2, 0x0

    .line 87
    const/4 v3, 0x1

    .line 88
    invoke-interface {v0, v3, v4, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    iget-object v2, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->logger:Lcom/adjust/sdk/ILogger;

    .line 93
    .line 94
    new-instance v3, Ljava/lang/StringBuilder;

    .line 95
    .line 96
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v5, "LVL binder transact sent (code 1): "

    .line 100
    .line 101
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    new-array v5, v1, [Ljava/lang/Object;

    .line 112
    .line 113
    invoke-interface {v2, v3, v5}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    .line 115
    .line 116
    if-nez v0, :cond_1

    .line 117
    .line 118
    iget-object v0, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->logger:Lcom/adjust/sdk/ILogger;

    .line 119
    .line 120
    const-string v2, "LVL binder transact failed to enqueue"

    .line 121
    .line 122
    new-array v1, v1, [Ljava/lang/Object;

    .line 123
    .line 124
    invoke-interface {v0, v2, v1}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->mCallback:Lcom/adjust/sdk/google/lvl/LicenseRawCallback;

    .line 128
    .line 129
    const/4 v1, -0x2

    .line 130
    invoke-interface {v0, v1}, Lcom/adjust/sdk/google/lvl/LicenseRawCallback;->onError(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :catchall_0
    move-exception v0

    .line 135
    goto :goto_1

    .line 136
    :cond_1
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 137
    .line 138
    .line 139
    goto :goto_4

    .line 140
    :goto_1
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 141
    .line 142
    .line 143
    throw v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 144
    :goto_2
    iget-object v1, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->logger:Lcom/adjust/sdk/ILogger;

    .line 145
    .line 146
    const-string v2, "LVL license check failed: "

    .line 147
    .line 148
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-interface {v1, v2, v0}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    .line 154
    .line 155
    iget-object v0, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->mCallback:Lcom/adjust/sdk/google/lvl/LicenseRawCallback;

    .line 156
    .line 157
    const/4 v1, -0x1

    .line 158
    invoke-interface {v0, v1}, Lcom/adjust/sdk/google/lvl/LicenseRawCallback;->onError(I)V

    .line 159
    .line 160
    .line 161
    goto :goto_4

    .line 162
    :goto_3
    iget-object v1, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->logger:Lcom/adjust/sdk/ILogger;

    .line 163
    .line 164
    const-string v2, "LVL remote exception during license check: "

    .line 165
    .line 166
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-interface {v1, v2, v0}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->mCallback:Lcom/adjust/sdk/google/lvl/LicenseRawCallback;

    .line 174
    .line 175
    const/4 v1, -0x4

    .line 176
    invoke-interface {v0, v1}, Lcom/adjust/sdk/google/lvl/LicenseRawCallback;->onError(I)V

    .line 177
    .line 178
    .line 179
    :goto_4
    return-void
.end method

.method public static generateNonce(J)J
    .locals 2

    .line 1
    const-wide v0, 0xffffffffffffffL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    and-long/2addr p0, v0

    .line 7
    const/16 v0, 0x8

    .line 8
    .line 9
    shl-long/2addr p0, v0

    .line 10
    const-wide/16 v0, 0x1

    .line 11
    .line 12
    or-long/2addr p0, v0

    .line 13
    return-wide p0
.end method


# virtual methods
.method public declared-synchronized checkAccess()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->mBound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->logger:Lcom/adjust/sdk/ILogger;

    .line 9
    .line 10
    const-string v1, "LVL License check starts"

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    new-array v3, v2, [Ljava/lang/Object;

    .line 14
    .line 15
    invoke-interface {v0, v1, v3}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Landroid/content/Intent;

    .line 19
    .line 20
    const-string v1, "com.android.vending.licensing.ILicensingService"

    .line 21
    .line 22
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v1, "com.android.vending"

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 28
    .line 29
    .line 30
    iget-object v1, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->mContext:Landroid/content/Context;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    iget-object v1, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->logger:Lcom/adjust/sdk/ILogger;

    .line 40
    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v4, "LVL bindService result: "

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    new-array v4, v2, [Ljava/lang/Object;

    .line 59
    .line 60
    invoke-interface {v1, v3, v4}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    if-nez v0, :cond_1

    .line 64
    .line 65
    iget-object v0, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->logger:Lcom/adjust/sdk/ILogger;

    .line 66
    .line 67
    const-string v1, "LVL failed to bind licensing service"

    .line 68
    .line 69
    new-array v2, v2, [Ljava/lang/Object;

    .line 70
    .line 71
    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->mCallback:Lcom/adjust/sdk/google/lvl/LicenseRawCallback;

    .line 75
    .line 76
    const/4 v1, -0x5

    .line 77
    invoke-interface {v0, v1}, Lcom/adjust/sdk/google/lvl/LicenseRawCallback;->onError(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    .line 79
    .line 80
    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    goto :goto_1

    .line 83
    :cond_1
    :goto_0
    monitor-exit p0

    .line 84
    return-void

    .line 85
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 86
    throw v0
.end method

.method public onDestroy()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->logger:Lcom/adjust/sdk/ILogger;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v3, "LVL license checker destroyed"

    .line 7
    .line 8
    invoke-interface {v0, v3, v2}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->mBound:Z

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->mContext:Landroid/content/Context;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 20
    .line 21
    .line 22
    iput-boolean v1, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->mBound:Z

    .line 23
    .line 24
    :cond_0
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/adjust/sdk/google/lvl/LicenseChecker;->mServiceBinder:Landroid/os/IBinder;

    .line 26
    .line 27
    return-void
.end method
