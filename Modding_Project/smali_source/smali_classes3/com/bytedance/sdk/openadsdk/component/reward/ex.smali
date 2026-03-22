.class Lcom/bytedance/sdk/openadsdk/component/reward/ex;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile oJ:Lcom/bytedance/sdk/openadsdk/component/reward/ex;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final ZYk:Landroid/content/Context;

.field private final tB:Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    :goto_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->ZYk:Landroid/content/Context;

    .line 16
    .line 17
    new-instance p1, Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;

    .line 18
    .line 19
    const-string v0, "sp_full_screen_video"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->tB:Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;

    .line 25
    .line 26
    return-void
.end method

.method public static oJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/reward/ex;
    .locals 2

    .line 34
    sget-object v0, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/ex;

    if-nez v0, :cond_1

    .line 35
    const-class v0, Lcom/bytedance/sdk/openadsdk/component/reward/ex;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/ex;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/bytedance/sdk/openadsdk/component/reward/ex;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ex;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/ex;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 38
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    .line 39
    :cond_1
    :goto_2
    sget-object p0, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/ex;

    return-object p0
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 47
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 48
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public ZYk(Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/model/oJ;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->tB:Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;->ex(Ljava/lang/String;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->tB:Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;

    .line 8
    .line 9
    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;->Pfn(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->tB:Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;

    .line 14
    .line 15
    invoke-virtual {v3, p1}, Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;->cFZ(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->ZYk()I

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v5

    .line 27
    sub-long/2addr v5, v0

    .line 28
    const-wide/32 v0, 0xa037a0

    .line 29
    .line 30
    .line 31
    cmp-long v0, v5, v0

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    if-gez v0, :cond_6

    .line 35
    .line 36
    if-nez v2, :cond_6

    .line 37
    .line 38
    if-eqz p2, :cond_0

    .line 39
    .line 40
    const/4 p2, 0x2

    .line 41
    if-ne v4, p2, :cond_0

    .line 42
    .line 43
    if-nez v3, :cond_6

    .line 44
    .line 45
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->tB:Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;

    .line 46
    .line 47
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;->ZYk(Ljava/lang/String;)Ljava/lang/String;

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
    if-nez p2, :cond_6

    .line 56
    .line 57
    new-instance p2, Lorg/json/JSONObject;

    .line 58
    .line 59
    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const-string p1, "cypher"

    .line 63
    .line 64
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eqz p1, :cond_1

    .line 69
    .line 70
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->tB()Lcom/bytedance/sdk/openadsdk/core/Id;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/Id;->oJ(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    :cond_1
    const-string p1, "creatives"

    .line 79
    .line 80
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_2

    .line 85
    .line 86
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ZYk(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    goto :goto_0

    .line 91
    :cond_2
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    .line 96
    .line 97
    invoke-direct {p2}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 101
    .line 102
    .line 103
    move-object p1, p2

    .line 104
    :goto_0
    if-eqz p1, :cond_6

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->Pfn()Z

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    if-nez p2, :cond_3

    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    :cond_4
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 122
    .line 123
    .line 124
    move-result v0

    .line 125
    if-eqz v0, :cond_5

    .line 126
    .line 127
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 132
    .line 133
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_4

    .line 138
    .line 139
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    .line 140
    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->Pfn()Z

    .line 144
    .line 145
    .line 146
    move-result p2

    .line 147
    if-eqz p2, :cond_6

    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ba()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 150
    .line 151
    .line 152
    move-result-object p2

    .line 153
    if-eqz p2, :cond_6

    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ba()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 156
    .line 157
    .line 158
    move-result-object p2

    .line 159
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BHY()Lcom/bytedance/sdk/openadsdk/AdSlot;

    .line 160
    .line 161
    .line 162
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    if-eqz p2, :cond_6

    .line 164
    .line 165
    return-object p1

    .line 166
    :catch_0
    :cond_6
    :goto_2
    return-object v1
.end method

.method public oJ(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    .line 40
    const-string v0, "sp_full_screen_video_new"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/oJ;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/common/oJ;

    move-result-object v0

    const-wide/32 v1, 0xa037a0

    .line 41
    invoke-virtual {v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/common/oJ;->oJ(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    if-eqz p2, :cond_0

    .line 42
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 43
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/component/reward/Pfn;->ZYk()I

    move-result p2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_0

    .line 44
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/common/oJ;->ex(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    return-object v1
.end method

.method public oJ()V
    .locals 8

    .line 8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ZYk;->oJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9
    const-string v0, "sp_full_screen_video_new"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/oJ;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/common/oJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/common/oJ;->oJ()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 10
    :try_start_0
    const-string v1, "sp_full_screen_video"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/jFA;->cFZ(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 11
    const-string v2, "files"

    goto :goto_0

    .line 12
    :cond_1
    const-string v2, "shared_prefs"

    .line 13
    :goto_0
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->ZYk:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 15
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/ex$1;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ex$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/ex;)V

    invoke-virtual {v3, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 16
    array-length v3, v2

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_2

    .line 17
    :try_start_1
    invoke-static {v5}, Lcom/bytedance/sdk/component/utils/cFZ;->tB(Ljava/io/File;)V

    goto :goto_2

    .line 18
    :cond_2
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5

    .line 19
    const-string v6, ".xml"

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 20
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->ZYk:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->deleteSharedPreferences(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 21
    :catchall_1
    :cond_3
    :try_start_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->ZYk:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 22
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 23
    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/reward/ex$2;

    invoke-direct {v2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/ex$2;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/ex;)V

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 24
    array-length v2, v1

    :goto_3
    if-ge v0, v2, :cond_4

    aget-object v3, v1, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 25
    :try_start_3
    invoke-static {v3}, Lcom/bytedance/sdk/component/utils/cFZ;->tB(Ljava/io/File;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :catchall_3
    :cond_4
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 26
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ba()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ba()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->cMS()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 27
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ZYk;->oJ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    const-string v0, "sp_full_screen_video_new"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/oJ;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/common/oJ;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/common/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V

    return-void

    :cond_1
    if-eqz p2, :cond_5

    if-eqz p1, :cond_5

    .line 29
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ba()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 31
    :cond_3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ocG()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    return-void

    .line 32
    :cond_4
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ZYk()Ljava/lang/String;

    move-result-object v0

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->tB:Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->PiB()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_5
    :goto_0
    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 1

    .line 49
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ZYk;->oJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    const-string v0, "sp_full_screen_video_new"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/oJ;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/common/oJ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/common/oJ;->tB(Ljava/lang/String;)V

    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->tB:Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;->ba(Ljava/lang/String;)V

    return-void
.end method

.method public oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ZYk;->oJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-string v0, "sp_full_screen_video_new"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/oJ;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/common/oJ;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/common/oJ;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->tB:Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;->tB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_2

    .line 5
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->iPr()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_2
    const-string p2, ""

    .line 6
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 7
    :cond_3
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/ex;->tB:Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;->so(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;)Z
    .locals 2

    .line 45
    const-string v0, "sp_full_screen_video_new"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/oJ;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/common/oJ;

    move-result-object v0

    const/4 v1, 0x1

    .line 46
    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/common/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;Z)Z

    move-result p1

    return p1
.end method
