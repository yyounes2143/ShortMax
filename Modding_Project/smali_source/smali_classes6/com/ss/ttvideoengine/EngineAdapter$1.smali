.class final Lcom/ss/ttvideoengine/EngineAdapter$1;
.super Ljava/lang/Object;
.source "EngineAdapter.java"

# interfaces
.implements Lcom/pandora/ttlicense2/LicenseLogger$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/ttvideoengine/EngineAdapter;->initSettings(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic a()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/EngineAdapter$1;->lambda$onLicenseAddSuccess$0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic lambda$onLicenseAddSuccess$0()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->helper()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/ss/ttvideoengine/setting/SettingsHelper;->config()Lcom/ss/ttvideoengine/setting/SettingsHelper;

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onLicenseAddSuccess(Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p1, Lcom/ss/ttvideoengine/c;

    .line 2
    .line 3
    invoke-direct {p1}, Lcom/ss/ttvideoengine/c;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/ss/ttvideoengine/utils/EngineThreadPool;->addExecuteTask(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 7
    .line 8
    .line 9
    return-void
.end method
