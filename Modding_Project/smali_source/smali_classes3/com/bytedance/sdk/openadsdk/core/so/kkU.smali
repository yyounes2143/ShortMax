.class public Lcom/bytedance/sdk/openadsdk/core/so/kkU;
.super Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;
.source "SourceFile"


# instance fields
.field private final ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field private dLZ:Z

.field public oJ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private tB:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/UN;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/ex/BTZ;Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;)V
    .locals 6

    .line 1
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->edj()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v3

    .line 5
    const/4 v5, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move-object v2, p2

    .line 9
    move-object v4, p4

    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/UN;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/ex/BTZ;Z)V

    .line 11
    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->dLZ:Z

    .line 15
    .line 16
    new-instance p2, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->oJ:Ljava/util/ArrayList;

    .line 22
    .line 23
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 24
    .line 25
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->tB:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    .line 26
    .line 27
    const-string p2, "inject_data_normal_open"

    .line 28
    .line 29
    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/oq/oJ;->oJ(Ljava/lang/String;I)I

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    const/4 p3, 0x1

    .line 34
    if-ne p2, p3, :cond_0

    .line 35
    .line 36
    move p1, p3

    .line 37
    :cond_0
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->dLZ:Z

    .line 38
    .line 39
    return-void
.end method

.method private Pfn()Landroid/webkit/WebResourceResponse;
    .locals 4

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/jFA;->jFA()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3
    :try_start_0
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    const-string v2, "ExpressClient"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 5
    new-instance v1, Landroid/webkit/WebResourceResponse;

    sget-object v2, Lcom/bytedance/sdk/component/adexpress/ex/jFA$oJ;->ex:Lcom/bytedance/sdk/component/adexpress/ex/jFA$oJ;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/adexpress/ex/jFA$oJ;->oJ()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v3, v0}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    :cond_2
    return-object v1
.end method

.method private Pfn(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3

    .line 6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 7
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ex/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/core/ex/oJ;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ex/oJ;->oJ(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    new-instance v1, Landroid/webkit/WebResourceResponse;

    const-string v0, "audio/*"

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2, p1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 9
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->oJ(Landroid/webkit/WebResourceResponse;)V

    :cond_1
    return-object v1
.end method

.method private ZYk(Ljava/lang/String;Lcom/bytedance/sdk/component/adexpress/ex/jFA$oJ;)Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BWx()Lcom/bytedance/sdk/openadsdk/core/model/Jc;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->ba()Lcom/bytedance/sdk/openadsdk/core/model/Jc$oJ;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Jc$oJ;->ZYk()Lorg/json/JSONArray;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-gtz v2, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    invoke-direct {p0, v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->oJ(Lorg/json/JSONArray;Ljava/lang/String;Lcom/bytedance/sdk/component/adexpress/ex/jFA$oJ;)Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    :cond_3
    :goto_0
    return-object v1
.end method

.method private ex(Ljava/lang/String;Lcom/bytedance/sdk/component/adexpress/ex/jFA$oJ;)Landroid/webkit/WebResourceResponse;
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/so/WcQ;->ZYk(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    new-instance v1, Landroid/webkit/WebResourceResponse;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/ex/jFA$oJ;->oJ()Ljava/lang/String;

    move-result-object p2

    const-string v0, "UTF-8"

    invoke-direct {v1, p2, v0, p1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    .line 4
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->oJ(Landroid/webkit/WebResourceResponse;)V

    :cond_1
    return-object v1
.end method

.method private ex()Ljava/lang/String;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->PdF()Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->PdF()Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->dLZ()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BWx()Lcom/bytedance/sdk/openadsdk/core/model/Jc;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 9
    const-string v0, "v3"

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private oJ(Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 3

    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 57
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/jFA/ex;->oJ(Ljava/lang/String;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 58
    new-instance p2, Landroid/webkit/WebResourceResponse;

    sget-object v0, Lcom/bytedance/sdk/component/adexpress/ex/jFA$oJ;->ex:Lcom/bytedance/sdk/component/adexpress/ex/jFA$oJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/ex/jFA$oJ;->oJ()Ljava/lang/String;

    move-result-object v0

    const-string v2, "utf-8"

    invoke-direct {p2, v0, v2, p1}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 59
    :try_start_1
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->oJ(Landroid/webkit/WebResourceResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, p2

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v1, p2

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 60
    :goto_0
    const-string p2, "ExpressClient"

    const-string v0, "get image WebResourceResponse error"

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-object v1
.end method

.method private oJ(Landroid/webkit/WebView;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;
    .locals 8

    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return-object v0

    .line 8
    :cond_0
    const-string p1, "local://pag_open_icon_id"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x5

    if-nez p1, :cond_d

    sget-object p1, Lcom/bytedance/sdk/openadsdk/core/so/oJ/ZYk;->oJ:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_3

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->PdF()Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->ZYk()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    new-instance p1, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;

    invoke-direct {p1}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;-><init>()V

    .line 12
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;->oJ(I)V

    .line 13
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->Pfn(Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p2

    .line 14
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;->oJ(Landroid/webkit/WebResourceResponse;)V

    if-nez p2, :cond_2

    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    .line 15
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ex/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/core/ex/oJ;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/ex/oJ;->oJ(Z)V

    return-object p1

    .line 16
    :cond_3
    invoke-static {p2}, Lcom/bytedance/sdk/component/adexpress/ex/jFA;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/ex/jFA$oJ;

    move-result-object p1

    .line 17
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/so/WcQ;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 18
    invoke-direct {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/component/adexpress/ex/jFA$oJ;)Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;

    move-result-object v2

    if-eqz v2, :cond_4

    return-object v2

    .line 19
    :cond_4
    invoke-direct {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->ZYk(Ljava/lang/String;Lcom/bytedance/sdk/component/adexpress/ex/jFA$oJ;)Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 20
    const-string p1, "interceptTemplate: Hit fetch file cache url="

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ExpressClient"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 21
    :cond_5
    invoke-direct {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->tB(Ljava/lang/String;Lcom/bytedance/sdk/component/adexpress/ex/jFA$oJ;)Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;

    move-result-object v2

    if-eqz v2, :cond_6

    return-object v2

    .line 22
    :cond_6
    sget-object v2, Lcom/bytedance/sdk/component/adexpress/ex/jFA$oJ;->ex:Lcom/bytedance/sdk/component/adexpress/ex/jFA$oJ;

    if-eq p1, v2, :cond_a

    .line 23
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->yB()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    .line 24
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 25
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ()Ljava/lang/String;

    move-result-object v4

    .line 26
    const-string v5, "https"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "http"

    if-eqz v6, :cond_8

    .line 27
    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 28
    :cond_8
    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 29
    invoke-virtual {p2, v5, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_9
    move-object v5, p2

    .line 30
    :goto_1
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object v0, v3

    .line 31
    :cond_a
    sget-object v2, Lcom/bytedance/sdk/component/adexpress/ex/jFA$oJ;->ex:Lcom/bytedance/sdk/component/adexpress/ex/jFA$oJ;

    if-eq p1, v2, :cond_c

    if-eqz v0, :cond_b

    goto :goto_2

    .line 32
    :cond_b
    const-string v0, ""

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->ex()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, p1, v0, v1}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/ZYk;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/component/adexpress/ex/jFA$oJ;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;

    move-result-object p1

    return-object p1

    .line 33
    :cond_c
    :goto_2
    new-instance p1, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;

    invoke-direct {p1}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;-><init>()V

    .line 34
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;->oJ(I)V

    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/so/oJ/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->oJ(Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;->oJ(Landroid/webkit/WebResourceResponse;)V

    return-object p1

    .line 36
    :cond_d
    :goto_3
    new-instance p1, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;

    invoke-direct {p1}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;-><init>()V

    .line 37
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;->oJ(I)V

    .line 38
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->Pfn()Landroid/webkit/WebResourceResponse;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;->oJ(Landroid/webkit/WebResourceResponse;)V

    return-object p1
.end method

.method private oJ(Ljava/lang/String;Lcom/bytedance/sdk/component/adexpress/ex/jFA$oJ;)Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;
    .locals 5

    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BWx()Lcom/bytedance/sdk/openadsdk/core/model/Jc;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 40
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->ba()Lcom/bytedance/sdk/openadsdk/core/model/Jc$oJ;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 41
    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Jc$oJ;->oJ()Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 42
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-gtz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 43
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 44
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ib()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v4

    invoke-interface {v4}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->jXJ()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/kkU/tB;->oJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 45
    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Lcom/bytedance/sdk/component/adexpress/ex/jFA$oJ;->ex:Lcom/bytedance/sdk/component/adexpress/ex/jFA$oJ;

    if-ne p2, v3, :cond_3

    .line 46
    new-instance p2, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;

    invoke-direct {p2}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;-><init>()V

    const/4 v0, 0x5

    .line 47
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;->oJ(I)V

    .line 48
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/Pfn;->oJ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->oJ(Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;->oJ(Landroid/webkit/WebResourceResponse;)V

    return-object p2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-object v1
.end method

.method private oJ(Lorg/json/JSONArray;Ljava/lang/String;Lcom/bytedance/sdk/component/adexpress/ex/jFA$oJ;)Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 49
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 50
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 51
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ib()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v3

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->jXJ()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/kkU/tB;->oJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-static {v2, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    new-instance p1, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;

    invoke-direct {p1}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;-><init>()V

    const/4 v0, 0x5

    .line 54
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;->oJ(I)V

    .line 55
    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->ex(Ljava/lang/String;Lcom/bytedance/sdk/component/adexpress/ex/jFA$oJ;)Landroid/webkit/WebResourceResponse;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;->oJ(Landroid/webkit/WebResourceResponse;)V

    return-object p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private oJ(JJLjava/lang/String;I)V
    .locals 8

    .line 61
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;->cFZ:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->ZYk()Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    invoke-static {p5}, Lcom/bytedance/sdk/component/adexpress/ex/jFA;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/ex/jFA$oJ;

    move-result-object v0

    .line 63
    sget-object v1, Lcom/bytedance/sdk/component/adexpress/ex/jFA$oJ;->oJ:Lcom/bytedance/sdk/component/adexpress/ex/jFA$oJ;

    if-ne v0, v1, :cond_1

    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;->cFZ:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->ZYk()Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

    move-result-object v1

    move-object v2, p5

    move-wide v3, p1

    move-wide v5, p3

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/ex/ex/ba;->oJ(Ljava/lang/String;JJI)V

    return-void

    .line 65
    :cond_1
    sget-object v1, Lcom/bytedance/sdk/component/adexpress/ex/jFA$oJ;->tB:Lcom/bytedance/sdk/component/adexpress/ex/jFA$oJ;

    if-ne v0, v1, :cond_2

    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;->cFZ:Lcom/bytedance/sdk/openadsdk/ex/BTZ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/ex/BTZ;->ZYk()Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

    move-result-object v1

    move-object v2, p5

    move-wide v3, p1

    move-wide v5, p3

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/ex/ex/ba;->ZYk(Ljava/lang/String;JJI)V

    :cond_2
    :goto_0
    return-void
.end method

.method private oJ(Landroid/webkit/WebResourceResponse;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 67
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 68
    const-string v1, "Access-Control-Allow-Origin"

    const-string v2, "*"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-virtual {p1, v0}, Landroid/webkit/WebResourceResponse;->setResponseHeaders(Ljava/util/Map;)V

    return-void
.end method

.method private tB(Ljava/lang/String;Lcom/bytedance/sdk/component/adexpress/ex/jFA$oJ;)Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BWx()Lcom/bytedance/sdk/openadsdk/core/model/Jc;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-object v1

    .line 11
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->ba()Lcom/bytedance/sdk/openadsdk/core/model/Jc$oJ;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Jc$oJ;->tB()Lorg/json/JSONArray;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-gtz v2, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    invoke-direct {p0, v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->oJ(Lorg/json/JSONArray;Ljava/lang/String;Lcom/bytedance/sdk/component/adexpress/ex/jFA$oJ;)Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    return-object p1

    .line 36
    :cond_3
    :goto_0
    return-object v1
.end method


# virtual methods
.method public oJ()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->oJ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    .line 3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    .line 4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v2, :cond_0

    .line 5
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 6
    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->ex()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;->so:Z

    .line 3
    .line 4
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;->jFA:Z

    .line 3
    .line 4
    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 5
    .line 6
    .line 7
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->tB:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    .line 8
    .line 9
    if-eqz p2, :cond_0

    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->cY()Z

    .line 12
    .line 13
    .line 14
    move-result p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    .line 17
    iget-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->dLZ:Z

    .line 18
    .line 19
    if-eqz p2, :cond_0

    .line 20
    .line 21
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->tB:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->tB()Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    new-instance p2, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    const-string p3, "javascript:window.SDK_INJECT_DATA="

    .line 29
    .line 30
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->tB:Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;

    .line 34
    .line 35
    invoke-virtual {p3}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->tB()Lorg/json/JSONObject;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/WcQ;->oJ(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception v0

    .line 2
    const-string v1, "ExpressClient"

    const-string v2, "shouldInterceptRequest error1"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 8

    .line 4
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->oJ(Landroid/webkit/WebView;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;

    move-result-object v7

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    if-eqz v7, :cond_0

    .line 7
    invoke-virtual {v7}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;->oJ()Landroid/webkit/WebResourceResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v6, v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :goto_1
    move-object v0, p0

    move-object v5, p2

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->oJ(JJLjava/lang/String;I)V

    if-eqz v7, :cond_1

    .line 9
    invoke-virtual {v7}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;->ZYk()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 10
    invoke-virtual {v7}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;->ZYk()I

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/kkU;->oJ:Ljava/util/ArrayList;

    invoke-virtual {v7}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;->ZYk()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    if-eqz v7, :cond_2

    .line 12
    invoke-virtual {v7}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;->oJ()Landroid/webkit/WebResourceResponse;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13
    invoke-virtual {v7}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/oJ;->oJ()Landroid/webkit/WebResourceResponse;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    .line 14
    :goto_2
    const-string v1, "ExpressClient"

    const-string v2, "shouldInterceptRequest error2"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method
