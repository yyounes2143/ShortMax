.class public Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;
.super Ljava/lang/Object;
.source "TransferUtility.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Lcom/amazonaws/services/s3/AmazonS3;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Lcom/amazonaws/mobile/config/AWSConfiguration;

.field private e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Lcom/amazonaws/mobile/config/AWSConfiguration;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->d:Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 2
    .line 3
    return-object p0
.end method

.method public b()Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;
    .locals 7

    .line 1
    const-string v0, "DangerouslyConnectToHTTPEndpointForTesting"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->a:Lcom/amazonaws/services/s3/AmazonS3;

    .line 4
    .line 5
    if-eqz v1, :cond_5

    .line 6
    .line 7
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->b:Landroid/content/Context;

    .line 8
    .line 9
    if-eqz v1, :cond_4

    .line 10
    .line 11
    iget-object v1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->d:Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 12
    .line 13
    if-eqz v1, :cond_2

    .line 14
    .line 15
    :try_start_0
    const-string v2, "S3TransferUtility"

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Lcom/amazonaws/mobile/config/AWSConfiguration;->e(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->a:Lcom/amazonaws/services/s3/AmazonS3;

    .line 22
    .line 23
    const-string v3, "Region"

    .line 24
    .line 25
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    invoke-static {v3}, Lcom/amazonaws/regions/Region;->f(Ljava/lang/String;)Lcom/amazonaws/regions/Region;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    invoke-interface {v2, v3}, Lcom/amazonaws/services/s3/AmazonS3;->a(Lcom/amazonaws/regions/Region;)V

    .line 34
    .line 35
    .line 36
    const-string v2, "Bucket"

    .line 37
    .line 38
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    iput-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->c:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_0

    .line 49
    .line 50
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    goto :goto_1

    .line 57
    :cond_0
    const/4 v0, 0x0

    .line 58
    :goto_0
    if-eqz v0, :cond_1

    .line 59
    .line 60
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->a:Lcom/amazonaws/services/s3/AmazonS3;

    .line 61
    .line 62
    const-string v1, "http://10.0.2.2:20005"

    .line 63
    .line 64
    invoke-interface {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3;->b(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->a:Lcom/amazonaws/services/s3/AmazonS3;

    .line 68
    .line 69
    invoke-static {}, Lcom/amazonaws/services/s3/S3ClientOptions;->a()Lcom/amazonaws/services/s3/S3ClientOptions$Builder;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    const/4 v2, 0x1

    .line 74
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->b(Z)Lcom/amazonaws/services/s3/S3ClientOptions$Builder;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-virtual {v1, v2}, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->c(Z)Lcom/amazonaws/services/s3/S3ClientOptions$Builder;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Lcom/amazonaws/services/s3/S3ClientOptions$Builder;->a()Lcom/amazonaws/services/s3/S3ClientOptions;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-interface {v0, v1}, Lcom/amazonaws/services/s3/AmazonS3;->p(Lcom/amazonaws/services/s3/S3ClientOptions;)V

    .line 87
    .line 88
    .line 89
    :cond_1
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->d:Lcom/amazonaws/mobile/config/AWSConfiguration;

    .line 90
    .line 91
    invoke-virtual {v0}, Lcom/amazonaws/mobile/config/AWSConfiguration;->c()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-static {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .line 97
    .line 98
    goto :goto_2

    .line 99
    :goto_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 100
    .line 101
    const-string v2, "Failed to read S3TransferUtility please check your setup or awsconfiguration.json file"

    .line 102
    .line 103
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 104
    .line 105
    .line 106
    throw v1

    .line 107
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    .line 108
    .line 109
    if-nez v0, :cond_3

    .line 110
    .line 111
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    .line 112
    .line 113
    invoke-direct {v0}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;-><init>()V

    .line 114
    .line 115
    .line 116
    iput-object v0, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    .line 117
    .line 118
    :cond_3
    new-instance v0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;

    .line 119
    .line 120
    iget-object v2, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->a:Lcom/amazonaws/services/s3/AmazonS3;

    .line 121
    .line 122
    iget-object v3, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->b:Landroid/content/Context;

    .line 123
    .line 124
    iget-object v4, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->c:Ljava/lang/String;

    .line 125
    .line 126
    iget-object v5, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->e:Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;

    .line 127
    .line 128
    const/4 v6, 0x0

    .line 129
    move-object v1, v0

    .line 130
    invoke-direct/range {v1 .. v6}, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility;-><init>(Lcom/amazonaws/services/s3/AmazonS3;Landroid/content/Context;Ljava/lang/String;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtilityOptions;Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$1;)V

    .line 131
    .line 132
    .line 133
    return-object v0

    .line 134
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 135
    .line 136
    const-string v1, "Context is required please set using .context(applicationContext)"

    .line 137
    .line 138
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    throw v0

    .line 142
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 143
    .line 144
    const-string v1, "AmazonS3 client is required please set using .s3Client(yourClient)"

    .line 145
    .line 146
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    throw v0
.end method

.method public c(Landroid/content/Context;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->b:Landroid/content/Context;

    .line 6
    .line 7
    return-object p0
.end method

.method public d(Lcom/amazonaws/services/s3/AmazonS3;)Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amazonaws/mobileconnectors/s3/transferutility/TransferUtility$Builder;->a:Lcom/amazonaws/services/s3/AmazonS3;

    .line 2
    .line 3
    return-object p0
.end method
