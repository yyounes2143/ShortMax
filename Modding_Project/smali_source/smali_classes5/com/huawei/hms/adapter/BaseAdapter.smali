.class public Lcom/huawei/hms/adapter/BaseAdapter;
.super Ljava/lang/Object;
.source "BaseAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;,
        Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;,
        Lcom/huawei/hms/adapter/BaseAdapter$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/huawei/hms/support/api/client/ApiClient;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Landroid/os/Parcelable;

.field private g:Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;

.field private h:Ljava/lang/String;

.field private i:Landroid/content/Context;

.field private j:Lcom/huawei/hms/common/internal/RequestHeader;

.field private k:Lcom/huawei/hms/common/internal/ResponseHeader;

.field private l:Lcom/huawei/hms/adapter/sysobs/SystemObserver;


# direct methods
.method public constructor <init>(Lcom/huawei/hms/support/api/client/ApiClient;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/huawei/hms/common/internal/RequestHeader;

    invoke-direct {v0}, Lcom/huawei/hms/common/internal/RequestHeader;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->j:Lcom/huawei/hms/common/internal/RequestHeader;

    .line 3
    new-instance v0, Lcom/huawei/hms/common/internal/ResponseHeader;

    invoke-direct {v0}, Lcom/huawei/hms/common/internal/ResponseHeader;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->k:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->a:Ljava/lang/ref/WeakReference;

    const-string v0, "BaseAdapter"

    if-nez p1, :cond_0

    .line 5
    const-string p1, "BaseAdapter constructor client is null"

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_0
    invoke-interface {p1}, Lcom/huawei/hms/support/api/client/ApiClient;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->i:Landroid/content/Context;

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In constructor, WeakReference is "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/huawei/hms/support/api/client/ApiClient;Landroid/app/Activity;)V
    .locals 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Lcom/huawei/hms/common/internal/RequestHeader;

    invoke-direct {v0}, Lcom/huawei/hms/common/internal/RequestHeader;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->j:Lcom/huawei/hms/common/internal/RequestHeader;

    .line 10
    new-instance v0, Lcom/huawei/hms/common/internal/ResponseHeader;

    invoke-direct {v0}, Lcom/huawei/hms/common/internal/ResponseHeader;-><init>()V

    iput-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->k:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 11
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->a:Ljava/lang/ref/WeakReference;

    .line 12
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->b:Ljava/lang/ref/WeakReference;

    const-string p1, "BaseAdapter"

    if-nez p2, :cond_0

    .line 13
    const-string p2, "BaseAdapter constructor activity is null"

    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/huawei/hms/adapter/BaseAdapter;->i:Landroid/content/Context;

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "In constructor, activityWeakReference is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", activity is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->b:Ljava/lang/ref/WeakReference;

    .line 16
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 17
    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private A(I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/huawei/hms/adapter/BaseAdapter;->J(I)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->k:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/ResponseHeader;->toJson()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    return-object p1
.end method

.method static synthetic B(Lcom/huawei/hms/adapter/BaseAdapter;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/huawei/hms/adapter/BaseAdapter;->f(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private C(Landroid/content/Context;Lcom/huawei/hms/common/internal/RequestHeader;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->getInstance()Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p2}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->getMapFromRequestHeader(Lcom/huawei/hms/common/internal/RequestHeader;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "direction"

    .line 10
    .line 11
    const-string v2, "req"

    .line 12
    .line 13
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/huawei/hms/common/internal/RequestHeader;->getKitSdkVersion()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-static {p2}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->versionCodeToName(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const-string v1, "version"

    .line 29
    .line 30
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    const-string p2, "ro.logsystem.usertype"

    .line 34
    .line 35
    const-string v1, ""

    .line 36
    .line 37
    invoke-static {p2, v1}, Lcom/huawei/hms/utils/Util;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    const-string v1, "phoneType"

    .line 42
    .line 43
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->getInstance()Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    const-string v1, "HMS_SDK_BASE_START_RESOLUTION"

    .line 51
    .line 52
    invoke-virtual {p2, p1, v1, v0}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->onNewEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method private D(Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->g:Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;

    .line 2
    .line 3
    return-void
.end method

.method private E(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method private F(Landroid/content/Intent;Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)Z
    .locals 3

    .line 1
    const-string v0, "kit_update_result"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "kit_update_result is "

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v1, "BaseAdapter"

    .line 32
    .line 33
    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const/4 v0, 0x1

    .line 37
    if-ne p1, v0, :cond_0

    .line 38
    .line 39
    const-string p1, "kit update success,replay request"

    .line 40
    .line 41
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/huawei/hms/adapter/BaseAdapter;->V()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const-string v2, "kit update failed"

    .line 49
    .line 50
    invoke-static {v1, v2}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    invoke-direct {p0, p1}, Lcom/huawei/hms/adapter/BaseAdapter;->f(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    const/16 v1, -0xa

    .line 58
    .line 59
    invoke-direct {p0, v1, p1}, Lcom/huawei/hms/adapter/BaseAdapter;->c(ILjava/lang/String;)Lcom/huawei/hms/common/internal/ResponseWrap;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/ResponseWrap;->toJson()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-interface {p2, p1}, Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;->onError(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :goto_0
    return v0

    .line 71
    :cond_1
    return v2
.end method

.method static synthetic G(Lcom/huawei/hms/adapter/BaseAdapter;Landroid/content/Intent;Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/adapter/BaseAdapter;->w(Landroid/content/Intent;Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private H()Landroid/app/Activity;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->b:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "BaseAdapter"

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v3, "activityWeakReference is "

    .line 14
    .line 15
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-object v3, p0, Lcom/huawei/hms/adapter/BaseAdapter;->b:Ljava/lang/ref/WeakReference;

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {v2, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    return-object v1

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->a:Ljava/lang/ref/WeakReference;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/huawei/hms/support/api/client/ApiClient;

    .line 38
    .line 39
    if-nez v0, :cond_1

    .line 40
    .line 41
    const-string v0, "tmpApi is null"

    .line 42
    .line 43
    invoke-static {v2, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-object v1

    .line 47
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 48
    .line 49
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    .line 51
    .line 52
    const-string v3, "activityWeakReference has "

    .line 53
    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget-object v3, p0, Lcom/huawei/hms/adapter/BaseAdapter;->b:Ljava/lang/ref/WeakReference;

    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    invoke-static {v2, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->b:Ljava/lang/ref/WeakReference;

    .line 74
    .line 75
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Landroid/app/Activity;

    .line 80
    .line 81
    invoke-interface {v0}, Lcom/huawei/hms/support/api/client/ApiClient;->getContext()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-static {v1, v0}, Lcom/huawei/hms/utils/Util;->getActiveActivity(Landroid/app/Activity;Landroid/content/Context;)Landroid/app/Activity;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    return-object v0
.end method

.method static synthetic I(Lcom/huawei/hms/adapter/BaseAdapter;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method private J(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->k:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->j:Lcom/huawei/hms/common/internal/RequestHeader;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/huawei/hms/common/internal/RequestHeader;->getTransactionId()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/huawei/hms/common/internal/ResponseHeader;->setTransactionId(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->k:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->j:Lcom/huawei/hms/common/internal/RequestHeader;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/huawei/hms/common/internal/RequestHeader;->getAppID()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/huawei/hms/common/internal/ResponseHeader;->setAppID(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->k:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->j:Lcom/huawei/hms/common/internal/RequestHeader;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/huawei/hms/common/internal/RequestHeader;->getApiName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/huawei/hms/common/internal/ResponseHeader;->setApiName(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->k:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->j:Lcom/huawei/hms/common/internal/RequestHeader;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/huawei/hms/common/internal/RequestHeader;->getSrvName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/huawei/hms/common/internal/ResponseHeader;->setSrvName(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->k:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->j:Lcom/huawei/hms/common/internal/RequestHeader;

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/huawei/hms/common/internal/RequestHeader;->getPkgName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/huawei/hms/common/internal/ResponseHeader;->setPkgName(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->k:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 57
    .line 58
    const/4 v1, 0x1

    .line 59
    invoke-virtual {v0, v1}, Lcom/huawei/hms/common/internal/ResponseHeader;->setStatusCode(I)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->k:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 63
    .line 64
    invoke-virtual {v0, p1}, Lcom/huawei/hms/common/internal/ResponseHeader;->setErrorCode(I)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->k:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 68
    .line 69
    const-string v0, "Core error"

    .line 70
    .line 71
    invoke-virtual {p1, v0}, Lcom/huawei/hms/common/internal/ResponseHeader;->setErrorReason(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method private K(Landroid/content/Intent;Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)V
    .locals 6

    .line 1
    const-string v0, "json_header"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "json_body"

    .line 8
    .line 9
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const-string v2, "status_code"

    .line 14
    .line 15
    invoke-static {v0, v2}, Lcom/huawei/hms/utils/JsonUtil;->getInfoFromJsonobject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "error_code"

    .line 20
    .line 21
    invoke-static {v0, v3}, Lcom/huawei/hms/utils/JsonUtil;->getInfoFromJsonobject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    const-string v4, "HMS_FOREGROUND_RES_UI"

    .line 26
    .line 27
    invoke-virtual {p1, v4}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const-string v4, "uiDuration"

    .line 38
    .line 39
    invoke-static {p1, v4}, Lcom/huawei/hms/utils/JsonUtil;->getInfoFromJsonobject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    instance-of v4, p1, Ljava/lang/Long;

    .line 44
    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    check-cast p1, Ljava/lang/Long;

    .line 48
    .line 49
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 50
    .line 51
    .line 52
    move-result-wide v4

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    const-wide/16 v4, 0x0

    .line 55
    .line 56
    :goto_0
    instance-of p1, v2, Ljava/lang/Integer;

    .line 57
    .line 58
    if-eqz p1, :cond_1

    .line 59
    .line 60
    instance-of p1, v3, Ljava/lang/Integer;

    .line 61
    .line 62
    if-eqz p1, :cond_1

    .line 63
    .line 64
    check-cast v2, Ljava/lang/Integer;

    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    check-cast v3, Ljava/lang/Integer;

    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 73
    .line 74
    .line 75
    move-result v2

    .line 76
    invoke-direct {p0, v2}, Lcom/huawei/hms/adapter/BaseAdapter;->A(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    iget-object v2, p0, Lcom/huawei/hms/adapter/BaseAdapter;->k:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 80
    .line 81
    invoke-virtual {v2, p1}, Lcom/huawei/hms/common/internal/ResponseHeader;->setStatusCode(I)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->i:Landroid/content/Context;

    .line 85
    .line 86
    iget-object v2, p0, Lcom/huawei/hms/adapter/BaseAdapter;->k:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 87
    .line 88
    invoke-direct {p0, p1, v2, v4, v5}, Lcom/huawei/hms/adapter/BaseAdapter;->k(Landroid/content/Context;Lcom/huawei/hms/common/internal/ResponseHeader;J)V

    .line 89
    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_1
    const/4 p1, -0x8

    .line 93
    invoke-direct {p0, p1}, Lcom/huawei/hms/adapter/BaseAdapter;->A(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    iget-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->i:Landroid/content/Context;

    .line 97
    .line 98
    iget-object v2, p0, Lcom/huawei/hms/adapter/BaseAdapter;->k:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 99
    .line 100
    invoke-direct {p0, p1, v2, v4, v5}, Lcom/huawei/hms/adapter/BaseAdapter;->k(Landroid/content/Context;Lcom/huawei/hms/common/internal/ResponseHeader;J)V

    .line 101
    .line 102
    .line 103
    :goto_1
    const/4 p1, 0x0

    .line 104
    invoke-interface {p2, v0, v1, p1}, Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;->onComplete(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method static synthetic L(Lcom/huawei/hms/adapter/BaseAdapter;Landroid/content/Intent;Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/adapter/BaseAdapter;->K(Landroid/content/Intent;Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic M(Lcom/huawei/hms/adapter/BaseAdapter;)Lcom/huawei/hms/common/internal/ResponseHeader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->k:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 2
    .line 3
    return-object p0
.end method

.method private N()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic O(Lcom/huawei/hms/adapter/BaseAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->i:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method private P()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic Q(Lcom/huawei/hms/adapter/BaseAdapter;)Landroid/app/Activity;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/adapter/BaseAdapter;->H()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private R()Landroid/os/Parcelable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->f:Landroid/os/Parcelable;

    .line 2
    .line 3
    return-object v0
.end method

.method private S()V
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hms/adapter/BaseAdapter$2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/huawei/hms/adapter/BaseAdapter$2;-><init>(Lcom/huawei/hms/adapter/BaseAdapter;)V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->l:Lcom/huawei/hms/adapter/sysobs/SystemObserver;

    .line 7
    .line 8
    return-void
.end method

.method static synthetic T(Lcom/huawei/hms/adapter/BaseAdapter;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/adapter/BaseAdapter;->U()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private U()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->i:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/huawei/hms/utils/HMSPackageManager;->getHMSPackageName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/huawei/hms/utils/PackageManagerHelper;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/huawei/hms/adapter/BaseAdapter;->i:Landroid/content/Context;

    .line 14
    .line 15
    invoke-direct {v1, v2}, Lcom/huawei/hms/utils/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0}, Lcom/huawei/hms/utils/PackageManagerHelper;->getPackageStates(Ljava/lang/String;)Lcom/huawei/hms/utils/PackageManagerHelper$PackageStates;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sget-object v1, Lcom/huawei/hms/utils/PackageManagerHelper$PackageStates;->ENABLED:Lcom/huawei/hms/utils/PackageManagerHelper$PackageStates;

    .line 23
    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    return v0
.end method

.method private V()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->d:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->g:Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->k:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 12
    .line 13
    new-instance v0, Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/huawei/hms/common/internal/ResponseHeader;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->k:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 19
    .line 20
    invoke-direct {p0}, Lcom/huawei/hms/adapter/BaseAdapter;->N()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-direct {p0}, Lcom/huawei/hms/adapter/BaseAdapter;->P()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {p0}, Lcom/huawei/hms/adapter/BaseAdapter;->R()Landroid/os/Parcelable;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-direct {p0}, Lcom/huawei/hms/adapter/BaseAdapter;->a()Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/huawei/hms/adapter/BaseAdapter;->baseRequest(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    :goto_0
    return-void
.end method

.method private W()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->i:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "BaseAdapter"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "sendBroadcastAfterResolutionHms, context is null"

    .line 8
    .line 9
    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 14
    .line 15
    const-string v2, "com.huawei.hms.core.action.SESSION_INVALID"

    .line 16
    .line 17
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :try_start_0
    iget-object v2, p0, Lcom/huawei/hms/adapter/BaseAdapter;->i:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->i:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 32
    .line 33
    .line 34
    return-void

    .line 35
    :catch_0
    const-string v0, "IllegalArgumentException when sendBroadcastAfterResolutionHms intent.setPackage"

    .line 36
    .line 37
    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method private a()Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->g:Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic b(Lcom/huawei/hms/adapter/BaseAdapter;)Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/adapter/BaseAdapter;->y()Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private c(ILjava/lang/String;)Lcom/huawei/hms/common/internal/ResponseWrap;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/huawei/hms/adapter/BaseAdapter;->J(I)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lcom/huawei/hms/common/internal/ResponseWrap;

    .line 5
    .line 6
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->k:Lcom/huawei/hms/common/internal/ResponseHeader;

    .line 7
    .line 8
    invoke-direct {p1, v0}, Lcom/huawei/hms/common/internal/ResponseWrap;-><init>(Lcom/huawei/hms/common/internal/ResponseHeader;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p2}, Lcom/huawei/hms/common/internal/ResponseWrap;->setBody(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object p1
.end method

.method static synthetic d(Lcom/huawei/hms/adapter/BaseAdapter;ILjava/lang/String;)Lcom/huawei/hms/common/internal/ResponseWrap;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/adapter/BaseAdapter;->c(ILjava/lang/String;)Lcom/huawei/hms/common/internal/ResponseWrap;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private e(Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/adapter/CoreBaseRequest;)Lcom/huawei/hms/support/api/client/PendingResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/support/api/client/ApiClient;",
            "Ljava/lang/String;",
            "Lcom/huawei/hms/adapter/CoreBaseRequest;",
            ")",
            "Lcom/huawei/hms/support/api/client/PendingResult<",
            "Lcom/huawei/hms/support/api/ResolveResult<",
            "Lcom/huawei/hms/adapter/CoreBaseResponse;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/huawei/hms/adapter/BaseAdapter$a;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3}, Lcom/huawei/hms/adapter/BaseAdapter$a;-><init>(Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/core/aidl/e;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private f(I)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "errorCode"

    .line 7
    .line 8
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-exception p1

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "buildBodyStr failed: "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    const-string v1, "BaseAdapter"

    .line 35
    .line 36
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    return-object p1
.end method

.method static synthetic g(Lcom/huawei/hms/adapter/BaseAdapter;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/huawei/hms/adapter/BaseAdapter;->A(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private h(Landroid/app/Activity;Landroid/os/Parcelable;Lcom/huawei/hms/adapter/CoreBaseResponse;)V
    .locals 3

    .line 1
    const-string v0, "BaseAdapter"

    .line 2
    .line 3
    const-string v1, "startResolution"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->j:Lcom/huawei/hms/common/internal/RequestHeader;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->i:Landroid/content/Context;

    .line 13
    .line 14
    invoke-direct {p0, v1, v0}, Lcom/huawei/hms/adapter/BaseAdapter;->C(Landroid/content/Context;Lcom/huawei/hms/common/internal/RequestHeader;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->l:Lcom/huawei/hms/adapter/sysobs/SystemObserver;

    .line 18
    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/huawei/hms/adapter/BaseAdapter;->S()V

    .line 22
    .line 23
    .line 24
    :cond_1
    invoke-static {}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->getSystemNotifier()Lcom/huawei/hms/adapter/sysobs/SystemNotifier;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->l:Lcom/huawei/hms/adapter/sysobs/SystemObserver;

    .line 29
    .line 30
    invoke-interface {v0, v1}, Lcom/huawei/hms/adapter/sysobs/SystemNotifier;->registerObserver(Lcom/huawei/hms/adapter/sysobs/SystemObserver;)V

    .line 31
    .line 32
    .line 33
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 34
    .line 35
    const/16 v1, 0x1d

    .line 36
    .line 37
    if-lt v0, v1, :cond_2

    .line 38
    .line 39
    invoke-direct {p0, p3}, Lcom/huawei/hms/adapter/BaseAdapter;->t(Lcom/huawei/hms/adapter/CoreBaseResponse;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    const-class p3, Lcom/huawei/hms/adapter/ui/BaseResolutionAdapter;

    .line 43
    .line 44
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p3

    .line 48
    invoke-static {p1, p3}, Lcom/huawei/hms/activity/BridgeActivity;->getIntentStartBridgeActivity(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    move-result-object p3

    .line 52
    new-instance v0, Landroid/os/Bundle;

    .line 53
    .line 54
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v1, "resolution"

    .line 58
    .line 59
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    iget-object p2, p0, Lcom/huawei/hms/adapter/BaseAdapter;->h:Ljava/lang/String;

    .line 66
    .line 67
    const-string v0, "transaction_id"

    .line 68
    .line 69
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    new-instance p2, Ljava/sql/Timestamp;

    .line 73
    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 75
    .line 76
    .line 77
    move-result-wide v0

    .line 78
    invoke-direct {p2, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p2}, Ljava/sql/Timestamp;->getTime()J

    .line 82
    .line 83
    .line 84
    move-result-wide v0

    .line 85
    const-string p2, "resolution_flag"

    .line 86
    .line 87
    invoke-virtual {p3, p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 88
    .line 89
    .line 90
    invoke-static {}, Lcom/huawei/hms/utils/ResolutionFlagUtil;->getInstance()Lcom/huawei/hms/utils/ResolutionFlagUtil;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    iget-object v2, p0, Lcom/huawei/hms/adapter/BaseAdapter;->h:Ljava/lang/String;

    .line 95
    .line 96
    invoke-virtual {p2, v2, v0, v1}, Lcom/huawei/hms/utils/ResolutionFlagUtil;->saveResolutionFlag(Ljava/lang/String;J)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p1, p3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 100
    .line 101
    .line 102
    return-void
.end method

.method private i(Landroid/content/Context;Lcom/huawei/hms/common/internal/RequestHeader;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->getInstance()Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p2}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->getMapFromRequestHeader(Lcom/huawei/hms/common/internal/RequestHeader;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "direction"

    .line 10
    .line 11
    const-string v2, "req"

    .line 12
    .line 13
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/huawei/hms/common/internal/RequestHeader;->getKitSdkVersion()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    invoke-static {p2}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->versionCodeToName(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    const-string v1, "version"

    .line 29
    .line 30
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    const-string p2, "ro.logsystem.usertype"

    .line 34
    .line 35
    const-string v1, ""

    .line 36
    .line 37
    invoke-static {p2, v1}, Lcom/huawei/hms/utils/Util;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    const-string v1, "phoneType"

    .line 42
    .line 43
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    invoke-static {}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->getInstance()Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    const-string v1, "HMS_SDK_BASE_CALL_AIDL"

    .line 51
    .line 52
    invoke-virtual {p2, p1, v1, v0}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->onNewEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method private j(Landroid/content/Context;Lcom/huawei/hms/common/internal/ResponseHeader;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->getInstance()Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->getMapFromRequestHeader(Lcom/huawei/hms/common/internal/ResponseHeader;)Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    const-string v0, "direction"

    .line 9
    .line 10
    const-string v1, "rsp"

    .line 11
    .line 12
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->j:Lcom/huawei/hms/common/internal/RequestHeader;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/RequestHeader;->getKitSdkVersion()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->versionCodeToName(Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "version"

    .line 30
    .line 31
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    const-string v0, "ro.logsystem.usertype"

    .line 35
    .line 36
    const-string v1, ""

    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/huawei/hms/utils/Util;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "phoneType"

    .line 43
    .line 44
    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->getInstance()Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v1, "HMS_SDK_BASE_CALL_AIDL"

    .line 52
    .line 53
    invoke-virtual {v0, p1, v1, p2}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->onNewEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 54
    .line 55
    .line 56
    return-void
.end method

.method private k(Landroid/content/Context;Lcom/huawei/hms/common/internal/ResponseHeader;J)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->getInstance()Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->getMapFromRequestHeader(Lcom/huawei/hms/common/internal/ResponseHeader;)Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    const-string v0, "direction"

    .line 9
    .line 10
    const-string v1, "rsp"

    .line 11
    .line 12
    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    const-string p4, "waitTime"

    .line 20
    .line 21
    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    iget-object p3, p0, Lcom/huawei/hms/adapter/BaseAdapter;->j:Lcom/huawei/hms/common/internal/RequestHeader;

    .line 25
    .line 26
    invoke-virtual {p3}, Lcom/huawei/hms/common/internal/RequestHeader;->getKitSdkVersion()I

    .line 27
    .line 28
    .line 29
    move-result p3

    .line 30
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p3

    .line 34
    invoke-static {p3}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->versionCodeToName(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p3

    .line 38
    const-string p4, "version"

    .line 39
    .line 40
    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    const-string p3, "ro.logsystem.usertype"

    .line 44
    .line 45
    const-string p4, ""

    .line 46
    .line 47
    invoke-static {p3, p4}, Lcom/huawei/hms/utils/Util;->getSystemProperties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    const-string p4, "phoneType"

    .line 52
    .line 53
    invoke-interface {p2, p4, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    invoke-static {}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->getInstance()Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;

    .line 57
    .line 58
    .line 59
    move-result-object p3

    .line 60
    const-string p4, "HMS_SDK_BASE_START_RESOLUTION"

    .line 61
    .line 62
    invoke-virtual {p3, p1, p4, p2}, Lcom/huawei/hms/support/hianalytics/HiAnalyticsUtil;->onNewEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method private l(Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->f:Landroid/os/Parcelable;

    .line 2
    .line 3
    return-void
.end method

.method private m(Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->i:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/huawei/hms/utils/HMSPackageManager;->resetMultiServiceState()V

    .line 8
    .line 9
    .line 10
    const/16 v0, 0xb

    .line 11
    .line 12
    invoke-direct {p0, v0}, Lcom/huawei/hms/adapter/BaseAdapter;->f(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-direct {p0, v0, v1}, Lcom/huawei/hms/adapter/BaseAdapter;->c(ILjava/lang/String;)Lcom/huawei/hms/common/internal/ResponseWrap;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/huawei/hms/common/internal/ResponseWrap;->toJson()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {p1, v0}, Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;->onError(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/huawei/hms/adapter/BaseAdapter;->W()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method private n(Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;Lcom/huawei/hms/adapter/CoreBaseResponse;)V
    .locals 2

    .line 1
    const-string v0, "BaseAdapter"

    .line 2
    .line 3
    const-string v1, "baseCallBack.onComplete"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/huawei/hms/adapter/CoreBaseResponse;->getPendingIntent()Landroid/app/PendingIntent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {p2}, Lcom/huawei/hms/adapter/CoreBaseResponse;->getJsonHeader()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {p2}, Lcom/huawei/hms/adapter/CoreBaseResponse;->getJsonBody()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    invoke-interface {p1, v1, p2, v0}, Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;->onComplete(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    invoke-virtual {p2}, Lcom/huawei/hms/adapter/CoreBaseResponse;->getIntent()Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Lcom/huawei/hms/utils/IntentUtil;->modifyIntentBehaviorsSafe(Landroid/content/Intent;)Landroid/content/Intent;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p2}, Lcom/huawei/hms/adapter/CoreBaseResponse;->getJsonHeader()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {p2}, Lcom/huawei/hms/adapter/CoreBaseResponse;->getJsonBody()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-interface {p1, v1, p2, v0}, Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;->onComplete(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    invoke-virtual {p2}, Lcom/huawei/hms/adapter/CoreBaseResponse;->getJsonHeader()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p2}, Lcom/huawei/hms/adapter/CoreBaseResponse;->getJsonBody()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p2

    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-interface {p1, v0, p2, v1}, Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;->onComplete(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method static synthetic o(Lcom/huawei/hms/adapter/BaseAdapter;Landroid/app/Activity;Landroid/os/Parcelable;Lcom/huawei/hms/adapter/CoreBaseResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/hms/adapter/BaseAdapter;->h(Landroid/app/Activity;Landroid/os/Parcelable;Lcom/huawei/hms/adapter/CoreBaseResponse;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic p(Lcom/huawei/hms/adapter/BaseAdapter;Landroid/content/Context;Lcom/huawei/hms/common/internal/ResponseHeader;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/adapter/BaseAdapter;->j(Landroid/content/Context;Lcom/huawei/hms/common/internal/ResponseHeader;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic q(Lcom/huawei/hms/adapter/BaseAdapter;Landroid/content/Context;Lcom/huawei/hms/common/internal/ResponseHeader;J)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/hms/adapter/BaseAdapter;->k(Landroid/content/Context;Lcom/huawei/hms/common/internal/ResponseHeader;J)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic r(Lcom/huawei/hms/adapter/BaseAdapter;Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/huawei/hms/adapter/BaseAdapter;->m(Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic s(Lcom/huawei/hms/adapter/BaseAdapter;Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;Lcom/huawei/hms/adapter/CoreBaseResponse;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/adapter/BaseAdapter;->n(Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;Lcom/huawei/hms/adapter/CoreBaseResponse;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private t(Lcom/huawei/hms/adapter/CoreBaseResponse;)V
    .locals 2

    .line 1
    const-string v0, "BaseAdapter"

    .line 2
    .line 3
    const-string v1, "postResolutionTimeoutHandle"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/huawei/hms/adapter/BaseAdapter$1;

    .line 9
    .line 10
    invoke-direct {v0, p0, p1}, Lcom/huawei/hms/adapter/BaseAdapter$1;-><init>(Lcom/huawei/hms/adapter/BaseAdapter;Lcom/huawei/hms/adapter/CoreBaseResponse;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/huawei/hms/adapter/sysobs/ApkResolutionFailedManager;->getInstance()Lcom/huawei/hms/adapter/sysobs/ApkResolutionFailedManager;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->h:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1, v1, v0}, Lcom/huawei/hms/adapter/sysobs/ApkResolutionFailedManager;->postTask(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private u(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method private v(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/huawei/hms/adapter/BaseAdapter;->u(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0, p2}, Lcom/huawei/hms/adapter/BaseAdapter;->E(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0, p3}, Lcom/huawei/hms/adapter/BaseAdapter;->l(Landroid/os/Parcelable;)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0, p4}, Lcom/huawei/hms/adapter/BaseAdapter;->D(Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private w(Landroid/content/Intent;Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)Z
    .locals 3

    .line 1
    const-string v0, "privacy_statement_confirm_result"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    const/16 v1, 0x3e9

    .line 10
    .line 11
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const-string v0, "BaseAdapter"

    .line 16
    .line 17
    if-ne p1, v1, :cond_0

    .line 18
    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v1, "privacy_statement_confirm_result agreed: "

    .line 25
    .line 26
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string p1, ", replay request"

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    invoke-direct {p0}, Lcom/huawei/hms/adapter/BaseAdapter;->V()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    const-string v2, "privacy_statement_confirm_result rejected: "

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const p1, 0x3611cad9

    .line 69
    .line 70
    .line 71
    invoke-direct {p0, p1}, Lcom/huawei/hms/adapter/BaseAdapter;->f(I)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {p0, p1, v0}, Lcom/huawei/hms/adapter/BaseAdapter;->c(ILjava/lang/String;)Lcom/huawei/hms/common/internal/ResponseWrap;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/ResponseWrap;->toJson()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-interface {p2, p1}, Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;->onError(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    :goto_0
    const/4 p1, 0x1

    .line 87
    return p1

    .line 88
    :cond_1
    const/4 p1, 0x0

    .line 89
    return p1
.end method

.method static synthetic x(Lcom/huawei/hms/adapter/BaseAdapter;Landroid/content/Intent;Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/adapter/BaseAdapter;->F(Landroid/content/Intent;Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private y()Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->c:Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, "BaseAdapter"

    .line 6
    .line 7
    const-string v1, "callback null"

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    :cond_0
    return-object v0
.end method

.method static synthetic z(Lcom/huawei/hms/adapter/BaseAdapter;)Lcom/huawei/hms/adapter/sysobs/SystemObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->l:Lcom/huawei/hms/adapter/sysobs/SystemObserver;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public baseRequest(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/huawei/hms/adapter/BaseAdapter;->v(Ljava/lang/String;Ljava/lang/String;Landroid/os/Parcelable;Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->a:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    const-string v1, "BaseAdapter"

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    const-string p1, "client is null"

    .line 11
    .line 12
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, -0x2

    .line 16
    invoke-direct {p0, p1}, Lcom/huawei/hms/adapter/BaseAdapter;->A(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {p4, p1}, Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;->onError(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iput-object p4, p0, Lcom/huawei/hms/adapter/BaseAdapter;->c:Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;

    .line 25
    .line 26
    iget-object v0, p0, Lcom/huawei/hms/adapter/BaseAdapter;->j:Lcom/huawei/hms/common/internal/RequestHeader;

    .line 27
    .line 28
    invoke-static {p1, v0}, Lcom/huawei/hms/utils/JsonUtil;->jsonToEntity(Ljava/lang/String;Lcom/huawei/hms/core/aidl/e;)Lcom/huawei/hms/core/aidl/e;

    .line 29
    .line 30
    .line 31
    new-instance v0, Lcom/huawei/hms/adapter/CoreBaseRequest;

    .line 32
    .line 33
    invoke-direct {v0}, Lcom/huawei/hms/adapter/CoreBaseRequest;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p2}, Lcom/huawei/hms/adapter/CoreBaseRequest;->setJsonObject(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, p1}, Lcom/huawei/hms/adapter/CoreBaseRequest;->setJsonHeader(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p3}, Lcom/huawei/hms/adapter/CoreBaseRequest;->setParcelable(Landroid/os/Parcelable;)V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/huawei/hms/adapter/BaseAdapter;->j:Lcom/huawei/hms/common/internal/RequestHeader;

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/huawei/hms/common/internal/RequestHeader;->getApiName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result p2

    .line 55
    if-eqz p2, :cond_1

    .line 56
    .line 57
    const-string p1, "get uri null"

    .line 58
    .line 59
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const/4 p1, -0x5

    .line 63
    invoke-direct {p0, p1}, Lcom/huawei/hms/adapter/BaseAdapter;->A(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-interface {p4, p1}, Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;->onError(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_1
    iget-object p2, p0, Lcom/huawei/hms/adapter/BaseAdapter;->j:Lcom/huawei/hms/common/internal/RequestHeader;

    .line 72
    .line 73
    invoke-virtual {p2}, Lcom/huawei/hms/common/internal/RequestHeader;->getTransactionId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p2

    .line 77
    iput-object p2, p0, Lcom/huawei/hms/adapter/BaseAdapter;->h:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    if-eqz p2, :cond_2

    .line 84
    .line 85
    const-string p1, "get transactionId null"

    .line 86
    .line 87
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    const/4 p1, -0x6

    .line 91
    invoke-direct {p0, p1}, Lcom/huawei/hms/adapter/BaseAdapter;->A(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-interface {p4, p1}, Lcom/huawei/hms/adapter/BaseAdapter$BaseCallBack;->onError(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string p3, "in baseRequest + uri is :"

    .line 105
    .line 106
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string p3, ", transactionId is : "

    .line 113
    .line 114
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget-object p3, p0, Lcom/huawei/hms/adapter/BaseAdapter;->h:Ljava/lang/String;

    .line 118
    .line 119
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    invoke-static {v1, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object p2, p0, Lcom/huawei/hms/adapter/BaseAdapter;->i:Landroid/content/Context;

    .line 130
    .line 131
    iget-object p3, p0, Lcom/huawei/hms/adapter/BaseAdapter;->j:Lcom/huawei/hms/common/internal/RequestHeader;

    .line 132
    .line 133
    invoke-direct {p0, p2, p3}, Lcom/huawei/hms/adapter/BaseAdapter;->i(Landroid/content/Context;Lcom/huawei/hms/common/internal/RequestHeader;)V

    .line 134
    .line 135
    .line 136
    iget-object p2, p0, Lcom/huawei/hms/adapter/BaseAdapter;->a:Ljava/lang/ref/WeakReference;

    .line 137
    .line 138
    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    check-cast p2, Lcom/huawei/hms/support/api/client/ApiClient;

    .line 143
    .line 144
    invoke-direct {p0, p2, p1, v0}, Lcom/huawei/hms/adapter/BaseAdapter;->e(Lcom/huawei/hms/support/api/client/ApiClient;Ljava/lang/String;Lcom/huawei/hms/adapter/CoreBaseRequest;)Lcom/huawei/hms/support/api/client/PendingResult;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    new-instance p2, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;

    .line 149
    .line 150
    invoke-direct {p2, p0}, Lcom/huawei/hms/adapter/BaseAdapter$BaseRequestResultCallback;-><init>(Lcom/huawei/hms/adapter/BaseAdapter;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, p2}, Lcom/huawei/hms/support/api/client/PendingResult;->setResultCallback(Lcom/huawei/hms/support/api/client/ResultCallback;)V

    .line 154
    .line 155
    .line 156
    return-void
.end method
