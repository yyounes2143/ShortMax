.class Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;
.super Ljava/lang/Object;
.source "UploadPartTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask$UploadPartTaskProgressListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final f:Lcom/amazonaws/logging/Log;


# instance fields
.field private final a:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

.field private final b:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask$UploadPartTaskProgressListener;

.field private final c:Lcom/amazonaws/services/s3/model/UploadPartRequest;

.field private final d:Lcom/amazonaws/services/s3/AmazonS3;

.field private final e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->f:Lcom/amazonaws/logging/Log;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;Lcom/amazonaws/services/s3/model/UploadPartRequest;Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

    .line 5
    .line 6
    new-instance p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask$UploadPartTaskProgressListener;

    .line 7
    .line 8
    invoke-direct {p1, p0, p2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask$UploadPartTaskProgressListener;-><init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask$UploadPartTaskProgressListener;

    .line 12
    .line 13
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->c:Lcom/amazonaws/services/s3/model/UploadPartRequest;

    .line 14
    .line 15
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->d:Lcom/amazonaws/services/s3/AmazonS3;

    .line 16
    .line 17
    iput-object p5, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 18
    .line 19
    return-void
.end method

.method static synthetic a()Lcom/amazonaws/logging/Log;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->f:Lcom/amazonaws/logging/Log;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic b(Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;)Lcom/amazonaws/services/s3/model/UploadPartRequest;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->c:Lcom/amazonaws/services/s3/model/UploadPartRequest;

    .line 2
    .line 3
    return-object p0
.end method

.method private d(I)J
    .locals 6

    .line 1
    const/4 v0, 0x1

    .line 2
    shl-int p1, v0, p1

    .line 3
    .line 4
    int-to-long v0, p1

    .line 5
    const-wide/16 v2, 0x3e8

    .line 6
    .line 7
    mul-long/2addr v0, v2

    .line 8
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 9
    .line 10
    .line 11
    .line 12
    .line 13
    invoke-static {}, Ljava/lang/Math;->random()D

    .line 14
    .line 15
    .line 16
    move-result-wide v4

    .line 17
    mul-double/2addr v4, v2

    .line 18
    double-to-long v2, v4

    .line 19
    add-long/2addr v0, v2

    .line 20
    return-wide v0
.end method

.method private e()V
    .locals 3

    .line 1
    new-instance v0, Lcom/amazonaws/event/ProgressEvent;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-direct {v0, v1, v2}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    .line 6
    .line 7
    .line 8
    const/16 v1, 0x20

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/amazonaws/event/ProgressEvent;->c(I)V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask$UploadPartTaskProgressListener;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask$UploadPartTaskProgressListener;->a(Lcom/amazonaws/event/ProgressEvent;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private f(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

    .line 2
    .line 3
    iput-object p1, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 4
    .line 5
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->c:Lcom/amazonaws/services/s3/model/UploadPartRequest;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->u()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0, v1, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->s(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)I

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public c()Ljava/lang/Boolean;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

    .line 2
    .line 3
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->IN_PROGRESS:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 4
    .line 5
    iput-object v1, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->c:Lcom/amazonaws/services/s3/model/UploadPartRequest;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask$UploadPartTaskProgressListener;

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/amazonaws/AmazonWebServiceRequest;->n(Lcom/amazonaws/event/ProgressListener;)V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x1

    .line 15
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->d:Lcom/amazonaws/services/s3/AmazonS3;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->c:Lcom/amazonaws/services/s3/model/UploadPartRequest;

    .line 18
    .line 19
    invoke-interface {v1, v2}, Lcom/amazonaws/services/s3/AmazonS3;->h(Lcom/amazonaws/services/s3/model/UploadPartRequest;)Lcom/amazonaws/services/s3/model/UploadPartResult;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PART_COMPLETED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 24
    .line 25
    invoke-direct {p0, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->f(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->c:Lcom/amazonaws/services/s3/model/UploadPartRequest;

    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->u()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/model/UploadPartResult;->f()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v2, v3, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->q(ILjava/lang/String;)I

    .line 41
    .line 42
    .line 43
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/amazonaws/AbortedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    return-object v0

    .line 46
    :catch_0
    move-exception v1

    .line 47
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->f:Lcom/amazonaws/logging/Log;

    .line 48
    .line 49
    new-instance v3, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    const-string v4, "Unexpected error occurred: "

    .line 55
    .line 56
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-interface {v2, v3}, Lcom/amazonaws/logging/Log;->c(Ljava/lang/Object;)V

    .line 67
    .line 68
    .line 69
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->e()V

    .line 70
    .line 71
    .line 72
    :try_start_1
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    if-eqz v3, :cond_0

    .line 77
    .line 78
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->e()Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-nez v3, :cond_0

    .line 87
    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v4, "Thread: ["

    .line 94
    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    invoke-virtual {v4}, Ljava/lang/Thread;->getId()J

    .line 103
    .line 104
    .line 105
    move-result-wide v4

    .line 106
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v4, "]: Network wasn\'t available."

    .line 110
    .line 111
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    invoke-interface {v2, v3}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->a:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

    .line 122
    .line 123
    sget-object v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 124
    .line 125
    iput-object v4, v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 126
    .line 127
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 128
    .line 129
    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->c:Lcom/amazonaws/services/s3/model/UploadPartRequest;

    .line 130
    .line 131
    invoke-virtual {v5}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->u()I

    .line 132
    .line 133
    .line 134
    move-result v5

    .line 135
    invoke-virtual {v3, v5, v4}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->s(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)I

    .line 136
    .line 137
    .line 138
    const-string v3, "Network Connection Interrupted: Moving the TransferState to WAITING_FOR_NETWORK"

    .line 139
    .line 140
    invoke-interface {v2, v3}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catch Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 144
    .line 145
    return-object v0

    .line 146
    :catch_1
    move-exception v2

    .line 147
    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->f:Lcom/amazonaws/logging/Log;

    .line 148
    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    const-string v5, "TransferUtilityException: ["

    .line 155
    .line 156
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v2, "]"

    .line 163
    .line 164
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    invoke-interface {v3, v2}, Lcom/amazonaws/logging/Log;->c(Ljava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    :cond_0
    const/4 v2, 0x3

    .line 175
    if-ge v0, v2, :cond_1

    .line 176
    .line 177
    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->d(I)J

    .line 178
    .line 179
    .line 180
    move-result-wide v2

    .line 181
    sget-object v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->f:Lcom/amazonaws/logging/Log;

    .line 182
    .line 183
    new-instance v5, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    const-string v6, "Retrying in "

    .line 189
    .line 190
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    const-string v6, " ms."

    .line 197
    .line 198
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    invoke-interface {v4, v5}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 209
    .line 210
    invoke-virtual {v5, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V

    .line 211
    .line 212
    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    .line 214
    .line 215
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 216
    .line 217
    .line 218
    const-string v3, "Retry attempt: "

    .line 219
    .line 220
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    add-int/lit8 v3, v0, 0x1

    .line 224
    .line 225
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-interface {v4, v0, v1}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 233
    .line 234
    .line 235
    move v0, v3

    .line 236
    goto/16 :goto_0

    .line 237
    .line 238
    :cond_1
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 239
    .line 240
    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->f(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 241
    .line 242
    .line 243
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->f:Lcom/amazonaws/logging/Log;

    .line 244
    .line 245
    const-string v2, "Encountered error uploading part "

    .line 246
    .line 247
    invoke-interface {v0, v2, v1}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 248
    .line 249
    .line 250
    throw v1

    .line 251
    :catch_2
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->f:Lcom/amazonaws/logging/Log;

    .line 252
    .line 253
    const-string v1, "Upload part aborted."

    .line 254
    .line 255
    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->h(Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->e()V

    .line 259
    .line 260
    .line 261
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 262
    .line 263
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;->c()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
