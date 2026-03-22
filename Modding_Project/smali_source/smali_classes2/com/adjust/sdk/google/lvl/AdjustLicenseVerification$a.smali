.class Lcom/adjust/sdk/google/lvl/AdjustLicenseVerification$a;
.super Ljava/lang/Object;
.source "AdjustLicenseVerification.java"

# interfaces
.implements Lcom/adjust/sdk/google/lvl/LicenseRawCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/google/lvl/AdjustLicenseVerification;->fetchLicenseDate(Landroid/content/Context;Lcom/adjust/sdk/ILogger;J)Lcom/adjust/sdk/LicenseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/BlockingQueue;


# direct methods
.method constructor <init>(Ljava/util/concurrent/BlockingQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/adjust/sdk/google/lvl/AdjustLicenseVerification$a;->a:Ljava/util/concurrent/BlockingQueue;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onError(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/google/lvl/AdjustLicenseVerification$a;->a:Ljava/util/concurrent/BlockingQueue;

    .line 2
    .line 3
    new-instance v1, Lcom/adjust/sdk/LicenseData;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v1, v2, v2, p1}, Lcom/adjust/sdk/LicenseData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public onLicenseDataReceived(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/google/lvl/AdjustLicenseVerification$a;->a:Ljava/util/concurrent/BlockingQueue;

    .line 2
    .line 3
    new-instance v1, Lcom/adjust/sdk/LicenseData;

    .line 4
    .line 5
    invoke-direct {v1, p2, p3, p1}, Lcom/adjust/sdk/LicenseData;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
