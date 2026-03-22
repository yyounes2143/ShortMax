.class public Lcom/pandora/ttlicense2/LicenseLogger;
.super Ljava/lang/Object;
.source "LicenseLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pandora/ttlicense2/LicenseLogger$EventListenerList;,
        Lcom/pandora/ttlicense2/LicenseLogger$EventListener;
    }
.end annotation


# static fields
.field private static final EVENT_NAME:Ljava/lang/String; = "license_info"

.field private static final FILE_VERSION:Ljava/lang/String; = "FileVersion"

.field private static final LICENSE_LOG:Ljava/lang/String; = "LicenseLog.txt"

.field private static final TAG:Ljava/lang/String; = "LicenseLogUploader"

.field private static sInstance:Lcom/pandora/ttlicense2/LicenseLogger;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mEventListenerList:Lcom/pandora/ttlicense2/LicenseLogger$EventListenerList;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/pandora/ttlicense2/LicenseLogger$EventListenerList;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lcom/pandora/ttlicense2/LicenseLogger$EventListenerList;-><init>(Lcom/pandora/ttlicense2/LicenseLogger$1;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/pandora/ttlicense2/LicenseLogger;->mEventListenerList:Lcom/pandora/ttlicense2/LicenseLogger$EventListenerList;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/pandora/ttlicense2/LicenseLogger;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/pandora/ttlicense2/LicenseLogger;
    .locals 3

    .line 1
    const-class v0, Lcom/pandora/ttlicense2/LicenseLogger;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/pandora/ttlicense2/LicenseLogger;->sInstance:Lcom/pandora/ttlicense2/LicenseLogger;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    monitor-exit v0

    .line 9
    return-object v1

    .line 10
    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/NullPointerException;

    .line 11
    .line 12
    const-string v2, "Call init first!"

    .line 13
    .line 14
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw v1

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    throw v1
.end method

.method private getUploadedLicenseLog()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseLogger;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "LicenseInfo"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/util/HashSet;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "FileVersion"

    .line 16
    .line 17
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public static init(Landroid/content/Context;)Lcom/pandora/ttlicense2/LicenseLogger;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/pandora/ttlicense2/LicenseLogger;->sInstance:Lcom/pandora/ttlicense2/LicenseLogger;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/pandora/ttlicense2/LicenseLogger;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/pandora/ttlicense2/LicenseLogger;-><init>(Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/pandora/ttlicense2/LicenseLogger;->sInstance:Lcom/pandora/ttlicense2/LicenseLogger;

    .line 11
    .line 12
    :cond_0
    sget-object p0, Lcom/pandora/ttlicense2/LicenseLogger;->sInstance:Lcom/pandora/ttlicense2/LicenseLogger;

    .line 13
    .line 14
    return-object p0
.end method

.method private isLicenseUploaded(J)Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/pandora/ttlicense2/LicenseLogger;->getUploadedLicenseLog()Ljava/util/Set;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method private recordUploadedLicense(J)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseLogger;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const-string v1, "LicenseInfo"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Ljava/util/HashSet;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "FileVersion"

    .line 16
    .line 17
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-eqz v3, :cond_0

    .line 30
    .line 31
    return-void

    .line 32
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 44
    .line 45
    .line 46
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 47
    .line 48
    .line 49
    return-void
.end method


# virtual methods
.method public addEventListener(Lcom/pandora/ttlicense2/LicenseLogger$EventListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseLogger;->mEventListenerList:Lcom/pandora/ttlicense2/LicenseLogger$EventListenerList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/pandora/ttlicense2/LicenseLogger$EventListenerList;->add(Lcom/pandora/ttlicense2/LicenseLogger$EventListener;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public eventListener()Lcom/pandora/ttlicense2/LicenseLogger$EventListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/pandora/ttlicense2/LicenseLogger;->mEventListenerList:Lcom/pandora/ttlicense2/LicenseLogger$EventListenerList;

    .line 2
    .line 3
    return-object v0
.end method

.method public onUpload(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    const-class v0, Lcom/pandora/common/applog/AppLogWrapper;

    .line 5
    .line 6
    sget v1, Lcom/pandora/common/applog/AppLogWrapper;->a:I

    .line 7
    .line 8
    const-string/jumbo v1, "upload"

    .line 9
    .line 10
    .line 11
    const-class v2, Ljava/lang/String;

    .line 12
    .line 13
    const-class v3, Lorg/json/JSONObject;

    .line 14
    .line 15
    filled-new-array {v2, v3}, [Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 25
    .line 26
    .line 27
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    const-string p1, "FileVersion"

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    invoke-direct {p0, v0, v1}, Lcom/pandora/ttlicense2/LicenseLogger;->recordUploadedLicense(J)V

    .line 42
    .line 43
    .line 44
    const-string p1, "LicenseLogUploader"

    .line 45
    .line 46
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p2

    .line 50
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_5

    .line 54
    :catch_0
    move-exception p1

    .line 55
    goto :goto_0

    .line 56
    :catch_1
    move-exception p1

    .line 57
    goto :goto_1

    .line 58
    :catch_2
    move-exception p1

    .line 59
    goto :goto_2

    .line 60
    :catch_3
    move-exception p1

    .line 61
    goto :goto_3

    .line 62
    :catch_4
    move-exception p1

    .line 63
    goto :goto_4

    .line 64
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 65
    .line 66
    .line 67
    goto :goto_5

    .line 68
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 69
    .line 70
    .line 71
    goto :goto_5

    .line 72
    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    .line 74
    .line 75
    goto :goto_5

    .line 76
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    .line 78
    .line 79
    goto :goto_5

    .line 80
    :goto_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    :goto_5
    return-void
.end method

.method public upLoadLicenseLog(Lcom/pandora/ttlicense2/License;)V
    .locals 10

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/pandora/ttlicense2/License;->getModules()[Lcom/pandora/ttlicense2/License$Module;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    array-length v0, v0

    .line 8
    if-gtz v0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_1

    .line 11
    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/pandora/ttlicense2/License;->getFileVersion()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    invoke-direct {p0, v0, v1}, Lcom/pandora/ttlicense2/LicenseLogger;->isLicenseUploaded(J)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    return-void

    .line 23
    :cond_1
    invoke-virtual {p1}, Lcom/pandora/ttlicense2/License;->getModules()[Lcom/pandora/ttlicense2/License$Module;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/4 v3, 0x0

    .line 28
    aget-object v2, v2, v3

    .line 29
    .line 30
    invoke-virtual {v2}, Lcom/pandora/ttlicense2/License$Module;->getExpireTime()J

    .line 31
    .line 32
    .line 33
    move-result-wide v4

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 35
    .line 36
    .line 37
    move-result-wide v6

    .line 38
    new-instance v2, Lorg/json/JSONObject;

    .line 39
    .line 40
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 41
    .line 42
    .line 43
    :try_start_0
    const-string v8, "Id"

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/pandora/ttlicense2/License;->getId()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    .line 51
    .line 52
    const-string v8, "BundleId"

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/pandora/ttlicense2/License;->getBundleId()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v9

    .line 58
    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    const-string v8, "PackageName"

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/pandora/ttlicense2/License;->getPackageName()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    .line 69
    .line 70
    const-string v8, "FileVersion"

    .line 71
    .line 72
    invoke-virtual {v2, v8, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    const-string v0, "Edition"

    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/pandora/ttlicense2/License;->getModules()[Lcom/pandora/ttlicense2/License$Module;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    aget-object v1, v1, v3

    .line 82
    .line 83
    invoke-virtual {v1}, Lcom/pandora/ttlicense2/License$Module;->getEdition()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    .line 89
    .line 90
    const-string v0, "StartTime"

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/pandora/ttlicense2/License;->getModules()[Lcom/pandora/ttlicense2/License$Module;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    aget-object v1, v1, v3

    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/pandora/ttlicense2/License$Module;->getStartTime()J

    .line 99
    .line 100
    .line 101
    move-result-wide v8

    .line 102
    invoke-virtual {v2, v0, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 103
    .line 104
    .line 105
    const-string v0, "ExpireTime"

    .line 106
    .line 107
    invoke-virtual {v2, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 108
    .line 109
    .line 110
    const-string v0, "ExpireBuffer"

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/pandora/ttlicense2/License;->getModules()[Lcom/pandora/ttlicense2/License$Module;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    aget-object p1, p1, v3

    .line 117
    .line 118
    invoke-virtual {p1}, Lcom/pandora/ttlicense2/License$Module;->getExpireBuffer()J

    .line 119
    .line 120
    .line 121
    move-result-wide v3

    .line 122
    invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 123
    .line 124
    .line 125
    const-string p1, "CollectTime"

    .line 126
    .line 127
    invoke-virtual {v2, p1, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :catch_0
    move-exception p1

    .line 132
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 133
    .line 134
    .line 135
    :goto_0
    const-string p1, "license_info"

    .line 136
    .line 137
    invoke-virtual {p0, p1, v2}, Lcom/pandora/ttlicense2/LicenseLogger;->onUpload(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 138
    .line 139
    .line 140
    :cond_2
    :goto_1
    return-void
.end method
