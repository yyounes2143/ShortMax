.class Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;
.super Ljava/lang/Object;
.source "UploadTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;,
        Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;
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
.field private static final g:Lcom/amazonaws/logging/Log;

.field private static final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/amazonaws/services/s3/model/CannedAccessControlList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/amazonaws/services/s3/AmazonS3;

.field private final b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

.field private final c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

.field private final d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

.field e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amazonaws/services/s3/model/UploadPartRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    const-class v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/amazonaws/logging/LogFactory;->b(Ljava/lang/Class;)Lcom/amazonaws/logging/Log;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 8
    .line 9
    new-instance v0, Ljava/util/HashMap;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->h:Ljava/util/Map;

    .line 15
    .line 16
    invoke-static {}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->values()[Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    array-length v1, v0

    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_0
    if-ge v2, v1, :cond_0

    .line 23
    .line 24
    aget-object v3, v0, v2

    .line 25
    .line 26
    sget-object v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->h:Ljava/util/Map;

    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/amazonaws/services/s3/model/CannedAccessControlList;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v5

    .line 32
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->a:Lcom/amazonaws/services/s3/AmazonS3;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 11
    .line 12
    new-instance p1, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->e:Ljava/util/Map;

    .line 18
    .line 19
    return-void
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 2
    .line 3
    const-string v1, "Aborting the multipart since complete multipart failed."

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->a:Lcom/amazonaws/services/s3/AmazonS3;

    .line 9
    .line 10
    new-instance v2, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;

    .line 11
    .line 12
    invoke-direct {v2, p2, p3, p4}, Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-interface {v1, v2}, Lcom/amazonaws/services/s3/AmazonS3;->o(Lcom/amazonaws/services/s3/model/AbortMultipartUploadRequest;)V

    .line 16
    .line 17
    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string p3, "Successfully aborted multipart upload: "

    .line 24
    .line 25
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    invoke-interface {v0, p2}, Lcom/amazonaws/logging/Log;->h(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catch_0
    move-exception p2

    .line 40
    sget-object p3, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 41
    .line 42
    new-instance p4, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v0, "Failed to abort the multipart upload: "

    .line 48
    .line 49
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-interface {p3, p1, p2}, Lcom/amazonaws/logging/Log;->d(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 60
    .line 61
    .line 62
    :goto_0
    return-void
.end method

.method static synthetic b()Lcom/amazonaws/logging/Log;
    .locals 1

    .line 1
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic c(Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 2
    .line 3
    return-object p0
.end method

.method private f(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amazonaws/AmazonClientException;,
            Lcom/amazonaws/AmazonServiceException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->m(I)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    new-instance v0, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;

    .line 8
    .line 9
    invoke-direct {v0, p2, p3, p4, p1}, Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->b(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->a:Lcom/amazonaws/services/s3/AmazonS3;

    .line 16
    .line 17
    invoke-interface {p1, v0}, Lcom/amazonaws/services/s3/AmazonS3;->k(Lcom/amazonaws/services/s3/model/CompleteMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/CompleteMultipartUploadResult;

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private g(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)Lcom/amazonaws/services/s3/model/PutObjectRequest;
    .locals 11

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->s:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 9
    .line 10
    iget-object v2, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->p:Ljava/lang/String;

    .line 11
    .line 12
    iget-object v3, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->q:Ljava/lang/String;

    .line 13
    .line 14
    invoke-direct {v1, v2, v3, v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)V

    .line 15
    .line 16
    .line 17
    new-instance v2, Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 18
    .line 19
    invoke-direct {v2}, Lcom/amazonaws/services/s3/model/ObjectMetadata;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 23
    .line 24
    .line 25
    move-result-wide v3

    .line 26
    invoke-virtual {v2, v3, v4}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->S(J)V

    .line 27
    .line 28
    .line 29
    iget-object v3, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->z:Ljava/lang/String;

    .line 30
    .line 31
    if-eqz v3, :cond_0

    .line 32
    .line 33
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->O(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    iget-object v3, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->x:Ljava/lang/String;

    .line 37
    .line 38
    if-eqz v3, :cond_1

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->P(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object v3, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->y:Ljava/lang/String;

    .line 44
    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->Q(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object v3, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->v:Ljava/lang/String;

    .line 51
    .line 52
    if-eqz v3, :cond_3

    .line 53
    .line 54
    invoke-virtual {v2, v3}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->V(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    invoke-static {}, Lcom/amazonaws/services/s3/util/Mimetypes;->a()Lcom/amazonaws/services/s3/util/Mimetypes;

    .line 59
    .line 60
    .line 61
    move-result-object v3

    .line 62
    invoke-virtual {v3, v0}, Lcom/amazonaws/services/s3/util/Mimetypes;->b(Ljava/io/File;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v2, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->V(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    :goto_0
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->B:Ljava/lang/String;

    .line 70
    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->O(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_4
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->D:Ljava/lang/String;

    .line 77
    .line 78
    if-eqz v0, :cond_5

    .line 79
    .line 80
    invoke-virtual {v2, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->i(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_5
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->E:Ljava/lang/String;

    .line 84
    .line 85
    if-eqz v0, :cond_6

    .line 86
    .line 87
    new-instance v0, Ljava/util/Date;

    .line 88
    .line 89
    iget-object v3, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->E:Ljava/lang/String;

    .line 90
    .line 91
    invoke-static {v3}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 96
    .line 97
    .line 98
    move-result-wide v3

    .line 99
    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->X(Ljava/util/Date;)V

    .line 103
    .line 104
    .line 105
    :cond_6
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->F:Ljava/lang/String;

    .line 106
    .line 107
    if-eqz v0, :cond_7

    .line 108
    .line 109
    invoke-virtual {v2, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->e(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_7
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->C:Ljava/util/Map;

    .line 113
    .line 114
    if-eqz v0, :cond_b

    .line 115
    .line 116
    invoke-virtual {v2, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->Y(Ljava/util/Map;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->C:Ljava/util/Map;

    .line 120
    .line 121
    const-string/jumbo v3, "x-amz-tagging"

    .line 122
    .line 123
    .line 124
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Ljava/lang/String;

    .line 129
    .line 130
    if-eqz v0, :cond_9

    .line 131
    .line 132
    :try_start_0
    const-string v3, "&"

    .line 133
    .line 134
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    new-instance v3, Ljava/util/ArrayList;

    .line 139
    .line 140
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 141
    .line 142
    .line 143
    array-length v4, v0

    .line 144
    const/4 v5, 0x0

    .line 145
    move v6, v5

    .line 146
    :goto_1
    if-ge v6, v4, :cond_8

    .line 147
    .line 148
    aget-object v7, v0, v6

    .line 149
    .line 150
    const-string v8, "="

    .line 151
    .line 152
    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v7

    .line 156
    new-instance v8, Lcom/amazonaws/services/s3/model/Tag;

    .line 157
    .line 158
    aget-object v9, v7, v5

    .line 159
    .line 160
    const/4 v10, 0x1

    .line 161
    aget-object v7, v7, v10

    .line 162
    .line 163
    invoke-direct {v8, v9, v7}, Lcom/amazonaws/services/s3/model/Tag;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    add-int/lit8 v6, v6, 0x1

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    goto :goto_2

    .line 174
    :cond_8
    new-instance v0, Lcom/amazonaws/services/s3/model/ObjectTagging;

    .line 175
    .line 176
    invoke-direct {v0, v3}, Lcom/amazonaws/services/s3/model/ObjectTagging;-><init>(Ljava/util/List;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->P(Lcom/amazonaws/services/s3/model/ObjectTagging;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    .line 181
    .line 182
    goto :goto_3

    .line 183
    :goto_2
    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 184
    .line 185
    const-string v4, "Error in passing the object tags as request headers."

    .line 186
    .line 187
    invoke-interface {v3, v4, v0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 188
    .line 189
    .line 190
    :cond_9
    :goto_3
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->C:Ljava/util/Map;

    .line 191
    .line 192
    const-string/jumbo v3, "x-amz-website-redirect-location"

    .line 193
    .line 194
    .line 195
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v0

    .line 199
    check-cast v0, Ljava/lang/String;

    .line 200
    .line 201
    if-eqz v0, :cond_a

    .line 202
    .line 203
    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->L(Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    :cond_a
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->C:Ljava/util/Map;

    .line 207
    .line 208
    const-string/jumbo v3, "x-amz-request-payer"

    .line 209
    .line 210
    .line 211
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v0

    .line 215
    check-cast v0, Ljava/lang/String;

    .line 216
    .line 217
    if-eqz v0, :cond_b

    .line 218
    .line 219
    const-string v3, "requester"

    .line 220
    .line 221
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    invoke-virtual {v1, v0}, Lcom/amazonaws/services/s3/model/PutObjectRequest;->l0(Z)V

    .line 226
    .line 227
    .line 228
    :cond_b
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->H:Ljava/lang/String;

    .line 229
    .line 230
    if-eqz v0, :cond_c

    .line 231
    .line 232
    invoke-virtual {v2, v0}, Lcom/amazonaws/services/s3/model/ObjectMetadata;->U(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    :cond_c
    iget-object v0, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->G:Ljava/lang/String;

    .line 236
    .line 237
    if-eqz v0, :cond_d

    .line 238
    .line 239
    new-instance v3, Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    .line 240
    .line 241
    invoke-direct {v3, v0}, Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;-><init>(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v1, v3}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->M(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)V

    .line 245
    .line 246
    .line 247
    :cond_d
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->K(Lcom/amazonaws/services/s3/model/ObjectMetadata;)V

    .line 248
    .line 249
    .line 250
    iget-object p1, p1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->I:Ljava/lang/String;

    .line 251
    .line 252
    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->h(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .line 253
    .line 254
    .line 255
    move-result-object p1

    .line 256
    invoke-virtual {v1, p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->I(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)V

    .line 257
    .line 258
    .line 259
    return-object v1
.end method

.method private static h(Ljava/lang/String;)Lcom/amazonaws/services/s3/model/CannedAccessControlList;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->h:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .line 12
    .line 13
    :goto_0
    return-object p0
.end method

.method private i(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->u()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->A()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v0, v1, v2}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->v()Lcom/amazonaws/services/s3/model/CannedAccessControlList;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->G(Lcom/amazonaws/services/s3/model/CannedAccessControlList;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->B()Lcom/amazonaws/services/s3/model/ObjectMetadata;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->H(Lcom/amazonaws/services/s3/model/ObjectMetadata;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->D()Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->I(Lcom/amazonaws/services/s3/model/SSEAwsKeyManagementParams;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->G()Lcom/amazonaws/services/s3/model/ObjectTagging;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v0, p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;->J(Lcom/amazonaws/services/s3/model/ObjectTagging;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-static {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->b(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->a:Lcom/amazonaws/services/s3/AmazonS3;

    .line 50
    .line 51
    invoke-interface {v0, p1}, Lcom/amazonaws/services/s3/AmazonS3;->l(Lcom/amazonaws/services/s3/model/InitiateMultipartUploadRequest;)Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/amazonaws/services/s3/model/InitiateMultipartUploadResult;->f()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    return-object p1
.end method

.method private j()Ljava/lang/Boolean;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

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
    const-string v4, "Network not connected. Setting the state to WAITING_FOR_NETWORK."

    .line 8
    .line 9
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->t:Ljava/lang/String;

    .line 12
    .line 13
    const-string v5, " due to "

    .line 14
    .line 15
    const-wide/16 v6, 0x0

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 27
    .line 28
    iget-object v8, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 29
    .line 30
    iget v8, v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 31
    .line 32
    invoke-virtual {v0, v8}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->l(I)J

    .line 33
    .line 34
    .line 35
    move-result-wide v8

    .line 36
    cmp-long v0, v8, v6

    .line 37
    .line 38
    if-lez v0, :cond_1

    .line 39
    .line 40
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 41
    .line 42
    iget-object v10, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 43
    .line 44
    iget v10, v10, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 45
    .line 46
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    .line 48
    .line 49
    move-result-object v10

    .line 50
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 51
    .line 52
    .line 53
    move-result-object v11

    .line 54
    filled-new-array {v10, v11}, [Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v10

    .line 58
    const-string v11, "Resume transfer %d from %d bytes"

    .line 59
    .line 60
    invoke-static {v11, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v10

    .line 64
    invoke-interface {v0, v10}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    .line 65
    .line 66
    .line 67
    :cond_1
    move-wide v12, v8

    .line 68
    goto :goto_1

    .line 69
    :cond_2
    :goto_0
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 70
    .line 71
    invoke-direct {v1, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->b(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 76
    .line 77
    .line 78
    :try_start_0
    iget-object v8, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 79
    .line 80
    invoke-direct {v1, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->i(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iput-object v0, v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->t:Ljava/lang/String;
    :try_end_0
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_0 .. :try_end_0} :catch_4

    .line 85
    .line 86
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 87
    .line 88
    iget-object v8, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 89
    .line 90
    iget v9, v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 91
    .line 92
    iget-object v8, v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->t:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v0, v9, v8}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->r(ILjava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-wide v12, v6

    .line 98
    :goto_1
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;

    .line 99
    .line 100
    invoke-direct {v0, v1, v12, v13}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;-><init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;J)V

    .line 101
    .line 102
    .line 103
    iget-object v10, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 104
    .line 105
    iget-object v8, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 106
    .line 107
    iget v11, v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 108
    .line 109
    iget-wide v14, v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->h:J

    .line 110
    .line 111
    const/16 v16, 0x0

    .line 112
    .line 113
    invoke-virtual/range {v10 .. v16}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->k(IJJZ)V

    .line 114
    .line 115
    .line 116
    iget-object v8, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 117
    .line 118
    iget-object v9, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 119
    .line 120
    iget v10, v9, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 121
    .line 122
    iget-object v9, v9, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->t:Ljava/lang/String;

    .line 123
    .line 124
    invoke-virtual {v8, v10, v9}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;->g(ILjava/lang/String;)Ljava/util/List;

    .line 125
    .line 126
    .line 127
    move-result-object v8

    .line 128
    iput-object v8, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->f:Ljava/util/List;

    .line 129
    .line 130
    sget-object v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 131
    .line 132
    new-instance v9, Ljava/lang/StringBuilder;

    .line 133
    .line 134
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    .line 136
    .line 137
    const-string v10, "Multipart upload "

    .line 138
    .line 139
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    iget-object v10, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 143
    .line 144
    iget v10, v10, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 145
    .line 146
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    const-string v10, " in "

    .line 150
    .line 151
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    iget-object v10, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->f:Ljava/util/List;

    .line 155
    .line 156
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 157
    .line 158
    .line 159
    move-result v10

    .line 160
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v10, " parts."

    .line 164
    .line 165
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v9

    .line 172
    invoke-interface {v8, v9}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    .line 173
    .line 174
    .line 175
    iget-object v8, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->f:Ljava/util/List;

    .line 176
    .line 177
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 178
    .line 179
    .line 180
    move-result-object v8

    .line 181
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 182
    .line 183
    .line 184
    move-result v9

    .line 185
    if-eqz v9, :cond_3

    .line 186
    .line 187
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    move-result-object v9

    .line 191
    check-cast v9, Lcom/amazonaws/services/s3/model/UploadPartRequest;

    .line 192
    .line 193
    invoke-static {v9}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->b(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 194
    .line 195
    .line 196
    new-instance v10, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

    .line 197
    .line 198
    invoke-direct {v10, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;-><init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;)V

    .line 199
    .line 200
    .line 201
    iput-object v9, v10, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->a:Lcom/amazonaws/services/s3/model/UploadPartRequest;

    .line 202
    .line 203
    iput-wide v6, v10, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->c:J

    .line 204
    .line 205
    sget-object v11, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 206
    .line 207
    iput-object v11, v10, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 208
    .line 209
    iget-object v11, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->e:Ljava/util/Map;

    .line 210
    .line 211
    invoke-virtual {v9}, Lcom/amazonaws/services/s3/model/UploadPartRequest;->B()I

    .line 212
    .line 213
    .line 214
    move-result v12

    .line 215
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 216
    .line 217
    .line 218
    move-result-object v12

    .line 219
    invoke-interface {v11, v12, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    new-instance v11, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;

    .line 223
    .line 224
    iget-object v12, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->a:Lcom/amazonaws/services/s3/AmazonS3;

    .line 225
    .line 226
    iget-object v13, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;

    .line 227
    .line 228
    move-object v14, v11

    .line 229
    move-object v15, v10

    .line 230
    move-object/from16 v16, v0

    .line 231
    .line 232
    move-object/from16 v17, v9

    .line 233
    .line 234
    move-object/from16 v18, v12

    .line 235
    .line 236
    move-object/from16 v19, v13

    .line 237
    .line 238
    invoke-direct/range {v14 .. v19}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadPartTask;-><init>(Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadTaskProgressListener;Lcom/amazonaws/services/s3/model/UploadPartRequest;Lcom/amazonaws/services/s3/AmazonS3;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferDBUtil;)V

    .line 239
    .line 240
    .line 241
    invoke-static {v11}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferThreadPool;->c(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 242
    .line 243
    .line 244
    move-result-object v9

    .line 245
    iput-object v9, v10, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->b:Ljava/util/concurrent/Future;

    .line 246
    .line 247
    goto :goto_2

    .line 248
    :cond_3
    const/4 v6, 0x1

    .line 249
    :try_start_1
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->e:Ljava/util/Map;

    .line 250
    .line 251
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    move v7, v6

    .line 260
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 261
    .line 262
    .line 263
    move-result v8

    .line 264
    if-eqz v8, :cond_4

    .line 265
    .line 266
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v8

    .line 270
    check-cast v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

    .line 271
    .line 272
    iget-object v8, v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->b:Ljava/util/concurrent/Future;

    .line 273
    .line 274
    invoke-interface {v8}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    .line 275
    .line 276
    .line 277
    move-result-object v8

    .line 278
    check-cast v8, Ljava/lang/Boolean;

    .line 279
    .line 280
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    .line 281
    .line 282
    .line 283
    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 284
    and-int/2addr v7, v8

    .line 285
    goto :goto_3

    .line 286
    :catch_0
    move-exception v0

    .line 287
    move-object v7, v0

    .line 288
    goto/16 :goto_4

    .line 289
    .line 290
    :cond_4
    if-nez v7, :cond_5

    .line 291
    .line 292
    :try_start_2
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 293
    .line 294
    .line 295
    move-result-object v0

    .line 296
    if-eqz v0, :cond_5

    .line 297
    .line 298
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->e()Z

    .line 303
    .line 304
    .line 305
    move-result v0

    .line 306
    if-nez v0, :cond_5

    .line 307
    .line 308
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 309
    .line 310
    invoke-interface {v0, v4}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    .line 311
    .line 312
    .line 313
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 314
    .line 315
    iget-object v7, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 316
    .line 317
    iget v7, v7, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 318
    .line 319
    sget-object v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 320
    .line 321
    invoke-virtual {v0, v7, v8}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 322
    .line 323
    .line 324
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_2
    .catch Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 325
    .line 326
    return-object v0

    .line 327
    :catch_1
    move-exception v0

    .line 328
    :try_start_3
    sget-object v7, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 329
    .line 330
    new-instance v8, Ljava/lang/StringBuilder;

    .line 331
    .line 332
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 333
    .line 334
    .line 335
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    .line 337
    .line 338
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 339
    .line 340
    .line 341
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    invoke-interface {v7, v0}, Lcom/amazonaws/logging/Log;->c(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 349
    .line 350
    .line 351
    :cond_5
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 352
    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 356
    .line 357
    .line 358
    const-string v3, "Completing the multi-part upload transfer for "

    .line 359
    .line 360
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    iget-object v3, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 364
    .line 365
    iget v3, v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 366
    .line 367
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    :try_start_4
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 378
    .line 379
    iget v2, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 380
    .line 381
    iget-object v3, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->p:Ljava/lang/String;

    .line 382
    .line 383
    iget-object v4, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->q:Ljava/lang/String;

    .line 384
    .line 385
    iget-object v0, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->t:Ljava/lang/String;

    .line 386
    .line 387
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->f(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    .line 389
    .line 390
    iget-object v6, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 391
    .line 392
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 393
    .line 394
    iget v7, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 395
    .line 396
    iget-wide v10, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->h:J

    .line 397
    .line 398
    const/4 v12, 0x1

    .line 399
    move-wide v8, v10

    .line 400
    invoke-virtual/range {v6 .. v12}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->k(IJJZ)V

    .line 401
    .line 402
    .line 403
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 404
    .line 405
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 406
    .line 407
    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 408
    .line 409
    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->COMPLETED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 410
    .line 411
    invoke-virtual {v0, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 412
    .line 413
    .line 414
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_4
    .catch Lcom/amazonaws/AmazonClientException; {:try_start_4 .. :try_end_4} :catch_2

    .line 415
    .line 416
    return-object v0

    .line 417
    :catch_2
    move-exception v0

    .line 418
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 419
    .line 420
    new-instance v3, Ljava/lang/StringBuilder;

    .line 421
    .line 422
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 423
    .line 424
    .line 425
    const-string v4, "Failed to complete multipart: "

    .line 426
    .line 427
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    .line 429
    .line 430
    iget-object v4, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 431
    .line 432
    iget v4, v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 433
    .line 434
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v4

    .line 444
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v3

    .line 451
    invoke-interface {v2, v3, v0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 452
    .line 453
    .line 454
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 455
    .line 456
    iget v3, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 457
    .line 458
    iget-object v4, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->p:Ljava/lang/String;

    .line 459
    .line 460
    iget-object v5, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->q:Ljava/lang/String;

    .line 461
    .line 462
    iget-object v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->t:Ljava/lang/String;

    .line 463
    .line 464
    invoke-direct {v1, v3, v4, v5, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    .line 466
    .line 467
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 468
    .line 469
    iget-object v3, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 470
    .line 471
    iget v3, v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 472
    .line 473
    invoke-virtual {v2, v3, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->i(ILjava/lang/Exception;)V

    .line 474
    .line 475
    .line 476
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 477
    .line 478
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 479
    .line 480
    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 481
    .line 482
    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 483
    .line 484
    invoke-virtual {v0, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 485
    .line 486
    .line 487
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 488
    .line 489
    return-object v0

    .line 490
    :goto_4
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 491
    .line 492
    new-instance v8, Ljava/lang/StringBuilder;

    .line 493
    .line 494
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 495
    .line 496
    .line 497
    const-string v9, "Upload resulted in an exception. "

    .line 498
    .line 499
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 500
    .line 501
    .line 502
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 503
    .line 504
    .line 505
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 506
    .line 507
    .line 508
    move-result-object v8

    .line 509
    invoke-interface {v0, v8}, Lcom/amazonaws/logging/Log;->c(Ljava/lang/Object;)V

    .line 510
    .line 511
    .line 512
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->e:Ljava/util/Map;

    .line 513
    .line 514
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 515
    .line 516
    .line 517
    move-result-object v0

    .line 518
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 519
    .line 520
    .line 521
    move-result-object v0

    .line 522
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 523
    .line 524
    .line 525
    move-result v8

    .line 526
    if-eqz v8, :cond_6

    .line 527
    .line 528
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object v8

    .line 532
    check-cast v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

    .line 533
    .line 534
    iget-object v8, v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->b:Ljava/util/concurrent/Future;

    .line 535
    .line 536
    invoke-interface {v8, v6}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 537
    .line 538
    .line 539
    goto :goto_5

    .line 540
    :cond_6
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_CANCEL:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 541
    .line 542
    iget-object v6, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 543
    .line 544
    iget-object v6, v6, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->o:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 545
    .line 546
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 547
    .line 548
    .line 549
    move-result v0

    .line 550
    const-string v6, "Transfer is "

    .line 551
    .line 552
    if-eqz v0, :cond_7

    .line 553
    .line 554
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 555
    .line 556
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 557
    .line 558
    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 559
    .line 560
    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->CANCELED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 561
    .line 562
    invoke-virtual {v0, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 563
    .line 564
    .line 565
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 566
    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    .line 568
    .line 569
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 570
    .line 571
    .line 572
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 573
    .line 574
    .line 575
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v2

    .line 582
    invoke-interface {v0, v2}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    .line 583
    .line 584
    .line 585
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 586
    .line 587
    return-object v0

    .line 588
    :cond_7
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_PAUSE:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 589
    .line 590
    iget-object v8, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 591
    .line 592
    iget-object v8, v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->o:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 593
    .line 594
    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 595
    .line 596
    .line 597
    move-result v0

    .line 598
    if-eqz v0, :cond_8

    .line 599
    .line 600
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 601
    .line 602
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 603
    .line 604
    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 605
    .line 606
    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PAUSED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 607
    .line 608
    invoke-virtual {v0, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 609
    .line 610
    .line 611
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 612
    .line 613
    new-instance v2, Ljava/lang/StringBuilder;

    .line 614
    .line 615
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 619
    .line 620
    .line 621
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 622
    .line 623
    .line 624
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 625
    .line 626
    .line 627
    move-result-object v2

    .line 628
    invoke-interface {v0, v2}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    .line 629
    .line 630
    .line 631
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 632
    .line 633
    return-object v0

    .line 634
    :cond_8
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->e:Ljava/util/Map;

    .line 635
    .line 636
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 637
    .line 638
    .line 639
    move-result-object v0

    .line 640
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 641
    .line 642
    .line 643
    move-result-object v0

    .line 644
    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 645
    .line 646
    .line 647
    move-result v6

    .line 648
    if-eqz v6, :cond_a

    .line 649
    .line 650
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 651
    .line 652
    .line 653
    move-result-object v6

    .line 654
    check-cast v6, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;

    .line 655
    .line 656
    sget-object v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 657
    .line 658
    iget-object v6, v6, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask$UploadPartTaskMetadata;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 659
    .line 660
    invoke-virtual {v8, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 661
    .line 662
    .line 663
    move-result v6

    .line 664
    if-eqz v6, :cond_9

    .line 665
    .line 666
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 667
    .line 668
    const-string v2, "Individual part is WAITING_FOR_NETWORK."

    .line 669
    .line 670
    invoke-interface {v0, v2}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    .line 671
    .line 672
    .line 673
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 674
    .line 675
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 676
    .line 677
    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 678
    .line 679
    invoke-virtual {v0, v2, v8}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 680
    .line 681
    .line 682
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 683
    .line 684
    return-object v0

    .line 685
    :cond_a
    :try_start_5
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 686
    .line 687
    .line 688
    move-result-object v0

    .line 689
    if-eqz v0, :cond_b

    .line 690
    .line 691
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 692
    .line 693
    .line 694
    move-result-object v0

    .line 695
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->e()Z

    .line 696
    .line 697
    .line 698
    move-result v0

    .line 699
    if-nez v0, :cond_b

    .line 700
    .line 701
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 702
    .line 703
    invoke-interface {v0, v4}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    .line 704
    .line 705
    .line 706
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 707
    .line 708
    iget-object v4, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 709
    .line 710
    iget v4, v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 711
    .line 712
    sget-object v6, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 713
    .line 714
    invoke-virtual {v0, v4, v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 715
    .line 716
    .line 717
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_5
    .catch Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityException; {:try_start_5 .. :try_end_5} :catch_3

    .line 718
    .line 719
    return-object v0

    .line 720
    :catch_3
    move-exception v0

    .line 721
    sget-object v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 722
    .line 723
    new-instance v6, Ljava/lang/StringBuilder;

    .line 724
    .line 725
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 726
    .line 727
    .line 728
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 729
    .line 730
    .line 731
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 732
    .line 733
    .line 734
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 735
    .line 736
    .line 737
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 738
    .line 739
    .line 740
    move-result-object v0

    .line 741
    invoke-interface {v4, v0}, Lcom/amazonaws/logging/Log;->c(Ljava/lang/Object;)V

    .line 742
    .line 743
    .line 744
    :cond_b
    invoke-static {v7}, Lcom/amazonaws/retry/RetryUtils;->b(Ljava/lang/Throwable;)Z

    .line 745
    .line 746
    .line 747
    move-result v0

    .line 748
    if-eqz v0, :cond_c

    .line 749
    .line 750
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 751
    .line 752
    new-instance v2, Ljava/lang/StringBuilder;

    .line 753
    .line 754
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 755
    .line 756
    .line 757
    const-string v3, "Transfer is interrupted. "

    .line 758
    .line 759
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    .line 761
    .line 762
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 763
    .line 764
    .line 765
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 766
    .line 767
    .line 768
    move-result-object v2

    .line 769
    invoke-interface {v0, v2}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    .line 770
    .line 771
    .line 772
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 773
    .line 774
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 775
    .line 776
    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 777
    .line 778
    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 779
    .line 780
    invoke-virtual {v0, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 781
    .line 782
    .line 783
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 784
    .line 785
    return-object v0

    .line 786
    :cond_c
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 787
    .line 788
    new-instance v2, Ljava/lang/StringBuilder;

    .line 789
    .line 790
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 791
    .line 792
    .line 793
    const-string v3, "Error encountered during multi-part upload: "

    .line 794
    .line 795
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    .line 797
    .line 798
    iget-object v3, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 799
    .line 800
    iget v3, v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 801
    .line 802
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 803
    .line 804
    .line 805
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 806
    .line 807
    .line 808
    invoke-virtual {v7}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 809
    .line 810
    .line 811
    move-result-object v3

    .line 812
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 813
    .line 814
    .line 815
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 816
    .line 817
    .line 818
    move-result-object v2

    .line 819
    invoke-interface {v0, v2, v7}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 820
    .line 821
    .line 822
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 823
    .line 824
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 825
    .line 826
    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 827
    .line 828
    invoke-virtual {v0, v2, v7}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->i(ILjava/lang/Exception;)V

    .line 829
    .line 830
    .line 831
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 832
    .line 833
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 834
    .line 835
    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 836
    .line 837
    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 838
    .line 839
    invoke-virtual {v0, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 840
    .line 841
    .line 842
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 843
    .line 844
    return-object v0

    .line 845
    :catch_4
    move-exception v0

    .line 846
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 847
    .line 848
    new-instance v3, Ljava/lang/StringBuilder;

    .line 849
    .line 850
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 851
    .line 852
    .line 853
    const-string v4, "Error initiating multipart upload: "

    .line 854
    .line 855
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    .line 857
    .line 858
    iget-object v4, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 859
    .line 860
    iget v4, v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 861
    .line 862
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 863
    .line 864
    .line 865
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 866
    .line 867
    .line 868
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 869
    .line 870
    .line 871
    move-result-object v4

    .line 872
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 873
    .line 874
    .line 875
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 876
    .line 877
    .line 878
    move-result-object v3

    .line 879
    invoke-interface {v2, v3, v0}, Lcom/amazonaws/logging/Log;->b(Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 880
    .line 881
    .line 882
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 883
    .line 884
    iget-object v3, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 885
    .line 886
    iget v3, v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 887
    .line 888
    invoke-virtual {v2, v3, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->i(ILjava/lang/Exception;)V

    .line 889
    .line 890
    .line 891
    iget-object v0, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 892
    .line 893
    iget-object v2, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 894
    .line 895
    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 896
    .line 897
    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 898
    .line 899
    invoke-virtual {v0, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 900
    .line 901
    .line 902
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 903
    .line 904
    return-object v0
.end method

.method private k()Ljava/lang/Boolean;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g(Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;)Lcom/amazonaws/services/s3/model/PutObjectRequest;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 10
    .line 11
    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->f(I)Lcom/amazonaws/event/ProgressListener;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0}, Lcom/amazonaws/services/s3/model/AbstractPutObjectRequest;->y()Ljava/io/File;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 22
    .line 23
    .line 24
    move-result-wide v7

    .line 25
    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->c(Lcom/amazonaws/AmazonWebServiceRequest;)Lcom/amazonaws/AmazonWebServiceRequest;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v1}, Lcom/amazonaws/AmazonWebServiceRequest;->n(Lcom/amazonaws/event/ProgressListener;)V

    .line 29
    .line 30
    .line 31
    :try_start_0
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->a:Lcom/amazonaws/services/s3/AmazonS3;

    .line 32
    .line 33
    invoke-interface {v2, v0}, Lcom/amazonaws/services/s3/AmazonS3;->i(Lcom/amazonaws/services/s3/model/PutObjectRequest;)Lcom/amazonaws/services/s3/model/PutObjectResult;

    .line 34
    .line 35
    .line 36
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 37
    .line 38
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 39
    .line 40
    iget v4, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 41
    .line 42
    const/4 v9, 0x1

    .line 43
    move-wide v5, v7

    .line 44
    invoke-virtual/range {v3 .. v9}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->k(IJJZ)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 50
    .line 51
    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 52
    .line 53
    sget-object v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->COMPLETED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 54
    .line 55
    invoke-virtual {v0, v2, v3}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 56
    .line 57
    .line 58
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    return-object v0

    .line 61
    :catch_0
    move-exception v0

    .line 62
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_CANCEL:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 63
    .line 64
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 65
    .line 66
    iget-object v3, v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->o:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 67
    .line 68
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    const-string v3, "Transfer is "

    .line 73
    .line 74
    if-eqz v2, :cond_0

    .line 75
    .line 76
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 77
    .line 78
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 79
    .line 80
    iget v1, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 81
    .line 82
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->CANCELED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 83
    .line 84
    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 85
    .line 86
    .line 87
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 88
    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    .line 90
    .line 91
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 108
    .line 109
    return-object v0

    .line 110
    :cond_0
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PENDING_PAUSE:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 111
    .line 112
    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 113
    .line 114
    iget-object v4, v4, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->o:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 115
    .line 116
    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    const/16 v4, 0x20

    .line 121
    .line 122
    const-wide/16 v5, 0x0

    .line 123
    .line 124
    if-eqz v2, :cond_1

    .line 125
    .line 126
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 127
    .line 128
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 129
    .line 130
    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 131
    .line 132
    sget-object v7, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->PAUSED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 133
    .line 134
    invoke-virtual {v0, v2, v7}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 135
    .line 136
    .line 137
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 138
    .line 139
    new-instance v2, Ljava/lang/StringBuilder;

    .line 140
    .line 141
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-interface {v0, v2}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    .line 155
    .line 156
    .line 157
    new-instance v0, Lcom/amazonaws/event/ProgressEvent;

    .line 158
    .line 159
    invoke-direct {v0, v5, v6}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v4}, Lcom/amazonaws/event/ProgressEvent;->c(I)V

    .line 163
    .line 164
    .line 165
    new-instance v0, Lcom/amazonaws/event/ProgressEvent;

    .line 166
    .line 167
    invoke-direct {v0, v5, v6}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    .line 168
    .line 169
    .line 170
    invoke-interface {v1, v0}, Lcom/amazonaws/event/ProgressListener;->a(Lcom/amazonaws/event/ProgressEvent;)V

    .line 171
    .line 172
    .line 173
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 174
    .line 175
    return-object v0

    .line 176
    :cond_1
    :try_start_1
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    if-eqz v2, :cond_2

    .line 181
    .line 182
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    invoke-virtual {v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->e()Z

    .line 187
    .line 188
    .line 189
    move-result v2

    .line 190
    if-nez v2, :cond_2

    .line 191
    .line 192
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 193
    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    const-string v7, "Thread:["

    .line 200
    .line 201
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 205
    .line 206
    .line 207
    move-result-object v7

    .line 208
    invoke-virtual {v7}, Ljava/lang/Thread;->getId()J

    .line 209
    .line 210
    .line 211
    move-result-wide v7

    .line 212
    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string v7, "]: Network wasn\'t available."

    .line 216
    .line 217
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v3

    .line 224
    invoke-interface {v2, v3}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    .line 225
    .line 226
    .line 227
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 228
    .line 229
    iget-object v7, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 230
    .line 231
    iget v7, v7, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 232
    .line 233
    sget-object v8, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 234
    .line 235
    invoke-virtual {v3, v7, v8}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 236
    .line 237
    .line 238
    const-string v3, "Network Connection Interrupted: Moving the TransferState to WAITING_FOR_NETWORK"

    .line 239
    .line 240
    invoke-interface {v2, v3}, Lcom/amazonaws/logging/Log;->h(Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    new-instance v2, Lcom/amazonaws/event/ProgressEvent;

    .line 244
    .line 245
    invoke-direct {v2, v5, v6}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2, v4}, Lcom/amazonaws/event/ProgressEvent;->c(I)V

    .line 249
    .line 250
    .line 251
    new-instance v2, Lcom/amazonaws/event/ProgressEvent;

    .line 252
    .line 253
    invoke-direct {v2, v5, v6}, Lcom/amazonaws/event/ProgressEvent;-><init>(J)V

    .line 254
    .line 255
    .line 256
    invoke-interface {v1, v2}, Lcom/amazonaws/event/ProgressListener;->a(Lcom/amazonaws/event/ProgressEvent;)V

    .line 257
    .line 258
    .line 259
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_1
    .catch Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 260
    .line 261
    return-object v0

    .line 262
    :catch_1
    move-exception v1

    .line 263
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 264
    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    .line 266
    .line 267
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 268
    .line 269
    .line 270
    const-string v4, "TransferUtilityException: ["

    .line 271
    .line 272
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 276
    .line 277
    .line 278
    const-string v1, "]"

    .line 279
    .line 280
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    invoke-interface {v2, v1}, Lcom/amazonaws/logging/Log;->c(Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    :cond_2
    invoke-static {v0}, Lcom/amazonaws/retry/RetryUtils;->b(Ljava/lang/Throwable;)Z

    .line 291
    .line 292
    .line 293
    move-result v1

    .line 294
    if-eqz v1, :cond_3

    .line 295
    .line 296
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 297
    .line 298
    new-instance v2, Ljava/lang/StringBuilder;

    .line 299
    .line 300
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 301
    .line 302
    .line 303
    const-string v3, "Transfer is interrupted. "

    .line 304
    .line 305
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    .line 307
    .line 308
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-interface {v1, v0}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    .line 316
    .line 317
    .line 318
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 319
    .line 320
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 321
    .line 322
    iget v1, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 323
    .line 324
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 325
    .line 326
    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 327
    .line 328
    .line 329
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 330
    .line 331
    return-object v0

    .line 332
    :cond_3
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 333
    .line 334
    new-instance v2, Ljava/lang/StringBuilder;

    .line 335
    .line 336
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 337
    .line 338
    .line 339
    const-string v3, "Failed to upload: "

    .line 340
    .line 341
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 345
    .line 346
    iget v3, v3, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 347
    .line 348
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    const-string v3, " due to "

    .line 352
    .line 353
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v3

    .line 360
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    .line 362
    .line 363
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object v2

    .line 367
    invoke-interface {v1, v2}, Lcom/amazonaws/logging/Log;->h(Ljava/lang/Object;)V

    .line 368
    .line 369
    .line 370
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 371
    .line 372
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 373
    .line 374
    iget v2, v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 375
    .line 376
    invoke-virtual {v1, v2, v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->i(ILjava/lang/Exception;)V

    .line 377
    .line 378
    .line 379
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 380
    .line 381
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 382
    .line 383
    iget v1, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 384
    .line 385
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->FAILED:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 386
    .line 387
    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 388
    .line 389
    .line 390
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 391
    .line 392
    return-object v0
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->e()Ljava/lang/Boolean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public e()Ljava/lang/Boolean;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->c()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferNetworkLossHandler;->e()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 18
    .line 19
    const-string v1, "Network not connected. Setting the state to WAITING_FOR_NETWORK."

    .line 20
    .line 21
    invoke-interface {v0, v1}, Lcom/amazonaws/logging/Log;->j(Ljava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 27
    .line 28
    iget v1, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 29
    .line 30
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->WAITING_FOR_NETWORK:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 33
    .line 34
    .line 35
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
    :try_end_0
    .catch Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    return-object v0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    sget-object v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->g:Lcom/amazonaws/logging/Log;

    .line 40
    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v3, "TransferUtilityException: ["

    .line 47
    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v0, "]"

    .line 55
    .line 56
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-interface {v1, v0}, Lcom/amazonaws/logging/Log;->c(Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->d:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 69
    .line 70
    iget v1, v1, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->a:I

    .line 71
    .line 72
    sget-object v2, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;->IN_PROGRESS:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;

    .line 73
    .line 74
    invoke-virtual {v0, v1, v2}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferStatusUpdater;->l(ILcom/amazonaws/mobileconnectors/s3/transferutility/TransferState;)V

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->b:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;

    .line 78
    .line 79
    iget v1, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->d:I

    .line 80
    .line 81
    const/4 v2, 0x1

    .line 82
    if-ne v1, v2, :cond_1

    .line 83
    .line 84
    iget v0, v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferRecord;->g:I

    .line 85
    .line 86
    if-nez v0, :cond_1

    .line 87
    .line 88
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->j()Ljava/lang/Boolean;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    return-object v0

    .line 93
    :cond_1
    if-nez v1, :cond_2

    .line 94
    .line 95
    invoke-direct {p0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/UploadTask;->k()Ljava/lang/Boolean;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    return-object v0

    .line 100
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 101
    .line 102
    return-object v0
.end method
