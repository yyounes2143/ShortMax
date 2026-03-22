.class Lcom/pandora/ttlicense2/LicenseRetryTrigger$2;
.super Ljava/lang/Object;
.source "LicenseRetryTrigger.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pandora/ttlicense2/LicenseRetryTrigger;->registerLifeCycleDetector(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pandora/ttlicense2/LicenseRetryTrigger;


# direct methods
.method constructor <init>(Lcom/pandora/ttlicense2/LicenseRetryTrigger;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/pandora/ttlicense2/LicenseRetryTrigger$2;->this$0:Lcom/pandora/ttlicense2/LicenseRetryTrigger;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {p1, v0}, Lcom/pandora/ttlicense2/utils/NetWorkUtils;->setEnable(Landroid/content/Context;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-static {p1, v0}, Lcom/pandora/ttlicense2/utils/NetWorkUtils;->setEnable(Landroid/content/Context;Z)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/pandora/ttlicense2/LicenseRetryTrigger$2;->this$0:Lcom/pandora/ttlicense2/LicenseRetryTrigger;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/pandora/ttlicense2/LicenseRetryTrigger;->access$000(Lcom/pandora/ttlicense2/LicenseRetryTrigger;)Lcom/pandora/ttlicense2/LicenseRetryTrigger$LicenseRetryListener;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Lcom/pandora/ttlicense2/LicenseRetryTrigger$LicenseRetryListener;->onActivityResumed()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    return-void
.end method
