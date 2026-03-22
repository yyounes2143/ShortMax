.class Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;
.super Ljava/lang/Object;
.source "UploadTask.java"

# interfaces
.implements Lcom/amazonaws/event/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UploadTaskProgressListener"
.end annotation


# instance fields
.field private a:J

.field private final b:J

.field final synthetic c:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;


# direct methods
.method constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-wide p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;->a:J

    .line 7
    .line 8
    iput-wide p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;->b:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/event/ProgressEvent;)V
    .locals 0

    .line 1
    return-void
.end method

.method public declared-synchronized b(IJ)V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;

    .line 3
    .line 4
    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->e:Ljava/util/Map;

    .line 5
    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    check-cast p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b()Lcom/amazonaws/logging/Log;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    const-string p2, "Update received for unknown part. Ignoring."

    .line 23
    .line 24
    invoke-interface {p1, p2}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    .line 26
    .line 27
    monitor-exit p0

    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception p1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    :try_start_1
    iput-wide p2, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->c:J

    .line 32
    .line 33
    iget-wide p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;->b:J

    .line 34
    .line 35
    iget-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;

    .line 36
    .line 37
    iget-object p3, p3, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->e:Ljava/util/Map;

    .line 38
    .line 39
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 40
    .line 41
    .line 42
    move-result-object p3

    .line 43
    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Ljava/util/Map$Entry;

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    check-cast v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

    .line 64
    .line 65
    iget-wide v0, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->c:J

    .line 66
    .line 67
    add-long/2addr p1, v0

    .line 68
    goto :goto_0

    .line 69
    :cond_1
    iget-wide v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;->a:J

    .line 70
    .line 71
    cmp-long p3, p1, v0

    .line 72
    .line 73
    if-lez p3, :cond_2

    .line 74
    .line 75
    iget-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;

    .line 76
    .line 77
    invoke-static {p3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->c(Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    iget-wide v0, p3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->h:J

    .line 82
    .line 83
    cmp-long p3, p1, v0

    .line 84
    .line 85
    if-gtz p3, :cond_2

    .line 86
    .line 87
    iget-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;

    .line 88
    .line 89
    invoke-static {p3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d(Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;

    .line 94
    .line 95
    invoke-static {p3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->c(Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    iget v1, p3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 100
    .line 101
    iget-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;

    .line 102
    .line 103
    invoke-static {p3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->c(Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 104
    .line 105
    .line 106
    move-result-object p3

    .line 107
    iget-wide v4, p3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->h:J

    .line 108
    .line 109
    const/4 v6, 0x1

    .line 110
    move-wide v2, p1

    .line 111
    invoke-virtual/range {v0 .. v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->k(IJJZ)V

    .line 112
    .line 113
    .line 114
    iput-wide p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;->a:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 115
    .line 116
    :cond_2
    monitor-exit p0

    .line 117
    return-void

    .line 118
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 119
    throw p1
.end method
