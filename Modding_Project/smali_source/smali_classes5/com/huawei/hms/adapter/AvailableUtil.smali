.class public Lcom/huawei/hms/adapter/AvailableUtil;
.super Ljava/lang/Object;
.source "AvailableUtil.java"


# static fields
.field private static final a:Ljava/lang/Object;

.field private static b:Z = false

.field private static c:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/huawei/hms/adapter/AvailableUtil;->a:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static asyncCheckHmsUpdateInfo(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/huawei/hms/common/HmsCheckedState;->UNCHECKED:Lcom/huawei/hms/common/HmsCheckedState;

    .line 2
    .line 3
    invoke-static {}, Lcom/huawei/hms/utils/AgHmsUpdateState;->getInstance()Lcom/huawei/hms/utils/AgHmsUpdateState;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/huawei/hms/utils/AgHmsUpdateState;->getCheckedState()Lcom/huawei/hms/common/HmsCheckedState;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    .line 13
    const-string p0, "AvailableUtil"

    .line 14
    .line 15
    const-string v0, "asyncCheckHmsUpdateInfo, not need to check"

    .line 16
    .line 17
    invoke-static {p0, v0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    new-instance v0, Lcom/huawei/hms/adapter/AvailableUtil$a;

    .line 22
    .line 23
    invoke-direct {v0, p0}, Lcom/huawei/hms/adapter/AvailableUtil$a;-><init>(Landroid/content/Context;)V

    .line 24
    .line 25
    .line 26
    new-instance p0, Ljava/lang/Thread;

    .line 27
    .line 28
    const-string v1, "Thread-asyncCheckHmsV3UpdateInfo"

    .line 29
    .line 30
    invoke-direct {p0, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static isInstallerLibExist(Landroid/content/Context;)Z
    .locals 4

    .line 1
    sget-boolean v0, Lcom/huawei/hms/adapter/AvailableUtil;->b:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v0, "installerInit exist: "

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    sget-boolean v0, Lcom/huawei/hms/adapter/AvailableUtil;->c:Z

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    const-string v0, "AvailableUtil"

    .line 25
    .line 26
    invoke-static {v0, p0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-boolean p0, Lcom/huawei/hms/adapter/AvailableUtil;->c:Z

    .line 30
    .line 31
    return p0

    .line 32
    :cond_0
    sget-object v0, Lcom/huawei/hms/adapter/AvailableUtil;->a:Ljava/lang/Object;

    .line 33
    .line 34
    monitor-enter v0

    .line 35
    :try_start_0
    sget-boolean v1, Lcom/huawei/hms/adapter/AvailableUtil;->b:Z

    .line 36
    .line 37
    if-nez v1, :cond_3

    .line 38
    .line 39
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    const/4 v2, 0x1

    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    const-string p0, "AvailableUtil"

    .line 47
    .line 48
    const-string v1, "In isAvailableLibExist, Failed to get \'PackageManager\' instance."

    .line 49
    .line 50
    invoke-static {p0, v1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    .line 52
    .line 53
    :try_start_1
    const-string p0, "com.huawei.hms.update.manager.UpdateManager"

    .line 54
    .line 55
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    .line 57
    .line 58
    :goto_0
    move p0, v2

    .line 59
    goto :goto_2

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    goto :goto_3

    .line 62
    :catch_0
    :try_start_2
    const-string p0, "AvailableUtil"

    .line 63
    .line 64
    const-string v1, "In isInstallerLibExist, Failed to find class UpdateManager."

    .line 65
    .line 66
    invoke-static {p0, v1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_1
    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    const/16 v3, 0x80

    .line 75
    .line 76
    invoke-virtual {v1, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 81
    .line 82
    if-eqz p0, :cond_2

    .line 83
    .line 84
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 85
    .line 86
    if-eqz p0, :cond_2

    .line 87
    .line 88
    const-string v1, "availableHMSCoreInstaller"

    .line 89
    .line 90
    invoke-virtual {p0, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    if-eqz p0, :cond_2

    .line 95
    .line 96
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    const-string v1, "yes"

    .line 101
    .line 102
    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result p0

    .line 106
    if-eqz p0, :cond_2

    .line 107
    .line 108
    const-string p0, "AvailableUtil"

    .line 109
    .line 110
    const-string v1, "available exist: true"

    .line 111
    .line 112
    invoke-static {p0, v1}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/util/AndroidException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :catch_1
    move-exception p0

    .line 117
    :try_start_4
    const-string v1, "AvailableUtil"

    .line 118
    .line 119
    const-string v3, "In isInstallerLibExist, Failed to read meta data for the availableHMSCoreInstaller."

    .line 120
    .line 121
    invoke-static {v1, v3, p0}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :catch_2
    const-string p0, "AvailableUtil"

    .line 126
    .line 127
    const-string v1, "In isInstallerLibExist, Failed to read meta data for the availableHMSCoreInstaller."

    .line 128
    .line 129
    invoke-static {p0, v1}, Lcom/huawei/hms/support/log/HMSLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :cond_2
    :goto_1
    const/4 p0, 0x0

    .line 133
    :goto_2
    sput-boolean p0, Lcom/huawei/hms/adapter/AvailableUtil;->c:Z

    .line 134
    .line 135
    sput-boolean v2, Lcom/huawei/hms/adapter/AvailableUtil;->b:Z

    .line 136
    .line 137
    :cond_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 138
    new-instance p0, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v0, "available exist: "

    .line 144
    .line 145
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    sget-boolean v0, Lcom/huawei/hms/adapter/AvailableUtil;->c:Z

    .line 149
    .line 150
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p0

    .line 157
    const-string v0, "AvailableUtil"

    .line 158
    .line 159
    invoke-static {v0, p0}, Lcom/huawei/hms/support/log/HMSLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    sget-boolean p0, Lcom/huawei/hms/adapter/AvailableUtil;->c:Z

    .line 163
    .line 164
    return p0

    .line 165
    :goto_3
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 166
    throw p0
.end method
