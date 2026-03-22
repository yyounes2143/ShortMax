.class public Lcom/bytedance/sdk/openadsdk/core/so/oJ/ZYk;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ZYk:Ljava/lang/String; = ""

.field public static oJ:Ljava/lang/String; = "https://pag_open_icon_id/appicon.png"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method private static ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->cFZ()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->ex()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/ZYk;->tB(Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/oJ/tB/ZYk;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 13
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/ZYk;->Pfn()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 14
    :cond_0
    const-string v0, ""

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/model/cY;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->yB()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 16
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_1

    goto :goto_1

    .line 17
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 18
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    if-eqz v2, :cond_2

    .line 19
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->cFZ()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 20
    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zjw()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 21
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->cFZ()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-object v0
.end method

.method public static ZYk()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    const-string v2, "language"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/BTZ;->ZYk()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    const-string v2, "xSetting"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 6
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(Lorg/json/JSONObject;)V

    .line 7
    const-string v2, "platform"

    const-string v3, "android"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 8
    const-string v2, "xAppInfo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    const-string v2, "TemplateUtils"

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static oJ()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/so/oJ/ZYk;->ZYk:Ljava/lang/String;

    return-object v0
.end method

.method private static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->so()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 112
    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->yB()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 156
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1

    goto :goto_0

    .line 157
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    if-eqz v1, :cond_2

    .line 158
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 159
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->cFZ()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static oJ(FFZLcom/bytedance/sdk/openadsdk/core/model/cY;)Lorg/json/JSONObject;
    .locals 5
    .param p3    # Lcom/bytedance/sdk/openadsdk/core/model/cY;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    const-string v1, "platform"

    const-string v2, "android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 5
    const-string v2, "width"

    float-to-double v3, p0

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 6
    const-string p0, "height"

    float-to-double v2, p1

    invoke-virtual {v1, p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    .line 7
    const-string p0, "isLandscape"

    const/4 p1, 0x1

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 8
    :cond_0
    const-string p0, "AdSize"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 9
    const-string p0, "creative"

    const/4 p1, 0x0

    invoke-static {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/so/oJ/ZYk;->oJ(ZLcom/bytedance/sdk/openadsdk/core/model/cY;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 10
    const-string p0, "template_Plugin"

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->PdF()Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/so/oJ/ZYk;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    const-string p0, "diff_template_Plugin"

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->PdF()Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/so/oJ/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static oJ(FFZLcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/kkU/cFZ/tB;)Lorg/json/JSONObject;
    .locals 7

    .line 37
    const-string v0, "net"

    const-string v1, ""

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/so/oJ/ZYk;->ZYk:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez p3, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x3

    const/4 v3, 0x1

    .line 38
    :try_start_0
    invoke-static {p3, v3}, Lcom/bytedance/sdk/openadsdk/core/so/oJ/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Z)Lorg/json/JSONObject;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v4, :cond_1

    return-object v1

    .line 39
    :cond_1
    :try_start_1
    invoke-static {v4, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/so/oJ/ZYk;->oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)V

    .line 40
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lorg/json/JSONObject;

    move-result-object v1

    .line 41
    const-string v5, "language"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/BTZ;->ZYk()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    const-string v5, "xSetting"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/so/oJ/ZYk;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lorg/json/JSONObject;

    move-result-object v1

    .line 44
    invoke-static {p4, v1, p3}, Lcom/bytedance/sdk/openadsdk/core/so/oJ/ZYk;->oJ(Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lorg/json/JSONObject;

    move-result-object p4

    .line 45
    const-string v1, "xAdInfo"

    invoke-virtual {v4, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    .line 47
    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(Lorg/json/JSONObject;)V

    .line 48
    const-string v1, "platform"

    const-string v5, "android"

    invoke-virtual {p4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    const-string v1, "xAppInfo"

    invoke-virtual {v4, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 50
    new-instance p4, Lorg/json/JSONObject;

    invoke-direct {p4}, Lorg/json/JSONObject;-><init>()V

    .line 51
    const-string v1, "width"

    float-to-double v5, p0

    invoke-virtual {p4, v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 52
    const-string p0, "height"

    float-to-double v5, p1

    invoke-virtual {p4, p0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    if-eqz p2, :cond_2

    .line 53
    const-string p0, "isLandscape"

    invoke-virtual {p4, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p0

    move-object v1, v4

    goto/16 :goto_1

    .line 54
    :cond_2
    :goto_0
    const-string p0, "xSize"

    invoke-virtual {v4, p0, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 55
    const-string p0, "adv3"

    if-eqz p5, :cond_3

    .line 56
    :try_start_2
    invoke-interface {p5, p0}, Lcom/bytedance/sdk/openadsdk/core/kkU/cFZ/tB;->oJ(Ljava/lang/String;)V

    .line 57
    :cond_3
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BWx()Lcom/bytedance/sdk/openadsdk/core/model/Jc;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 58
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->ex()Ljava/lang/String;

    move-result-object p2

    .line 59
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string p4, "local"

    const-string v1, "xTemplate"

    if-nez p3, :cond_4

    .line 60
    :try_start_3
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    const-string p0, "getTemplate success by local data"

    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ/ZYk;->ZYk:Ljava/lang/String;

    if-eqz p5, :cond_7

    .line 62
    invoke-interface {p5, p4}, Lcom/bytedance/sdk/openadsdk/core/kkU/cFZ/tB;->ZYk(Ljava/lang/String;)V

    goto :goto_2

    .line 63
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/kkU/oJ/ZYk;->oJ()Lcom/bytedance/sdk/openadsdk/core/kkU/oJ/ZYk;

    move-result-object p2

    .line 64
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->oJ()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->ZYk()Ljava/lang/String;

    move-result-object v3

    .line 65
    invoke-virtual {p2, p0, p3, v3}, Lcom/bytedance/sdk/openadsdk/core/kkU/oJ/ZYk;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 66
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 67
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 68
    const-string p0, "getTemplate success by db data"

    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ/ZYk;->ZYk:Ljava/lang/String;

    if-eqz p5, :cond_7

    .line 69
    invoke-interface {p5, p4}, Lcom/bytedance/sdk/openadsdk/core/kkU/cFZ/tB;->ZYk(Ljava/lang/String;)V

    goto :goto_2

    .line 70
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "local db data is null id is "

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->oJ()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " md5 is "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Jc;->ZYk()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ/ZYk;->ZYk:Ljava/lang/String;

    if-eqz p5, :cond_7

    .line 71
    invoke-interface {p5, v2, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/cFZ/tB;->oJ(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_1
    move-exception p0

    .line 72
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "load template exception "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/so/oJ/ZYk;->ZYk:Ljava/lang/String;

    if-eqz p5, :cond_6

    .line 73
    invoke-interface {p5, v2, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/kkU/cFZ/tB;->oJ(ILjava/lang/String;Ljava/lang/String;)V

    :cond_6
    move-object v4, v1

    :cond_7
    :goto_2
    return-object v4
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lorg/json/JSONObject;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 12
    :try_start_0
    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/core/so/oJ/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Z)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    .line 13
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 15
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(Lorg/json/JSONObject;)V

    .line 16
    const-string v2, "platform"

    const-string v3, "android"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    const-string v2, "xAppInfo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lorg/json/JSONObject;

    move-result-object p0

    .line 19
    const-string v1, "language"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/BTZ;->ZYk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    const-string v1, "xSetting"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    .line 21
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :goto_2
    return-object v0
.end method

.method private static oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Z)Lorg/json/JSONObject;
    .locals 6

    .line 22
    const-string v0, "creatives"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 23
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->FjF()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 24
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    if-eqz p1, :cond_3

    if-eqz v2, :cond_1

    .line 26
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ZYk()I

    move-result v5

    if-le v4, v5, :cond_1

    .line 27
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ZYk()I

    move-result v4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 28
    new-instance v5, Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    move-object v5, v1

    :goto_0
    if-nez v5, :cond_2

    return-object v1

    :cond_2
    move-object v1, v5

    goto :goto_1

    .line 29
    :cond_3
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v4

    .line 30
    :goto_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->LS()I

    move-result p0

    const/16 v4, 0x2b

    if-eq p0, v4, :cond_5

    const/16 v4, 0x2c

    if-eq p0, v4, :cond_5

    const/16 v4, 0x29

    if-eq p0, v4, :cond_5

    if-eqz p1, :cond_4

    .line 31
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result p0

    if-lez p0, :cond_4

    const/4 p0, 0x0

    .line 32
    invoke-virtual {v2, p0}, Lorg/json/JSONArray;->remove(I)Ljava/lang/Object;

    .line 33
    :cond_4
    const-string p0, "xRestCreatives"

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    :cond_5
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 35
    const-string p0, "xRestResponse"

    invoke-virtual {v1, p0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 36
    :goto_2
    const-string p1, "TemplateUtils"

    const-string v0, "filterTemplateInfo"

    invoke-static {p1, v0, p0}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    return-object v1
.end method

.method private static oJ(Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lorg/json/JSONObject;
    .locals 3

    if-nez p2, :cond_0

    return-object p1

    .line 85
    :cond_0
    :try_start_0
    const-string v0, "open_ad"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 86
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 87
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/jFA;->so()Ljava/lang/String;

    move-result-object v0

    .line 88
    const-string v1, "app_name"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/jFA;->jFA()I

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uvK()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x9

    .line 91
    const-string v2, "app_icon"

    if-ne v1, p2, :cond_1

    .line 92
    :try_start_1
    sget-object p2, Lcom/bytedance/sdk/openadsdk/core/so/oJ/ZYk;->oJ:Ljava/lang/String;

    invoke-virtual {p0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_1
    const/16 v1, 0xa

    if-ne v1, p2, :cond_2

    .line 93
    const-string p2, "@"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    :cond_2
    :goto_0
    const-string p2, "open_app_info"

    invoke-virtual {p1, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_3
    return-object p1
.end method

.method public static oJ(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 12

    .line 95
    const-string v0, "xRestResponse"

    const-string v1, "xRestCreatives"

    const-string v2, "xTemplate"

    const-string v3, "dynamic_configs"

    const-string v4, "xSize"

    const-string v5, "xAppInfo"

    const-string v6, "xAdInfo"

    const-string v7, "xSetting"

    if-nez p1, :cond_0

    return-object p0

    .line 96
    :cond_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    if-nez p0, :cond_1

    return-object v8

    .line 97
    :cond_1
    :try_start_0
    const-string v9, "keys"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 98
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-gtz v9, :cond_2

    goto :goto_1

    :cond_2
    const/4 v9, 0x0

    .line 99
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_4

    .line 100
    invoke-virtual {p1, v9}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v10

    .line 101
    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 102
    invoke-virtual {p0, v10}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 103
    :cond_4
    invoke-virtual {p0, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v8, v7, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v8, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v8, v5, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v8, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v8, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v8, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v8, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v8, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    :catch_0
    :cond_5
    :goto_1
    return-object p0
.end method

.method public static oJ(ZLcom/bytedance/sdk/openadsdk/core/model/cY;)Lorg/json/JSONObject;
    .locals 7
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/model/cY;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 113
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V

    .line 114
    :try_start_0
    const-string v0, "button_text"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ypD()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zjw()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zjw()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "icon"

    if-eqz v0, :cond_0

    :try_start_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zjw()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Zjw()Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 118
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    :cond_1
    :goto_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 120
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->yB()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 121
    :goto_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->yB()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 122
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->yB()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/core/model/Ry;

    .line 123
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 124
    const-string v4, "height"

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->tB()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 125
    const-string v4, "width"

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->ZYk()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 126
    const-string v4, "url"

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 128
    :cond_2
    const-string v1, "image"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    const-string v0, "image_mode"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Dc()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 130
    const-string v0, "interaction_type"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->sQ()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 131
    const-string v0, "interaction_method"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->NO()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 132
    const-string v0, "is_compliance_template"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/so/oJ/ZYk;->tB()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 133
    const-string v0, "title"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->UUI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 134
    const-string v0, "description"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Amz()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    const-string v0, "source"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Qzd()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 137
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oq()Lcom/bytedance/sdk/openadsdk/core/model/RZ;

    move-result-object v1

    if-nez v1, :cond_3

    .line 138
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/model/RZ;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/model/RZ;-><init>()V

    .line 139
    :cond_3
    const-string v2, "ceiling_time"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->ex()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 140
    const-string v2, "ceiling_ratio"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->Pfn()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 141
    const-string v2, "expand_ratio"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/RZ;->ba()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 142
    const-string v1, "interaction_params"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 143
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 144
    const-string v0, "comment_num"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->Pfn()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 145
    const-string v0, "score"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->ex()D

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 146
    const-string v0, "app_size"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->ba()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 147
    const-string v0, "app"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Wd()Lcom/bytedance/sdk/openadsdk/core/model/ba;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/ba;->so()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    :cond_4
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 149
    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->Ry()Lorg/json/JSONObject;

    move-result-object v1

    .line 150
    const-string v2, "video_duration"

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->ba()D

    move-result-wide v3

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->Id()I

    move-result v0

    int-to-double v5, v0

    mul-double/2addr v3, v5

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 151
    const-string v0, "video"

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    :cond_5
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->PdF()Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 153
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->PdF()Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;->jFA()Ljava/lang/String;

    move-result-object p1

    .line 154
    const-string v0, "dynamic_creative"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_6
    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)V
    .locals 6

    .line 74
    const-string v0, "video"

    const-string v1, "h265_video"

    if-eqz p1, :cond_5

    if-nez p0, :cond_0

    goto :goto_3

    .line 75
    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_2

    .line 77
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 78
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 79
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->Ry()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 80
    const-string v3, "open_ad"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "video_duration"

    if-eqz p2, :cond_2

    .line 81
    :try_start_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uv()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->Id(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_1

    .line 82
    :cond_2
    invoke-virtual {v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->ba()D

    move-result-wide p1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;->Id()I

    move-result v1

    int-to-double v4, v1

    mul-double/2addr p1, v4

    invoke-virtual {v2, v3, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 83
    :cond_3
    :goto_1
    invoke-virtual {p0, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_4
    return-void

    .line 84
    :goto_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_5
    :goto_3
    return-void
.end method

.method private static tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lorg/json/JSONObject;
    .locals 1

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 3
    :try_start_0
    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public static tB()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method
