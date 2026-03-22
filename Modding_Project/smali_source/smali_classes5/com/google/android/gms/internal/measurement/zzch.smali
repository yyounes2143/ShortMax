.class public final Lcom/google/android/gms/internal/measurement/zzch;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@23.0.0"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x18
.end annotation


# static fields
.field private static final zza:Ljava/lang/reflect/Method;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final zzb:Ljava/lang/reflect/Method;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "JobSchedulerCompat"

    .line 4
    .line 5
    const/4 v2, 0x6

    .line 6
    const/4 v3, 0x0

    .line 7
    :try_start_0
    const-class v4, Landroid/app/job/JobScheduler;

    .line 8
    .line 9
    const-string v5, "scheduleAsPackage"

    .line 10
    .line 11
    const-class v6, Landroid/app/job/JobInfo;

    .line 12
    .line 13
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 14
    .line 15
    filled-new-array {v6, v0, v7, v0}, [Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v4, v5, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    .line 21
    .line 22
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    const-string v0, "No scheduleAsPackage method available, falling back to schedule"

    .line 31
    .line 32
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    :cond_0
    move-object v0, v3

    .line 36
    :goto_0
    sput-object v0, Lcom/google/android/gms/internal/measurement/zzch;->zza:Ljava/lang/reflect/Method;

    .line 37
    .line 38
    :try_start_1
    const-class v0, Landroid/os/UserHandle;

    .line 39
    .line 40
    const-string v4, "myUserId"

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    new-array v5, v5, [Ljava/lang/Class;

    .line 44
    .line 45
    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 46
    .line 47
    .line 48
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 49
    goto :goto_1

    .line 50
    :catch_1
    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_1

    .line 55
    .line 56
    const-string v0, "No myUserId method available"

    .line 57
    .line 58
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_1
    sput-object v3, Lcom/google/android/gms/internal/measurement/zzch;->zzb:Ljava/lang/reflect/Method;

    .line 62
    .line 63
    return-void
.end method

.method public static zza(Landroid/content/Context;Landroid/app/job/JobInfo;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    .line 1
    const-string p2, "jobscheduler"

    .line 2
    .line 3
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Landroid/app/job/JobScheduler;

    .line 8
    .line 9
    invoke-static {p2}, Lh7/k;->j(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    check-cast p2, Landroid/app/job/JobScheduler;

    .line 14
    .line 15
    sget-object p3, Lcom/google/android/gms/internal/measurement/zzch;->zza:Ljava/lang/reflect/Method;

    .line 16
    .line 17
    if-eqz p3, :cond_4

    .line 18
    .line 19
    const-string p3, "android.permission.UPDATE_DEVICE_STATS"

    .line 20
    .line 21
    invoke-virtual {p0, p3}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    if-eqz p0, :cond_0

    .line 26
    .line 27
    goto :goto_5

    .line 28
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/measurement/zzch;->zzb:Ljava/lang/reflect/Method;

    .line 29
    .line 30
    const/4 p3, 0x0

    .line 31
    if-eqz p0, :cond_1

    .line 32
    .line 33
    :try_start_0
    const-class v0, Landroid/os/UserHandle;

    .line 34
    .line 35
    new-array v1, p3, [Ljava/lang/Object;

    .line 36
    .line 37
    invoke-virtual {p0, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    check-cast p0, Ljava/lang/Integer;

    .line 42
    .line 43
    if-eqz p0, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 46
    .line 47
    .line 48
    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    goto :goto_2

    .line 50
    :catch_0
    move-exception p0

    .line 51
    goto :goto_1

    .line 52
    :catch_1
    move-exception p0

    .line 53
    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    move p0, p3

    .line 55
    goto :goto_2

    .line 56
    :goto_1
    const/4 v0, 0x6

    .line 57
    const-string v1, "JobSchedulerCompat"

    .line 58
    .line 59
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    const-string v0, "myUserId invocation illegal"

    .line 66
    .line 67
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :goto_2
    const-string v0, "UploadAlarm"

    .line 72
    .line 73
    const-string v1, "com.google.android.gms"

    .line 74
    .line 75
    sget-object v2, Lcom/google/android/gms/internal/measurement/zzch;->zza:Ljava/lang/reflect/Method;

    .line 76
    .line 77
    if-eqz v2, :cond_2

    .line 78
    .line 79
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object p0

    .line 83
    filled-new-array {p1, v1, p0, v0}, [Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    invoke-virtual {v2, p2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p0

    .line 91
    check-cast p0, Ljava/lang/Integer;

    .line 92
    .line 93
    if-eqz p0, :cond_3

    .line 94
    .line 95
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 96
    .line 97
    .line 98
    move-result p3
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_2

    .line 99
    goto :goto_4

    .line 100
    :catch_2
    move-exception p0

    .line 101
    goto :goto_3

    .line 102
    :catch_3
    move-exception p0

    .line 103
    :goto_3
    const-string p3, "error calling scheduleAsPackage"

    .line 104
    .line 105
    invoke-static {v0, p3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 106
    .line 107
    .line 108
    :cond_2
    invoke-virtual {p2, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 109
    .line 110
    .line 111
    move-result p3

    .line 112
    :cond_3
    :goto_4
    return p3

    .line 113
    :cond_4
    :goto_5
    invoke-virtual {p2, p1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 114
    .line 115
    .line 116
    move-result p0

    .line 117
    return p0
.end method
