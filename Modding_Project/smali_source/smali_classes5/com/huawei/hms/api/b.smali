.class final Lcom/huawei/hms/api/b;
.super Lcom/huawei/hms/api/HuaweiApiAvailability;
.source "HuaweiApiAvailabilityImpl.java"


# static fields
.field private static final a:Lcom/huawei/hms/api/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/huawei/hms/api/b;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/huawei/hms/api/b;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/huawei/hms/api/b;->a:Lcom/huawei/hms/api/b;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/api/HuaweiApiAvailability;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static a(Landroid/app/Activity;ILcom/huawei/hms/common/internal/DialogRedirect;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 6
    .line 7
    invoke-static {p0}, Lcom/huawei/hms/utils/UIUtil;->getDialogThemeId(Landroid/app/Activity;)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 12
    .line 13
    .line 14
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/ConnectionErrorMessages;->getErrorMessage(Landroid/app/Activity;I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 19
    .line 20
    .line 21
    if-eqz p3, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 24
    .line 25
    .line 26
    :cond_1
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/ConnectionErrorMessages;->getErrorDialogButtonMessage(Landroid/app/Activity;I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p3

    .line 30
    invoke-virtual {v0, p3, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 31
    .line 32
    .line 33
    invoke-static {p0}, Lcom/huawei/hms/utils/Util;->isAvailableLibExist(Landroid/content/Context;)Z

    .line 34
    .line 35
    .line 36
    move-result p2

    .line 37
    if-eqz p2, :cond_2

    .line 38
    .line 39
    invoke-static {p0}, Lcom/huawei/hms/adapter/AvailableUtil;->isInstallerLibExist(Landroid/content/Context;)Z

    .line 40
    .line 41
    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_2

    .line 44
    .line 45
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/ConnectionErrorMessages;->getErrorTitle(Landroid/app/Activity;I)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    if-eqz p0, :cond_3

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-static {p0, p1}, Lcom/huawei/hms/common/internal/ConnectionErrorMessages;->getErrorTitle(Landroid/app/Activity;I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p0

    .line 59
    if-eqz p0, :cond_3

    .line 60
    .line 61
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 62
    .line 63
    .line 64
    :cond_3
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    return-object p0
.end method

.method private b(Landroid/app/Activity;I)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "getErrorResolutionIntent, errorCode: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "HuaweiApiAvailabilityImpl"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    if-eq p2, v0, :cond_3

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    if-eq p2, v0, :cond_3

    .line 28
    .line 29
    const/4 v0, 0x6

    .line 30
    if-eq p2, v0, :cond_2

    .line 31
    .line 32
    const/16 v0, 0x9

    .line 33
    .line 34
    if-eq p2, v0, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-static {p1}, Lcom/huawei/hms/utils/Util;->isAvailableLibExist(Landroid/content/Context;)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_1

    .line 42
    .line 43
    const-class p2, Lcom/huawei/hms/update/note/AppSpoofResolution;

    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-static {p1, p2}, Lcom/huawei/hms/activity/BridgeActivity;->getIntentStartBridgeActivity(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const-class p2, Lcom/huawei/hms/api/BindingFailedResolution;

    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-static {p1, p2}, Lcom/huawei/hms/activity/BridgeActivity;->getIntentStartBridgeActivity(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    invoke-static {p1}, Lcom/huawei/hms/utils/Util;->isAvailableLibExist(Landroid/content/Context;)Z

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-eqz p2, :cond_4

    .line 72
    .line 73
    invoke-static {p1}, Lcom/huawei/hms/adapter/AvailableUtil;->isInstallerLibExist(Landroid/content/Context;)Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-eqz p2, :cond_4

    .line 78
    .line 79
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    const-string p2, "com.huawei.hms.update.manager.UpdateManager"

    .line 84
    .line 85
    const-string v0, "startUpdateIntent"

    .line 86
    .line 87
    invoke-static {p2, v0, p1}, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->invokeMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Landroid/content/Intent;

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_4
    const-class p2, Lcom/huawei/hms/update/note/DoNothingResolution;

    .line 95
    .line 96
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-static {p1, p2}, Lcom/huawei/hms/activity/BridgeActivity;->getIntentStartBridgeActivity(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    :goto_1
    return-object p1
.end method

.method private static c(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/activity/BridgeActivity;->getIntentStartBridgeActivity(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/huawei/hms/activity/BridgeActivity;->getIntentStartBridgeActivity(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private e(Landroid/content/Context;)Lcom/huawei/hms/update/ui/UpdateBean;
    .locals 3

    .line 1
    new-instance v0, Lcom/huawei/hms/update/ui/UpdateBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/huawei/hms/update/ui/UpdateBean;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/huawei/hms/update/ui/UpdateBean;->setHmsOrApkUpgrade(Z)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/huawei/hms/utils/HMSPackageManager;->getHMSPackageName()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lcom/huawei/hms/update/ui/UpdateBean;->setClientPackageName(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/huawei/hms/update/ui/UpdateBean;->getClientPackageName()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 30
    .line 31
    const-string v1, "com.huawei.hwid"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/huawei/hms/update/ui/UpdateBean;->setClientPackageName(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    invoke-static {}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getServicesVersionCode()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/huawei/hms/update/ui/UpdateBean;->setClientVersionCode(I)V

    .line 41
    .line 42
    .line 43
    const-string v1, "C10132067"

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Lcom/huawei/hms/update/ui/UpdateBean;->setClientAppId(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-static {}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->getmContext()Landroid/content/Context;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    if-nez v1, :cond_1

    .line 53
    .line 54
    invoke-static {p1}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->setmContext(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    :try_start_0
    const-string p1, "hms_update_title"

    .line 58
    .line 59
    invoke-static {p1}, Lcom/huawei/hms/utils/ResourceLoaderUtil;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {v0, p1}, Lcom/huawei/hms/update/ui/UpdateBean;->setClientAppName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    move-exception p1

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .line 72
    .line 73
    const-string v2, "getString has Exception:"

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const-string v1, "HuaweiApiAvailabilityImpl"

    .line 90
    .line 91
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :goto_0
    return-object v0
.end method

.method private static f(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    .line 1
    const-string v0, "activity must not be null."

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    invoke-static {p1, p3}, Lcom/huawei/hms/common/ErrorDialogFragment;->newInstance(Landroid/app/Dialog;Landroid/content/DialogInterface$OnCancelListener;)Lcom/huawei/hms/common/ErrorDialogFragment;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p1, p0, p2}, Lcom/huawei/hms/common/ErrorDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private g(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/huawei/hms/common/api/AvailabilityException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/huawei/hms/common/api/AvailabilityException;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/huawei/hms/common/api/AvailabilityException;-><init>()V

    .line 4
    .line 5
    .line 6
    instance-of v1, p1, Lcom/huawei/hms/common/HuaweiApi;

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    check-cast p1, Lcom/huawei/hms/common/HuaweiApi;

    .line 11
    .line 12
    invoke-virtual {v0, p1}, Lcom/huawei/hms/common/api/AvailabilityException;->getConnectionResult(Lcom/huawei/hms/common/HuaweiApi;)Lcom/huawei/hms/api/ConnectionResult;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    check-cast p1, Lcom/huawei/hms/common/api/HuaweiApiCallable;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/huawei/hms/common/api/AvailabilityException;->getConnectionResult(Lcom/huawei/hms/common/api/HuaweiApiCallable;)Lcom/huawei/hms/api/ConnectionResult;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :goto_0
    invoke-virtual {p1}, Lcom/huawei/hms/api/ConnectionResult;->getErrorCode()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v1, "The service is unavailable: "

    .line 36
    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/huawei/hms/common/api/AvailabilityException;->getMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v1, "HuaweiApiAvailabilityImpl"

    .line 52
    .line 53
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw v0
.end method

.method public static h()Lcom/huawei/hms/api/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/huawei/hms/api/b;->a:Lcom/huawei/hms/api/b;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public varargs checkApiAccessible(Lcom/huawei/hms/common/HuaweiApi;[Lcom/huawei/hms/common/HuaweiApi;)Lua/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/common/HuaweiApi<",
            "*>;[",
            "Lcom/huawei/hms/common/HuaweiApi<",
            "*>;)",
            "Lua/f<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lua/g;

    invoke-direct {v0}, Lua/g;-><init>()V

    .line 2
    invoke-virtual {v0}, Lua/g;->a()Lua/f;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    invoke-direct {p0, p1}, Lcom/huawei/hms/api/b;->g(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 4
    array-length p1, p2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_1

    aget-object v2, p2, v1

    .line 5
    invoke-direct {p0, v2}, Lcom/huawei/hms/api/b;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/huawei/hms/common/api/AvailabilityException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkApi has AvailabilityException "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/hms/common/api/AvailabilityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HuaweiApiAvailabilityImpl"

    invoke-static {p2, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public varargs checkApiAccessible(Lcom/huawei/hms/common/api/HuaweiApiCallable;[Lcom/huawei/hms/common/api/HuaweiApiCallable;)Lua/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/huawei/hms/common/api/HuaweiApiCallable;",
            "[",
            "Lcom/huawei/hms/common/api/HuaweiApiCallable;",
            ")",
            "Lua/f<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 7
    new-instance v0, Lua/g;

    invoke-direct {v0}, Lua/g;-><init>()V

    .line 8
    invoke-virtual {v0}, Lua/g;->a()Lua/f;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 9
    :try_start_0
    invoke-direct {p0, p1}, Lcom/huawei/hms/api/b;->g(Ljava/lang/Object;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    .line 10
    array-length p1, p2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_1

    aget-object v2, p2, v1

    .line 11
    invoke-direct {p0, v2}, Lcom/huawei/hms/api/b;->g(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/huawei/hms/common/api/AvailabilityException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 12
    :goto_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HuaweiApiCallable checkApi has AvailabilityException "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/huawei/hms/common/api/AvailabilityException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "HuaweiApiAvailabilityImpl"

    invoke-static {p2, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public getErrPendingIntent(Landroid/content/Context;II)Landroid/app/PendingIntent;
    .locals 2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter getResolveErrorPendingIntent, errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HuaweiApiAvailabilityImpl"

    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/api/b;->i(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object p2

    if-eqz p2, :cond_0

    const/high16 v0, 0x4000000

    .line 7
    invoke-static {p1, p3, p2, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getErrPendingIntent(Landroid/content/Context;Lcom/huawei/hms/api/ConnectionResult;)Landroid/app/PendingIntent;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/huawei/hms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Lcom/huawei/hms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p2}, Lcom/huawei/hms/api/ConnectionResult;->getErrorCode()I

    move-result p2

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/api/b;->j(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method public getErrorDialog(Landroid/app/Activity;II)Landroid/app/Dialog;
    .locals 2

    .line 1
    const-string v0, "activity must not be null."

    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter getErrorDialog, errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HuaweiApiAvailabilityImpl"

    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/huawei/hms/api/b;->getErrorDialog(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public getErrorDialog(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;
    .locals 2

    .line 4
    const-string v0, "activity must not be null."

    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter getErrorDialog, errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HuaweiApiAvailabilityImpl"

    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/huawei/hms/api/b;->b(Landroid/app/Activity;I)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p1, v0, p3}, Lcom/huawei/hms/common/internal/DialogRedirect;->getInstance(Landroid/app/Activity;Landroid/content/Intent;I)Lcom/huawei/hms/common/internal/DialogRedirect;

    move-result-object p3

    .line 7
    invoke-static {p1, p2, p3, p4}, Lcom/huawei/hms/api/b;->a(Landroid/app/Activity;ILcom/huawei/hms/common/internal/DialogRedirect;Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public getErrorString(I)Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Enter getErrorString, errorCode: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "HuaweiApiAvailabilityImpl"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p1}, Lcom/huawei/hms/api/ConnectionResult;->getErrorString(I)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    return-object p1
.end method

.method public getHuaweiServicesReady(Landroid/app/Activity;)Lua/f;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")",
            "Lua/f<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/huawei/hms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lua/g;

    .line 5
    .line 6
    invoke-direct {v0}, Lua/g;-><init>()V

    .line 7
    .line 8
    .line 9
    filled-new-array {v0}, [Lua/g;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v1, 0x0

    .line 14
    aget-object v2, v0, v1

    .line 15
    .line 16
    invoke-virtual {v2}, Lua/g;->a()Lua/f;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const v4, 0x1c9c380

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0, v3, v4}, Lcom/huawei/hms/api/b;->isHuaweiMobileServicesAvailable(Landroid/content/Context;I)I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    invoke-virtual {p0, p1, v3}, Lcom/huawei/hms/api/b;->getResolveErrorIntent(Landroid/app/Activity;I)Landroid/content/Intent;

    .line 32
    .line 33
    .line 34
    move-result-object v4

    .line 35
    const-class v5, Lcom/huawei/hms/api/ResolutionDelegate;

    .line 36
    .line 37
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    invoke-static {p1, v5}, Lcom/huawei/hms/activity/BridgeActivity;->getIntentStartBridgeActivity(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    move-result-object v5

    .line 45
    if-eqz v4, :cond_0

    .line 46
    .line 47
    new-instance v1, Lcom/huawei/hms/api/b$a;

    .line 48
    .line 49
    invoke-direct {v1, p0, v0}, Lcom/huawei/hms/api/b$a;-><init>(Lcom/huawei/hms/api/b;[Lua/g;)V

    .line 50
    .line 51
    .line 52
    const-string v0, "CALLBACK_METHOD"

    .line 53
    .line 54
    invoke-static {v0, v1}, Lcom/huawei/hms/activity/ForegroundIntentBuilder;->registerResponseCallback(Ljava/lang/String;Lcom/huawei/hms/activity/internal/BusResponseCallback;)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Landroid/os/Bundle;

    .line 58
    .line 59
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v1, "resolution"

    .line 63
    .line 64
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v5, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    const/4 v4, 0x3

    .line 75
    if-ne v3, v4, :cond_1

    .line 76
    .line 77
    new-instance v0, Landroid/content/Intent;

    .line 78
    .line 79
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 80
    .line 81
    .line 82
    const-class v1, Lcom/huawei/hms/activity/EnableServiceActivity;

    .line 83
    .line 84
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_1
    const-string p1, "HuaweiApiAvailabilityImpl"

    .line 92
    .line 93
    if-nez v3, :cond_2

    .line 94
    .line 95
    const-string v0, "The HMS service is available."

    .line 96
    .line 97
    invoke-static {p1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_2
    const-string v3, "Framework can not solve the availability problem."

    .line 102
    .line 103
    invoke-static {p1, v3}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    aget-object p1, v0, v1

    .line 107
    .line 108
    new-instance v0, Lcom/huawei/hms/common/api/AvailabilityException;

    .line 109
    .line 110
    invoke-direct {v0}, Lcom/huawei/hms/common/api/AvailabilityException;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p1, v0}, Lua/g;->b(Ljava/lang/Exception;)V

    .line 114
    .line 115
    .line 116
    :goto_0
    return-object v2
.end method

.method public getResolveErrorIntent(Landroid/app/Activity;I)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Enter getResolveErrorIntent, errorCode: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "HuaweiApiAvailabilityImpl"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    if-nez p1, :cond_0

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_0
    const/4 v1, 0x1

    .line 28
    if-eq p2, v1, :cond_3

    .line 29
    .line 30
    const/4 v1, 0x2

    .line 31
    if-eq p2, v1, :cond_3

    .line 32
    .line 33
    const/4 v1, 0x6

    .line 34
    if-eq p2, v1, :cond_2

    .line 35
    .line 36
    const/16 v1, 0x9

    .line 37
    .line 38
    if-eq p2, v1, :cond_1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-static {p1}, Lcom/huawei/hms/utils/Util;->isAvailableLibExist(Landroid/content/Context;)Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_5

    .line 46
    .line 47
    const-class p2, Lcom/huawei/hms/update/note/AppSpoofResolution;

    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-static {p1, p2}, Lcom/huawei/hms/api/b;->c(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const-class p2, Lcom/huawei/hms/api/BindingFailedResolution;

    .line 59
    .line 60
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    invoke-static {p1, p2}, Lcom/huawei/hms/api/b;->c(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    goto :goto_0

    .line 69
    :cond_3
    invoke-static {p1}, Lcom/huawei/hms/utils/Util;->isAvailableLibExist(Landroid/content/Context;)Z

    .line 70
    .line 71
    .line 72
    move-result p2

    .line 73
    if-eqz p2, :cond_4

    .line 74
    .line 75
    invoke-static {p1}, Lcom/huawei/hms/adapter/AvailableUtil;->isInstallerLibExist(Landroid/content/Context;)Z

    .line 76
    .line 77
    .line 78
    move-result p2

    .line 79
    if-eqz p2, :cond_4

    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    invoke-direct {p0, p2}, Lcom/huawei/hms/api/b;->e(Landroid/content/Context;)Lcom/huawei/hms/update/ui/UpdateBean;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const-string p2, "com.huawei.hms.update.manager.UpdateManager"

    .line 94
    .line 95
    const-string v0, "getStartUpdateIntent"

    .line 96
    .line 97
    invoke-static {p2, v0, p1}, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->invokeMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    move-object v0, p1

    .line 102
    check-cast v0, Landroid/content/Intent;

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_4
    const-class p2, Lcom/huawei/hms/update/note/NotInstalledHmsResolution;

    .line 106
    .line 107
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p2

    .line 111
    invoke-static {p1, p2}, Lcom/huawei/hms/api/b;->c(Landroid/app/Activity;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    :cond_5
    :goto_0
    return-object v0
.end method

.method public getResolveErrorPendingIntent(Landroid/app/Activity;I)Landroid/app/PendingIntent;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Enter getResolveErrorPendingIntent, errorCode: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "HuaweiApiAvailabilityImpl"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/api/b;->getResolveErrorIntent(Landroid/app/Activity;I)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    const/high16 v1, 0x4000000

    .line 31
    .line 32
    invoke-static {p1, v0, p2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 38
    :goto_0
    return-object p1
.end method

.method public i(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Enter getResolveErrorIntent, errorCode: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "HuaweiApiAvailabilityImpl"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    if-eq p2, v0, :cond_3

    .line 25
    .line 26
    const/4 v0, 0x2

    .line 27
    if-eq p2, v0, :cond_3

    .line 28
    .line 29
    const/4 v0, 0x6

    .line 30
    if-eq p2, v0, :cond_2

    .line 31
    .line 32
    const/16 v0, 0x9

    .line 33
    .line 34
    if-eq p2, v0, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    invoke-static {p1}, Lcom/huawei/hms/utils/Util;->isAvailableLibExist(Landroid/content/Context;)Z

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    if-eqz p2, :cond_1

    .line 42
    .line 43
    const-class p2, Lcom/huawei/hms/update/note/AppSpoofResolution;

    .line 44
    .line 45
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-static {p1, p2}, Lcom/huawei/hms/api/b;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 55
    goto :goto_1

    .line 56
    :cond_2
    const-class p2, Lcom/huawei/hms/api/BindingFailedResolution;

    .line 57
    .line 58
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-static {p1, p2}, Lcom/huawei/hms/api/b;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    invoke-static {p1}, Lcom/huawei/hms/utils/Util;->isAvailableLibExist(Landroid/content/Context;)Z

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-eqz p2, :cond_4

    .line 72
    .line 73
    invoke-static {p1}, Lcom/huawei/hms/adapter/AvailableUtil;->isInstallerLibExist(Landroid/content/Context;)Z

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    if-eqz p2, :cond_4

    .line 78
    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object p2

    .line 83
    invoke-direct {p0, p2}, Lcom/huawei/hms/api/b;->e(Landroid/content/Context;)Lcom/huawei/hms/update/ui/UpdateBean;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    const-string p2, "com.huawei.hms.update.manager.UpdateManager"

    .line 92
    .line 93
    const-string v0, "getStartUpdateIntent"

    .line 94
    .line 95
    invoke-static {p2, v0, p1}, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->invokeMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Landroid/content/Intent;

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_4
    const-class p2, Lcom/huawei/hms/update/note/NotInstalledHmsResolution;

    .line 103
    .line 104
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    invoke-static {p1, p2}, Lcom/huawei/hms/api/b;->d(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    :goto_1
    return-object p1
.end method

.method public isHuaweiMobileNoticeAvailable(Landroid/content/Context;)I
    .locals 5

    .line 1
    const-string v0, "context must not be null."

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/huawei/hms/utils/PackageManagerHelper;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lcom/huawei/hms/utils/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/huawei/hms/utils/HMSPackageManager;->getHMSPackageNameForMultiService()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/4 v3, 0x1

    .line 24
    const-string v4, "HuaweiApiAvailabilityImpl"

    .line 25
    .line 26
    if-eqz v2, :cond_0

    .line 27
    .line 28
    const-string p1, "hmsPackageName is empty, Service is invalid."

    .line 29
    .line 30
    invoke-static {v4, p1}, Lcom/huawei/hms/support/log/HMSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return v3

    .line 34
    :cond_0
    invoke-virtual {v0, v1}, Lcom/huawei/hms/utils/PackageManagerHelper;->getPackageStates(Ljava/lang/String;)Lcom/huawei/hms/utils/PackageManagerHelper$PackageStates;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sget-object v1, Lcom/huawei/hms/utils/PackageManagerHelper$PackageStates;->NOT_INSTALLED:Lcom/huawei/hms/utils/PackageManagerHelper$PackageStates;

    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    const-string p1, "hmsPackageName is not installed, Service is invalid."

    .line 47
    .line 48
    invoke-static {v4, p1}, Lcom/huawei/hms/support/log/HMSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return v3

    .line 52
    :cond_1
    invoke-static {p1}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const v0, 0x13a54c0

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Lcom/huawei/hms/utils/HMSPackageManager;->isApkUpdateNecessary(I)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    const/4 p1, 0x2

    .line 66
    return p1

    .line 67
    :cond_2
    const/4 p1, 0x0

    .line 68
    return p1
.end method

.method public isHuaweiMobileServicesAvailable(Landroid/content/Context;)I
    .locals 1

    .line 1
    const-string v0, "context must not be null."

    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcom/huawei/hms/api/HuaweiApiAvailability;->getServicesVersionCode()I

    move-result v0

    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hms/api/HuaweiMobileServicesUtil;->isHuaweiMobileServicesAvailable(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public isHuaweiMobileServicesAvailable(Landroid/content/Context;I)I
    .locals 1

    .line 4
    const-string v0, "context must not be null."

    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    invoke-static {p1, p2}, Lcom/huawei/hms/api/HuaweiMobileServicesUtil;->isHuaweiMobileServicesAvailable(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method

.method public isUserResolvableError(I)Z
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/huawei/hms/api/b;->isUserResolvableError(ILandroid/app/PendingIntent;)Z

    move-result p1

    return p1
.end method

.method public isUserResolvableError(ILandroid/app/PendingIntent;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-eqz p2, :cond_1

    return v1

    :cond_1
    if-eq p1, v1, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x6

    if-eq p1, p2, :cond_2

    const/16 p2, 0x9

    if-eq p1, p2, :cond_2

    return v0

    :cond_2
    return v1
.end method

.method public j(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "Enter getResolveErrorPendingIntent, errorCode: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "HuaweiApiAvailabilityImpl"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/api/b;->i(Landroid/content/Context;I)Landroid/content/Intent;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    if-eqz p2, :cond_0

    .line 28
    .line 29
    const/4 v0, 0x0

    .line 30
    const/high16 v1, 0x4000000

    .line 31
    .line 32
    invoke-static {p1, v0, p2, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    const/4 p1, 0x0

    .line 38
    :goto_0
    return-object p1
.end method

.method public popupErrNotification(Landroid/content/Context;Lcom/huawei/hms/api/ConnectionResult;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/huawei/hms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-static {p2}, Lcom/huawei/hms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p2}, Lcom/huawei/hms/api/ConnectionResult;->getErrorCode()I

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/api/b;->showErrorNotification(Landroid/content/Context;I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public resolveError(Landroid/app/Activity;II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/huawei/hms/api/b;->resolveError(Landroid/app/Activity;IILandroid/app/PendingIntent;)V

    return-void
.end method

.method public resolveError(Landroid/app/Activity;IILandroid/app/PendingIntent;)V
    .locals 9

    .line 2
    const-string v0, "activity must not be null."

    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "HuaweiApiAvailabilityImpl"

    if-eqz p4, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Enter resolveError, param pendingIntent is not null. and.errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter resolveError, param pendingIntent is  null. get pendingIntent from error code.and.errorCode: "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/huawei/hms/api/b;->getResolveErrorPendingIntent(Landroid/app/Activity;I)Landroid/app/PendingIntent;

    move-result-object p4

    :goto_0
    if-eqz p4, :cond_1

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "In resolveError, start pendingIntent.errorCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :try_start_0
    invoke-virtual {p4}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move v4, p3

    invoke-virtual/range {v2 .. v8}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 8
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Enter resolveError, start pendingIntent failed.errorCode: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public showErrorDialogFragment(Landroid/app/Activity;II)Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/huawei/hms/api/b;->showErrorDialogFragment(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z

    move-result p1

    return p1
.end method

.method public showErrorDialogFragment(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/huawei/hms/api/b;->getErrorDialog(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Landroid/app/Dialog;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    const-string p3, "HuaweiMobileServicesErrorDialog"

    invoke-static {p1, p2, p3, p4}, Lcom/huawei/hms/api/b;->f(Landroid/app/Activity;Landroid/app/Dialog;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 p1, 0x1

    return p1
.end method

.method public showErrorDialogFragment(Landroid/app/Activity;ILandroid/app/Fragment;ILandroid/content/DialogInterface$OnCancelListener;)Z
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/huawei/hms/api/b;->showErrorDialogFragment(Landroid/app/Activity;IILandroid/content/DialogInterface$OnCancelListener;)Z

    move-result p1

    return p1
.end method

.method public showErrorNotification(Landroid/content/Context;I)V
    .locals 2

    .line 1
    const-string v0, "context must not be null."

    .line 2
    .line 3
    invoke-static {p1, v0}, Lcom/huawei/hms/utils/Checker;->checkNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v1, "Enter showErrorNotification, errorCode: "

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const-string v1, "HuaweiApiAvailabilityImpl"

    .line 24
    .line 25
    invoke-static {v1, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    instance-of v0, p1, Landroid/app/Activity;

    .line 29
    .line 30
    if-nez v0, :cond_0

    .line 31
    .line 32
    const-string p1, "context not instanceof Activity"

    .line 33
    .line 34
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    check-cast p1, Landroid/app/Activity;

    .line 39
    .line 40
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, p1, p2, v0}, Lcom/huawei/hms/api/b;->getErrorDialog(Landroid/app/Activity;II)Landroid/app/Dialog;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    const-string p1, "showErrorNotification errorDialog can not be null"

    .line 48
    .line 49
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-void

    .line 53
    :cond_1
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 54
    .line 55
    .line 56
    return-void
.end method
