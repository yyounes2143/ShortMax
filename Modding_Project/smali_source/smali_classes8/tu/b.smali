.class public final Ltu/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/amazonaws/services/s3/AmazonS3Client;

.field public static b:Lcom/amazonaws/mobile/client/AWSMobileClient;

.field public static c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)Lcom/amazonaws/auth/AWSCredentialsProvider;
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Ltu/b;->b:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    .line 7
    .line 8
    const/4 v1, 0x1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/amazonaws/mobile/client/AWSMobileClient;->q()Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Ltu/a;

    .line 17
    .line 18
    invoke-direct {v2, v0}, Ltu/a;-><init>(Ljava/util/concurrent/CountDownLatch;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1, v2}, Lcom/amazonaws/mobile/client/AWSMobileClient;->x(Landroid/content/Context;Lcom/amazonaws/mobile/client/Callback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    .line 24
    :try_start_1
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 25
    .line 26
    const-wide/16 v1, 0xa

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2, p1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    invoke-static {}, Lcom/amazonaws/mobile/client/AWSMobileClient;->q()Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    sput-object p1, Ltu/b;->b:Lcom/amazonaws/mobile/client/AWSMobileClient;

    .line 39
    .line 40
    goto :goto_1

    .line 41
    :catchall_0
    move-exception p1

    .line 42
    goto :goto_2

    .line 43
    :catch_0
    move-exception p1

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const-string p1, "b"

    .line 46
    .line 47
    const-string v0, "AWSMobileClient.initialize \u8d85\u65f6\uff0810s\uff09\uff0c\u8df3\u8fc7\u521d\u59cb\u5316"

    .line 48
    .line 49
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    .line 51
    .line 52
    goto :goto_1

    .line 53
    :goto_0
    :try_start_2
    const-string v0, "b"

    .line 54
    .line 55
    const-string v1, "AWSMobileClient.initialize \u88ab\u4e2d\u65ad"

    .line 56
    .line 57
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    .line 59
    .line 60
    :cond_1
    :goto_1
    sget-object p1, Ltu/b;->b:Lcom/amazonaws/mobile/client/AWSMobileClient;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    .line 62
    monitor-exit p0

    .line 63
    return-object p1

    .line 64
    :goto_2
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 65
    throw p1
.end method

.method public final declared-synchronized b(Landroid/content/Context;)Lcom/amazonaws/services/s3/AmazonS3Client;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Ltu/b;->a:Lcom/amazonaws/services/s3/AmazonS3Client;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    :try_start_1
    new-instance v0, Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/amazonaws/mobile/config/AWSConfiguration;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "S3TransferUtility"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/amazonaws/mobile/config/AWSConfiguration;->e(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v1, "Region"

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/amazonaws/regions/Region;->f(Ljava/lang/String;)Lcom/amazonaws/regions/Region;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Lcom/amazonaws/services/s3/AmazonS3Client;

    .line 28
    .line 29
    invoke-virtual {p0, p1}, Ltu/b;->a(Landroid/content/Context;)Lcom/amazonaws/auth/AWSCredentialsProvider;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-direct {v1, p1, v0}, Lcom/amazonaws/services/s3/AmazonS3Client;-><init>(Lcom/amazonaws/auth/AWSCredentialsProvider;Lcom/amazonaws/regions/Region;)V

    .line 34
    .line 35
    .line 36
    sput-object v1, Ltu/b;->a:Lcom/amazonaws/services/s3/AmazonS3Client;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_1

    .line 41
    :catch_0
    move-exception p1

    .line 42
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    :cond_0
    :goto_0
    sget-object p1, Ltu/b;->a:Lcom/amazonaws/services/s3/AmazonS3Client;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 46
    .line 47
    monitor-exit p0

    .line 48
    return-object p1

    .line 49
    :goto_1
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 50
    throw p1
.end method

.method public final declared-synchronized c(Landroid/content/Context;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    sget-object v0, Ltu/b;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->d()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->c(Landroid/content/Context;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, p1}, Ltu/b;->b(Landroid/content/Context;)Lcom/amazonaws/services/s3/AmazonS3Client;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->d(Lcom/amazonaws/services/s3/AmazonS3;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 23
    .line 24
    invoke-direct {v1, p1}, Lcom/amazonaws/mobile/config/AWSConfiguration;-><init>(Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->a(Lcom/amazonaws/mobile/config/AWSConfiguration;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->b()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    sput-object p1, Ltu/b;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catchall_0
    move-exception p1

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    sget-object p1, Ltu/b;->c:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    .line 42
    monitor-exit p0

    .line 43
    return-object p1

    .line 44
    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 45
    throw p1
.end method
