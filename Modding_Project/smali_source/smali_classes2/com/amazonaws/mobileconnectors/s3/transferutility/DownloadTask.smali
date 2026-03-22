.class Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;
.super Ljava/lang/Object;
.source "DownloadTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final d:Lcom/amazonaws/logging/Log;


# instance fields
.field private final a:Lcom/amazonaws/services/s3/AmazonS3;

.field private final b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

.field private final c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->d:Lcom/amazonaws/logging/Log;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->a:Lcom/amazonaws/services/s3/AmazonS3;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 9
    .line 10
    return-void
.end method

.method private b(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 6

    .line 1
    const-string v0, "got exception"

    .line 2
    .line 3
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-nez v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    .line 19
    .line 20
    .line 21
    move-result-wide v1

    .line 22
    const-wide/16 v3, 0x0

    .line 23
    .line 24
    cmp-long v1, v1, v3

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    if-lez v1, :cond_1

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move v1, v2

    .line 32
    :goto_0
    const/4 v3, 0x0

    .line 33
    :try_start_0
    new-instance v4, Ljava/io/BufferedOutputStream;

    .line 34
    .line 35
    new-instance v5, Ljava/io/FileOutputStream;

    .line 36
    .line 37
    invoke-direct {v5, p2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 38
    .line 39
    .line 40
    invoke-direct {v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41
    .line 42
    .line 43
    const/16 p2, 0x4000

    .line 44
    .line 45
    :try_start_1
    new-array p2, p2, [B

    .line 46
    .line 47
    :goto_1
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    const/4 v3, -0x1

    .line 52
    if-eq v1, v3, :cond_2

    .line 53
    .line 54
    invoke-virtual {v4, p2, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    .line 56
    .line 57
    goto :goto_1

    .line 58
    :catchall_0
    move-exception p2

    .line 59
    move-object v3, v4

    .line 60
    goto :goto_6

    .line 61
    :catch_0
    move-exception p2

    .line 62
    move-object v3, v4

    .line 63
    goto :goto_4

    .line 64
    :catch_1
    move-exception p2

    .line 65
    move-object v3, v4

    .line 66
    goto :goto_5

    .line 67
    :cond_2
    :try_start_2
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :catch_2
    move-exception p2

    .line 72
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->d:Lcom/amazonaws/logging/Log;

    .line 73
    .line 74
    invoke-interface {v1, v0, p2}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 75
    .line 76
    .line 77
    :goto_2
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 78
    .line 79
    .line 80
    goto :goto_3

    .line 81
    :catch_3
    move-exception p1

    .line 82
    sget-object p2, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->d:Lcom/amazonaws/logging/Log;

    .line 83
    .line 84
    invoke-interface {p2, v0, p1}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 85
    .line 86
    .line 87
    :goto_3
    return-void

    .line 88
    :catchall_1
    move-exception p2

    .line 89
    goto :goto_6

    .line 90
    :catch_4
    move-exception p2

    .line 91
    goto :goto_4

    .line 92
    :catch_5
    move-exception p2

    .line 93
    goto :goto_5

    .line 94
    :goto_4
    :try_start_4
    new-instance v1, Lcom/amazonaws/AmazonClientException;

    .line 95
    .line 96
    new-instance v2, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v4, "Unable to store object contents to disk: "

    .line 102
    .line 103
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-direct {v1, v2, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 118
    .line 119
    .line 120
    throw v1

    .line 121
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v2, "SocketTimeoutException: Unable to retrieve contents over network: "

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->d:Lcom/amazonaws/logging/Log;

    .line 143
    .line 144
    invoke-interface {v2, v1}, Lcom/amazonaws/logging/Log;->c(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    new-instance v2, Lcom/amazonaws/AmazonClientException;

    .line 148
    .line 149
    invoke-direct {v2, v1, p2}, Lcom/amazonaws/AmazonClientException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 150
    .line 151
    .line 152
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 153
    :goto_6
    if-eqz v3, :cond_3

    .line 154
    .line 155
    :try_start_5
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6

    .line 156
    .line 157
    .line 158
    goto :goto_7

    .line 159
    :catch_6
    move-exception v1

    .line 160
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->d:Lcom/amazonaws/logging/Log;

    .line 161
    .line 162
    invoke-interface {v2, v0, v1}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 163
    .line 164
    .line 165
    :cond_3
    :goto_7
    if-eqz p1, :cond_4

    .line 166
    .line 167
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 168
    .line 169
    .line 170
    goto :goto_8

    .line 171
    :catch_7
    move-exception p1

    .line 172
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->d:Lcom/amazonaws/logging/Log;

    .line 173
    .line 174
    invoke-interface {v1, v0, p1}, Lcom/amazonaws/logging/Log;->f(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 175
    .line 176
    .line 177
    :cond_4
    :goto_8
    throw p2
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 22

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "]"

    .line 4
    .line 5
    const-string v3, "TransferUtilityException: ["

    .line 6
    .line 7
    const-string v4, "]: Network wasn\'t available."

    .line 8
    .line 9
    const-string v5, "Thread:["

    .line 10
    .line 11
    :try_start_0
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->e()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->d:Lcom/amazonaws/logging/Log;

    .line 28
    .line 29
    new-instance v6, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 38
    .line 39
    .line 40
    move-result-object v7

    .line 41
    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    .line 42
    .line 43
    .line 44
    move-result-wide v7

    .line 45
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-interface {v0, v6}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 59
    .line 60
    iget-object v6, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 61
    .line 62
    iget v6, v6, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 63
    .line 64
    sget-object v7, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 65
    .line 66
    invoke-virtual {v0, v6, v7}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 67
    .line 68
    .line 69
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    return-object v0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    sget-object v6, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->d:Lcom/amazonaws/logging/Log;

    .line 74
    .line 75
    new-instance v7, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-interface {v6, v0}, Lcom/amazonaws/logging/Log;->c(Ljava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    :cond_0
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 97
    .line 98
    iget-object v6, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 99
    .line 100
    iget v6, v6, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 101
    .line 102
    sget-object v7, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->IN_PROGRESS:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 103
    .line 104
    invoke-virtual {v0, v6, v7}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 105
    .line 106
    .line 107
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 108
    .line 109
    iget-object v6, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 110
    .line 111
    iget v6, v6, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 112
    .line 113
    invoke-virtual {v0, v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->f(I)Lcom/amazonaws/event/ProgressListener;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    const-wide/16 v7, 0x0

    .line 118
    .line 119
    :try_start_1
    new-instance v0, Lcom/amazonaws/services/s3/model/GetObjectRequest;

    .line 120
    .line 121
    iget-object v9, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 122
    .line 123
    iget-object v10, v9, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->p:Ljava/lang/String;

    .line 124
    .line 125
    iget-object v9, v9, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->q:Ljava/lang/String;

    .line 126
    .line 127
    invoke-direct {v0, v10, v9}, Lcom/amazonaws/services/s3/model/GetObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->c(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 131
    .line 132
    .line 133
    new-instance v9, Ljava/io/File;

    .line 134
    .line 135
    iget-object v10, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 136
    .line 137
    iget-object v10, v10, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->s:Ljava/lang/String;

    .line 138
    .line 139
    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v9}, Ljava/io/File;->length()J

    .line 143
    .line 144
    .line 145
    move-result-wide v13

    .line 146
    cmp-long v10, v13, v7

    .line 147
    .line 148
    if-lez v10, :cond_1

    .line 149
    .line 150
    sget-object v10, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->d:Lcom/amazonaws/logging/Log;

    .line 151
    .line 152
    const-string v11, "Resume transfer %d from %d bytes"

    .line 153
    .line 154
    iget-object v12, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 155
    .line 156
    iget v12, v12, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 157
    .line 158
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 159
    .line 160
    .line 161
    move-result-object v12

    .line 162
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 163
    .line 164
    .line 165
    move-result-object v15

    .line 166
    filled-new-array {v12, v15}, [Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v12

    .line 170
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v11

    .line 174
    invoke-interface {v10, v11}, Lcom/amazonaws/logging/Log;->h(Ljava/lang/Object;)V

    .line 175
    .line 176
    .line 177
    const-wide/16 v10, -0x1

    .line 178
    .line 179
    invoke-virtual {v0, v13, v14, v10, v11}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->G(JJ)V

    .line 180
    .line 181
    .line 182
    goto :goto_0

    .line 183
    :catch_1
    move-exception v0

    .line 184
    move-object v9, v0

    .line 185
    goto :goto_1

    .line 186
    :cond_1
    :goto_0
    invoke-virtual {v0, v6}, Lcom/amazonaws/services/s3/model/GetObjectRequest;->n(Lcom/amazonaws/event/ProgressListener;)V

    .line 187
    .line 188
    .line 189
    iget-object v10, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->a:Lcom/amazonaws/services/s3/AmazonS3;

    .line 190
    .line 191
    invoke-interface {v10, v0}, Lcom/amazonaws/services/s3/AmazonS3;->g(Lcom/amazonaws/services/s3/model/GetObjectRequest;)Lcom/amazonaws/services/s3/model/S3Object;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    if-nez v0, :cond_2

    .line 196
    .line 197
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 198
    .line 199
    iget-object v9, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 200
    .line 201
    iget v9, v9, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 202
    .line 203
    new-instance v10, Ljava/lang/IllegalStateException;

    .line 204
    .line 205
    const-string v11, "AmazonS3.getObject returns null"

    .line 206
    .line 207
    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v0, v9, v10}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->i(ILjava/lang/Exception;)V

    .line 211
    .line 212
    .line 213
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 214
    .line 215
    iget-object v9, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 216
    .line 217
    iget v9, v9, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 218
    .line 219
    sget-object v10, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 220
    .line 221
    invoke-virtual {v0, v9, v10}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 222
    .line 223
    .line 224
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 225
    .line 226
    return-object v0

    .line 227
    :cond_2
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->q()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 228
    .line 229
    .line 230
    move-result-object v10

    .line 231
    invoke-virtual {v10}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->D()J

    .line 232
    .line 233
    .line 234
    move-result-wide v19

    .line 235
    iget-object v11, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 236
    .line 237
    iget-object v10, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 238
    .line 239
    iget v12, v10, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 240
    .line 241
    const/16 v17, 0x1

    .line 242
    .line 243
    move-wide/from16 v15, v19

    .line 244
    .line 245
    invoke-virtual/range {v11 .. v17}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->k(IJJZ)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/S3Object;->k()Lcom/amazonaws/services/s3/model/S3ObjectInputStream;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-direct {v1, v0, v9}, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->b(Ljava/io/InputStream;Ljava/io/File;)V

    .line 253
    .line 254
    .line 255
    iget-object v15, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 256
    .line 257
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 258
    .line 259
    iget v0, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 260
    .line 261
    const/16 v21, 0x1

    .line 262
    .line 263
    move/from16 v16, v0

    .line 264
    .line 265
    move-wide/from16 v17, v19

    .line 266
    .line 267
    invoke-virtual/range {v15 .. v21}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->k(IJJZ)V

    .line 268
    .line 269
    .line 270
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 271
    .line 272
    iget-object v9, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 273
    .line 274
    iget v9, v9, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 275
    .line 276
    sget-object v10, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->COMPLETED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 277
    .line 278
    invoke-virtual {v0, v9, v10}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 279
    .line 280
    .line 281
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 282
    .line 283
    return-object v0

    .line 284
    :goto_1
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_CANCEL:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 285
    .line 286
    iget-object v10, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 287
    .line 288
    iget-object v10, v10, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->o:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 289
    .line 290
    invoke-virtual {v0, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 291
    .line 292
    .line 293
    move-result v0

    .line 294
    const-string v10, "Transfer is "

    .line 295
    .line 296
    if-eqz v0, :cond_3

    .line 297
    .line 298
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 299
    .line 300
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 301
    .line 302
    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 303
    .line 304
    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->CANCELED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 305
    .line 306
    invoke-virtual {v0, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 307
    .line 308
    .line 309
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->d:Lcom/amazonaws/logging/Log;

    .line 310
    .line 311
    new-instance v2, Ljava/lang/StringBuilder;

    .line 312
    .line 313
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 314
    .line 315
    .line 316
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 320
    .line 321
    .line 322
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    invoke-interface {v0, v2}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    .line 327
    .line 328
    .line 329
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 330
    .line 331
    return-object v0

    .line 332
    :cond_3
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_PAUSE:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 333
    .line 334
    iget-object v11, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 335
    .line 336
    iget-object v11, v11, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->o:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 337
    .line 338
    invoke-virtual {v0, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 339
    .line 340
    .line 341
    move-result v0

    .line 342
    const/16 v11, 0x20

    .line 343
    .line 344
    if-eqz v0, :cond_4

    .line 345
    .line 346
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 347
    .line 348
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 349
    .line 350
    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 351
    .line 352
    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PAUSED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 353
    .line 354
    invoke-virtual {v0, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 355
    .line 356
    .line 357
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->d:Lcom/amazonaws/logging/Log;

    .line 358
    .line 359
    new-instance v2, Ljava/lang/StringBuilder;

    .line 360
    .line 361
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    .line 363
    .line 364
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v2

    .line 374
    invoke-interface {v0, v2}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    .line 375
    .line 376
    .line 377
    new-instance v0, Lcom/amazonaws/event/ProgressEvent;

    .line 378
    .line 379
    invoke-direct {v0, v7, v8}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    .line 380
    .line 381
    .line 382
    invoke-virtual {v0, v11}, Lcom/amazonaws/event/ProgressEvent;->c(I)V

    .line 383
    .line 384
    .line 385
    new-instance v0, Lcom/amazonaws/event/ProgressEvent;

    .line 386
    .line 387
    invoke-direct {v0, v7, v8}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    .line 388
    .line 389
    .line 390
    invoke-interface {v6, v0}, Lcom/amazonaws/event/ProgressListener;->a(Lcom/amazonaws/event/ProgressEvent;)V

    .line 391
    .line 392
    .line 393
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 394
    .line 395
    return-object v0

    .line 396
    :cond_4
    :try_start_2
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 397
    .line 398
    .line 399
    move-result-object v0

    .line 400
    if-eqz v0, :cond_5

    .line 401
    .line 402
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 403
    .line 404
    .line 405
    move-result-object v0

    .line 406
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->e()Z

    .line 407
    .line 408
    .line 409
    move-result v0

    .line 410
    if-nez v0, :cond_5

    .line 411
    .line 412
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->d:Lcom/amazonaws/logging/Log;

    .line 413
    .line 414
    new-instance v10, Ljava/lang/StringBuilder;

    .line 415
    .line 416
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 423
    .line 424
    .line 425
    move-result-object v5

    .line 426
    invoke-virtual {v5}, Ljava/lang/Thread;->getId()J

    .line 427
    .line 428
    .line 429
    move-result-wide v12

    .line 430
    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    .line 435
    .line 436
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v4

    .line 440
    invoke-interface {v0, v4}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    .line 441
    .line 442
    .line 443
    iget-object v4, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 444
    .line 445
    iget-object v5, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 446
    .line 447
    iget v5, v5, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 448
    .line 449
    sget-object v10, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 450
    .line 451
    invoke-virtual {v4, v5, v10}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 452
    .line 453
    .line 454
    const-string v4, "Network Connection Interrupted: Moving the TransferState to WAITING_FOR_NETWORK"

    .line 455
    .line 456
    invoke-interface {v0, v4}, Lcom/amazonaws/logging/Log;->h(Ljava/lang/Object;)V

    .line 457
    .line 458
    .line 459
    new-instance v0, Lcom/amazonaws/event/ProgressEvent;

    .line 460
    .line 461
    invoke-direct {v0, v7, v8}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    .line 462
    .line 463
    .line 464
    invoke-virtual {v0, v11}, Lcom/amazonaws/event/ProgressEvent;->c(I)V

    .line 465
    .line 466
    .line 467
    new-instance v0, Lcom/amazonaws/event/ProgressEvent;

    .line 468
    .line 469
    invoke-direct {v0, v7, v8}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    .line 470
    .line 471
    .line 472
    invoke-interface {v6, v0}, Lcom/amazonaws/event/ProgressListener;->a(Lcom/amazonaws/event/ProgressEvent;)V

    .line 473
    .line 474
    .line 475
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_2
    .catch Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityException; {:try_start_2 .. :try_end_2} :catch_2

    .line 476
    .line 477
    return-object v0

    .line 478
    :catch_2
    move-exception v0

    .line 479
    sget-object v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->d:Lcom/amazonaws/logging/Log;

    .line 480
    .line 481
    new-instance v5, Ljava/lang/StringBuilder;

    .line 482
    .line 483
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 484
    .line 485
    .line 486
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 487
    .line 488
    .line 489
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 490
    .line 491
    .line 492
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    invoke-interface {v4, v0}, Lcom/amazonaws/logging/Log;->c(Ljava/lang/Object;)V

    .line 500
    .line 501
    .line 502
    :cond_5
    invoke-static {v9}, Lcom/amazonaws/retry/RetryUtils;->b(Ljava/lang/Throwable;)Z

    .line 503
    .line 504
    .line 505
    move-result v0

    .line 506
    if-eqz v0, :cond_6

    .line 507
    .line 508
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->d:Lcom/amazonaws/logging/Log;

    .line 509
    .line 510
    new-instance v2, Ljava/lang/StringBuilder;

    .line 511
    .line 512
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 513
    .line 514
    .line 515
    const-string v3, "Transfer is interrupted. "

    .line 516
    .line 517
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    .line 519
    .line 520
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 524
    .line 525
    .line 526
    move-result-object v2

    .line 527
    invoke-interface {v0, v2}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    .line 528
    .line 529
    .line 530
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 531
    .line 532
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 533
    .line 534
    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 535
    .line 536
    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 537
    .line 538
    invoke-virtual {v0, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 539
    .line 540
    .line 541
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 542
    .line 543
    return-object v0

    .line 544
    :cond_6
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->d:Lcom/amazonaws/logging/Log;

    .line 545
    .line 546
    new-instance v2, Ljava/lang/StringBuilder;

    .line 547
    .line 548
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 549
    .line 550
    .line 551
    const-string v3, "Failed to download: "

    .line 552
    .line 553
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    .line 555
    .line 556
    iget-object v3, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 557
    .line 558
    iget v3, v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 559
    .line 560
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 561
    .line 562
    .line 563
    const-string v3, " due to "

    .line 564
    .line 565
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    invoke-virtual {v9}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 569
    .line 570
    .line 571
    move-result-object v3

    .line 572
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 576
    .line 577
    .line 578
    move-result-object v2

    .line 579
    invoke-interface {v0, v2}, Lcom/amazonaws/logging/Log;->h(Ljava/lang/Object;)V

    .line 580
    .line 581
    .line 582
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 583
    .line 584
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 585
    .line 586
    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 587
    .line 588
    invoke-virtual {v0, v2, v9}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->i(ILjava/lang/Exception;)V

    .line 589
    .line 590
    .line 591
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 592
    .line 593
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 594
    .line 595
    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 596
    .line 597
    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 598
    .line 599
    invoke-virtual {v0, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 600
    .line 601
    .line 602
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 603
    .line 604
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
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/DownloadTask;->a()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
