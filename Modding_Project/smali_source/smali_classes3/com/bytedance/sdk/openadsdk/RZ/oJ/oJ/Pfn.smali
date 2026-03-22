.class public Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;


# static fields
.field public static oJ:Ljava/lang/Boolean;


# instance fields
.field protected ZYk:Ljava/lang/String;

.field private final ex:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected tB:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->ex:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->ZYk:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    const-string v0, "====tag==="

    .line 18
    .line 19
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    if-nez p2, :cond_0

    .line 27
    .line 28
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/si;->ZYk(Landroid/content/Context;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method private static ZYk()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method public static ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Landroid/content/Context;Z)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-eqz p1, :cond_4

    .line 10
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->hZN()Lcom/bytedance/sdk/openadsdk/core/model/IUZ;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 11
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/IUZ;->jFA()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 12
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/IUZ;->so()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    invoke-static {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Landroid/content/Context;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    return v3

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 13
    :cond_0
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/IUZ;->cFZ()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 14
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->PiB()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 15
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/IUZ;->oJ()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->tB()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 17
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->tB()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 18
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 19
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;->oJ(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 20
    invoke-virtual {v3, v2, p0}, Lcom/bytedance/sdk/openadsdk/oem/IPMiBroadcastReceiver;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 21
    :cond_3
    invoke-static {p0, p2, v1}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;ZLcom/bytedance/sdk/openadsdk/core/model/IUZ;)Ljava/util/Map;

    move-result-object v5

    .line 22
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/IUZ;->jFA()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)I

    move-result v4

    const/4 v6, 0x1

    move-object v1, p1

    move-object v3, p0

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/tB;->oJ(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;ILjava/util/Map;Z)Z

    move-result p0

    .line 23
    new-instance p1, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn$1;

    const-string p2, "task_oem_store"

    invoke-direct {p1, p2, p0}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn$1;-><init>(Ljava/lang/String;Z)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->ZYk(Lcom/bytedance/sdk/component/so/so;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    .line 24
    :goto_1
    const-string p1, "GPDownLoader"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v0
.end method

.method private static oJ(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/IUZ;)Landroid/content/Intent;
    .locals 4

    .line 84
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/IUZ;->ex()Ljava/lang/String;

    move-result-object v1

    .line 86
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 87
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 88
    :cond_0
    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    :goto_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/IUZ;->jFA()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 90
    const-string v1, "overlay"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/IUZ;->ZYk()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 91
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/IUZ;->tB()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "callerId"

    if-eqz v1, :cond_2

    .line 92
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 93
    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/IUZ;->tB()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    :goto_2
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/IUZ;->oJ(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    .line 95
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    const/4 p0, 0x0

    return-object p0
.end method

.method private static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;ZLcom/bytedance/sdk/openadsdk/core/model/IUZ;)Ljava/util/Map;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/model/cY;",
            "Z",
            "Lcom/bytedance/sdk/openadsdk/core/model/IUZ;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 97
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 98
    const-string v2, "oem_vendor_type"

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/IUZ;->ba()I

    move-result p2

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 99
    const-string p2, "from_web"

    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 100
    const-string p1, "is_w2a"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->PiB()I

    move-result p0

    invoke-virtual {v1, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 101
    const-string p0, "pag_json_data"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-object v0
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

    .line 42
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->GSK()I

    move-result v1

    if-nez v1, :cond_0

    .line 43
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->WcQ()Z

    move-result v1

    xor-int/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "auto_click"

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz p1, :cond_2

    .line 44
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->GSK()I

    move-result p1

    if-nez p1, :cond_2

    .line 45
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->tB:I

    const/16 v1, 0xb

    if-lt p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "dpl_probability_jump"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->ZYk()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "can_query_install"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static oJ(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V
    .locals 1

    .line 55
    :try_start_0
    const-string v0, "status"

    invoke-virtual {p0, v0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 56
    const-string p4, "pag_json_data"

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p4, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 57
    const-string p0, "gp_mini_card_status"

    invoke-static {p2, p3, p0, p1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method

.method public static oJ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z
    .locals 9

    .line 2
    const-string v0, "com.android.vending"

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "_landingpage"

    invoke-virtual {p3, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    const-string v2, ""

    invoke-virtual {p3, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p3

    .line 4
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-string v4, "store_open"

    const/high16 v5, 0x10000000

    const-string v6, "android.intent.action.VIEW"

    if-nez v1, :cond_1

    .line 5
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-direct {v1, v6, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 7
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 8
    invoke-static {p4, p3, v4, v3}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 9
    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/utils/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    :cond_1
    const/4 p1, 0x0

    if-eqz p0, :cond_6

    if-eqz p2, :cond_6

    .line 10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 11
    :cond_2
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    const-string v7, "market://details?id="

    invoke-virtual {v7, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 13
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const/high16 v8, 0x10000

    invoke-virtual {v7, v1, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 16
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 18
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 20
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    instance-of p2, p0, Landroid/app/Activity;

    if-nez p2, :cond_4

    .line 22
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 23
    :cond_4
    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 24
    invoke-static {p4, p3, v4, v3}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 25
    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/utils/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v2

    :cond_5
    return p1

    .line 26
    :goto_1
    const-string p2, "gotoGooglePlayByPackageNameAndUrl error"

    const-string p3, "gotoGooglePlay"

    invoke-static {p2, p3, p0}, Lcom/bytedance/sdk/openadsdk/ApmHelper;->reportCustomError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    return p1
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Landroid/content/Context;Z)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_7

    .line 59
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->hZN()Lcom/bytedance/sdk/openadsdk/core/model/IUZ;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->hZN()Lcom/bytedance/sdk/openadsdk/core/model/IUZ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/IUZ;->so()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->hZN()Lcom/bytedance/sdk/openadsdk/core/model/IUZ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/IUZ;->jFA()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 60
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->hZN()Lcom/bytedance/sdk/openadsdk/core/model/IUZ;

    move-result-object v1

    .line 61
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    move-result-object v2

    .line 62
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 63
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/IUZ;->kkU()Lorg/json/JSONObject;

    move-result-object v4

    .line 64
    const-string v5, "from_web"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 65
    const-string p2, "is_w2a"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->PiB()I

    move-result v5

    invoke-virtual {v4, p2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 66
    const-string p2, "status"

    invoke-virtual {v4, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 67
    const-string p2, "pag_json_data"

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string p2, "gp_mini_card_status"

    invoke-static {p0, v2, p2, v3}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 69
    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->oJ(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/IUZ;)Landroid/content/Intent;

    move-result-object p2

    if-nez p2, :cond_1

    const/4 p1, -0x2

    .line 70
    invoke-static {v4, v3, p0, v2, p1}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->oJ(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V

    return v0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 71
    :cond_1
    instance-of v1, p1, Landroid/app/Activity;

    if-eqz v1, :cond_2

    .line 72
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/Id;->oJ(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 p1, 0x0

    goto :goto_0

    .line 73
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/awB;->oJ()Lcom/bytedance/sdk/openadsdk/core/awB;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/awB;->Pfn()Lcom/bytedance/sdk/openadsdk/utils/oJ;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/utils/oJ;->ZYk()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 74
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/Id;->oJ(Landroid/app/Activity;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object p1, v1

    .line 75
    :cond_3
    :goto_0
    nop

    instance-of v1, p1, Landroid/app/Activity;

    if-nez v1, :cond_4

    const/4 p1, -0x5

    .line 76
    invoke-static {v4, v3, p0, v2, p1}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->oJ(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V

    return v0

    .line 77
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 78
    invoke-virtual {p2, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_5

    goto :goto_1

    .line 79
    :cond_5
    :try_start_1
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 80
    invoke-static {v4, v3, p0, v2, v6}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->oJ(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v6

    :catchall_1
    const/4 p1, -0x3

    .line 81
    :try_start_2
    invoke-static {v4, v3, p0, v2, p1}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->oJ(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V

    return v0

    :cond_6
    :goto_1
    const/4 p1, -0x4

    .line 82
    invoke-static {v4, v3, p0, v2, p1}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->oJ(Lorg/json/JSONObject;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v0

    .line 83
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_7
    :goto_3
    return v0
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->hZN()Lcom/bytedance/sdk/openadsdk/core/model/IUZ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->hZN()Lcom/bytedance/sdk/openadsdk/core/model/IUZ;

    move-result-object p0

    .line 115
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/IUZ;->Pfn()Ljava/lang/String;

    move-result-object p0

    .line 116
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-static {p0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 118
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/model/cY;",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Tvw()I

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 28
    :cond_0
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 29
    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_1

    return v0

    .line 30
    :cond_1
    const-string v1, "START_ONLY_FOR_ANDROID"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 31
    instance-of v1, p2, Landroid/app/Activity;

    if-nez v1, :cond_2

    const/high16 v1, 0x10000000

    .line 32
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 33
    :cond_2
    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    if-nez p4, :cond_3

    .line 34
    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    :cond_3
    if-eqz p0, :cond_4

    .line 35
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->GSK()I

    move-result p1

    if-nez p1, :cond_4

    .line 36
    const-string p1, "auto_click"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->WcQ()Z

    move-result p2

    xor-int/2addr p2, v2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {p4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_4
    const-string p1, "can_query_install"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->ZYk()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const-string p1, "click_open"

    invoke-static {p0, p3, p1, p4}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    :cond_5
    return v0
.end method

.method public static oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z
    .locals 6

    .line 102
    const-string v0, "market"

    const/4 v1, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 103
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 104
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 105
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    .line 106
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    const-string v4, "details"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v5

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 107
    :cond_1
    const-string v4, "http"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "https"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 108
    :cond_2
    const-string v4, "play.google.com"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v4, "market.android.com"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 109
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "webstoreredirect"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 110
    const-string v0, "uri"

    invoke-virtual {p0, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 111
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :cond_4
    :goto_0
    return v5

    .line 112
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_5
    :goto_2
    return v1
.end method


# virtual methods
.method public ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z
    .locals 10

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->ZYk:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 3
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->TNk()Lcom/bytedance/sdk/openadsdk/core/model/PiB;

    move-result-object v0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->ZYk:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILorg/json/JSONObject;)V

    return v3

    .line 5
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-direct {p0, p1, v2}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/util/Map;)V

    .line 7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/PiB;->oJ()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->oJ()Landroid/content/Context;

    move-result-object v4

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)I

    move-result v7

    const/4 v9, 0x1

    move-object v6, p1

    move-object v8, v2

    invoke-static/range {v4 .. v9}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/tB;->oJ(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;ILjava/util/Map;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->ZYk:Ljava/lang/String;

    const-string v1, "open_fallback_url"

    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return v3
.end method

.method public ex(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z
    .locals 3

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
    if-nez v1, :cond_1

    .line 10
    .line 11
    return v0

    .line 12
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->oJ()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->oJ()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->tB()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p0, v0, p1, v2, v1}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->oJ(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1
.end method

.method protected oJ()Landroid/content/Context;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->ex:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->ex:Ljava/lang/ref/WeakReference;

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

    .line 39
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->tB:I

    return-void
.end method

.method public oJ(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method public oJ(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->ZYk:Ljava/lang/String;

    invoke-static {p1, p3, p4, v0, p2}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->oJ(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    return p1
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 47
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    .line 48
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Tvw()I

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 49
    :cond_2
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->tB()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v0

    .line 51
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->oJ()Landroid/content/Context;

    move-result-object v0

    .line 52
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 53
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->ZYk:Ljava/lang/String;

    invoke-static {p1, v1, v0, v3, v2}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Z

    move-result p1

    return p1
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Z)Z
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->oJ()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Landroid/content/Context;Z)Z

    move-result p1

    return p1
.end method

.method public tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->oJ()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_5

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x1

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Z)V

    .line 18
    .line 19
    .line 20
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

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
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 34
    .line 35
    .line 36
    return-void

    .line 37
    :cond_2
    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Z)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_3
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->ex(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Z)V

    .line 55
    .line 56
    .line 57
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_4
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-nez v0, :cond_5

    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Oof()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_5

    .line 72
    .line 73
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->oJ()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Oof()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->ZYk:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v5

    .line 87
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/Pfn;->ZYk:Ljava/lang/String;

    .line 88
    .line 89
    const/4 v7, 0x1

    .line 90
    move-object v4, p1

    .line 91
    invoke-static/range {v2 .. v7}, Lcom/bytedance/sdk/openadsdk/core/XAo;->oJ(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;ILjava/lang/String;Z)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn(Z)V

    .line 95
    .line 96
    .line 97
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 98
    .line 99
    .line 100
    :cond_5
    :goto_0
    return-void
.end method
