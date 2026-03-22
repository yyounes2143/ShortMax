.class public Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;


# instance fields
.field private final Pfn:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected ZYk:Z

.field private ba:Z

.field protected ex:I

.field protected oJ:Ljava/lang/String;

.field protected final tB:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->ZYk:Z

    .line 6
    .line 7
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->tB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->ba:Z

    .line 15
    .line 16
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 17
    .line 18
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->Pfn:Ljava/lang/ref/WeakReference;

    .line 22
    .line 23
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->oJ:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const-string v0, "====tag==="

    .line 30
    .line 31
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    if-nez p2, :cond_0

    .line 39
    .line 40
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/si;->ZYk(Landroid/content/Context;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/model/cY;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 33
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->GSK()I

    move-result v1

    if-nez v1, :cond_0

    .line 34
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->WcQ()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "auto_click"

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_2

    .line 35
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->GSK()I

    move-result p1

    if-nez p1, :cond_2

    .line 36
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->ex:I

    const/16 v1, 0xb

    if-lt p1, v1, :cond_1

    move p1, v0

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "dpl_probability_jump"

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "can_query_install"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static oJ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z
    .locals 9

    .line 5
    const-string v0, "com.android.vending"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/tB;->oJ()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-static {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->oJ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p0

    return p0

    .line 7
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "_landingpage"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    const-string v2, ""

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 9
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "store_open"

    const/high16 v5, 0x10000000

    const-string v6, "android.intent.action.VIEW"

    if-nez v1, :cond_2

    .line 10
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v1, v6, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 11
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 12
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 13
    invoke-static {p4, p3, v4, v3}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 14
    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/utils/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    :cond_2
    const/4 p1, 0x0

    if-eqz p0, :cond_7

    if-eqz p2, :cond_7

    .line 15
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_2

    .line 16
    :cond_3
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 17
    const-string v7, "market://details?id="

    invoke-virtual {v7, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 18
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/high16 v8, 0x10000

    invoke-virtual {v7, v1, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 20
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 21
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 22
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 23
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 25
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 26
    instance-of p2, p0, Landroid/app/Activity;

    if-nez p2, :cond_5

    .line 27
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 28
    :cond_5
    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 29
    invoke-static {p4, p3, v4, v3}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 30
    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/utils/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v2

    :cond_6
    return p1

    .line 31
    :goto_1
    const-string p2, "gotoGooglePlayByPackageNameAndUrl error"

    const-string p3, "gotoGooglePlay"

    invoke-static {p2, p3, p0}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->reportCustomError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    return p1
.end method


# virtual methods
.method public ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->oJ:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->TNk()Lcom/bytedance/sdk/openadsdk/core/model/PiB;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_5

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->TNk()Lcom/bytedance/sdk/openadsdk/core/model/PiB;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/PiB;->oJ()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_3

    .line 27
    .line 28
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    new-instance v3, Landroid/content/Intent;

    .line 33
    .line 34
    const-string v4, "android.intent.action.VIEW"

    .line 35
    .line 36
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->oJ()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Landroid/content/Context;Landroid/content/Intent;)Lcom/bytedance/sdk/openadsdk/utils/HyG$ZYk;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    iget v4, v2, Lcom/bytedance/sdk/openadsdk/utils/HyG$ZYk;->ZYk:I

    .line 51
    .line 52
    const-string v5, "can_query_install"

    .line 53
    .line 54
    const-string v6, "intent"

    .line 55
    .line 56
    if-lez v4, :cond_2

    .line 57
    .line 58
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->oJ()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    instance-of v4, v4, Landroid/app/Activity;

    .line 63
    .line 64
    if-nez v4, :cond_0

    .line 65
    .line 66
    const/high16 v4, 0x10000000

    .line 67
    .line 68
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    :cond_0
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    .line 72
    .line 73
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-direct {p0, p1, v4}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/util/Map;)V

    .line 77
    .line 78
    .line 79
    const-string v7, "matched_count"

    .line 80
    .line 81
    iget v8, v2, Lcom/bytedance/sdk/openadsdk/utils/HyG$ZYk;->ZYk:I

    .line 82
    .line 83
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 84
    .line 85
    .line 86
    move-result-object v8

    .line 87
    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    const-string v7, "url"

    .line 91
    .line 92
    invoke-interface {v4, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    iget-object v0, v2, Lcom/bytedance/sdk/openadsdk/utils/HyG$ZYk;->oJ:Landroid/content/ComponentName;

    .line 96
    .line 97
    if-eqz v0, :cond_1

    .line 98
    .line 99
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    goto :goto_1

    .line 105
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->oJ:Ljava/lang/String;

    .line 106
    .line 107
    const-string v2, "open_url_app"

    .line 108
    .line 109
    invoke-static {p1, v0, v2, v4}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->oJ()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 117
    .line 118
    .line 119
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ex/PiB;->oJ()Lcom/bytedance/sdk/openadsdk/ex/PiB;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/ex/PiB;->oJ(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/ex/PiB;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->oJ:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v0, p1, v2}, Lcom/bytedance/sdk/openadsdk/ex/PiB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    const-string v0, "dp_start_act_success"

    .line 133
    .line 134
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->oJ:Ljava/lang/String;

    .line 135
    .line 136
    invoke-static {v0, p1, v2, v4}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    .line 138
    .line 139
    return v1

    .line 140
    :goto_1
    new-instance v2, Lorg/json/JSONObject;

    .line 141
    .line 142
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 143
    .line 144
    .line 145
    :try_start_1
    const-string v4, "exception"

    .line 146
    .line 147
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    .line 153
    .line 154
    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 162
    .line 163
    .line 164
    :catch_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->oJ:Ljava/lang/String;

    .line 165
    .line 166
    const/4 v3, -0x4

    .line 167
    invoke-static {p1, v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_2
    new-instance v0, Lorg/json/JSONObject;

    .line 172
    .line 173
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 174
    .line 175
    .line 176
    :try_start_2
    invoke-virtual {v3}, Landroid/content/Intent;->toString()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v0, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 184
    .line 185
    .line 186
    :catch_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->oJ:Ljava/lang/String;

    .line 187
    .line 188
    const/4 v3, -0x3

    .line 189
    invoke-static {p1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 190
    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->oJ:Ljava/lang/String;

    .line 194
    .line 195
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->TNk()Lcom/bytedance/sdk/openadsdk/core/model/PiB;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/PiB;->ex()Lorg/json/JSONObject;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    const/4 v3, -0x2

    .line 204
    invoke-static {p1, v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/core/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 205
    .line 206
    .line 207
    :goto_2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->ZYk:Z

    .line 208
    .line 209
    if-eqz v0, :cond_4

    .line 210
    .line 211
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->tB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 212
    .line 213
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-eqz v0, :cond_6

    .line 218
    .line 219
    :cond_4
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->ZYk:Z

    .line 220
    .line 221
    new-instance v0, Ljava/util/HashMap;

    .line 222
    .line 223
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 224
    .line 225
    .line 226
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/util/Map;)V

    .line 227
    .line 228
    .line 229
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->oJ:Ljava/lang/String;

    .line 230
    .line 231
    const-string v2, "open_fallback_url"

    .line 232
    .line 233
    invoke-static {p1, v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 234
    .line 235
    .line 236
    goto :goto_3

    .line 237
    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->oJ:Ljava/lang/String;

    .line 238
    .line 239
    const/4 v1, -0x1

    .line 240
    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 241
    .line 242
    .line 243
    :cond_6
    :goto_3
    const/4 p1, 0x0

    .line 244
    return p1
.end method

.method public ex(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->tB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    .line 14
    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->oJ()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->oJ()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->tB()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p0, v2, p1, v4, v1}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->oJ(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    return v3

    .line 36
    :cond_1
    return v0
.end method

.method protected oJ()Landroid/content/Context;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->Pfn:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->Pfn:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0

    :cond_1
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public oJ(I)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->ex:I

    return-void
.end method

.method public oJ(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->ba:Z

    return-void
.end method

.method public oJ(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->oJ:Ljava/lang/String;

    invoke-static {p1, p3, p4, v0, p2}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->oJ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    return p1
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Z)Z
    .locals 3

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 38
    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->hZN()Lcom/bytedance/sdk/openadsdk/core/model/IUZ;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/IUZ;->jFA()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 40
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/IUZ;->cFZ()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->tB()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->oJ()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;->oJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 42
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->tB()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 43
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->oJ()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/IUZ;->jFA()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ZYk;->oJ(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    .line 44
    new-instance v0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex$1;

    const-string v1, "task_oem_store"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex$1;-><init>(Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->ZYk(Lcom/bytedance/sdk/component/so/so;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    .line 45
    :goto_1
    const-string v0, "GPDownLoader"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return p2
.end method

.method public tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->oJ()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x1

    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->tB:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Z)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Z)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :cond_2
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Z)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_3

    .line 40
    .line 41
    return-void

    .line 42
    :cond_3
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->ex(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-eqz v0, :cond_4

    .line 47
    .line 48
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Z)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :cond_4
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-nez v0, :cond_5

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Oof()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_5

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->oJ()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Oof()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->oJ:Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Ljava/lang/String;)I

    .line 75
    .line 76
    .line 77
    move-result v5

    .line 78
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ex;->oJ:Ljava/lang/String;

    .line 79
    .line 80
    const/4 v7, 0x1

    .line 81
    move-object v4, p1

    .line 82
    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/XAo;->oJ(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;ILjava/lang/String;Z)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Z)V

    .line 86
    .line 87
    .line 88
    :cond_5
    return-void
.end method
