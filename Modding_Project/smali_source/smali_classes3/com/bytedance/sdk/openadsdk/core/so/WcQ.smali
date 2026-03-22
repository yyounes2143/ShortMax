.class public Lcom/bytedance/sdk/openadsdk/core/so/WcQ;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static ZYk(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 4

    .line 4
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/so/WcQ;->oJ(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 6
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 7
    const-string v0, "ExpressStaticResPreload"

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method static synthetic ZYk(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/WcQ;->ex(Lorg/json/JSONArray;Ljava/lang/String;)V

    return-void
.end method

.method public static ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BWx()Lcom/bytedance/sdk/openadsdk/core/model/Jc;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->ba()Lcom/bytedance/sdk/openadsdk/core/model/Jc$oJ;

    move-result-object p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private static ex(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 6

    .line 1
    if-eqz p0, :cond_3

    .line 2
    .line 3
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    goto :goto_1

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-ge v0, v1, :cond_3

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-nez v2, :cond_2

    .line 26
    .line 27
    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/kkU/tB;->oJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/so/WcQ;->oJ(Ljava/lang/String;)Ljava/io/File;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    invoke-virtual {v2}, Ljava/io/File;->length()J

    .line 44
    .line 45
    .line 46
    move-result-wide v2

    .line 47
    const-wide/16 v4, 0x0

    .line 48
    .line 49
    cmp-long v2, v2, v4

    .line 50
    .line 51
    if-lez v2, :cond_1

    .line 52
    .line 53
    return-void

    .line 54
    :cond_1
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/so/WcQ;->tB(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    :goto_1
    return-void
.end method

.method public static oJ(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 12
    invoke-static {p0}, Lcom/bytedance/sdk/component/utils/Pfn;->oJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 13
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/CacheDirFactory;->getRootDir()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    move-result v1

    const-string v2, "/express_static_res/"

    if-eqz v1, :cond_1

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 16
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v1

    .line 18
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    move-result v2

    .line 19
    invoke-static {v1, v2, v0, p0}, Lcom/bytedance/sdk/component/utils/cFZ;->oJ(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/so/WcQ$1;

    const-string v1, "preloadStaticRes"

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/core/so/WcQ$1;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->ZYk(Lcom/bytedance/sdk/component/so/so;)V

    return-void
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 5

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 7
    invoke-static {v1, p2}, Lcom/bytedance/sdk/openadsdk/core/kkU/tB;->oJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/Pfn;->oJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/jFA/ex;->oJ(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 10
    :try_start_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 11
    :cond_1
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/jFA/ex;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/bytedance/sdk/component/Pfn/kkU;->tB(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/bytedance/sdk/component/Pfn/kkU;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/openadsdk/jFA/ZYk;

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/so/WcQ$2;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/core/so/WcQ$2;-><init>()V

    invoke-direct {v3, p0, v1, v4}, Lcom/bytedance/sdk/openadsdk/jFA/ZYk;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bytedance/sdk/component/Pfn/eZI;)V

    const/4 v1, 0x4

    invoke-interface {v2, v3, v1}, Lcom/bytedance/sdk/component/Pfn/kkU;->oJ(Lcom/bytedance/sdk/component/Pfn/eZI;I)Lcom/bytedance/sdk/component/Pfn/jFA;

    :catch_0
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method static synthetic oJ(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/WcQ;->tB(Lorg/json/JSONArray;Ljava/lang/String;)V

    return-void
.end method

.method private static tB(Ljava/lang/String;)V
    .locals 5

    .line 9
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/so/WcQ;->oJ(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 10
    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->ZYk()Lcom/bytedance/sdk/openadsdk/Ry/ZYk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->tB()Lcom/bytedance/sdk/component/cFZ/oJ;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/cFZ/oJ;->ex()Lcom/bytedance/sdk/component/cFZ/ZYk/oJ;

    move-result-object v2

    const/16 v3, 0x8

    .line 12
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->oJ(I)V

    .line 13
    const-string v3, "preloadStaticRes"

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->oJ(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v2, p0}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ZYk(Ljava/lang/String;)V

    .line 15
    invoke-virtual {v0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/component/cFZ/ZYk/oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/cFZ/ZYk/oJ;->oJ()Lcom/bytedance/sdk/component/cFZ/ZYk;

    move-result-object v2

    .line 17
    const-string v3, "ExpressStaticResPreload"

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ba()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->Pfn()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->Pfn()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 18
    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "downloadFile: success url="

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 19
    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 20
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    :cond_3
    :goto_1
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_4

    .line 23
    :try_start_1
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception p0

    .line 24
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private static tB(Lorg/json/JSONArray;Ljava/lang/String;)V
    .locals 6

    if-eqz p0, :cond_3

    .line 1
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 5
    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/kkU/tB;->oJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/so/WcQ;->oJ(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    return-void

    .line 8
    :cond_1
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/so/WcQ;->tB(Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
