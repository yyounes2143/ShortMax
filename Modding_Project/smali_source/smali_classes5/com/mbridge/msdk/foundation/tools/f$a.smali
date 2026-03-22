.class Lcom/mbridge/msdk/foundation/tools/f$a;
.super Ljava/lang/Object;
.source "BaseSameDiTool.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mbridge/msdk/foundation/tools/f;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mbridge/msdk/foundation/tools/f$a;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    const-string v0, "DomainSameDiTool"

    .line 2
    .line 3
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;->m()Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "authority_device_id"

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/c;->c(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/mbridge/msdk/foundation/controller/authoritycontroller/b;->i()Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-eqz v1, :cond_0

    .line 20
    .line 21
    :try_start_0
    sget v1, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->a:I

    .line 22
    .line 23
    iget-object v1, p0, Lcom/mbridge/msdk/foundation/tools/f$a;->a:Landroid/content/Context;

    .line 24
    .line 25
    invoke-static {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/f;->a(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    sput v2, Lcom/mbridge/msdk/foundation/tools/f;->d:I

    .line 41
    .line 42
    iget-object v2, p0, Lcom/mbridge/msdk/foundation/tools/f$a;->a:Landroid/content/Context;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    sget v3, Lcom/mbridge/msdk/foundation/tools/f;->d:I

    .line 49
    .line 50
    invoke-static {v2, v1, v3}, Lcom/mbridge/msdk/foundation/tools/f;->a(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catchall_0
    move-exception v1

    .line 55
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/p0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catch_0
    const-string v1, "GET ADID ERROR TRY TO GET FROM GOOGLE PLAY APP"

    .line 64
    .line 65
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/p0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    :try_start_1
    new-instance v1, Lcom/mbridge/msdk/foundation/tools/b;

    .line 69
    .line 70
    invoke-direct {v1}, Lcom/mbridge/msdk/foundation/tools/b;-><init>()V

    .line 71
    .line 72
    .line 73
    iget-object v2, p0, Lcom/mbridge/msdk/foundation/tools/f$a;->a:Landroid/content/Context;

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Lcom/mbridge/msdk/foundation/tools/b;->a(Landroid/content/Context;)Lcom/mbridge/msdk/foundation/tools/b$b;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/tools/b$b;->a()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    invoke-static {v2}, Lcom/mbridge/msdk/foundation/tools/f;->a(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/tools/b$b;->b()Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    sput v2, Lcom/mbridge/msdk/foundation/tools/f;->d:I

    .line 91
    .line 92
    iget-object v2, p0, Lcom/mbridge/msdk/foundation/tools/f$a;->a:Landroid/content/Context;

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/mbridge/msdk/foundation/tools/b$b;->a()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    sget v3, Lcom/mbridge/msdk/foundation/tools/f;->d:I

    .line 99
    .line 100
    invoke-static {v2, v1, v3}, Lcom/mbridge/msdk/foundation/tools/f;->a(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :catch_1
    const-string v1, "GET ADID FROM GOOGLE PLAY APP ERROR"

    .line 105
    .line 106
    invoke-static {v0, v1}, Lcom/mbridge/msdk/foundation/tools/p0;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    :cond_0
    :goto_0
    return-void
.end method
