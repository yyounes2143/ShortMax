.class public Lcom/bytedance/sdk/openadsdk/common/oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;
    }
.end annotation


# static fields
.field private static final ZYk:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;",
            ">;"
        }
    .end annotation
.end field

.field private static final oJ:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/common/oJ;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final Pfn:Ljava/lang/String;

.field private final ba:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/bytedance/sdk/openadsdk/core/model/cY;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final ex:Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;

.field private final tB:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bytedance/sdk/openadsdk/common/oJ;->oJ:Ljava/util/HashMap;

    .line 7
    .line 8
    new-instance v0, Ljava/util/HashMap;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/bytedance/sdk/openadsdk/common/oJ;->ZYk:Ljava/util/HashMap;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/oJ;->ba:Ljava/util/Map;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/oJ;->tB:Landroid/content/Context;

    .line 16
    .line 17
    sget-object p1, Lcom/bytedance/sdk/openadsdk/common/oJ;->ZYk:Ljava/util/HashMap;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;

    .line 24
    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;

    .line 29
    .line 30
    invoke-direct {p1, p2}, Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/common/oJ;->ex:Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;

    .line 34
    .line 35
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/common/oJ;->Pfn:Ljava/lang/String;

    .line 36
    .line 37
    return-void
.end method

.method private ZYk()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getICacheDir(I)Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ/ZYk;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/oJ/ZYk;->oJ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static oJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/common/oJ;
    .locals 4

    .line 2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/common/oJ;->oJ:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/common/oJ;

    if-nez v1, :cond_1

    .line 3
    const-class v1, Lcom/bytedance/sdk/openadsdk/common/oJ;

    monitor-enter v1

    .line 4
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/common/oJ;

    if-nez v2, :cond_0

    .line 5
    new-instance v2, Lcom/bytedance/sdk/openadsdk/common/oJ;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, p0}, Lcom/bytedance/sdk/openadsdk/common/oJ;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 7
    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    goto :goto_2

    :goto_1
    monitor-exit v1

    throw p0

    :cond_1
    :goto_2
    return-object v1
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/common/oJ;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/common/oJ;->Pfn:Ljava/lang/String;

    return-object p0
.end method

.method public static oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;)V
    .locals 1

    .line 8
    sget-object v0, Lcom/bytedance/sdk/openadsdk/common/oJ;->ZYk:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z
    .locals 2

    if-eqz p1, :cond_1

    .line 45
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->si(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 46
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
.method public ZYk(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/oJ;->ex:Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;->ZYk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    return-object p1

    :catchall_0
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public ex(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/oJ;->ex:Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;->cFZ(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public oJ(Ljava/lang/String;J)Ljava/lang/String;
    .locals 5

    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/oJ;->ex:Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;->ex(Ljava/lang/String;)J

    move-result-wide v0

    .line 42
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/common/oJ;->ex:Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;->Pfn(Ljava/lang/String;)Z

    move-result v2

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    cmp-long p2, v3, p2

    if-gez p2, :cond_0

    if-nez v2, :cond_0

    .line 44
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/common/oJ;->ZYk(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public oJ()V
    .locals 7

    .line 14
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/oJ;->Pfn:Ljava/lang/String;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/jFA;->cFZ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    const-string v1, "files"

    goto :goto_0

    .line 16
    :cond_0
    const-string v1, "shared_prefs"

    .line 17
    :goto_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/common/oJ;->tB:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 19
    new-instance v1, Lcom/bytedance/sdk/openadsdk/common/oJ$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/common/oJ$1;-><init>(Lcom/bytedance/sdk/openadsdk/common/oJ;)V

    invoke-virtual {v2, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 20
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_1

    .line 21
    :try_start_1
    invoke-static {v4}, Lcom/bytedance/sdk/component/utils/cFZ;->tB(Ljava/io/File;)V

    goto :goto_2

    .line 22
    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    .line 23
    const-string v5, ".xml"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 24
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/common/oJ;->tB:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->deleteSharedPreferences(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 25
    :catchall_1
    :cond_2
    :try_start_2
    new-instance v0, Ljava/io/File;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/common/oJ;->ZYk()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 27
    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/cFZ;->tB(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    :cond_3
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/oJ;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 28
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ba()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ba()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->cMS()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_4

    if-eqz p1, :cond_4

    .line 29
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->getBidAdm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 30
    :cond_1
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ba()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 31
    :cond_2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ocG()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    return-void

    .line 32
    :cond_3
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ZYk()Ljava/lang/String;

    move-result-object v0

    .line 33
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/common/oJ;->ex:Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->WcQ()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    :goto_0
    return-void
.end method

.method public oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 2

    .line 9
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/oJ;->ex:Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;->tB(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 11
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->iPr()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string p2, ""

    .line 12
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 13
    :cond_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/common/oJ;->ex:Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;->so(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;Z)Z
    .locals 1

    if-eqz p1, :cond_2

    .line 34
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->Pfn()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_1

    .line 35
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 36
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 38
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/common/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->Pfn()Z

    move-result p1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public tB(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/common/oJ;->ex:Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/common/oJ$oJ;->ba(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
