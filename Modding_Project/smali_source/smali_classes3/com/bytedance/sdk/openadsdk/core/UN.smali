.class public Lcom/bytedance/sdk/openadsdk/core/UN;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/Pfn/ZYk;
.implements Lcom/bytedance/sdk/component/utils/IUZ$oJ;
.implements Lcom/bytedance/sdk/openadsdk/kkU/ZYk;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/UN$tB;,
        Lcom/bytedance/sdk/openadsdk/core/UN$oJ;,
        Lcom/bytedance/sdk/openadsdk/core/UN$ZYk;
    }
.end annotation


# static fields
.field private static final jFA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private BTZ:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private HL:Lorg/json/JSONObject;

.field private HyG:Ljava/lang/String;

.field private IUZ:Lcom/bytedance/sdk/openadsdk/core/ZYk/ex;

.field private Id:Lorg/json/JSONObject;

.field private Jc:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/kkU;",
            ">;"
        }
    .end annotation
.end field

.field private Jm:Lcom/bytedance/sdk/openadsdk/BTZ/cFZ;

.field private Ln:Lcom/bytedance/sdk/openadsdk/BTZ/tB;

.field private LpP:Lcom/bytedance/sdk/openadsdk/BTZ/kkU;

.field private Pfn:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/component/jFA/ba;",
            ">;"
        }
    .end annotation
.end field

.field private PiB:Ljava/lang/String;

.field private QSm:Lcom/bytedance/sdk/component/adexpress/ZYk/dLZ;

.field private Qu:Z

.field private RZ:Lorg/json/JSONObject;

.field private Rl:Lcom/bytedance/sdk/openadsdk/core/widget/oJ/oJ;

.field private Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field private UN:Z

.field private WcQ:I

.field private XAo:Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

.field private Xe:Lcom/bytedance/sdk/openadsdk/BTZ/ba;

.field private Yg:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

.field ZYk:Z

.field private awB:Ljava/lang/String;

.field private final ba:Lcom/bytedance/sdk/component/utils/IUZ;

.field private bgF:Landroid/content/Context;

.field private cFZ:Ljava/lang/String;

.field private cY:Lcom/bytedance/sdk/openadsdk/kkU/ex;

.field private cdg:Z

.field private dLZ:Ljava/lang/String;

.field private eZI:I

.field ex:Z

.field private jr:Lcom/bytedance/sdk/openadsdk/BTZ/oJ;

.field private kkU:Lcom/bytedance/sdk/openadsdk/kkU/tB;

.field private lY:Lcom/bytedance/sdk/openadsdk/core/UN$oJ;

.field private mu:Z

.field private mwH:Lcom/bytedance/sdk/openadsdk/core/UN$tB;

.field private nQI:Z

.field private nke:Z

.field protected oJ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private ofl:Lcom/bytedance/sdk/component/oJ/si;

.field private oq:Lcom/bytedance/sdk/openadsdk/core/so/awB;

.field private si:Z

.field private so:Lcom/bytedance/sdk/openadsdk/core/widget/Pfn;

.field tB:Z

.field private tb:Lcom/bytedance/sdk/openadsdk/BTZ/Pfn;

.field private wd:Lcom/bytedance/sdk/openadsdk/BTZ/ZYk;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/UN;->jFA:Ljava/util/Map;

    .line 7
    .line 8
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 9
    .line 10
    const-string v2, "log_event"

    .line 11
    .line 12
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    const-string v2, "private"

    .line 16
    .line 17
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    const-string v2, "dispatch_message"

    .line 21
    .line 22
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    const-string v2, "custom_event"

    .line 26
    .line 27
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    const-string v2, "log_event_v3"

    .line 31
    .line 32
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->si:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->nke:Z

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->UN:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->mu:Z

    .line 13
    .line 14
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->tB:Z

    .line 15
    .line 16
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->ex:Z

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->cdg:Z

    .line 19
    .line 20
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->bgF:Landroid/content/Context;

    .line 21
    .line 22
    new-instance p1, Lcom/bytedance/sdk/component/utils/IUZ;

    .line 23
    .line 24
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-direct {p1, v0, p0}, Lcom/bytedance/sdk/component/utils/IUZ;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/IUZ$oJ;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->ba:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 32
    .line 33
    return-void
.end method

.method private BTZ(Lorg/json/JSONObject;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    return-void
.end method

.method private Id()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->oq:Lcom/bytedance/sdk/openadsdk/core/so/awB;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/so/awB;->oJ()V

    :cond_0
    return-void
.end method

.method private Id(Lorg/json/JSONObject;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/UN;->eZI()Landroid/webkit/WebView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "javascript:ToutiaoJSBridge._handleMessageFromToutiao("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/WcQ;->oJ(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method static synthetic Pfn(Lcom/bytedance/sdk/openadsdk/core/UN;)Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    return-object p0
.end method

.method private PiB(Lorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->dLZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->dLZ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "playable_style"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-void
.end method

.method private QSm()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->LpP:Lcom/bytedance/sdk/openadsdk/BTZ/kkU;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/BTZ/kkU;->oJ()V

    return-void
.end method

.method private QSm(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    :try_start_0
    const-string v0, "trackData"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 6
    const-string v1, "bytedance"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/utils/RZ;->oJ(Landroid/net/Uri;Lcom/bytedance/sdk/openadsdk/core/UN;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private RZ()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Pfn:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Pfn:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/ZYk;->oJ(Landroid/view/View;)Landroid/app/Activity;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->bgF:Landroid/content/Context;

    :cond_1
    return-object v0
.end method

.method private RZ(Lorg/json/JSONObject;)Z
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    const-string v0, "borderRadiusTopLeft"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "borderRadiusBottomLeft"

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "borderRadiusTopRight"

    .line 6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "borderRadiusBottomRight"

    .line 7
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private static Ry()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, "getTemplateInfo"

    const-string v1, "getTeMaiAds"

    const-string v2, "appInfo"

    const-string v3, "adInfo"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private Ry(Lorg/json/JSONObject;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->QSm:Lcom/bytedance/sdk/component/adexpress/ZYk/dLZ;

    if-eqz v2, :cond_5

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->XAo:Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

    if-eqz v2, :cond_1

    .line 4
    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/ex/ex/ex;->eZI()V

    .line 5
    :cond_1
    new-instance v2, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;

    invoke-direct {v2}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;-><init>()V

    const/4 v3, 0x1

    .line 6
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->oJ(I)V

    .line 7
    :try_start_0
    const-string v4, "isRenderSuc"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 8
    const-string v5, "AdSize"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    const-string v6, "height"

    const-string v7, "width"

    if-eqz v5, :cond_2

    .line 10
    :try_start_1
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 11
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    goto :goto_1

    :catch_0
    :goto_0
    const/16 v1, 0x65

    goto/16 :goto_4

    :cond_2
    const-wide/16 v8, 0x0

    move-wide v10, v8

    .line 12
    :goto_1
    const-string v5, "videoInfo"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v5, :cond_4

    .line 13
    :try_start_2
    const-string v12, "x"

    invoke-virtual {v5, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v12

    .line 14
    const-string v14, "y"

    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v14

    move/from16 v16, v4

    .line 15
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 16
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 17
    invoke-direct {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/UN;->RZ(Lorg/json/JSONObject;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 18
    const-string v0, "borderRadiusTopLeft"

    move-wide/from16 v17, v10

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v0, v10

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->oJ(F)V

    .line 19
    const-string v0, "borderRadiusTopRight"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v0, v10

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->ZYk(F)V

    .line 20
    const-string v0, "borderRadiusBottomLeft"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v0, v10

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->tB(F)V

    .line 21
    const-string v0, "borderRadiusBottomRight"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v10

    double-to-float v0, v10

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->ex(F)V

    goto :goto_2

    :catch_1
    const/16 v1, 0x65

    move-object/from16 v0, p0

    goto :goto_4

    :cond_3
    move-wide/from16 v17, v10

    .line 22
    :goto_2
    invoke-virtual {v2, v12, v13}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->tB(D)V

    .line 23
    invoke-virtual {v2, v14, v15}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->ex(D)V

    .line 24
    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->Pfn(D)V

    .line 25
    invoke-virtual {v2, v6, v7}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->ba(D)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :cond_4
    move/from16 v16, v4

    move-wide/from16 v17, v10

    .line 26
    :goto_3
    :try_start_3
    const-string v0, "msg"
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    const/16 v3, 0x65

    :try_start_4
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/so;->oJ(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    const-string v4, "code"

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move/from16 v3, v16

    .line 28
    :try_start_5
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->oJ(Z)V

    .line 29
    invoke-virtual {v2, v8, v9}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->oJ(D)V

    move-wide/from16 v8, v17

    .line 30
    invoke-virtual {v2, v8, v9}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->ZYk(D)V

    .line 31
    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->oJ(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->ZYk(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-object/from16 v0, p0

    .line 33
    :try_start_6
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->QSm:Lcom/bytedance/sdk/component/adexpress/ZYk/dLZ;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/adexpress/ZYk/dLZ;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return-void

    :catch_2
    move-object/from16 v0, p0

    goto/16 :goto_0

    :catch_3
    move-object/from16 v0, p0

    move v1, v3

    .line 34
    :goto_4
    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->ZYk(I)V

    .line 35
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/so;->oJ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->oJ(Ljava/lang/String;)V

    .line 36
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->QSm:Lcom/bytedance/sdk/component/adexpress/ZYk/dLZ;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/adexpress/ZYk/dLZ;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)V

    :cond_5
    :goto_5
    return-void
.end method

.method private WcQ(Lorg/json/JSONObject;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->XAo:Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/ex/ex/ba;->ZYk(Lorg/json/JSONObject;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private Xe()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->yV()Lorg/json/JSONObject;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_4

    .line 11
    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_4

    .line 19
    .line 20
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->UN:Z

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->yV()Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v2, "parent_type"

    .line 32
    .line 33
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v2, 0x2

    .line 38
    if-eq v0, v2, :cond_1

    .line 39
    .line 40
    return v1

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->qnr()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    const/16 v2, 0x8

    .line 48
    .line 49
    if-eq v0, v2, :cond_3

    .line 50
    .line 51
    const/4 v2, 0x7

    .line 52
    if-ne v0, v2, :cond_2

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    return v1

    .line 56
    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 57
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->UN:Z

    .line 58
    .line 59
    return v0

    .line 60
    :cond_4
    :goto_1
    return v1
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/core/UN;)Lcom/bytedance/sdk/openadsdk/core/widget/oJ/oJ;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Rl:Lcom/bytedance/sdk/openadsdk/core/widget/oJ/oJ;

    return-object p0
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/core/UN;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/UN;->cY(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method public static ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lorg/json/JSONObject;
    .locals 10

    .line 29
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 30
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 31
    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uv()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    if-eqz p0, :cond_2

    .line 32
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->qnr()I

    move-result v3

    goto :goto_1

    :cond_2
    move v3, v1

    :goto_1
    if-eqz p0, :cond_3

    .line 33
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->xwf()I

    move-result v4

    goto :goto_2

    :cond_3
    move v4, v1

    :goto_2
    if-eqz p0, :cond_4

    .line 34
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->HUl()I

    move-result v5

    goto :goto_3

    :cond_4
    move v5, v1

    .line 35
    :goto_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->Pfn(Ljava/lang/String;)Z

    move-result v6

    .line 36
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->BTZ(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_5

    move v7, v8

    goto :goto_4

    :cond_5
    move v7, v1

    :goto_4
    const/4 v9, 0x7

    if-eq v3, v9, :cond_7

    const/16 v9, 0x8

    if-ne v3, v9, :cond_6

    goto :goto_5

    .line 37
    :cond_6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->ZYk(Ljava/lang/String;)Z

    move-result v2

    goto :goto_6

    .line 38
    :cond_7
    :goto_5
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->eZI(Ljava/lang/String;)Z

    move-result v2

    .line 39
    :goto_6
    const-string v3, "voice_control"

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 40
    const-string v2, "rv_skip_time"

    invoke-virtual {v0, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 41
    const-string v2, "fv_skip_show"

    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 42
    const-string v2, "iv_skip_time"

    invoke-virtual {v0, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 43
    const-string v2, "show_dislike"

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->LTg()Z

    move-result v3

    if-eqz v3, :cond_8

    move v3, v8

    goto :goto_7

    :cond_8
    move v3, v1

    :goto_7
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 44
    const-string v2, "video_adaptation"

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->bD()I

    move-result v1

    :cond_9
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p0, :cond_a

    .line 45
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->VzB()Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 46
    const-string v1, "dynamic_configs"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->VzB()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    :cond_a
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "skip_change_to_close"

    if-eqz v1, :cond_b

    .line 48
    :try_start_1
    invoke-virtual {v0, v2, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto :goto_8

    .line 49
    :cond_b
    invoke-virtual {v0, v2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 50
    :goto_8
    const-string v1, "bar_render_platform"

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->wd()Z

    move-result p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    return-object v0
.end method

.method private static ZYk(Lcom/bytedance/sdk/openadsdk/core/so/awB;Lorg/json/JSONObject;)V
    .locals 2

    .line 25
    const-string v0, "mute"

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 26
    :try_start_0
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 27
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 28
    const-string p1, "jsb_def"

    goto :goto_0

    :cond_1
    const-string p1, "jsb_web"

    :goto_0
    invoke-interface {p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/so/awB;->oJ(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_1
    return-void
.end method

.method private ZYk(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .line 51
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 52
    const-string v1, "__msg_type"

    const-string v2, "callback"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    const-string v1, "__callback_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_0

    .line 54
    const-string p1, "__params"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    :cond_0
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->Id(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static ZYk(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 9
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 10
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry()Ljava/util/List;

    move-result-object v1

    .line 11
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 13
    :cond_0
    const-string v1, "appName"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/ZYk;->oJ()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    const-string v1, "innerAppName"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/ZYk;->Pfn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    const-string v1, "aid"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/ZYk;->ZYk()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    const-string v1, "sdkEdition"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/ZYk;->tB()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    const-string v1, "appVersion"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/ZYk;->ex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    const-string v1, "netType"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/ZYk;->ba()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    const-string v1, "supportList"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/common/ZYk;->oJ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "deviceId"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/DeviceUtils;->ZYk(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "device_platform"

    if-eqz v0, :cond_1

    .line 22
    const-string v0, "Android_Pad"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 23
    :cond_1
    const-string v0, "Android"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    :goto_1
    const-string v0, "device_type"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/core/UN;Ljava/lang/String;)Z
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/UN;->so(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private awB(Lorg/json/JSONObject;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ln:Lcom/bytedance/sdk/openadsdk/BTZ/tB;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    const-string v1, "isRenderSuc"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "code"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "msg"

    const-string v4, ""

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/BTZ/tB;->oJ(ZILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private cFZ(Ljava/lang/String;)V
    .locals 6

    .line 5
    :try_start_0
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {p1, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 6
    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 8
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/UN$ZYk;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/UN$ZYk;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    :try_start_1
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 10
    const-string v4, "__msg_type"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/bytedance/sdk/openadsdk/core/UN$ZYk;->oJ:Ljava/lang/String;

    .line 11
    const-string v4, "__callback_id"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/bytedance/sdk/openadsdk/core/UN$ZYk;->ZYk:Ljava/lang/String;

    .line 12
    const-string v4, "func"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/bytedance/sdk/openadsdk/core/UN$ZYk;->tB:Ljava/lang/String;

    .line 13
    const-string v4, "params"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    iput-object v4, v2, Lcom/bytedance/sdk/openadsdk/core/UN$ZYk;->ex:Lorg/json/JSONObject;

    .line 14
    const-string v4, "JSSDK"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lcom/bytedance/sdk/openadsdk/core/UN$ZYk;->Pfn:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :catchall_0
    :cond_0
    :try_start_2
    iget-object v3, v2, Lcom/bytedance/sdk/openadsdk/core/UN$ZYk;->oJ:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v2, Lcom/bytedance/sdk/openadsdk/core/UN$ZYk;->tB:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 16
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->ba:Lcom/bytedance/sdk/component/utils/IUZ;

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 17
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 18
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->ba:Lcom/bytedance/sdk/component/utils/IUZ;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    :cond_2
    return-void
.end method

.method private cY(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 5

    .line 4
    const-string v0, "ad_extra_data"

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ:Ljava/util/Map;

    if-eqz v1, :cond_3

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 6
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 8
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    .line 9
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 12
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_3
    return-object p1
.end method

.method private cY()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->bgF:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->nke()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->bgF:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->HyG:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/TTWebsiteActivity;->oJ(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private eZI()Landroid/webkit/WebView;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Pfn:Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/jFA/ba;

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    return-object v0
.end method

.method private eZI(Lorg/json/JSONObject;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->oq:Lcom/bytedance/sdk/openadsdk/core/so/awB;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    const-string v0, "stateType"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->oq:Lcom/bytedance/sdk/openadsdk/core/so/awB;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/awB;->oJ(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic ex(Lcom/bytedance/sdk/openadsdk/core/UN;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->cFZ:Ljava/lang/String;

    return-object p0
.end method

.method private jFA(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    const-string v0, "bytedance://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    const-string v0, "bytedance://dispatch_message/"

    .line 4
    const-string v1, "bytedance://private/setresult/"

    .line 5
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/UN;->eZI()Landroid/webkit/WebView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 7
    const-string v0, "javascript:ToutiaoJSBridge._fetchQueue()"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/WcQ;->oJ(Landroid/webkit/WebView;Ljava/lang/String;)V

    :cond_2
    return-void

    .line 8
    :cond_3
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x26

    const/16 v1, 0x1e

    .line 9
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-gtz v0, :cond_4

    return-void

    .line 10
    :cond_4
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 12
    const-string v0, "SCENE_FETCHQUEUE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    .line 13
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/UN;->cFZ(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    return-void
.end method

.method private jr()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lorg/json/JSONObject;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/UN;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->HyG:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/UN;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private oJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    const-string p1, "show"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 240
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->WcQ:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 241
    :cond_0
    const-string p1, "aggregate_page"

    goto :goto_0

    .line 242
    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 243
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->cFZ:Ljava/lang/String;

    goto :goto_0

    .line 244
    :cond_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ln:Lcom/bytedance/sdk/openadsdk/BTZ/tB;

    if-eqz p2, :cond_3

    .line 245
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->WcQ:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->oJ(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 246
    :cond_3
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->QSm:Lcom/bytedance/sdk/component/adexpress/ZYk/dLZ;

    if-nez p2, :cond_4

    .line 247
    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->WcQ:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ZYk(I)Ljava/lang/String;

    move-result-object p1

    :cond_4
    :goto_0
    return-object p1
.end method

.method public static oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;)Lorg/json/JSONArray;
    .locals 1

    if-eqz p0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->Pfn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ba()Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 232
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->FjF()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->FjF()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 234
    const-string p0, "creatives"

    invoke-virtual {v0, p0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/UN;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/UN;->Id()V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/UN;Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;Lcom/bytedance/sdk/openadsdk/BTZ/ex;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;Lcom/bytedance/sdk/openadsdk/BTZ/ex;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/UN;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/UN;Lorg/json/JSONObject;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/UN;->eZI(Lorg/json/JSONObject;)V

    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Z)V
    .locals 3

    .line 252
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->WcQ:I

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;I)V

    .line 253
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/cFZ;->oJ(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/RZ/oJ/oJ/ba;)V

    if-nez p3, :cond_0

    const/4 p1, 0x0

    .line 254
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/oJ;->oJ(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 255
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/tB;->onClick(Landroid/view/View;)V

    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/openadsdk/core/model/oJ;Lcom/bytedance/sdk/openadsdk/core/model/tB;Lcom/bytedance/sdk/openadsdk/BTZ/ex;)V
    .locals 2

    .line 222
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz p2, :cond_0

    .line 224
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->yV()Lorg/json/JSONObject;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->RZ:Lorg/json/JSONObject;

    :cond_0
    const/4 p2, 0x1

    .line 225
    invoke-interface {p3, p2, p1}, Lcom/bytedance/sdk/openadsdk/BTZ/ex;->oJ(ZLcom/bytedance/sdk/openadsdk/core/model/oJ;)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 226
    invoke-interface {p3, v1, p1}, Lcom/bytedance/sdk/openadsdk/BTZ/ex;->oJ(ZLcom/bytedance/sdk/openadsdk/core/model/oJ;)V

    const/4 p1, -0x3

    .line 227
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->oJ(I)V

    const/4 p1, 0x7

    .line 228
    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->tB(I)V

    .line 229
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/tB;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/core/so/awB;Lorg/json/JSONObject;)V
    .locals 0

    .line 7
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(Lcom/bytedance/sdk/openadsdk/core/so/awB;Lorg/json/JSONObject;)V

    return-void
.end method

.method private oJ(Ljava/lang/String;Z)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->XAo:Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 178
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->XAo:Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/ex/ex/ba;->oJ(Ljava/lang/String;)V

    return-void

    .line 179
    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->XAo:Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/ex/ex/ba;->ZYk(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->edj()Ljava/lang/String;

    move-result-object v0

    .line 53
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    const-string v1, "cid"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->pe()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 57
    const-string v1, "log_extra"

    invoke-virtual {p0, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ZiK()Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 60
    const-string v0, "download_url"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->mu()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->mu()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_3
    const-string p1, "TX"

    :goto_0
    const-string v0, "dc"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 62
    const-string p1, "language"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/BTZ;->ZYk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 63
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ib()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->jB()Z

    move-result p1

    const-string v0, "isRTL"

    invoke-virtual {p0, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-void
.end method

.method private oJ(Lorg/json/JSONObject;ZLjava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 157
    :cond_0
    :try_start_0
    const-string p2, "ad_extra_data"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 158
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 159
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 160
    const-string p1, "agg_request_type"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    .line 161
    const-string p1, "click"

    .line 162
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->so:Lcom/bytedance/sdk/openadsdk/core/widget/Pfn;

    if-eqz p1, :cond_1

    .line 163
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/Pfn;->oJ()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    return-void

    .line 164
    :goto_1
    const-string p2, "TTAD.AndroidObject"

    const-string p3, "callAggClickListener faile"

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private oJ(Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/model/eZI;)Z
    .locals 0

    .line 188
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Jc:Ljava/util/HashMap;

    if-nez p2, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/kkU;

    if-nez p1, :cond_1

    return p3

    :cond_1
    const/4 p1, 0x0

    .line 190
    throw p1

    :cond_2
    :goto_0
    return p3
.end method

.method private oJ(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z
    .locals 7

    if-eqz p1, :cond_0

    .line 165
    const-string v0, "landingStyle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 166
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    const-string v2, "fallback_url"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v0, -0x1

    move-object p1, v1

    .line 168
    :goto_0
    const-string v2, "TTAD.AndroidObject"

    const-string v3, "invalid_url"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_1

    .line 169
    invoke-static {v1}, Lcom/bytedance/sdk/component/utils/Ry;->oJ(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 170
    :try_start_0
    invoke-virtual {p2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 171
    const-string p2, "handleUrl, EX1->: "

    invoke-static {v2, p2, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_1
    const/4 v6, 0x2

    if-ne v0, v6, :cond_3

    .line 172
    :try_start_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 173
    const-string p1, "empty_url"

    invoke-virtual {p2, p1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_1

    .line 174
    :cond_2
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/Ry;->oJ(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 175
    invoke-virtual {p2, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 176
    :goto_1
    const-string p2, "handleUrl, EX2->: "

    invoke-static {v2, p2, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    move v4, v5

    :goto_2
    return v4
.end method

.method private oq()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->LpP:Lcom/bytedance/sdk/openadsdk/BTZ/kkU;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/BTZ/kkU;->ZYk()V

    return-void
.end method

.method private oq(Lorg/json/JSONObject;)V
    .locals 4

    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->cY:Lcom/bytedance/sdk/openadsdk/kkU/ex;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    :try_start_0
    const-string v2, "temaiProductIds"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 6
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->cY:Lcom/bytedance/sdk/openadsdk/kkU/ex;

    const/4 v3, 0x1

    invoke-interface {v2, v3, p1}, Lcom/bytedance/sdk/openadsdk/kkU/ex;->oJ(ZLorg/json/JSONArray;)V

    return-void

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->cY:Lcom/bytedance/sdk/openadsdk/kkU/ex;

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/kkU/ex;->oJ(ZLorg/json/JSONArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 8
    :catch_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->cY:Lcom/bytedance/sdk/openadsdk/kkU/ex;

    invoke-interface {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/kkU/ex;->oJ(ZLorg/json/JSONArray;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private si()Lorg/json/JSONObject;
    .locals 9

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->BTZ:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Pfn:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v1, :cond_2

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/view/View;)[I

    move-result-object v3

    .line 4
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->ZYk(Landroid/view/View;)[I

    move-result-object v2

    if-eqz v3, :cond_2

    if-nez v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 6
    const-string v5, "x"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    aget v8, v3, v7

    aget v7, v2, v7

    sub-int/2addr v8, v7

    int-to-float v7, v8

    invoke-static {v6, v7}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 7
    const-string v5, "y"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x1

    aget v3, v3, v7

    aget v2, v2, v7

    sub-int/2addr v3, v2

    int-to-float v2, v3

    invoke-static {v6, v2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v4, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 8
    const-string v2, "w"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v3, v5}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;F)I

    move-result v3

    invoke-virtual {v4, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 9
    const-string v2, "h"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 10
    const-string v1, "isExist"

    invoke-virtual {v4, v1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v4

    :catchall_0
    :cond_2
    :goto_0
    return-object v0
.end method

.method private si(Lorg/json/JSONObject;)Z
    .locals 12

    .line 11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->oq:Lcom/bytedance/sdk/openadsdk/core/so/awB;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/so/awB;->tB()J

    move-result-wide v2

    long-to-double v2, v2

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->oq:Lcom/bytedance/sdk/openadsdk/core/so/awB;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/so/awB;->ex()J

    move-result-wide v4

    long-to-double v4, v4

    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->oq:Lcom/bytedance/sdk/openadsdk/core/so/awB;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/so/awB;->Pfn()I

    move-result v0

    .line 15
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v11

    const-string v6, "current:"

    const-string v8, "state"

    const-string v10, "countdownTime"

    filled-new-array/range {v6 .. v11}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "TTAD.TopLayoutHelper"

    invoke-static {v7, v6}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 16
    :try_start_0
    const-string v6, "currentTime"

    const-wide v7, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v7

    invoke-virtual {p1, v6, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-wide/16 v2, 0x0

    cmpl-double v2, v4, v2

    if-lez v2, :cond_1

    .line 17
    const-string v2, "countDownTime"

    div-double/2addr v4, v7

    invoke-virtual {p1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 18
    :cond_1
    const-string v2, "state"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_2
    :goto_0
    return v1
.end method

.method private so(Ljava/lang/String;)Z
    .locals 2

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    const-string v0, "click_other"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/UN;->kkU()Z

    move-result p1

    return p1
.end method

.method static synthetic tB(Lcom/bytedance/sdk/openadsdk/core/UN;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->eZI:I

    return p0
.end method

.method private tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 20
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 21
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 22
    const-string v2, "is_ad_event"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->cdg()Ljava/lang/String;

    move-result-object v2

    const-string v3, "cid"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    const-string v2, "req_id"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->iPr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    const-string v2, "ad_id"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->edj()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 26
    const-string v2, "log_extra"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->pe()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 27
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/settings/PiB;->ib()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->jB()Z

    move-result v2

    const-string v3, "isRTL"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 28
    const-string v2, "ad_info"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 29
    const-string v1, "endcard_creative"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Rl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 30
    const-string v1, "dynamic_creative"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->YF()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 31
    const-string v1, "title"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->UUI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 32
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lorg/json/JSONObject;)V

    .line 33
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lorg/json/JSONObject;)V

    .line 34
    const-string v1, "source"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Qzd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 35
    const-string v1, "button_text"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->SB()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 36
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->TNk()Lcom/bytedance/sdk/openadsdk/core/model/PiB;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 37
    const-string v2, "deeplink_url"

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/PiB;->oJ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    :cond_0
    const-string v1, "app_name"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->MVA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ofl()Z

    move-result v1

    const-string v2, "has_show"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 40
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Tjr()Z

    move-result p1

    const-string v1, "has_click"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    return-object v0
.end method

.method private tB(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .line 12
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 13
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 14
    const-string v1, "__msg_type"

    const-string v2, "event"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    const-string v1, "__event_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    if-eqz p2, :cond_1

    .line 16
    const-string p1, "__params"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    :cond_1
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->Id(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private tb()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->kkU:Lcom/bytedance/sdk/openadsdk/kkU/tB;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 6
    .line 7
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/kkU/oJ;->oJ(Lcom/bytedance/sdk/openadsdk/kkU/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/kkU/oJ;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->kkU:Lcom/bytedance/sdk/openadsdk/kkU/tB;

    .line 12
    .line 13
    :cond_0
    return-void
.end method


# virtual methods
.method public BTZ()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->kkU:Lcom/bytedance/sdk/openadsdk/kkU/tB;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/kkU/tB;->oJ()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->mwH:Lcom/bytedance/sdk/openadsdk/core/UN$tB;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->ZYk(Ljava/lang/Runnable;)V

    .line 6
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->mwH:Lcom/bytedance/sdk/openadsdk/core/UN$tB;

    .line 7
    :cond_1
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->bgF:Landroid/content/Context;

    .line 8
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Yg:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    return-void
.end method

.method public Pfn(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/UN;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->awB:Ljava/lang/String;

    return-object p0
.end method

.method public Pfn(Lorg/json/JSONObject;)V
    .locals 41

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    return-void

    .line 4
    :cond_0
    const-string v2, "TTAD.AndroidObject"

    const-string v3, "trigger Class1 method1"

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, -0x1

    .line 5
    :try_start_0
    const-string v4, "adId"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6
    const-string v5, "areaType"

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 7
    const-string v7, "clickAreaType"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 8
    const-string v8, "clickInfo"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-wide/16 v9, 0x0

    if-eqz v8, :cond_1

    .line 9
    const-string v11, "down_x"

    invoke-virtual {v8, v11, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v11

    .line 10
    const-string v13, "down_y"

    invoke-virtual {v8, v13, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v13

    .line 11
    const-string v15, "up_x"

    invoke-virtual {v8, v15, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v15

    .line 12
    const-string v6, "up_y"

    invoke-virtual {v8, v6, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v17

    .line 13
    const-string v6, "down_time"

    invoke-virtual {v8, v6, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v19

    .line 14
    const-string v6, "up_time"

    invoke-virtual {v8, v6, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v21

    .line 15
    const-string v6, "button_x"

    invoke-virtual {v8, v6, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v23

    .line 16
    const-string v6, "button_y"

    invoke-virtual {v8, v6, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v25

    .line 17
    const-string v6, "button_width"

    invoke-virtual {v8, v6, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v27

    .line 18
    const-string v6, "button_height"

    invoke-virtual {v8, v6, v9, v10}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    .line 19
    const-string v6, "rectInfo"

    invoke-virtual {v8, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    move-wide/from16 v39, v9

    move-wide v9, v11

    move-wide v11, v15

    move-wide/from16 v29, v19

    move-wide/from16 v31, v21

    move-wide/from16 v33, v23

    move-wide/from16 v35, v25

    move-wide/from16 v37, v27

    move-object/from16 v16, v4

    move-wide/from16 v3, v17

    goto :goto_0

    :cond_1
    move-object/from16 v16, v4

    move-wide v3, v9

    move-wide v11, v3

    move-wide v13, v11

    move-wide/from16 v29, v13

    move-wide/from16 v31, v29

    move-wide/from16 v33, v31

    move-wide/from16 v35, v33

    move-wide/from16 v37, v35

    move-wide/from16 v39, v37

    const/4 v6, 0x0

    .line 20
    :goto_0
    const-string v15, "clickAreaCategory"

    invoke-virtual {v1, v15, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 21
    new-instance v15, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    invoke-direct {v15}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;-><init>()V

    double-to-float v9, v9

    .line 22
    invoke-virtual {v15, v9}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->ex(F)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v9

    double-to-float v10, v13

    .line 23
    invoke-virtual {v9, v10}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->tB(F)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v9

    double-to-float v10, v11

    .line 24
    invoke-virtual {v9, v10}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->ZYk(F)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v9

    double-to-float v3, v3

    .line 25
    invoke-virtual {v9, v3}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->oJ(F)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v3

    move-wide/from16 v9, v29

    double-to-long v9, v9

    .line 26
    invoke-virtual {v3, v9, v10}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->ZYk(J)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v3

    move-wide/from16 v9, v31

    double-to-long v9, v9

    .line 27
    invoke-virtual {v3, v9, v10}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->oJ(J)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v3

    move-wide/from16 v9, v33

    double-to-int v4, v9

    .line 28
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->ex(I)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v3

    move-wide/from16 v9, v35

    double-to-int v4, v9

    .line 29
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->Pfn(I)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v3

    move-wide/from16 v9, v37

    double-to-int v4, v9

    .line 30
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->ba(I)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v3

    move-wide/from16 v9, v39

    double-to-int v4, v9

    .line 31
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->cFZ(I)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v3

    .line 32
    invoke-virtual {v3, v7}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v3

    const/4 v4, 0x0

    .line 33
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->oJ(Landroid/util/SparseArray;)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v3

    const/4 v4, 0x1

    .line 34
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->oJ(Z)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v3

    .line 35
    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->ZYk(I)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v3

    .line 36
    invoke-virtual {v3, v6}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v3

    .line 37
    invoke-virtual {v3, v1}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->oJ(I)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v1

    .line 38
    invoke-virtual {v1, v8}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->ZYk(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;

    move-result-object v1

    .line 39
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/eZI$oJ;->oJ()Lcom/bytedance/sdk/openadsdk/core/model/eZI;

    move-result-object v1

    .line 40
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->QSm:Lcom/bytedance/sdk/component/adexpress/ZYk/dLZ;

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    .line 41
    invoke-interface {v3, v4, v5, v1}, Lcom/bytedance/sdk/component/adexpress/ZYk/dLZ;->oJ(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/tB;)V

    :cond_2
    move-object/from16 v3, v16

    .line 42
    invoke-direct {v0, v3, v5, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/model/eZI;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 43
    :catch_0
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->QSm:Lcom/bytedance/sdk/component/adexpress/ZYk/dLZ;

    if-eqz v1, :cond_3

    const/4 v3, 0x0

    .line 44
    invoke-interface {v1, v3, v2, v3}, Lcom/bytedance/sdk/component/adexpress/ZYk/dLZ;->oJ(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/tB;)V

    :cond_3
    return-void
.end method

.method public Pfn(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->nQI:Z

    return-void
.end method

.method public Pfn()Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->VSB()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public PiB()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->lY:Lcom/bytedance/sdk/openadsdk/core/UN$oJ;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/UN$oJ;->oJ()V

    :cond_0
    return-void
.end method

.method public WcQ()Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Yg:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    return-object v0
.end method

.method public ZYk()Lcom/bytedance/sdk/component/oJ/si;
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->ofl:Lcom/bytedance/sdk/component/oJ/si;

    return-object v0
.end method

.method public ZYk(I)Lcom/bytedance/sdk/openadsdk/core/UN;
    .locals 0

    .line 8
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->WcQ:I

    return-object p0
.end method

.method public ZYk(Lcom/bytedance/sdk/component/jFA/ba;)Lcom/bytedance/sdk/openadsdk/core/UN;
    .locals 1

    .line 6
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Pfn:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public ZYk(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/UN;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->cFZ:Ljava/lang/String;

    return-object p0
.end method

.method public ZYk(Z)Lcom/bytedance/sdk/openadsdk/core/UN;
    .locals 0

    .line 7
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->mu:Z

    return-object p0
.end method

.method public ZYk(Landroid/net/Uri;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 56
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 57
    const-string v1, "log_event"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "custom_event"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "log_event_v3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    const-string v1, "private"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "dispatch_message"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/UN;->jFA(Ljava/lang/String;)V

    :cond_2
    return-void

    .line 60
    :cond_3
    :goto_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/UN$2;

    const-string v1, "log_event_handleUri"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/UN$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/UN;Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/component/so/so;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public adInfo()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->BTZ(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public appInfo()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public awB()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Yg:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;->mu()V

    :cond_0
    return-void
.end method

.method public ba(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->HyG:Ljava/lang/String;

    return-void
.end method

.method public ba(Lorg/json/JSONObject;)V
    .locals 2

    .line 3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ZYk;->oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->WcQ:I

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/HyG;->ZYk(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->HyG:Ljava/lang/String;

    :goto_0
    xor-int/lit8 v0, v0, 0x1

    .line 6
    invoke-direct {p0, p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public ba()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->tB:Z

    return v0
.end method

.method public cFZ(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .line 19
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 20
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->oq:Lcom/bytedance/sdk/openadsdk/core/so/awB;

    if-eqz v1, :cond_0

    .line 21
    :try_start_0
    invoke-interface {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/so/awB;->ZYk(Lorg/json/JSONObject;)Z

    move-result p1

    .line 22
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-object v0
.end method

.method public cFZ()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->nQI:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ln:Lcom/bytedance/sdk/openadsdk/BTZ/tB;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/BTZ/tB;->oJ()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->bgF:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Id;->oJ(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->bgF:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method public changeVideoState(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/UN$4;

    .line 7
    .line 8
    invoke-direct {p1, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/UN$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/UN;Lorg/json/JSONObject;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->oJ(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    :catch_0
    return-void
.end method

.method public clickEvent(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/UN$5;

    .line 7
    .line 8
    invoke-direct {p1, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/UN$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/UN;Lorg/json/JSONObject;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->oJ(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    :catch_0
    return-void
.end method

.method public dLZ()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/UN;->Xe()Z

    return-void
.end method

.method public dLZ(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/UN$3;

    const-string v1, "sendLogV3"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/UN$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/UN;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/component/so/so;)V

    return-void
.end method

.method public dynamicTrack(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->QSm(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    :catch_0
    return-void
.end method

.method public ex(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/UN;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->PiB:Ljava/lang/String;

    return-object p0
.end method

.method public ex()Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    return-object v0
.end method

.method public ex(Lorg/json/JSONObject;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    const-string v0, "zoom_type"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    .line 5
    const-string v1, "videoInfo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 6
    new-instance v1, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;-><init>()V

    if-eqz p1, :cond_1

    .line 7
    const-string v2, "x"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 8
    const-string v4, "y"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v4

    .line 9
    const-string v6, "width"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    .line 10
    const-string v8, "height"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 11
    invoke-virtual {v1, v2, v3}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->tB(D)V

    .line 12
    invoke-virtual {v1, v4, v5}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->ex(D)V

    .line 13
    invoke-virtual {v1, v6, v7}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->Pfn(D)V

    .line 14
    invoke-virtual {v1, v8, v9}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->ba(D)V

    .line 15
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->oq:Lcom/bytedance/sdk/openadsdk/core/so/awB;

    if-eqz p1, :cond_2

    .line 16
    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/so/awB;->oJ(ILcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)V

    :cond_2
    return-void
.end method

.method public ex(Z)V
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Qu:Z

    return-void
.end method

.method public getCurrentVideoState()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->si(Lorg/json/JSONObject;)Z

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getData(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Id:Lorg/json/JSONObject;

    .line 8
    .line 9
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1

    .line 14
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 15
    .line 16
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Id:Lorg/json/JSONObject;

    .line 20
    .line 21
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/so/oJ/ZYk;->oJ(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Id:Lorg/json/JSONObject;

    .line 28
    .line 29
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    return-object p1

    .line 34
    :cond_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    return-object p1

    .line 39
    :catch_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Id:Lorg/json/JSONObject;

    .line 40
    .line 41
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1
.end method

.method public getTemplateInfo()Ljava/lang/String;
    .locals 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    const-string v1, "getTemplateInfo"

    .line 3
    .line 4
    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Ljava/lang/String;Z)V

    .line 5
    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Id:Lorg/json/JSONObject;

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    const-string v2, "setting"

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/UN;->jr()Lorg/json/JSONObject;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->VzB()Lorg/json/JSONObject;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Id:Lorg/json/JSONObject;

    .line 31
    .line 32
    const-string v2, "dynamic_configs"

    .line 33
    .line 34
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 35
    .line 36
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->VzB()Lorg/json/JSONObject;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Id:Lorg/json/JSONObject;

    .line 48
    .line 49
    const-string v3, "extension"

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Yk()Lorg/json/JSONObject;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 56
    .line 57
    .line 58
    :cond_1
    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Ljava/lang/String;Z)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Id:Lorg/json/JSONObject;

    .line 63
    .line 64
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    return-object v0

    .line 69
    :catch_0
    const-string v0, ""

    .line 70
    .line 71
    return-object v0
.end method

.method public initRenderFinish()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/UN$7;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/UN$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/UN;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->oJ(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public jFA(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 4

    .line 14
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 15
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 16
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Yg:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    if-eqz v1, :cond_0

    .line 17
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;->IUZ()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 19
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 20
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/UN;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 21
    :cond_0
    const-string v1, "creatives"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p1
.end method

.method public jFA()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->cdg:Z

    return v0
.end method

.method public kkU(Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    const-string v0, "index"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tB()Lcom/bytedance/sdk/openadsdk/core/model/oJ;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/oJ;->ex()Ljava/util/List;

    move-result-object v0

    if-ltz p1, :cond_1

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_1

    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->HyG:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Z)V

    .line 10
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Yg:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    if-eqz p1, :cond_1

    .line 11
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;->ba()V

    :cond_1
    return-void
.end method

.method kkU()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->hwh()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public muteVideo(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->mwH:Lcom/bytedance/sdk/openadsdk/core/UN$tB;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->ZYk(Ljava/lang/Runnable;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/UN$tB;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->oq:Lcom/bytedance/sdk/openadsdk/core/so/awB;

    .line 16
    .line 17
    invoke-direct {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/UN$tB;-><init>(Lcom/bytedance/sdk/openadsdk/core/so/awB;Lorg/json/JSONObject;)V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->mwH:Lcom/bytedance/sdk/openadsdk/core/UN$tB;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->oJ(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :catch_0
    const-string p1, "TTAD.AndroidObject"

    .line 27
    .line 28
    const-string v0, ""

    .line 29
    .line 30
    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public oJ()Lcom/bytedance/sdk/openadsdk/BTZ/ZYk;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->wd:Lcom/bytedance/sdk/openadsdk/BTZ/ZYk;

    return-object v0
.end method

.method public oJ(I)Lcom/bytedance/sdk/openadsdk/core/UN;
    .locals 0

    .line 39
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->eZI:I

    return-object p0
.end method

.method public oJ(Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/UN;
    .locals 1

    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->BTZ:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/dLZ;)Lcom/bytedance/sdk/openadsdk/core/UN;
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->QSm:Lcom/bytedance/sdk/component/adexpress/ZYk/dLZ;

    return-object p0
.end method

.method public oJ(Lcom/bytedance/sdk/component/jFA/ba;)Lcom/bytedance/sdk/openadsdk/core/UN;
    .locals 2

    if-nez p1, :cond_0

    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/jFA/ba;->getWebView()Landroid/webkit/WebView;

    move-result-object v0

    if-nez v0, :cond_1

    return-object p0

    .line 13
    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/bytedance/sdk/component/oJ/si;->oJ(Landroid/webkit/WebView;)Lcom/bytedance/sdk/component/oJ/kkU;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/dLZ/oJ;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/dLZ/oJ;-><init>()V

    .line 14
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/oJ/kkU;->oJ(Lcom/bytedance/sdk/component/oJ/oJ;)Lcom/bytedance/sdk/component/oJ/kkU;

    move-result-object v0

    const-string v1, "ToutiaoJSBridge"

    .line 15
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/oJ/kkU;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/oJ/kkU;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/UN$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/UN$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/UN;)V

    .line 16
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/oJ/kkU;->oJ(Lcom/bytedance/sdk/component/oJ/BTZ;)Lcom/bytedance/sdk/component/oJ/kkU;

    move-result-object v0

    .line 17
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/jFA;->si()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/oJ/kkU;->oJ(Z)Lcom/bytedance/sdk/component/oJ/kkU;

    move-result-object v0

    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/oJ/kkU;->ZYk(Z)Lcom/bytedance/sdk/component/oJ/kkU;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/oJ/kkU;->oJ()Lcom/bytedance/sdk/component/oJ/kkU;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/oJ/kkU;->ZYk()Lcom/bytedance/sdk/component/oJ/si;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->ofl:Lcom/bytedance/sdk/component/oJ/si;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/cFZ;->oJ(Lcom/bytedance/sdk/component/oJ/si;Lcom/bytedance/sdk/openadsdk/core/UN;)V

    .line 22
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->ofl:Lcom/bytedance/sdk/component/oJ/si;

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/oJ;->oJ(Lcom/bytedance/sdk/component/oJ/si;Lcom/bytedance/sdk/openadsdk/core/UN;)V

    .line 23
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->ofl:Lcom/bytedance/sdk/component/oJ/si;

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/ZYk;->oJ(Lcom/bytedance/sdk/component/oJ/si;Lcom/bytedance/sdk/openadsdk/core/UN;)V

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->ofl:Lcom/bytedance/sdk/component/oJ/si;

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/tB;->oJ(Lcom/bytedance/sdk/component/oJ/si;Lcom/bytedance/sdk/openadsdk/core/UN;)V

    .line 25
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->ofl:Lcom/bytedance/sdk/component/oJ/si;

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/ba;->oJ(Lcom/bytedance/sdk/component/oJ/si;Lcom/bytedance/sdk/openadsdk/core/UN;)V

    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->ofl:Lcom/bytedance/sdk/component/oJ/si;

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/jFA;->oJ(Lcom/bytedance/sdk/component/oJ/si;Lcom/bytedance/sdk/openadsdk/core/UN;)V

    .line 27
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->ofl:Lcom/bytedance/sdk/component/oJ/si;

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/BTZ;->oJ(Lcom/bytedance/sdk/component/oJ/si;Lcom/bytedance/sdk/openadsdk/core/UN;)V

    .line 28
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->ofl:Lcom/bytedance/sdk/component/oJ/si;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/kkU;->oJ(Lcom/bytedance/sdk/component/oJ/si;Lcom/bytedance/sdk/component/jFA/ba;)V

    .line 29
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->ofl:Lcom/bytedance/sdk/component/oJ/si;

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/so;->oJ(Lcom/bytedance/sdk/component/oJ/si;Lcom/bytedance/sdk/openadsdk/core/UN;)V

    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->ofl:Lcom/bytedance/sdk/component/oJ/si;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Id:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/Pfn;->oJ(Lcom/bytedance/sdk/component/oJ/si;Lorg/json/JSONObject;)V

    .line 31
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->ofl:Lcom/bytedance/sdk/component/oJ/si;

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/ex;->oJ(Lcom/bytedance/sdk/component/oJ/si;Lcom/bytedance/sdk/openadsdk/core/UN;)V

    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->ofl:Lcom/bytedance/sdk/component/oJ/si;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0, p1, p0, v1}, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/awB;->oJ(Lcom/bytedance/sdk/component/oJ/si;Lcom/bytedance/sdk/component/jFA/ba;Lcom/bytedance/sdk/openadsdk/core/UN;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 33
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->ofl:Lcom/bytedance/sdk/component/oJ/si;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1, p0, v0}, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/dLZ;->oJ(Lcom/bytedance/sdk/component/oJ/si;Lcom/bytedance/sdk/openadsdk/core/UN;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    .line 34
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->ofl:Lcom/bytedance/sdk/component/oJ/si;

    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/PiB;->oJ(Lcom/bytedance/sdk/component/oJ/si;Lcom/bytedance/sdk/openadsdk/core/UN;)V

    .line 35
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->ofl:Lcom/bytedance/sdk/component/oJ/si;

    invoke-static {p1, p0}, Lcom/bytedance/sdk/openadsdk/dLZ/oJ/WcQ;->oJ(Lcom/bytedance/sdk/component/oJ/si;Lcom/bytedance/sdk/openadsdk/core/UN;)V

    :catch_0
    return-object p0
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/BTZ/Pfn;)Lcom/bytedance/sdk/openadsdk/core/UN;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->tb:Lcom/bytedance/sdk/openadsdk/BTZ/Pfn;

    return-object p0
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/BTZ/ba;)Lcom/bytedance/sdk/openadsdk/core/UN;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Xe:Lcom/bytedance/sdk/openadsdk/BTZ/ba;

    return-object p0
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/BTZ/cFZ;)Lcom/bytedance/sdk/openadsdk/core/UN;
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Jm:Lcom/bytedance/sdk/openadsdk/BTZ/cFZ;

    return-object p0
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/BTZ/kkU;)Lcom/bytedance/sdk/openadsdk/core/UN;
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->LpP:Lcom/bytedance/sdk/openadsdk/BTZ/kkU;

    return-object p0
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/BTZ/oJ;)Lcom/bytedance/sdk/openadsdk/core/UN;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->jr:Lcom/bytedance/sdk/openadsdk/BTZ/oJ;

    return-object p0
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/BTZ/tB;)Lcom/bytedance/sdk/openadsdk/core/UN;
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ln:Lcom/bytedance/sdk/openadsdk/BTZ/tB;

    return-object p0
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Lcom/bytedance/sdk/openadsdk/core/UN;
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz p1, :cond_0

    .line 41
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->yV()Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->RZ:Lorg/json/JSONObject;

    :cond_0
    return-object p0
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/so/awB;)Lcom/bytedance/sdk/openadsdk/core/UN;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->oq:Lcom/bytedance/sdk/openadsdk/core/so/awB;

    return-object p0
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/widget/Pfn;)Lcom/bytedance/sdk/openadsdk/core/UN;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->so:Lcom/bytedance/sdk/openadsdk/core/widget/Pfn;

    return-object p0
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/widget/oJ/oJ;)Lcom/bytedance/sdk/openadsdk/core/UN;
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Rl:Lcom/bytedance/sdk/openadsdk/core/widget/oJ/oJ;

    return-object p0
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;)Lcom/bytedance/sdk/openadsdk/core/UN;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->XAo:Lcom/bytedance/sdk/openadsdk/ex/ex/Pfn;

    return-object p0
.end method

.method public oJ(Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/core/UN;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/core/UN;"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ:Ljava/util/Map;

    return-object p0
.end method

.method public oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/UN;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Id:Lorg/json/JSONObject;

    return-object p0
.end method

.method public oJ(Z)Lcom/bytedance/sdk/openadsdk/core/UN;
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk:Z

    return-object p0
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/UN$ZYk;I)Lorg/json/JSONObject;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    const/4 v3, 0x3

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    .line 64
    iget-object v7, v1, Lcom/bytedance/sdk/openadsdk/core/UN$ZYk;->oJ:Ljava/lang/String;

    const-string v8, "call"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v8, 0x0

    if-nez v7, :cond_0

    return-object v8

    .line 65
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/core/jFA;->si()Z

    move-result v7

    const-string v9, "TTAD.AndroidObject"

    if-eqz v7, :cond_1

    .line 66
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v10, "[JSB-REQ] version:"

    invoke-direct {v7, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " method:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/bytedance/sdk/openadsdk/core/UN$ZYk;->tB:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_1
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 68
    iget-object v10, v1, Lcom/bytedance/sdk/openadsdk/core/UN$ZYk;->tB:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v11

    sparse-switch v11, :sswitch_data_0

    :goto_0
    move v10, v5

    goto/16 :goto_1

    :sswitch_0
    const-string v11, "landscape_click"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    goto :goto_0

    :cond_2
    const/16 v10, 0x21

    goto/16 :goto_1

    :sswitch_1
    const-string v11, "skipVideo"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_0

    :cond_3
    const/16 v10, 0x20

    goto/16 :goto_1

    :sswitch_2
    const-string v11, "sendLog"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_0

    :cond_4
    const/16 v10, 0x1f

    goto/16 :goto_1

    :sswitch_3
    const-string v11, "playable_style"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    goto :goto_0

    :cond_5
    const/16 v10, 0x1e

    goto/16 :goto_1

    :sswitch_4
    const-string v11, "getNetworkData"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    goto :goto_0

    :cond_6
    const/16 v10, 0x1d

    goto/16 :goto_1

    :sswitch_5
    const-string v11, "endcard_load"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_7

    goto :goto_0

    :cond_7
    const/16 v10, 0x1c

    goto/16 :goto_1

    :sswitch_6
    const-string v11, "removeLoading"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    goto :goto_0

    :cond_8
    const/16 v10, 0x1b

    goto/16 :goto_1

    :sswitch_7
    const-string v11, "renderDidFinish"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    goto :goto_0

    :cond_9
    const/16 v10, 0x1a

    goto/16 :goto_1

    :sswitch_8
    const-string v11, "muteVideo"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    goto :goto_0

    :cond_a
    const/16 v10, 0x19

    goto/16 :goto_1

    :sswitch_9
    const-string v11, "pauseWebViewTimers"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v10, 0x18

    goto/16 :goto_1

    :sswitch_a
    const-string v11, "getVolume"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v10, 0x17

    goto/16 :goto_1

    :sswitch_b
    const-string v11, "getCurrentVideoState"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v10, 0x16

    goto/16 :goto_1

    :sswitch_c
    const-string v11, "cancel_download_app_ad"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v10, 0x15

    goto/16 :goto_1

    :sswitch_d
    const-string v11, "getTemplateInfo"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v10, 0x14

    goto/16 :goto_1

    :sswitch_e
    const-string v11, "dynamicTrack"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v10, 0x13

    goto/16 :goto_1

    :sswitch_f
    const-string v11, "sendReward"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v10, 0x12

    goto/16 :goto_1

    :sswitch_10
    const-string v11, "getNativeSiteCustomData"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v10, 0x11

    goto/16 :goto_1

    :sswitch_11
    const-string v11, "isViewable"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v10, 0x10

    goto/16 :goto_1

    :sswitch_12
    const-string v11, "getCloseButtonInfo"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v10, 0xf

    goto/16 :goto_1

    :sswitch_13
    const-string v11, "unsubscribe_app_ad"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_15

    goto/16 :goto_0

    :cond_15
    const/16 v10, 0xe

    goto/16 :goto_1

    :sswitch_14
    const-string v11, "close"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_16

    goto/16 :goto_0

    :cond_16
    const/16 v10, 0xd

    goto/16 :goto_1

    :sswitch_15
    const-string v11, "download_app_ad"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_17

    goto/16 :goto_0

    :cond_17
    const/16 v10, 0xc

    goto/16 :goto_1

    :sswitch_16
    const-string v11, "getTeMaiAds"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_18

    goto/16 :goto_0

    :cond_18
    const/16 v10, 0xb

    goto/16 :goto_1

    :sswitch_17
    const-string v11, "send_temai_product_ids"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_19

    goto/16 :goto_0

    :cond_19
    const/16 v10, 0xa

    goto/16 :goto_1

    :sswitch_18
    const-string v11, "openPrivacy"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/16 v10, 0x9

    goto/16 :goto_1

    :sswitch_19
    const-string v11, "getScreenSize"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1b

    goto/16 :goto_0

    :cond_1b
    const/16 v10, 0x8

    goto/16 :goto_1

    :sswitch_1a
    const-string v11, "appInfo"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/4 v10, 0x7

    goto :goto_1

    :sswitch_1b
    const-string v11, "clickEvent"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1d

    goto/16 :goto_0

    :cond_1d
    const/4 v10, 0x6

    goto :goto_1

    :sswitch_1c
    const-string v11, "webview_time_track"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1e

    goto/16 :goto_0

    :cond_1e
    const/4 v10, 0x5

    goto :goto_1

    :sswitch_1d
    const-string v11, "openAdLandPageLinks"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1f

    goto/16 :goto_0

    :cond_1f
    const/4 v10, 0x4

    goto :goto_1

    :sswitch_1e
    const-string v11, "changeVideoState"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_20

    goto/16 :goto_0

    :cond_20
    move v10, v3

    goto :goto_1

    :sswitch_1f
    const-string v11, "pauseWebView"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_21

    goto/16 :goto_0

    :cond_21
    const/4 v10, 0x2

    goto :goto_1

    :sswitch_20
    const-string v11, "adInfo"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_22

    goto/16 :goto_0

    :cond_22
    move v10, v4

    goto :goto_1

    :sswitch_21
    const-string v11, "subscribe_app_ad"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_23

    goto/16 :goto_0

    :cond_23
    move v10, v6

    :goto_1
    packed-switch v10, :pswitch_data_0

    goto/16 :goto_3

    .line 69
    :pswitch_0
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->bgF:Landroid/content/Context;

    instance-of v5, v3, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    if-eqz v5, :cond_2d

    .line 70
    check-cast v3, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;->ba()V

    goto/16 :goto_3

    .line 71
    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/UN;->Id()V

    goto/16 :goto_3

    .line 72
    :pswitch_2
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/UN$ZYk;->ex:Lorg/json/JSONObject;

    if-eqz v3, :cond_2d

    .line 73
    const-string v5, "extJson"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_2d

    .line 74
    const-string v6, "category"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2d

    .line 75
    const-string v8, "tag"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2d

    .line 76
    const-string v10, "label"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2d

    .line 77
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 78
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 79
    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 80
    const-string v8, "value"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v16

    .line 81
    const-string v8, "extValue"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v18

    .line 82
    :try_start_0
    const-string v3, "ua_policy"

    iget v8, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->eZI:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v3, v8}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :catch_0
    const-string v3, "click"

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 84
    invoke-direct {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/UN;->cY(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v5

    .line 85
    :cond_24
    invoke-direct {v0, v6, v15}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 86
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v3

    .line 87
    invoke-direct {v0, v5, v3, v15}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lorg/json/JSONObject;ZLjava/lang/String;)V

    .line 88
    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    move-object/from16 v20, v5

    move/from16 v21, v3

    invoke-static/range {v12 .. v21}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLorg/json/JSONObject;Z)V

    goto/16 :goto_3

    .line 89
    :pswitch_3
    invoke-direct {v0, v7}, Lcom/bytedance/sdk/openadsdk/core/UN;->PiB(Lorg/json/JSONObject;)V

    goto/16 :goto_3

    .line 90
    :pswitch_4
    invoke-virtual {v0, v1, v7}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/core/UN$ZYk;Lorg/json/JSONObject;)V

    goto/16 :goto_3

    .line 91
    :pswitch_5
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/UN$ZYk;->ex:Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/UN;->awB(Lorg/json/JSONObject;)V

    goto/16 :goto_3

    .line 92
    :pswitch_6
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->tb:Lcom/bytedance/sdk/openadsdk/BTZ/Pfn;

    if-eqz v3, :cond_2d

    .line 93
    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/BTZ/Pfn;->oJ()V

    goto/16 :goto_3

    .line 94
    :pswitch_7
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/UN$ZYk;->ex:Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry(Lorg/json/JSONObject;)V

    goto/16 :goto_3

    .line 95
    :pswitch_8
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->oq:Lcom/bytedance/sdk/openadsdk/core/so/awB;

    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/UN$ZYk;->ex:Lorg/json/JSONObject;

    invoke-static {v3, v5}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(Lcom/bytedance/sdk/openadsdk/core/so/awB;Lorg/json/JSONObject;)V

    goto/16 :goto_3

    .line 96
    :pswitch_9
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/UN;->oq()V

    goto/16 :goto_3

    .line 97
    :pswitch_a
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v8

    const-string v10, "audio"

    invoke-virtual {v8, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/media/AudioManager;

    if-eqz v8, :cond_25

    .line 98
    invoke-virtual {v8, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v5

    :cond_25
    if-gtz v5, :cond_26

    move v6, v4

    .line 99
    :cond_26
    const-string v3, "endcard_mute"

    invoke-virtual {v7, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 100
    :pswitch_b
    invoke-direct {v0, v7}, Lcom/bytedance/sdk/openadsdk/core/UN;->si(Lorg/json/JSONObject;)Z

    goto/16 :goto_3

    .line 101
    :pswitch_c
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->Id:Lorg/json/JSONObject;

    if-eqz v3, :cond_28

    .line 102
    const-string v5, "setting"

    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/UN;->jr()Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v3, :cond_27

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->VzB()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 104
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->Id:Lorg/json/JSONObject;

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->VzB()Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "dynamic_configs"

    invoke-virtual {v3, v6, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    :cond_27
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v3, :cond_28

    .line 106
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->Id:Lorg/json/JSONObject;

    const-string v6, "extension"

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Yk()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v5, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    :cond_28
    iget-object v7, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->Id:Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 108
    :pswitch_d
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/UN$ZYk;->ex:Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/UN;->QSm(Lorg/json/JSONObject;)V

    goto/16 :goto_3

    .line 109
    :pswitch_e
    iput-boolean v4, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->tB:Z

    .line 110
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->Yg:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    invoke-interface {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;->oJ(Z)V

    .line 111
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->Xe:Lcom/bytedance/sdk/openadsdk/BTZ/ba;

    if-eqz v3, :cond_29

    .line 112
    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/BTZ/ba;->oJ()V

    goto/16 :goto_3

    .line 113
    :cond_29
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->Yg:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    if-eqz v3, :cond_2d

    .line 114
    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;->f_()V

    goto/16 :goto_3

    .line 115
    :pswitch_f
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v3, :cond_2d

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->yQF()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2d

    .line 116
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->yQF()Ljava/lang/String;

    move-result-object v3

    const-string v5, "data"

    invoke-virtual {v7, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 117
    :pswitch_10
    iget-boolean v3, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->mu:Z

    const-string v5, "viewStatus"

    invoke-virtual {v7, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto/16 :goto_3

    .line 118
    :pswitch_11
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/UN;->si()Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_2d

    :goto_2
    move-object v7, v3

    goto/16 :goto_3

    .line 119
    :pswitch_12
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->kkU:Lcom/bytedance/sdk/openadsdk/kkU/tB;

    if-eqz v3, :cond_2d

    .line 120
    iget-object v5, v1, Lcom/bytedance/sdk/openadsdk/core/UN$ZYk;->ex:Lorg/json/JSONObject;

    invoke-interface {v3, v5}, Lcom/bytedance/sdk/openadsdk/kkU/tB;->oJ(Lorg/json/JSONObject;)V

    goto/16 :goto_3

    .line 121
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/UN;->cFZ()V

    goto/16 :goto_3

    .line 122
    :pswitch_14
    iput-boolean v4, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->cdg:Z

    .line 123
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->HyG:Ljava/lang/String;

    invoke-static {v3, v5, v4, v8}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 124
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->IUZ:Lcom/bytedance/sdk/openadsdk/core/ZYk/ex;

    if-eqz v3, :cond_2a

    .line 125
    iget-boolean v5, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->nke:Z

    invoke-interface {v3, v5}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ex;->Pfn(Z)V

    goto/16 :goto_3

    .line 126
    :cond_2a
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->kkU:Lcom/bytedance/sdk/openadsdk/kkU/tB;

    if-eqz v3, :cond_2b

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->bgF:Landroid/content/Context;

    if-eqz v5, :cond_2b

    .line 127
    iget-object v6, v1, Lcom/bytedance/sdk/openadsdk/core/UN$ZYk;->ex:Lorg/json/JSONObject;

    iget-object v8, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->HyG:Ljava/lang/String;

    invoke-interface {v3, v5, v6, v8}, Lcom/bytedance/sdk/openadsdk/kkU/tB;->oJ(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 128
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->Yg:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    if-eqz v3, :cond_2d

    .line 129
    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;->ba()V

    goto/16 :goto_3

    .line 130
    :cond_2b
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->HyG:Ljava/lang/String;

    const/4 v6, -0x2

    invoke-static {v3, v5, v6, v8}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILorg/json/JSONObject;)V

    goto/16 :goto_3

    .line 131
    :pswitch_15
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->HL:Lorg/json/JSONObject;

    if-eqz v3, :cond_2d

    goto :goto_2

    .line 132
    :pswitch_16
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/UN$ZYk;->ex:Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/UN;->oq(Lorg/json/JSONObject;)V

    goto/16 :goto_3

    .line 133
    :pswitch_17
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/UN;->cY()V

    goto/16 :goto_3

    .line 134
    :pswitch_18
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->jr:Lcom/bytedance/sdk/openadsdk/BTZ/oJ;

    if-eqz v3, :cond_2d

    .line 135
    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/BTZ/oJ;->ZYk()I

    move-result v3

    .line 136
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->jr:Lcom/bytedance/sdk/openadsdk/BTZ/oJ;

    invoke-interface {v5}, Lcom/bytedance/sdk/openadsdk/BTZ/oJ;->oJ()I

    move-result v5

    .line 137
    const-string v6, "width"

    invoke-virtual {v7, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 138
    const-string v3, "height"

    invoke-virtual {v7, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    goto :goto_3

    .line 139
    :pswitch_19
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(Lorg/json/JSONObject;)V

    goto :goto_3

    .line 140
    :pswitch_1a
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/UN$ZYk;->ex:Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/UN;->Pfn(Lorg/json/JSONObject;)V

    goto :goto_3

    .line 141
    :pswitch_1b
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/UN$ZYk;->ex:Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/UN;->WcQ(Lorg/json/JSONObject;)V

    goto :goto_3

    .line 142
    :pswitch_1c
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/UN$ZYk;->ex:Lorg/json/JSONObject;

    .line 143
    invoke-direct {v0, v3, v7}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lorg/json/JSONObject;Lorg/json/JSONObject;)Z

    move-result v5

    if-eqz v5, :cond_2d

    .line 144
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/UN;->tB(Lorg/json/JSONObject;)V

    goto :goto_3

    .line 145
    :pswitch_1d
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/UN$ZYk;->ex:Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/UN;->eZI(Lorg/json/JSONObject;)V

    goto :goto_3

    .line 146
    :pswitch_1e
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/UN;->QSm()V

    goto :goto_3

    .line 147
    :pswitch_1f
    invoke-direct {v0, v7}, Lcom/bytedance/sdk/openadsdk/core/UN;->BTZ(Lorg/json/JSONObject;)V

    goto :goto_3

    .line 148
    :pswitch_20
    invoke-direct/range {p0 .. p0}, Lcom/bytedance/sdk/openadsdk/core/UN;->tb()V

    .line 149
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v10, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->HyG:Ljava/lang/String;

    invoke-static {v3, v10, v6, v8}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILorg/json/JSONObject;)V

    .line 150
    iget-object v12, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->bgF:Landroid/content/Context;

    if-eqz v12, :cond_2c

    .line 151
    iget-object v11, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->kkU:Lcom/bytedance/sdk/openadsdk/kkU/tB;

    iget-object v13, v1, Lcom/bytedance/sdk/openadsdk/core/UN$ZYk;->ex:Lorg/json/JSONObject;

    iget-object v14, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->PiB:Ljava/lang/String;

    iget v15, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->WcQ:I

    iget-boolean v3, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->si:Z

    move/from16 v16, v3

    invoke-interface/range {v11 .. v16}, Lcom/bytedance/sdk/openadsdk/kkU/tB;->oJ(Landroid/content/Context;Lorg/json/JSONObject;Ljava/lang/String;IZ)V

    goto :goto_3

    .line 152
    :cond_2c
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v6, v0, Lcom/bytedance/sdk/openadsdk/core/UN;->HyG:Ljava/lang/String;

    invoke-static {v3, v6, v5, v8}, Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILorg/json/JSONObject;)V

    :cond_2d
    :goto_3
    :pswitch_21
    if-ne v2, v4, :cond_2e

    .line 153
    iget-object v3, v1, Lcom/bytedance/sdk/openadsdk/core/UN$ZYk;->ZYk:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2e

    .line 154
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/UN$ZYk;->ZYk:Ljava/lang/String;

    invoke-direct {v0, v1, v7}, Lcom/bytedance/sdk/openadsdk/core/UN;->ZYk(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 155
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/jFA;->si()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 156
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "[JSB-RSP] version:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2e
    return-object v7

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7966d06a -> :sswitch_21
        -0x54d5e48f -> :sswitch_20
        -0x4f555ebd -> :sswitch_1f
        -0x45af975a -> :sswitch_1e
        -0x3d07124e -> :sswitch_1d
        -0x325352a1 -> :sswitch_1c
        -0x2fbc0e0e -> :sswitch_1b
        -0x2f57a591 -> :sswitch_1a
        -0x2aa0497d -> :sswitch_19
        -0x1e7a3222 -> :sswitch_18
        -0x1097c80a -> :sswitch_17
        -0xa5b419e -> :sswitch_16
        0x1a8c298 -> :sswitch_15
        0x5a5ddf8 -> :sswitch_14
        0x642ec2f -> :sswitch_13
        0x17d08ce2 -> :sswitch_12
        0x18049cc9 -> :sswitch_11
        0x195bc1cf -> :sswitch_10
        0x1a6244d7 -> :sswitch_f
        0x220cf04c -> :sswitch_e
        0x26c16abe -> :sswitch_d
        0x281c12d3 -> :sswitch_c
        0x2a6ab279 -> :sswitch_b
        0x34c20a10 -> :sswitch_a
        0x420130f1 -> :sswitch_9
        0x44a639e2 -> :sswitch_8
        0x49bca8fc -> :sswitch_7
        0x5b52a418 -> :sswitch_6
        0x616caa3a -> :sswitch_5
        0x66233dc2 -> :sswitch_4
        0x673944c0 -> :sswitch_3
        0x7602ce9c -> :sswitch_2
        0x7c55d63c -> :sswitch_1
        0x7d77e304 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_21
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public oJ(Landroid/os/Message;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 248
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    .line 249
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/UN$ZYk;

    if-eqz v0, :cond_1

    .line 250
    :try_start_0
    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/UN$ZYk;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lcom/bytedance/sdk/openadsdk/core/UN$ZYk;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/BTZ/ZYk;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->wd:Lcom/bytedance/sdk/openadsdk/BTZ/ZYk;

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;)V
    .locals 0

    .line 260
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Yg:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/UN$ZYk;Lorg/json/JSONObject;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 187
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/UN$ZYk;->ex:Lorg/json/JSONObject;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/UN$8;

    invoke-direct {v1, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/UN$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/UN;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/UN$ZYk;)V

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/BTZ/ex;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/UN$oJ;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->lY:Lcom/bytedance/sdk/openadsdk/core/UN$oJ;

    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 2

    .line 180
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 181
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 182
    const-string p1, "time"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 183
    const-string v1, "flag"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 184
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->oq:Lcom/bytedance/sdk/openadsdk/core/so/awB;

    if-eqz v1, :cond_1

    .line 185
    invoke-interface {v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/so/awB;->oJ(ILjava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    .line 186
    :catch_0
    const-string p1, "TTAD.AndroidObject"

    const-string v0, "requestPauseVideo json exception"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public oJ(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 251
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/UN;->tB(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/BTZ/ex;)V
    .locals 9

    .line 191
    const-string v0, "common_params"

    const-string v1, "session_params"

    if-nez p2, :cond_0

    return-void

    .line 192
    :cond_0
    :try_start_0
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/UN$9;

    invoke-direct {v2, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/UN$9;-><init>(Lcom/bytedance/sdk/openadsdk/core/UN;Lcom/bytedance/sdk/openadsdk/BTZ/ex;)V

    .line 193
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->PiB:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto/16 :goto_3

    .line 194
    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->qnr()I

    move-result p2

    .line 195
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BHY()Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v3

    .line 196
    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/model/HL;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/core/model/HL;-><init>()V

    const/4 v5, 0x1

    .line 197
    iput-boolean v5, v4, Lcom/bytedance/sdk/openadsdk/core/model/HL;->ba:Z

    .line 198
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->PdF()Lcom/bytedance/sdk/openadsdk/core/model/cY$oJ;

    move-result-object v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->BWx()Lcom/bytedance/sdk/openadsdk/core/model/Jc;

    move-result-object v5

    if-eqz v5, :cond_3

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :cond_2
    :goto_0
    const/4 v5, 0x2

    .line 199
    iput v5, v4, Lcom/bytedance/sdk/openadsdk/core/model/HL;->jFA:I

    .line 200
    :cond_3
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->RZ:Lorg/json/JSONObject;

    if-nez v5, :cond_4

    .line 201
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    :cond_4
    if-eqz p1, :cond_5

    .line 202
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 203
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 204
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 205
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 206
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 207
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    .line 208
    :cond_5
    iput-object v5, v4, Lcom/bytedance/sdk/openadsdk/core/model/HL;->cFZ:Lorg/json/JSONObject;

    if-eqz p1, :cond_7

    .line 209
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 210
    iget-object v1, v4, Lcom/bytedance/sdk/openadsdk/core/model/HL;->so:Lorg/json/JSONObject;

    if-nez v1, :cond_6

    .line 211
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, v4, Lcom/bytedance/sdk/openadsdk/core/model/HL;->so:Lorg/json/JSONObject;

    .line 212
    :cond_6
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 213
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 214
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 215
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 216
    iget-object v5, v4, Lcom/bytedance/sdk/openadsdk/core/model/HL;->so:Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    .line 217
    :cond_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/ZYk;->oJ()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 218
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->tB()Lcom/bytedance/sdk/openadsdk/core/Id;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/UN$10;

    invoke-direct {v0, p0, v2}, Lcom/bytedance/sdk/openadsdk/core/UN$10;-><init>(Lcom/bytedance/sdk/openadsdk/core/UN;Lcom/bytedance/sdk/openadsdk/BTZ/ex;)V

    invoke-interface {p1, v3, v4, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/Id;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/HL;ILcom/bytedance/sdk/openadsdk/core/QSm;)V

    return-void

    .line 219
    :cond_8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->tB()Lcom/bytedance/sdk/openadsdk/core/Id;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/UN$11;

    invoke-direct {v0, p0, v2}, Lcom/bytedance/sdk/openadsdk/core/UN$11;-><init>(Lcom/bytedance/sdk/openadsdk/core/UN;Lcom/bytedance/sdk/openadsdk/BTZ/ex;)V

    invoke-interface {p1, v3, v4, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/Id;->oJ(Lcom/bytedance/sdk/openadsdk/AdSlot;Lcom/bytedance/sdk/openadsdk/core/model/HL;ILcom/bytedance/sdk/openadsdk/core/Id$oJ;)V

    return-void

    :cond_9
    :goto_3
    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 220
    invoke-interface {v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/BTZ/ex;->oJ(ZLcom/bytedance/sdk/openadsdk/core/model/oJ;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 221
    :goto_4
    const-string p2, "TTAD.AndroidObject"

    const-string v0, "get ads error"

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public oJ(Lorg/json/JSONObject;Ljava/lang/String;)V
    .locals 1

    .line 256
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->oq:Lcom/bytedance/sdk/openadsdk/core/so/awB;

    if-eqz v0, :cond_0

    .line 257
    invoke-interface {v0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/so/awB;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Yg:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    if-eqz v0, :cond_1

    .line 259
    invoke-interface {v0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method public oJ(Landroid/net/Uri;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 235
    :cond_0
    :try_start_0
    const-string v1, "bytedance"

    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 236
    :cond_1
    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 237
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/UN;->jFA:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :catch_0
    :cond_2
    return v0
.end method

.method public renderDidFinish(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    :catch_0
    return-void
.end method

.method public skipVideo()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/UN$6;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/UN$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/UN;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/ofl;->oJ(Ljava/lang/Runnable;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public so(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 2

    .line 6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->oq:Lcom/bytedance/sdk/openadsdk/core/so/awB;

    if-eqz v1, :cond_0

    .line 8
    :try_start_0
    invoke-interface {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/so/awB;->oJ(Lorg/json/JSONObject;)Z

    move-result p1

    .line 9
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-object v0
.end method

.method public so()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->oq:Lcom/bytedance/sdk/openadsdk/core/so/awB;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/so/awB;->ZYk()V

    :cond_0
    return-void
.end method

.method public tB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/UN;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->dLZ:Ljava/lang/String;

    return-object p0
.end method

.method public tB()V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->ofl:Lcom/bytedance/sdk/component/oJ/si;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/oJ/si;->oJ()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->ofl:Lcom/bytedance/sdk/component/oJ/si;

    return-void
.end method

.method public tB(I)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->oq:Lcom/bytedance/sdk/openadsdk/core/so/awB;

    if-eqz v0, :cond_0

    .line 19
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/so/awB;->ZYk(I)V

    :cond_0
    return-void
.end method

.method public tB(Lorg/json/JSONObject;)V
    .locals 8

    .line 6
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/UN;->RZ()Landroid/content/Context;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->bgF:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    .line 8
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Ry:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->HyG:Ljava/lang/String;

    iget v5, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->WcQ:I

    .line 9
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/UN;->eZI()Landroid/webkit/WebView;

    move-result-object v6

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->so:Lcom/bytedance/sdk/openadsdk/core/widget/Pfn;

    move-object v2, p1

    .line 10
    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/Ry;->oJ(Landroid/content/Context;ZLorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ILandroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/core/widget/Pfn;)V

    return-void
.end method

.method public tB(Z)V
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->tB:Z

    return-void
.end method

.method public videoFrameChanged(Ljava/lang/String;)V
    .locals 11
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Jm:Lcom/bytedance/sdk/openadsdk/BTZ/cFZ;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;

    .line 12
    .line 13
    invoke-direct {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "videoInfo"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    const-string v1, "x"

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 27
    .line 28
    .line 29
    move-result-wide v1

    .line 30
    const-string v3, "y"

    .line 31
    .line 32
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 33
    .line 34
    .line 35
    move-result-wide v3

    .line 36
    const-string v5, "width"

    .line 37
    .line 38
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 39
    .line 40
    .line 41
    move-result-wide v5

    .line 42
    const-string v7, "height"

    .line 43
    .line 44
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 45
    .line 46
    .line 47
    move-result-wide v7

    .line 48
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/UN;->RZ(Lorg/json/JSONObject;)Z

    .line 49
    .line 50
    .line 51
    move-result v9

    .line 52
    if-eqz v9, :cond_1

    .line 53
    .line 54
    const-string v9, "borderRadiusTopLeft"

    .line 55
    .line 56
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 57
    .line 58
    .line 59
    move-result-wide v9

    .line 60
    double-to-float v9, v9

    .line 61
    invoke-virtual {p1, v9}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->oJ(F)V

    .line 62
    .line 63
    .line 64
    const-string v9, "borderRadiusTopRight"

    .line 65
    .line 66
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 67
    .line 68
    .line 69
    move-result-wide v9

    .line 70
    double-to-float v9, v9

    .line 71
    invoke-virtual {p1, v9}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->ZYk(F)V

    .line 72
    .line 73
    .line 74
    const-string v9, "borderRadiusBottomLeft"

    .line 75
    .line 76
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 77
    .line 78
    .line 79
    move-result-wide v9

    .line 80
    double-to-float v9, v9

    .line 81
    invoke-virtual {p1, v9}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->tB(F)V

    .line 82
    .line 83
    .line 84
    const-string v9, "borderRadiusBottomRight"

    .line 85
    .line 86
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 87
    .line 88
    .line 89
    move-result-wide v9

    .line 90
    double-to-float v0, v9

    .line 91
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->ex(F)V

    .line 92
    .line 93
    .line 94
    :cond_1
    invoke-virtual {p1, v1, v2}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->tB(D)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v3, v4}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->ex(D)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v5, v6}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->Pfn(D)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v7, v8}, Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;->ba(D)V

    .line 104
    .line 105
    .line 106
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/UN;->Jm:Lcom/bytedance/sdk/openadsdk/BTZ/cFZ;

    .line 107
    .line 108
    if-eqz v0, :cond_3

    .line 109
    .line 110
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/BTZ/cFZ;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/WcQ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .line 112
    .line 113
    :catchall_0
    :cond_3
    return-void
.end method
