.class Lcom/pandora/ttlicense2/LicenseManager$3;
.super Ljava/lang/Object;
.source "LicenseManager.java"

# interfaces
.implements Lcom/pandora/ttlicense2/LicenseSession$LicenseSessionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandora/ttlicense2/LicenseManager;->create(Ljava/lang/String;Lcom/pandora/ttlicense2/LicenseManager$Callback;)Lcom/pandora/ttlicense2/LicenseSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pandora/ttlicense2/LicenseManager;

.field final synthetic val$callback:Lcom/pandora/ttlicense2/LicenseManager$Callback;

.field final synthetic val$licenseUri:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pandora/ttlicense2/LicenseManager;Ljava/lang/String;Lcom/pandora/ttlicense2/LicenseManager$Callback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pandora/ttlicense2/LicenseManager$3;->this$0:Lcom/pandora/ttlicense2/LicenseManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/pandora/ttlicense2/LicenseManager$3;->val$licenseUri:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/pandora/ttlicense2/LicenseManager$3;->val$callback:Lcom/pandora/ttlicense2/LicenseManager$Callback;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onLicenseError(Ljava/lang/Exception;Z)V
    .locals 4
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseManager$3;->this$0:Lcom/pandora/ttlicense2/LicenseManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/pandora/ttlicense2/LicenseManager$3;->val$licenseUri:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "retryAble"

    .line 10
    .line 11
    filled-new-array {v1, v3, v2}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "onLicenseError"

    .line 16
    .line 17
    invoke-static {v0, v2, p1, v1}, Lcom/pandora/ttlicense2/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/pandora/ttlicense2/utils/Asserts;->checkMainThread()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseManager$3;->val$callback:Lcom/pandora/ttlicense2/LicenseManager$Callback;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/pandora/ttlicense2/LicenseManager$3;->val$licenseUri:Ljava/lang/String;

    .line 28
    .line 29
    invoke-interface {v0, v1, p1, p2}, Lcom/pandora/ttlicense2/LicenseManager$Callback;->onLicenseLoadError(Ljava/lang/String;Ljava/lang/Exception;Z)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public onLicenseRetry()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseManager$3;->this$0:Lcom/pandora/ttlicense2/LicenseManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "onLicenseRetry"

    .line 7
    .line 8
    invoke-static {v0, v2, v1}, Lcom/pandora/ttlicense2/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/pandora/ttlicense2/utils/Asserts;->checkMainThread()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseManager$3;->val$callback:Lcom/pandora/ttlicense2/LicenseManager$Callback;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/pandora/ttlicense2/LicenseManager$3;->val$licenseUri:Ljava/lang/String;

    .line 19
    .line 20
    invoke-interface {v0, v1}, Lcom/pandora/ttlicense2/LicenseManager$Callback;->onLicenseLoadRetry(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public onLicenseSuccess(Lcom/pandora/ttlicense2/LicenseFile;)V
    .locals 3
    .param p1    # Lcom/pandora/ttlicense2/LicenseFile;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseManager$3;->this$0:Lcom/pandora/ttlicense2/LicenseManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/pandora/ttlicense2/LicenseManager$3;->val$licenseUri:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/pandora/ttlicense2/utils/L;->string(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    filled-new-array {v1, p1, v2}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "onLicenseSuccess"

    .line 14
    .line 15
    invoke-static {v0, v2, v1}, Lcom/pandora/ttlicense2/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/pandora/ttlicense2/utils/Asserts;->checkMainThread()V

    .line 19
    .line 20
    .line 21
    invoke-static {}, Lcom/pandora/ttlicense2/LicenseLogger;->getInstance()Lcom/pandora/ttlicense2/LicenseLogger;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Lcom/pandora/ttlicense2/LicenseLogger;->eventListener()Lcom/pandora/ttlicense2/LicenseLogger$EventListener;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {p1}, Lcom/pandora/ttlicense2/LicenseFile;->getId()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v0, v1}, Lcom/pandora/ttlicense2/LicenseLogger$EventListener;->onLicenseAddSuccess(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseManager$3;->val$callback:Lcom/pandora/ttlicense2/LicenseManager$Callback;

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    iget-object v1, p0, Lcom/pandora/ttlicense2/LicenseManager$3;->val$licenseUri:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/pandora/ttlicense2/LicenseFile;->getId()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-interface {v0, v1, p1}, Lcom/pandora/ttlicense2/LicenseManager$Callback;->onLicenseLoadSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method public onLicenseSuccessSync(Lcom/pandora/ttlicense2/LicenseFile;)V
    .locals 0
    .param p1    # Lcom/pandora/ttlicense2/LicenseFile;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/pandora/ttlicense2/LicenseManagerNative;->addLicense(Lcom/pandora/ttlicense2/LicenseFile;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onLicenseUpdateError(Ljava/lang/Exception;Z)V
    .locals 4
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseManager$3;->this$0:Lcom/pandora/ttlicense2/LicenseManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/pandora/ttlicense2/LicenseManager$3;->val$licenseUri:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    const-string v3, "retryAble"

    .line 10
    .line 11
    filled-new-array {v1, v3, v2}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "onLicenseUpdateError"

    .line 16
    .line 17
    invoke-static {v0, v2, p1, v1}, Lcom/pandora/ttlicense2/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    invoke-static {}, Lcom/pandora/ttlicense2/utils/Asserts;->checkMainThread()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseManager$3;->val$callback:Lcom/pandora/ttlicense2/LicenseManager$Callback;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/pandora/ttlicense2/LicenseManager$3;->val$licenseUri:Ljava/lang/String;

    .line 28
    .line 29
    invoke-interface {v0, v1, p1, p2}, Lcom/pandora/ttlicense2/LicenseManager$Callback;->onLicenseUpdateError(Ljava/lang/String;Ljava/lang/Exception;Z)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public onLicenseUpdateRetry()V
    .locals 3
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseManager$3;->this$0:Lcom/pandora/ttlicense2/LicenseManager;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v2, "onLicenseUpdateRetry"

    .line 7
    .line 8
    invoke-static {v0, v2, v1}, Lcom/pandora/ttlicense2/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/pandora/ttlicense2/utils/Asserts;->checkMainThread()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseManager$3;->val$callback:Lcom/pandora/ttlicense2/LicenseManager$Callback;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    iget-object v1, p0, Lcom/pandora/ttlicense2/LicenseManager$3;->val$licenseUri:Ljava/lang/String;

    .line 19
    .line 20
    invoke-interface {v0, v1}, Lcom/pandora/ttlicense2/LicenseManager$Callback;->onLicenseUpdateRetry(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public onLicenseUpdateSuccess(Lcom/pandora/ttlicense2/LicenseFile;)V
    .locals 3
    .param p1    # Lcom/pandora/ttlicense2/LicenseFile;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseManager$3;->this$0:Lcom/pandora/ttlicense2/LicenseManager;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/pandora/ttlicense2/LicenseManager$3;->val$licenseUri:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/pandora/ttlicense2/utils/L;->string(Ljava/lang/Object;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    filled-new-array {v1, p1, v2}, [Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "onLicenseUpdateSuccess"

    .line 14
    .line 15
    invoke-static {v0, v2, v1}, Lcom/pandora/ttlicense2/utils/L;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/pandora/ttlicense2/utils/Asserts;->checkMainThread()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseManager$3;->val$callback:Lcom/pandora/ttlicense2/LicenseManager$Callback;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v1, p0, Lcom/pandora/ttlicense2/LicenseManager$3;->val$licenseUri:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/pandora/ttlicense2/LicenseFile;->getId()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-interface {v0, v1, p1}, Lcom/pandora/ttlicense2/LicenseManager$Callback;->onLicenseUpdateSuccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public onLicenseUpdateSuccessSync(Lcom/pandora/ttlicense2/LicenseFile;)V
    .locals 0
    .param p1    # Lcom/pandora/ttlicense2/LicenseFile;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p1}, Lcom/pandora/ttlicense2/LicenseManagerNative;->addLicense(Lcom/pandora/ttlicense2/LicenseFile;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    return-void
.end method
