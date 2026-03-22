.class public Lcom/pandora/ttlicense2/loader/LicenseLoader$RetryPolicy;
.super Ljava/lang/Object;
.source "LicenseLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pandora/ttlicense2/loader/LicenseLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RetryPolicy"
.end annotation


# instance fields
.field public final backupRetryCount:I

.field public final backupRetryWaitTime:J

.field public final mainRetryCount:I

.field public final mainRetryWaitTime:J


# direct methods
.method public constructor <init>(IJIJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$RetryPolicy;->mainRetryCount:I

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$RetryPolicy;->mainRetryWaitTime:J

    .line 7
    .line 8
    iput p4, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$RetryPolicy;->backupRetryCount:I

    .line 9
    .line 10
    iput-wide p5, p0, Lcom/pandora/ttlicense2/loader/LicenseLoader$RetryPolicy;->backupRetryWaitTime:J

    .line 11
    .line 12
    return-void
.end method
