.class public Lcom/adjust/sdk/google/lvl/AdjustLicenseVerification;
.super Ljava/lang/Object;
.source "AdjustLicenseVerification.java"


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

.method public static fetchLicenseDate(Landroid/content/Context;Lcom/adjust/sdk/ILogger;J)Lcom/adjust/sdk/LicenseData;
    .locals 8

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    .line 5
    .line 6
    .line 7
    new-instance v1, Lcom/adjust/sdk/google/lvl/LicenseChecker;

    .line 8
    .line 9
    new-instance v4, Lcom/adjust/sdk/google/lvl/AdjustLicenseVerification$a;

    .line 10
    .line 11
    invoke-direct {v4, v0}, Lcom/adjust/sdk/google/lvl/AdjustLicenseVerification$a;-><init>(Ljava/util/concurrent/BlockingQueue;)V

    .line 12
    .line 13
    .line 14
    move-object v2, v1

    .line 15
    move-object v3, p0

    .line 16
    move-object v5, p1

    .line 17
    move-wide v6, p2

    .line 18
    invoke-direct/range {v2 .. v7}, Lcom/adjust/sdk/google/lvl/LicenseChecker;-><init>(Landroid/content/Context;Lcom/adjust/sdk/google/lvl/LicenseRawCallback;Lcom/adjust/sdk/ILogger;J)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/adjust/sdk/google/lvl/LicenseChecker;->checkAccess()V

    .line 22
    .line 23
    .line 24
    sget-object p0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 25
    .line 26
    const-wide/16 p2, 0xbb8

    .line 27
    .line 28
    invoke-interface {v0, p2, p3, p0}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    check-cast p0, Lcom/adjust/sdk/LicenseData;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    return-object p0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string p2, "LVL License checker interrupted: "

    .line 45
    .line 46
    invoke-interface {p1, p2, p0}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    return-object p0
.end method
