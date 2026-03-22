.class Lcom/adjust/sdk/ActivityHandler$x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/ActivityHandler;->readLicenseVerificationData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/adjust/sdk/ActivityHandler;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/ActivityHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler$x;->a:Lcom/adjust/sdk/ActivityHandler;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$x;->a:Lcom/adjust/sdk/ActivityHandler;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/adjust/sdk/SharedPreferencesManager;->getDefaultInstance(Landroid/content/Context;)Lcom/adjust/sdk/SharedPreferencesManager;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Lcom/adjust/sdk/SharedPreferencesManager;->getLicenseVerificationTracked()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$x;->a:Lcom/adjust/sdk/ActivityHandler;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/adjust/sdk/ActivityHandler;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler$x;->a:Lcom/adjust/sdk/ActivityHandler;

    .line 25
    .line 26
    invoke-static {v1}, Lcom/adjust/sdk/ActivityHandler;->access$1500(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/ILogger;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget-object v2, p0, Lcom/adjust/sdk/ActivityHandler$x;->a:Lcom/adjust/sdk/ActivityHandler;

    .line 31
    .line 32
    invoke-static {v2}, Lcom/adjust/sdk/ActivityHandler;->access$1600(Lcom/adjust/sdk/ActivityHandler;)Lcom/adjust/sdk/DeviceInfo;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    iget-wide v2, v2, Lcom/adjust/sdk/DeviceInfo;->appInstallTime:J

    .line 37
    .line 38
    invoke-static {v0, v1, v2, v3}, Lcom/adjust/sdk/Reflection;->getLicenseRequiredData(Landroid/content/Context;Lcom/adjust/sdk/ILogger;J)Lcom/adjust/sdk/LicenseData;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-object v1, p0, Lcom/adjust/sdk/ActivityHandler$x;->a:Lcom/adjust/sdk/ActivityHandler;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Lcom/adjust/sdk/ActivityHandler;->sendLicenseVerificationData(Lcom/adjust/sdk/LicenseData;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_0
    return-void
.end method
