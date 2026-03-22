.class public Lcom/huawei/hms/adapter/ui/UpdateAdapter;
.super Ljava/lang/Object;
.source "UpdateAdapter.java"

# interfaces
.implements Lcom/huawei/hms/activity/IBridgeActivityDelegate;


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:I

.field private d:Lcom/huawei/hms/update/ui/UpdateBean;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->e:Z

    .line 6
    .line 7
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "UpdateAdapter"

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string p0, "className is empty."

    .line 11
    .line 12
    invoke-static {v2, p0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-object v1

    .line 16
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const-string p0, "methodName is empty."

    .line 23
    .line 24
    invoke-static {v2, p0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-object v1

    .line 28
    :cond_1
    if-nez p2, :cond_2

    .line 29
    .line 30
    const-string p0, "args is null."

    .line 31
    .line 32
    invoke-static {v2, p0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    return-object v1

    .line 36
    :cond_2
    array-length v0, p2

    .line 37
    new-array v0, v0, [Ljava/lang/Class;

    .line 38
    .line 39
    const/4 v1, 0x0

    .line 40
    move v3, v1

    .line 41
    :goto_0
    array-length v4, p2

    .line 42
    if-ge v3, v4, :cond_8

    .line 43
    .line 44
    aget-object v4, p2, v3

    .line 45
    .line 46
    instance-of v5, v4, Landroid/app/Activity;

    .line 47
    .line 48
    if-eqz v5, :cond_3

    .line 49
    .line 50
    const-class v4, Landroid/app/Activity;

    .line 51
    .line 52
    aput-object v4, v0, v3

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_3
    instance-of v5, v4, Landroid/content/Context;

    .line 56
    .line 57
    if-eqz v5, :cond_4

    .line 58
    .line 59
    const-class v4, Landroid/content/Context;

    .line 60
    .line 61
    aput-object v4, v0, v3

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_4
    instance-of v5, v4, Lcom/huawei/hms/update/ui/UpdateBean;

    .line 65
    .line 66
    if-eqz v5, :cond_5

    .line 67
    .line 68
    const-class v4, Lcom/huawei/hms/update/ui/UpdateBean;

    .line 69
    .line 70
    aput-object v4, v0, v3

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_5
    instance-of v5, v4, Ljava/lang/Integer;

    .line 74
    .line 75
    if-eqz v5, :cond_6

    .line 76
    .line 77
    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 78
    .line 79
    aput-object v4, v0, v3

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_6
    instance-of v4, v4, Ljava/lang/Boolean;

    .line 83
    .line 84
    if-eqz v4, :cond_7

    .line 85
    .line 86
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 87
    .line 88
    aput-object v4, v0, v3

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    const-string v5, "not set args["

    .line 97
    .line 98
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const-string v5, "] type"

    .line 105
    .line 106
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-static {v2, v4}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_8
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 120
    .line 121
    .line 122
    move-result-object p0

    .line 123
    new-array v2, v1, [Ljava/lang/Class;

    .line 124
    .line 125
    invoke-virtual {p0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    new-array v1, v1, [Ljava/lang/Object;

    .line 130
    .line 131
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {p0, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-virtual {p0, v1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    return-object p0
.end method

.method private b()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->f()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    return-void
.end method

.method private c(Landroid/content/Intent;)V
    .locals 3

    .line 1
    const-string v0, "UpdateAdapter"

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    :try_start_0
    const-string v2, "intent.extra.RESULT"

    .line 5
    .line 6
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 7
    .line 8
    .line 9
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    goto :goto_0

    .line 11
    :catchall_0
    const-string p1, "get extra_result failed, throwable occur."

    .line 12
    .line 13
    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    if-nez v1, :cond_0

    .line 17
    .line 18
    const-string p1, "Error resolved successfully!"

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->getInstance()Lcom/huawei/hms/adapter/sysobs/SystemManager;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p1, v0}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->notifyUpdateResult(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    const/16 p1, 0xd

    .line 33
    .line 34
    if-ne v1, p1, :cond_1

    .line 35
    .line 36
    const-string v1, "Resolve error process canceled by user!"

    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->getInstance()Lcom/huawei/hms/adapter/sysobs/SystemManager;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, p1}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->notifyUpdateResult(I)V

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_1
    const/16 p1, 0x8

    .line 50
    .line 51
    if-ne v1, p1, :cond_2

    .line 52
    .line 53
    const-string v1, "Internal error occurred, recommended retry."

    .line 54
    .line 55
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->getInstance()Lcom/huawei/hms/adapter/sysobs/SystemManager;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0, p1}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->notifyUpdateResult(I)V

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const-string p1, "Other error codes."

    .line 67
    .line 68
    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    invoke-static {}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->getInstance()Lcom/huawei/hms/adapter/sysobs/SystemManager;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1, v1}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->notifyUpdateResult(I)V

    .line 76
    .line 77
    .line 78
    :goto_1
    return-void
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_3

    .line 3
    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-nez v1, :cond_3

    .line 9
    .line 10
    if-nez p3, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v1, Lcom/huawei/hms/utils/PackageManagerHelper;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Lcom/huawei/hms/utils/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p2}, Lcom/huawei/hms/utils/PackageManagerHelper;->getPackageStates(Ljava/lang/String;)Lcom/huawei/hms/utils/PackageManagerHelper$PackageStates;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    sget-object v2, Lcom/huawei/hms/utils/PackageManagerHelper$PackageStates;->NOT_INSTALLED:Lcom/huawei/hms/utils/PackageManagerHelper$PackageStates;

    .line 23
    .line 24
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    const/4 v2, 0x1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    return v2

    .line 32
    :cond_1
    invoke-virtual {v1, p2}, Lcom/huawei/hms/utils/PackageManagerHelper;->getPackageVersionCode(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result p1

    .line 36
    if-ge p1, p3, :cond_2

    .line 37
    .line 38
    move v0, v2

    .line 39
    :cond_2
    return v0

    .line 40
    :cond_3
    :goto_0
    const-string p1, "UpdateAdapter"

    .line 41
    .line 42
    const-string p2, "Please check your params, one of params is invalid."

    .line 43
    .line 44
    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return v0
.end method

.method private e(Landroid/content/Intent;Landroid/app/Activity;)Z
    .locals 5

    .line 1
    const-string v0, "new_update"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    const-string p1, "4.0 framework HMSCore upgrade process"

    .line 11
    .line 12
    const-string v0, "UpdateAdapter"

    .line 13
    .line 14
    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p1}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/huawei/hms/utils/HMSPackageManager;->getHMSPackageName()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    const/4 v2, 0x1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    const-string p1, "hmsPackageName is empty, update invalid."

    .line 37
    .line 38
    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-direct {p0}, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->g()V

    .line 42
    .line 43
    .line 44
    return v2

    .line 45
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    .line 46
    .line 47
    const-string v1, "com.huawei.hms.fwksdk.stub.UpdateStubActivity"

    .line 48
    .line 49
    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    new-instance v1, Landroid/content/Intent;

    .line 53
    .line 54
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    const-string v4, "kpms_key_caller_packagename"

    .line 66
    .line 67
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 68
    .line 69
    .line 70
    const-string v3, "kitUpdatePackageName"

    .line 71
    .line 72
    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 76
    .line 77
    .line 78
    const/16 p1, 0x3e9

    .line 79
    .line 80
    invoke-virtual {p2, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 81
    .line 82
    .line 83
    return v2

    .line 84
    :cond_1
    return v1
.end method

.method private f()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->a:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/app/Activity;

    .line 12
    .line 13
    return-object v0
.end method

.method private g()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->getInstance()Lcom/huawei/hms/adapter/sysobs/SystemManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->notifyUpdateResult(I)V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->b()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public static invokeMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {p0, p1, p2}, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    return-object p0

    .line 6
    :catchall_0
    move-exception p2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v1, "invoke "

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p0, "."

    .line 21
    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p0, " fail. "

    .line 29
    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p0

    .line 37
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    const-string p1, "UpdateAdapter"

    .line 45
    .line 46
    invoke-static {p1, p0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/4 p0, 0x0

    .line 50
    return-object p0
.end method


# virtual methods
.method public getRequestCode()I
    .locals 1

    .line 1
    const/16 v0, 0x3e9

    .line 2
    .line 3
    return v0
.end method

.method public onBridgeActivityCreate(Landroid/app/Activity;)V
    .locals 6

    .line 1
    const-string v0, "com.huawei.hms.adapter.ui.InstallerAdapter"

    .line 2
    .line 3
    const-string v1, "UpdateAdapter"

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    const-string p1, "activity == null"

    .line 8
    .line 9
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->g()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    const-string p1, "activity is finishing"

    .line 23
    .line 24
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-direct {p0}, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->g()V

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    iput-object v2, p0, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->b:Landroid/content/Context;

    .line 36
    .line 37
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 38
    .line 39
    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iput-object v2, p0, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->a:Ljava/lang/ref/WeakReference;

    .line 43
    .line 44
    sget-object v2, Lcom/huawei/hms/availableupdate/c;->b:Lcom/huawei/hms/availableupdate/c;

    .line 45
    .line 46
    invoke-direct {p0}, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->f()Landroid/app/Activity;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v2, v3}, Lcom/huawei/hms/availableupdate/c;->a(Landroid/app/Activity;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_2

    .line 55
    .line 56
    return-void

    .line 57
    :cond_2
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    if-nez v2, :cond_3

    .line 62
    .line 63
    invoke-direct {p0}, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->g()V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    :try_start_0
    const-string v3, "update_version"

    .line 68
    .line 69
    const/4 v4, 0x0

    .line 70
    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    iput v3, p0, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    move-exception v3

    .line 78
    new-instance v4, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v5, "get update_version:"

    .line 84
    .line 85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-static {v1, v3}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :goto_0
    iget v3, p0, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->c:I

    .line 103
    .line 104
    if-nez v3, :cond_4

    .line 105
    .line 106
    invoke-direct {p0}, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->g()V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_4
    const-string v3, "installHMS"

    .line 111
    .line 112
    invoke-virtual {v2, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-eqz v3, :cond_5

    .line 117
    .line 118
    const/4 v3, 0x1

    .line 119
    iput-boolean v3, p0, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->e:Z

    .line 120
    .line 121
    :cond_5
    invoke-direct {p0, v2, p1}, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->e(Landroid/content/Intent;Landroid/app/Activity;)Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-eqz v2, :cond_6

    .line 126
    .line 127
    return-void

    .line 128
    :cond_6
    :try_start_1
    iget-object v2, p0, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->b:Landroid/content/Context;

    .line 129
    .line 130
    invoke-static {v2}, Lcom/huawei/hms/adapter/AvailableUtil;->isInstallerLibExist(Landroid/content/Context;)Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_7

    .line 135
    .line 136
    iget v2, p0, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->c:I

    .line 137
    .line 138
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    iget-boolean v3, p0, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->e:Z

    .line 143
    .line 144
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    filled-new-array {p1, v2, v3}, [Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    const-string v3, "setUpdateBean"

    .line 153
    .line 154
    invoke-static {v0, v3, v2}, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v2

    .line 158
    check-cast v2, Lcom/huawei/hms/update/ui/UpdateBean;

    .line 159
    .line 160
    iput-object v2, p0, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->d:Lcom/huawei/hms/update/ui/UpdateBean;

    .line 161
    .line 162
    const/16 v3, 0x3e9

    .line 163
    .line 164
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 165
    .line 166
    .line 167
    move-result-object v3

    .line 168
    filled-new-array {p1, v2, v3}, [Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    const-string v2, "startUpdateHms"

    .line 173
    .line 174
    invoke-static {v0, v2, p1}, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    const/4 p1, 0x0

    .line 178
    iput-object p1, p0, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->d:Lcom/huawei/hms/update/ui/UpdateBean;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 179
    .line 180
    goto :goto_1

    .line 181
    :catchall_1
    move-exception p1

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    const-string v2, "InstallerAdapter.startUpdateHms is failed. message\uff1a"

    .line 188
    .line 189
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object p1

    .line 196
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    invoke-static {v1, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-direct {p0}, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->g()V

    .line 207
    .line 208
    .line 209
    :cond_7
    :goto_1
    return-void
.end method

.method public onBridgeActivityDestroy()V
    .locals 2

    .line 1
    const-string v0, "UpdateAdapter"

    .line 2
    .line 3
    const-string v1, "onBridgeActivityDestroy"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sget-object v0, Lcom/huawei/hms/availableupdate/c;->b:Lcom/huawei/hms/availableupdate/c;

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->f()Landroid/app/Activity;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/huawei/hms/availableupdate/c;->b(Landroid/app/Activity;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    iput-object v0, p0, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->a:Ljava/lang/ref/WeakReference;

    .line 19
    .line 20
    return-void
.end method

.method public onBridgeActivityResult(IILandroid/content/Intent;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->getRequestCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    iput-object v2, p0, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->d:Lcom/huawei/hms/update/ui/UpdateBean;

    .line 10
    .line 11
    return v1

    .line 12
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string v0, "onBridgeActivityResult "

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const-string v0, "UpdateAdapter"

    .line 30
    .line 31
    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object p1, p0, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->b:Landroid/content/Context;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/huawei/hms/adapter/AvailableUtil;->isInstallerLibExist(Landroid/content/Context;)Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    const/4 v3, 0x1

    .line 41
    if-eqz p1, :cond_2

    .line 42
    .line 43
    const/16 p1, 0x4be

    .line 44
    .line 45
    if-ne p2, p1, :cond_2

    .line 46
    .line 47
    const-string p1, "Enter update escape route"

    .line 48
    .line 49
    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-direct {p0}, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->f()Landroid/app/Activity;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-nez p1, :cond_1

    .line 57
    .line 58
    const-string p1, "bridgeActivity is null, update escape failed "

    .line 59
    .line 60
    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    iput-object v2, p0, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->d:Lcom/huawei/hms/update/ui/UpdateBean;

    .line 64
    .line 65
    return v3

    .line 66
    :cond_1
    const/16 v4, 0x3e9

    .line 67
    .line 68
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    iget-object v5, p0, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->d:Lcom/huawei/hms/update/ui/UpdateBean;

    .line 73
    .line 74
    filled-new-array {p1, v4, v5}, [Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    const-string v4, "com.huawei.hms.update.manager.UpdateManager"

    .line 79
    .line 80
    const-string v5, "startUpdate"

    .line 81
    .line 82
    invoke-static {v4, v5, p1}, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->invokeMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    iput-object v2, p0, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->d:Lcom/huawei/hms/update/ui/UpdateBean;

    .line 86
    .line 87
    :cond_2
    const/4 p1, -0x1

    .line 88
    if-ne p2, p1, :cond_4

    .line 89
    .line 90
    if-eqz p3, :cond_a

    .line 91
    .line 92
    :try_start_0
    const-string p1, "kit_update_result"

    .line 93
    .line 94
    invoke-virtual {p3, p1, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 95
    .line 96
    .line 97
    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    goto :goto_0

    .line 99
    :catchall_0
    const-string p1, "get kit_update_result failed, throwable occur."

    .line 100
    .line 101
    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    move p1, v1

    .line 105
    :goto_0
    if-ne p1, v3, :cond_3

    .line 106
    .line 107
    const-string p1, "new framework update process,Error resolved successfully!"

    .line 108
    .line 109
    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    invoke-static {}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->getInstance()Lcom/huawei/hms/adapter/sysobs/SystemManager;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-virtual {p1, v1}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->notifyUpdateResult(I)V

    .line 117
    .line 118
    .line 119
    iput-object v2, p0, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->d:Lcom/huawei/hms/update/ui/UpdateBean;

    .line 120
    .line 121
    invoke-direct {p0}, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->b()V

    .line 122
    .line 123
    .line 124
    return v3

    .line 125
    :cond_3
    invoke-direct {p0, p3}, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->c(Landroid/content/Intent;)V

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_4
    if-nez p2, :cond_9

    .line 130
    .line 131
    const-string p1, "Activity.RESULT_CANCELED"

    .line 132
    .line 133
    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iput-object v2, p0, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->d:Lcom/huawei/hms/update/ui/UpdateBean;

    .line 137
    .line 138
    invoke-direct {p0}, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->f()Landroid/app/Activity;

    .line 139
    .line 140
    .line 141
    move-result-object p1

    .line 142
    if-nez p1, :cond_5

    .line 143
    .line 144
    return v3

    .line 145
    :cond_5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 146
    .line 147
    .line 148
    move-result-object p2

    .line 149
    invoke-static {p2}, Lcom/huawei/hms/utils/HMSPackageManager;->getInstance(Landroid/content/Context;)Lcom/huawei/hms/utils/HMSPackageManager;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    invoke-virtual {p2}, Lcom/huawei/hms/utils/HMSPackageManager;->getHMSPackageName()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 158
    .line 159
    .line 160
    move-result p3

    .line 161
    if-eqz p3, :cond_6

    .line 162
    .line 163
    const-string p2, "com.huawei.hwid"

    .line 164
    .line 165
    :cond_6
    iget-boolean p3, p0, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->e:Z

    .line 166
    .line 167
    if-nez p3, :cond_8

    .line 168
    .line 169
    iget p3, p0, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->c:I

    .line 170
    .line 171
    invoke-direct {p0, p1, p2, p3}, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->d(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    if-eqz p1, :cond_7

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_7
    invoke-static {}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->getInstance()Lcom/huawei/hms/adapter/sysobs/SystemManager;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    invoke-virtual {p1, v1}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->notifyUpdateResult(I)V

    .line 183
    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_8
    :goto_1
    const-string p1, "Resolve error, process canceled by user clicking back button!"

    .line 187
    .line 188
    invoke-static {v0, p1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-static {}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->getInstance()Lcom/huawei/hms/adapter/sysobs/SystemManager;

    .line 192
    .line 193
    .line 194
    move-result-object p1

    .line 195
    const/16 p2, 0xd

    .line 196
    .line 197
    invoke-virtual {p1, p2}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->notifyUpdateResult(I)V

    .line 198
    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_9
    if-ne p2, v3, :cond_a

    .line 202
    .line 203
    invoke-static {}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->getInstance()Lcom/huawei/hms/adapter/sysobs/SystemManager;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    const/16 p2, 0x1c

    .line 208
    .line 209
    invoke-virtual {p1, p2}, Lcom/huawei/hms/adapter/sysobs/SystemManager;->notifyUpdateResult(I)V

    .line 210
    .line 211
    .line 212
    :cond_a
    :goto_2
    invoke-direct {p0}, Lcom/huawei/hms/adapter/ui/UpdateAdapter;->b()V

    .line 213
    .line 214
    .line 215
    return v3
.end method

.method public onBridgeConfigurationChanged()V
    .locals 2

    .line 1
    const-string v0, "UpdateAdapter"

    .line 2
    .line 3
    const-string v1, "onBridgeConfigurationChanged"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)V
    .locals 0

    .line 1
    const-string p1, "UpdateAdapter"

    .line 2
    .line 3
    const-string p2, "On key up when resolve conn error"

    .line 4
    .line 5
    invoke-static {p1, p2}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
