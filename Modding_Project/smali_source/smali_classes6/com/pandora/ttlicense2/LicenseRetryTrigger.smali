.class public Lcom/pandora/ttlicense2/LicenseRetryTrigger;
.super Ljava/lang/Object;
.source "LicenseRetryTrigger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandora/ttlicense2/LicenseRetryTrigger$LicenseRetryListener;
    }
.end annotation


# instance fields
.field private final mListener:Lcom/pandora/ttlicense2/LicenseRetryTrigger$LicenseRetryListener;


# direct methods
.method constructor <init>(Lcom/pandora/ttlicense2/LicenseRetryTrigger$LicenseRetryListener;)V
    .locals 0
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/pandora/ttlicense2/LicenseRetryTrigger;->mListener:Lcom/pandora/ttlicense2/LicenseRetryTrigger$LicenseRetryListener;

    .line 5
    .line 6
    return-void
.end method

.method static synthetic access$000(Lcom/pandora/ttlicense2/LicenseRetryTrigger;)Lcom/pandora/ttlicense2/LicenseRetryTrigger$LicenseRetryListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/pandora/ttlicense2/LicenseRetryTrigger;->mListener:Lcom/pandora/ttlicense2/LicenseRetryTrigger$LicenseRetryListener;

    .line 2
    .line 3
    return-object p0
.end method

.method private registerLifeCycleDetector(Landroid/content/Context;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/app/Application;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Landroid/app/Application;

    .line 6
    .line 7
    new-instance v0, Lcom/pandora/ttlicense2/LicenseRetryTrigger$2;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/pandora/ttlicense2/LicenseRetryTrigger$2;-><init>(Lcom/pandora/ttlicense2/LicenseRetryTrigger;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private registerNetworkDetector(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/pandora/ttlicense2/LicenseRetryTrigger$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/pandora/ttlicense2/LicenseRetryTrigger$1;-><init>(Lcom/pandora/ttlicense2/LicenseRetryTrigger;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1, v0}, Lcom/pandora/ttlicense2/utils/NetWorkUtils;->setNetworkInfoListener(Landroid/content/Context;Lcom/pandora/ttlicense2/utils/NetWorkUtils$NetworkInfoListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method init(Landroid/content/Context;)V
    .locals 0
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/pandora/ttlicense2/LicenseRetryTrigger;->registerLifeCycleDetector(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p1}, Lcom/pandora/ttlicense2/LicenseRetryTrigger;->registerNetworkDetector(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
