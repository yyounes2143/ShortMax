.class public Lcom/ss/mediakit/net/AVMDLHostProcessor;
.super Ljava/lang/Object;
.source "AVMDLHostProcessor.java"


# static fields
.field private static final BACKUP_DNS:I = 0x1

.field private static final MAIN_DNS:I = 0x0

.field public static final STATE_IS_IDLE:I = 0x0

.field public static final STATE_IS_PARSE_END_ERROR:I = 0x2

.field public static final STATE_IS_PARSE_END_SUC:I = 0x3

.field public static final STATE_IS_WAIT_RESULT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AVMDLHostProcessor"


# instance fields
.field private mBackUpDelayedTime:I

.field private mBackUpDelayedTimeForExpiredCache:I

.field private mBackUpType:I

.field private mEnableParallel:I

.field private mHandler:Landroid/os/Handler;

.field public mHost:Ljava/lang/String;

.field public mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/ss/mediakit/net/AVMDLDNSParserListener;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMainType:I

.field private mParsers:[Lcom/ss/mediakit/net/BaseDNS;

.field private mStates:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler;IIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p3, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mMainType:I

    .line 3
    iput p4, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mBackUpType:I

    .line 4
    iput-object p2, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mHandler:Landroid/os/Handler;

    .line 5
    iput-object p1, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mHost:Ljava/lang/String;

    .line 6
    iput p5, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mBackUpDelayedTime:I

    .line 7
    iput p6, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mEnableParallel:I

    const/4 p1, 0x2

    .line 8
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mStates:[I

    .line 9
    new-array p2, p1, [Lcom/ss/mediakit/net/BaseDNS;

    iput-object p2, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mParsers:[Lcom/ss/mediakit/net/BaseDNS;

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_0

    .line 10
    iget-object p4, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mParsers:[Lcom/ss/mediakit/net/BaseDNS;

    const/4 p5, 0x0

    aput-object p5, p4, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    move p3, p2

    :goto_1
    if-ge p3, p1, :cond_1

    .line 11
    iget-object p4, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mStates:[I

    aput p2, p4, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 12
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mListeners:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Handler;IIIII)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p3, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mMainType:I

    .line 15
    iput p4, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mBackUpType:I

    .line 16
    iput-object p2, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mHandler:Landroid/os/Handler;

    .line 17
    iput-object p1, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mHost:Ljava/lang/String;

    .line 18
    iput p5, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mBackUpDelayedTime:I

    .line 19
    iput p7, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mBackUpDelayedTimeForExpiredCache:I

    .line 20
    iput p6, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mEnableParallel:I

    const/4 p1, 0x2

    .line 21
    new-array p2, p1, [I

    iput-object p2, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mStates:[I

    .line 22
    new-array p2, p1, [Lcom/ss/mediakit/net/BaseDNS;

    iput-object p2, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mParsers:[Lcom/ss/mediakit/net/BaseDNS;

    const/4 p2, 0x0

    move p3, p2

    :goto_0
    if-ge p3, p1, :cond_0

    .line 23
    iget-object p4, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mParsers:[Lcom/ss/mediakit/net/BaseDNS;

    const/4 p5, 0x0

    aput-object p5, p4, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    move p3, p2

    :goto_1
    if-ge p3, p1, :cond_1

    .line 24
    iget-object p4, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mStates:[I

    aput p2, p4, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 25
    :cond_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mListeners:Ljava/util/HashMap;

    return-void
.end method

.method private createDNSParser(Ljava/lang/String;II)Lcom/ss/mediakit/net/BaseDNS;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CI_DefaultLocale"
        }
    .end annotation

    .line 1
    const/4 p3, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/ss/mediakit/net/AVMDLDNSManager;->getInstance()Lcom/ss/mediakit/net/AVMDLDNSManager;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-virtual {v0, p2}, Lcom/ss/mediakit/net/AVMDLDNSManager;->getCreateConstructor(I)Lcom/ss/mediakit/net/CreateConstructor;

    .line 7
    .line 8
    .line 9
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    .line 14
    .line 15
    move-object v0, p3

    .line 16
    :goto_0
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mHandler:Landroid/os/Handler;

    .line 19
    .line 20
    invoke-interface {v0, p1, p3, p2, v1}, Lcom/ss/mediakit/net/CreateConstructor;->createDns(Ljava/lang/String;Lcom/ss/mediakit/net/AVMDLNetClient;ILandroid/os/Handler;)Lcom/ss/mediakit/net/BaseDNS;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    return-object p1

    .line 25
    :cond_0
    const/4 p3, 0x4

    .line 26
    const-string v0, "AVMDLHostProcessor"

    .line 27
    .line 28
    if-ne p2, p3, :cond_1

    .line 29
    .line 30
    sget-object p3, Lcom/ss/mediakit/net/AVMDLDNSParser;->mCustomHttpDNSParser:Lcom/ss/mediakit/net/AVMDLCustomHTTPDNSParser;

    .line 31
    .line 32
    if-eqz p3, :cond_1

    .line 33
    .line 34
    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 35
    .line 36
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    const-string v1, "create custom httpdns parser for host:%s type:%d"

    .line 45
    .line 46
    invoke-static {p3, v1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-static {v0, p2}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance p2, Lcom/ss/mediakit/net/CustomHTTPDNS;

    .line 54
    .line 55
    iget-object p3, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mHandler:Landroid/os/Handler;

    .line 56
    .line 57
    invoke-direct {p2, p1, p3}, Lcom/ss/mediakit/net/CustomHTTPDNS;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 58
    .line 59
    .line 60
    return-object p2

    .line 61
    :cond_1
    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 62
    .line 63
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p2

    .line 71
    const-string v1, "create local dns parser for host:%s type:%d"

    .line 72
    .line 73
    invoke-static {p3, v1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    invoke-static {v0, p2}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    new-instance p2, Lcom/ss/mediakit/net/LocalDNS;

    .line 81
    .line 82
    iget-object p3, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mHandler:Landroid/os/Handler;

    .line 83
    .line 84
    invoke-direct {p2, p1, p3}, Lcom/ss/mediakit/net/LocalDNS;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    .line 85
    .line 86
    .line 87
    return-object p2
.end method

.method private doParseInternal(ILcom/ss/mediakit/net/AVMDLDNSInfo;)V
    .locals 8

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    filled-new-array {v1, p2}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "----do parse internal what:%d info:%s"

    .line 12
    .line 13
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    const-string v2, "AVMDLHostProcessor"

    .line 18
    .line 19
    invoke-static {v2, v1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    if-nez p2, :cond_0

    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const/4 v1, 0x5

    .line 26
    const/16 v3, 0x9

    .line 27
    .line 28
    const/4 v4, 0x6

    .line 29
    const/4 v5, 0x0

    .line 30
    const/4 v6, 0x1

    .line 31
    if-eq p1, v1, :cond_1

    .line 32
    .line 33
    if-ne p1, v3, :cond_6

    .line 34
    .line 35
    :cond_1
    iget-object v1, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mParsers:[Lcom/ss/mediakit/net/BaseDNS;

    .line 36
    .line 37
    aget-object v1, v1, v5

    .line 38
    .line 39
    if-nez v1, :cond_6

    .line 40
    .line 41
    iget v1, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mMainType:I

    .line 42
    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    iget-object v7, p2, Lcom/ss/mediakit/net/AVMDLDNSInfo;->mHost:Ljava/lang/String;

    .line 48
    .line 49
    filled-new-array {v1, v7}, [Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v7, "create main dns type:%d host:%s"

    .line 54
    .line 55
    invoke-static {v0, v7, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v2, v1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mStates:[I

    .line 63
    .line 64
    aput v6, v1, v5

    .line 65
    .line 66
    iget-object v1, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mParsers:[Lcom/ss/mediakit/net/BaseDNS;

    .line 67
    .line 68
    iget-object v6, p2, Lcom/ss/mediakit/net/AVMDLDNSInfo;->mHost:Ljava/lang/String;

    .line 69
    .line 70
    iget v7, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mMainType:I

    .line 71
    .line 72
    invoke-direct {p0, v6, v7, v5}, Lcom/ss/mediakit/net/AVMDLHostProcessor;->createDNSParser(Ljava/lang/String;II)Lcom/ss/mediakit/net/BaseDNS;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    aput-object v6, v1, v5

    .line 77
    .line 78
    iget-object v1, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mParsers:[Lcom/ss/mediakit/net/BaseDNS;

    .line 79
    .line 80
    aget-object v1, v1, v5

    .line 81
    .line 82
    invoke-virtual {v1}, Lcom/ss/mediakit/net/BaseDNS;->start()V

    .line 83
    .line 84
    .line 85
    sget v1, Lcom/ss/mediakit/net/AVMDLDNSParser;->mGloabalDisableParallelForExpiredCache:I

    .line 86
    .line 87
    const-string v6, "BackUpDelayedTime:%d enableparallel:%d send backup delay first"

    .line 88
    .line 89
    if-lez v1, :cond_4

    .line 90
    .line 91
    if-ne p1, v3, :cond_2

    .line 92
    .line 93
    new-instance p1, Landroid/os/Message;

    .line 94
    .line 95
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 96
    .line 97
    .line 98
    iput v4, p1, Landroid/os/Message;->what:I

    .line 99
    .line 100
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 101
    .line 102
    iget p2, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mBackUpDelayedTimeForExpiredCache:I

    .line 103
    .line 104
    if-lez p2, :cond_7

    .line 105
    .line 106
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 107
    .line 108
    .line 109
    move-result-object p2

    .line 110
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    const-string v1, "mBackUpDelayedTimeForExpiredCache:%d send backup delay first"

    .line 115
    .line 116
    invoke-static {v0, v1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    invoke-static {v2, p2}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget-object p2, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mHandler:Landroid/os/Handler;

    .line 124
    .line 125
    iget v1, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mBackUpDelayedTimeForExpiredCache:I

    .line 126
    .line 127
    mul-int/lit16 v1, v1, 0x3e8

    .line 128
    .line 129
    int-to-long v3, v1

    .line 130
    invoke-virtual {p2, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 131
    .line 132
    .line 133
    goto/16 :goto_0

    .line 134
    .line 135
    :cond_2
    new-instance p1, Landroid/os/Message;

    .line 136
    .line 137
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 138
    .line 139
    .line 140
    iput v4, p1, Landroid/os/Message;->what:I

    .line 141
    .line 142
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 143
    .line 144
    iget p2, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mBackUpDelayedTime:I

    .line 145
    .line 146
    if-gtz p2, :cond_3

    .line 147
    .line 148
    iget v1, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mEnableParallel:I

    .line 149
    .line 150
    if-lez v1, :cond_7

    .line 151
    .line 152
    :cond_3
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 153
    .line 154
    .line 155
    move-result-object p2

    .line 156
    iget v1, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mEnableParallel:I

    .line 157
    .line 158
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v1

    .line 162
    filled-new-array {p2, v1}, [Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    invoke-static {v0, v6, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object p2

    .line 170
    invoke-static {v2, p2}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    iget-object p2, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mHandler:Landroid/os/Handler;

    .line 174
    .line 175
    iget v1, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mBackUpDelayedTime:I

    .line 176
    .line 177
    mul-int/lit16 v1, v1, 0x3e8

    .line 178
    .line 179
    int-to-long v3, v1

    .line 180
    invoke-virtual {p2, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 181
    .line 182
    .line 183
    goto :goto_0

    .line 184
    :cond_4
    new-instance p1, Landroid/os/Message;

    .line 185
    .line 186
    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 187
    .line 188
    .line 189
    iput v4, p1, Landroid/os/Message;->what:I

    .line 190
    .line 191
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 192
    .line 193
    iget p2, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mBackUpDelayedTime:I

    .line 194
    .line 195
    if-gtz p2, :cond_5

    .line 196
    .line 197
    iget v1, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mEnableParallel:I

    .line 198
    .line 199
    if-lez v1, :cond_7

    .line 200
    .line 201
    :cond_5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 202
    .line 203
    .line 204
    move-result-object p2

    .line 205
    iget v1, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mEnableParallel:I

    .line 206
    .line 207
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    filled-new-array {p2, v1}, [Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    invoke-static {v0, v6, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 216
    .line 217
    .line 218
    move-result-object p2

    .line 219
    invoke-static {v2, p2}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    iget-object p2, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mHandler:Landroid/os/Handler;

    .line 223
    .line 224
    iget v1, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mBackUpDelayedTime:I

    .line 225
    .line 226
    mul-int/lit16 v1, v1, 0x3e8

    .line 227
    .line 228
    int-to-long v3, v1

    .line 229
    invoke-virtual {p2, p1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 230
    .line 231
    .line 232
    goto :goto_0

    .line 233
    :cond_6
    if-ne p1, v4, :cond_7

    .line 234
    .line 235
    iget-object p1, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mParsers:[Lcom/ss/mediakit/net/BaseDNS;

    .line 236
    .line 237
    aget-object p1, p1, v6

    .line 238
    .line 239
    if-nez p1, :cond_7

    .line 240
    .line 241
    iget p1, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mBackUpType:I

    .line 242
    .line 243
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 244
    .line 245
    .line 246
    move-result-object p1

    .line 247
    iget-object v1, p2, Lcom/ss/mediakit/net/AVMDLDNSInfo;->mHost:Ljava/lang/String;

    .line 248
    .line 249
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object p1

    .line 253
    const-string v1, "create backup dns type:%d host:%s"

    .line 254
    .line 255
    invoke-static {v0, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    invoke-static {v2, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    iget-object p1, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mStates:[I

    .line 263
    .line 264
    aput v6, p1, v6

    .line 265
    .line 266
    iget-object p1, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mParsers:[Lcom/ss/mediakit/net/BaseDNS;

    .line 267
    .line 268
    iget-object p2, p2, Lcom/ss/mediakit/net/AVMDLDNSInfo;->mHost:Ljava/lang/String;

    .line 269
    .line 270
    iget v1, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mBackUpType:I

    .line 271
    .line 272
    invoke-direct {p0, p2, v1, v6}, Lcom/ss/mediakit/net/AVMDLHostProcessor;->createDNSParser(Ljava/lang/String;II)Lcom/ss/mediakit/net/BaseDNS;

    .line 273
    .line 274
    .line 275
    move-result-object p2

    .line 276
    aput-object p2, p1, v6

    .line 277
    .line 278
    iget-object p1, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mParsers:[Lcom/ss/mediakit/net/BaseDNS;

    .line 279
    .line 280
    aget-object p1, p1, v6

    .line 281
    .line 282
    invoke-virtual {p1}, Lcom/ss/mediakit/net/BaseDNS;->start()V

    .line 283
    .line 284
    .line 285
    :cond_7
    :goto_0
    const-string p1, "****do parse internal end"

    .line 286
    .line 287
    new-array p2, v5, [Ljava/lang/Object;

    .line 288
    .line 289
    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 290
    .line 291
    .line 292
    move-result-object p1

    .line 293
    invoke-static {v2, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    return-void
.end method


# virtual methods
.method public isEnd()Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    const/4 v2, 0x2

    .line 4
    if-ge v1, v2, :cond_1

    .line 5
    .line 6
    iget-object v3, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mParsers:[Lcom/ss/mediakit/net/BaseDNS;

    .line 7
    .line 8
    aget-object v3, v3, v1

    .line 9
    .line 10
    if-eqz v3, :cond_0

    .line 11
    .line 12
    iget-object v3, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mStates:[I

    .line 13
    .line 14
    aget v3, v3, v1

    .line 15
    .line 16
    const/4 v4, 0x3

    .line 17
    if-eq v3, v4, :cond_0

    .line 18
    .line 19
    if-eq v3, v2, :cond_0

    .line 20
    .line 21
    return v0

    .line 22
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-string v0, "AVMDLHostProcessor"

    .line 26
    .line 27
    const-string v1, "all dns parse is end"

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    const/4 v0, 0x1

    .line 33
    return v0
.end method

.method public isValidSourceId(Ljava/lang/String;)Z
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "AVMDLHostProcessor"

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 11
    .line 12
    const-string v3, "id: %s is empty"

    .line 13
    .line 14
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-static {v0, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {v2, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return v1

    .line 26
    :cond_0
    move v0, v1

    .line 27
    :goto_0
    const/4 v3, 0x2

    .line 28
    if-ge v0, v3, :cond_2

    .line 29
    .line 30
    iget-object v3, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mParsers:[Lcom/ss/mediakit/net/BaseDNS;

    .line 31
    .line 32
    aget-object v3, v3, v0

    .line 33
    .line 34
    if-eqz v3, :cond_1

    .line 35
    .line 36
    iget-object v3, v3, Lcom/ss/mediakit/net/BaseDNS;->mId:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    if-eqz v3, :cond_1

    .line 43
    .line 44
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 45
    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    filled-new-array {p1, v0}, [Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const-string v0, "id: %s is valid index: %d"

    .line 55
    .line 56
    invoke-static {v1, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-static {v2, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    const/4 p1, 0x1

    .line 64
    return p1

    .line 65
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 69
    .line 70
    const-string v3, "id: %s is valid"

    .line 71
    .line 72
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-static {v0, v3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {v2, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return v1
.end method

.method public processMsg(ILcom/ss/mediakit/net/AVMDLDNSInfo;)V
    .locals 7

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p2, Lcom/ss/mediakit/net/AVMDLDNSInfo;->mHost:Ljava/lang/String;

    .line 8
    .line 9
    filled-new-array {v1, v2, p2}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "----processor pro msg what:%d host:%s info:%s"

    .line 14
    .line 15
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "AVMDLHostProcessor"

    .line 20
    .line 21
    invoke-static {v2, v1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x5

    .line 25
    const/4 v3, 0x0

    .line 26
    if-eq p1, v1, :cond_2

    .line 27
    .line 28
    const/4 v1, 0x6

    .line 29
    if-eq p1, v1, :cond_0

    .line 30
    .line 31
    const/16 v1, 0x9

    .line 32
    .line 33
    if-eq p1, v1, :cond_2

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_0
    iget-object v1, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mStates:[I

    .line 37
    .line 38
    aget v4, v1, v3

    .line 39
    .line 40
    const/4 v5, 0x1

    .line 41
    if-eq v4, v5, :cond_1

    .line 42
    .line 43
    const/4 v6, 0x2

    .line 44
    if-eq v4, v6, :cond_1

    .line 45
    .line 46
    const/4 v6, 0x3

    .line 47
    if-eq v4, v6, :cond_1

    .line 48
    .line 49
    iget v4, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mEnableParallel:I

    .line 50
    .line 51
    if-lez v4, :cond_3

    .line 52
    .line 53
    :cond_1
    aget v1, v1, v5

    .line 54
    .line 55
    if-nez v1, :cond_3

    .line 56
    .line 57
    const-string v1, "main dns is not end or enable parrallel and backup dns is idle call backup dns"

    .line 58
    .line 59
    new-array v3, v3, [Ljava/lang/Object;

    .line 60
    .line 61
    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-static {v2, v1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/ss/mediakit/net/AVMDLHostProcessor;->doParseInternal(ILcom/ss/mediakit/net/AVMDLDNSInfo;)V

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_2
    iget-object v1, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mStates:[I

    .line 73
    .line 74
    aget v1, v1, v3

    .line 75
    .line 76
    if-nez v1, :cond_3

    .line 77
    .line 78
    const-string v1, "main dns is idle call main dns"

    .line 79
    .line 80
    new-array v3, v3, [Ljava/lang/Object;

    .line 81
    .line 82
    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v2, v1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/ss/mediakit/net/AVMDLHostProcessor;->doParseInternal(ILcom/ss/mediakit/net/AVMDLDNSInfo;)V

    .line 90
    .line 91
    .line 92
    :cond_3
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iget-object v1, p2, Lcom/ss/mediakit/net/AVMDLDNSInfo;->mHost:Ljava/lang/String;

    .line 97
    .line 98
    filled-new-array {p1, v1, p2}, [Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    const-string p2, "****end processor pro msg what:%d host:%s info:%s"

    .line 103
    .line 104
    invoke-static {v0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-static {v2, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    return-void
.end method

.method public processResult(ILcom/ss/mediakit/net/AVMDLDNSInfo;)V
    .locals 10

    .line 1
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p2, Lcom/ss/mediakit/net/AVMDLDNSInfo;->mId:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v3, p2, Lcom/ss/mediakit/net/AVMDLDNSInfo;->mHost:Ljava/lang/String;

    .line 10
    .line 11
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "----process result what:%d id:%s host:%s"

    .line 16
    .line 17
    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "AVMDLHostProcessor"

    .line 22
    .line 23
    invoke-static {v2, v1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    const/4 v3, 0x2

    .line 28
    const/4 v4, 0x0

    .line 29
    if-eq p1, v3, :cond_0

    .line 30
    .line 31
    if-eq p1, v1, :cond_0

    .line 32
    .line 33
    move-object v5, v4

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v5, p2, Lcom/ss/mediakit/net/AVMDLDNSInfo;->mId:Ljava/lang/String;

    .line 36
    .line 37
    :goto_0
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v6

    .line 41
    const/4 v7, 0x0

    .line 42
    if-eqz v6, :cond_1

    .line 43
    .line 44
    const-string p1, "****process result err id is empty"

    .line 45
    .line 46
    new-array p2, v7, [Ljava/lang/Object;

    .line 47
    .line 48
    invoke-static {v0, p1, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {v2, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    :cond_1
    move v0, v7

    .line 57
    :goto_1
    if-ge v0, v3, :cond_5

    .line 58
    .line 59
    iget-object v6, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mParsers:[Lcom/ss/mediakit/net/BaseDNS;

    .line 60
    .line 61
    aget-object v6, v6, v0

    .line 62
    .line 63
    if-eqz v6, :cond_4

    .line 64
    .line 65
    iget-object v6, v6, Lcom/ss/mediakit/net/BaseDNS;->mId:Ljava/lang/String;

    .line 66
    .line 67
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-eqz v6, :cond_4

    .line 72
    .line 73
    iget-object v5, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mParsers:[Lcom/ss/mediakit/net/BaseDNS;

    .line 74
    .line 75
    aget-object v5, v5, v0

    .line 76
    .line 77
    invoke-virtual {v5}, Lcom/ss/mediakit/net/BaseDNS;->close()V

    .line 78
    .line 79
    .line 80
    iget-object v5, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mParsers:[Lcom/ss/mediakit/net/BaseDNS;

    .line 81
    .line 82
    aput-object v4, v5, v0

    .line 83
    .line 84
    if-ne p1, v1, :cond_2

    .line 85
    .line 86
    iget-object v4, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mStates:[I

    .line 87
    .line 88
    aput v1, v4, v0

    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_2
    if-ne p1, v3, :cond_3

    .line 92
    .line 93
    iget-object v1, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mStates:[I

    .line 94
    .line 95
    aput v3, v1, v0

    .line 96
    .line 97
    :cond_3
    :goto_2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 98
    .line 99
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    .line 101
    .line 102
    move-result-object v4

    .line 103
    filled-new-array {v4}, [Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    const-string v5, "****process result parser index:%d is end, be close"

    .line 108
    .line 109
    invoke-static {v1, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-static {v2, v1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    goto :goto_3

    .line 117
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 118
    .line 119
    goto :goto_1

    .line 120
    :cond_5
    :goto_3
    if-nez v0, :cond_6

    .line 121
    .line 122
    if-ne p1, v3, :cond_6

    .line 123
    .line 124
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 125
    .line 126
    const-string v1, "mian dns parse error, try back up dns"

    .line 127
    .line 128
    new-array v3, v7, [Ljava/lang/Object;

    .line 129
    .line 130
    invoke-static {v0, v1, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {v2, v0}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    new-instance v0, Lcom/ss/mediakit/net/AVMDLDNSInfo;

    .line 138
    .line 139
    iget v4, p0, Lcom/ss/mediakit/net/AVMDLHostProcessor;->mBackUpType:I

    .line 140
    .line 141
    iget-object v5, p2, Lcom/ss/mediakit/net/AVMDLDNSInfo;->mHost:Ljava/lang/String;

    .line 142
    .line 143
    const-wide/16 v7, 0x0

    .line 144
    .line 145
    const/4 v9, 0x0

    .line 146
    const/4 v6, 0x0

    .line 147
    move-object v3, v0

    .line 148
    invoke-direct/range {v3 .. v9}, Lcom/ss/mediakit/net/AVMDLDNSInfo;-><init>(ILjava/lang/String;Ljava/lang/String;JLjava/lang/String;)V

    .line 149
    .line 150
    .line 151
    const/4 v1, 0x6

    .line 152
    invoke-virtual {p0, v1, v0}, Lcom/ss/mediakit/net/AVMDLHostProcessor;->processMsg(ILcom/ss/mediakit/net/AVMDLDNSInfo;)V

    .line 153
    .line 154
    .line 155
    :cond_6
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 156
    .line 157
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object p1

    .line 161
    iget-object v1, p2, Lcom/ss/mediakit/net/AVMDLDNSInfo;->mId:Ljava/lang/String;

    .line 162
    .line 163
    iget-object p2, p2, Lcom/ss/mediakit/net/AVMDLDNSInfo;->mHost:Ljava/lang/String;

    .line 164
    .line 165
    filled-new-array {p1, v1, p2}, [Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    const-string p2, "****end process result what:%d id:%s host:%s"

    .line 170
    .line 171
    invoke-static {v0, p2, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-static {v2, p1}, Lcom/ss/mediakit/medialoader/AVMDLLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    return-void
.end method
