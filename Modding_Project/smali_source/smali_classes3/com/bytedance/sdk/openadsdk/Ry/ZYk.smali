.class public Lcom/bytedance/sdk/openadsdk/Ry/ZYk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/Ry/ZYk$oJ;
    }
.end annotation


# static fields
.field private static volatile oJ:Lcom/bytedance/sdk/openadsdk/Ry/ZYk;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final ZYk:Lcom/bytedance/sdk/component/cFZ/oJ;

.field private final ex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private tB:Lcom/bytedance/sdk/openadsdk/Ry/oJ/tB;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p1, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->ex:Ljava/util/Map;

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->oJ()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    new-instance v0, Lcom/bytedance/sdk/component/cFZ/oJ$oJ;

    .line 16
    .line 17
    invoke-direct {v0}, Lcom/bytedance/sdk/component/cFZ/oJ$oJ;-><init>()V

    .line 18
    .line 19
    .line 20
    int-to-long v1, p1

    .line 21
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2, p1}, Lcom/bytedance/sdk/component/cFZ/oJ$oJ;->oJ(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/cFZ/oJ$oJ;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, v1, v2, p1}, Lcom/bytedance/sdk/component/cFZ/oJ$oJ;->ZYk(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/cFZ/oJ$oJ;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0, v1, v2, p1}, Lcom/bytedance/sdk/component/cFZ/oJ$oJ;->tB(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/cFZ/oJ$oJ;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ry/ZYk$oJ;

    .line 36
    .line 37
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk$oJ;-><init>(Lcom/bytedance/sdk/openadsdk/Ry/ZYk;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/cFZ/oJ$oJ;->oJ(Lcom/bytedance/sdk/component/ZYk/oJ/so;)Lcom/bytedance/sdk/component/cFZ/oJ$oJ;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    const/4 v0, 0x1

    .line 45
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/cFZ/oJ$oJ;->oJ(Z)Lcom/bytedance/sdk/component/cFZ/oJ$oJ;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cFZ/oJ$oJ;->oJ()Lcom/bytedance/sdk/component/cFZ/oJ;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->ZYk:Lcom/bytedance/sdk/component/cFZ/oJ;

    .line 54
    .line 55
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ry/ZYk$1;

    .line 56
    .line 57
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk$1;-><init>(Lcom/bytedance/sdk/openadsdk/Ry/ZYk;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v0}, Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/oJ;->oJ(Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/kkU;)V

    .line 61
    .line 62
    .line 63
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ry/ZYk$2;

    .line 64
    .line 65
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk$2;-><init>(Lcom/bytedance/sdk/openadsdk/Ry/ZYk;)V

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Lcom/bytedance/sdk/component/cFZ/oJ;->oJ(Lcom/bytedance/sdk/component/ZYk/oJ/oJ/oJ/Pfn;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cFZ/oJ;->ba()Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ZYk/oJ/dLZ;->oJ()Lcom/bytedance/sdk/component/ZYk/oJ/ex;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-eqz p1, :cond_0

    .line 80
    .line 81
    const/16 v0, 0x20

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/ZYk/oJ/ex;->oJ(I)V

    .line 84
    .line 85
    .line 86
    :cond_0
    return-void
.end method

.method private Pfn()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->tB:Lcom/bytedance/sdk/openadsdk/Ry/oJ/tB;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/Ry/oJ/tB;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/Ry/oJ/tB;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->tB:Lcom/bytedance/sdk/openadsdk/Ry/oJ/tB;

    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public static ZYk()Lcom/bytedance/sdk/openadsdk/Ry/ZYk;
    .locals 3

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/Ry/ZYk;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/Ry/ZYk;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;

    .line 13
    .line 14
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    sput-object v1, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/Ry/ZYk;

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    goto :goto_1

    .line 26
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    goto :goto_2

    .line 28
    :goto_1
    monitor-exit v0

    .line 29
    throw v1

    .line 30
    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/Ry/ZYk;

    .line 31
    .line 32
    return-object v0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/Ry/ZYk;Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->oJ(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0
.end method

.method private oJ(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->ex:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 5
    :try_start_0
    const-string v1, "ipv6"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :catch_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/jr;

    sget-object v2, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;->UNKNOWN:Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/jr;-><init>(Lcom/bytedance/sdk/component/embedapplog/PangleEncryptConstant$CryptDataScene;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/embedapplog/PangleEncryptManager;->encryptType4(Lorg/json/JSONObject;Lcom/bytedance/sdk/component/embedapplog/IDefaultEncrypt;)Lorg/json/JSONObject;

    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->ex:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public ex()Lcom/bytedance/sdk/openadsdk/Ry/oJ/tB;
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->Pfn()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->tB:Lcom/bytedance/sdk/openadsdk/Ry/oJ/tB;

    .line 5
    .line 6
    return-object v0
.end method

.method public oJ()I
    .locals 2

    const/16 v0, 0x2710

    .line 2
    :try_start_0
    const-string v1, "net_time_out"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/oq/oJ;->oJ(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return v0
.end method

.method public oJ(ILandroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 1

    if-eqz p3, :cond_0

    .line 12
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->eZI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 13
    :cond_0
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->eZI()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/jFA/ex;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/Pfn/kkU;->oJ(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/Pfn/kkU;->ZYk(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object p1

    .line 14
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->Pfn(Landroid/content/Context;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/Pfn/kkU;->Pfn(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object p1

    .line 15
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/Pfn/kkU;->ex(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object p1

    const/4 v0, 0x1

    .line 16
    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/Pfn/kkU;->tB(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object p1

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->eZI()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0, p2}, Lcom/bytedance/sdk/openadsdk/jFA/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bytedance/sdk/component/Pfn/eZI;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/Pfn/kkU;->oJ(Lcom/bytedance/sdk/component/Pfn/eZI;)Lcom/bytedance/sdk/component/Pfn/jFA;

    if-eqz p2, :cond_1

    .line 17
    new-instance p1, Lcom/bytedance/sdk/openadsdk/Ry/ZYk$3;

    invoke-direct {p1, p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk$3;-><init>(Lcom/bytedance/sdk/openadsdk/Ry/ZYk;Landroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/model/Ry;Landroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 19
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/jFA/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/Ry;)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/Pfn/kkU;->tB(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/jFA/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bytedance/sdk/component/Pfn/eZI;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/Pfn/kkU;->oJ(Lcom/bytedance/sdk/component/Pfn/eZI;)Lcom/bytedance/sdk/component/Pfn/jFA;

    :cond_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/core/model/Ry;Landroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/component/Pfn/eZI;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 20
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p2, :cond_0

    .line 21
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/jFA/ex;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/Ry;)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/Pfn/kkU;->tB(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ry;->oJ()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2, p4}, Lcom/bytedance/sdk/openadsdk/jFA/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Landroid/widget/ImageView;Lcom/bytedance/sdk/component/Pfn/eZI;)Lcom/bytedance/sdk/component/Pfn/eZI;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/Pfn/kkU;->oJ(Lcom/bytedance/sdk/component/Pfn/eZI;)Lcom/bytedance/sdk/component/Pfn/jFA;

    :cond_0
    return-void
.end method

.method public oJ(Ljava/lang/String;IILandroid/widget/ImageView;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 1

    .line 8
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/jFA/ex;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/bytedance/sdk/component/Pfn/kkU;->oJ(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object p2

    invoke-interface {p2, p3}, Lcom/bytedance/sdk/component/Pfn/kkU;->ZYk(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object p2

    .line 9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->Pfn(Landroid/content/Context;)I

    move-result p3

    invoke-interface {p2, p3}, Lcom/bytedance/sdk/component/Pfn/kkU;->Pfn(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object p2

    .line 10
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;)I

    move-result p3

    invoke-interface {p2, p3}, Lcom/bytedance/sdk/component/Pfn/kkU;->ex(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object p2

    const/4 p3, 0x1

    .line 11
    invoke-interface {p2, p3}, Lcom/bytedance/sdk/component/Pfn/kkU;->tB(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object p2

    invoke-static {p5, p1, p4}, Lcom/bytedance/sdk/openadsdk/jFA/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Landroid/widget/ImageView;)Lcom/bytedance/sdk/component/Pfn/eZI;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/component/Pfn/kkU;->oJ(Lcom/bytedance/sdk/component/Pfn/eZI;)Lcom/bytedance/sdk/component/Pfn/jFA;

    return-void
.end method

.method public oJ(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    if-eqz p2, :cond_1

    .line 22
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 24
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/jFA/ex;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object p1

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/Pfn/kkU;->tB(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/Ry/ZYk$5;

    invoke-direct {p2, p0, v0}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk$5;-><init>(Lcom/bytedance/sdk/openadsdk/Ry/ZYk;Ljava/lang/ref/WeakReference;)V

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/Pfn/kkU;->oJ(Lcom/bytedance/sdk/component/Pfn/so;)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/Ry/ZYk$4;

    invoke-direct {p2, p0, v0}, Lcom/bytedance/sdk/openadsdk/Ry/ZYk$4;-><init>(Lcom/bytedance/sdk/openadsdk/Ry/ZYk;Ljava/lang/ref/WeakReference;)V

    .line 25
    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/Pfn/kkU;->oJ(Lcom/bytedance/sdk/component/Pfn/eZI;)Lcom/bytedance/sdk/component/Pfn/jFA;

    :cond_1
    :goto_0
    return-void
.end method

.method public tB()Lcom/bytedance/sdk/component/cFZ/oJ;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/Ry/ZYk;->ZYk:Lcom/bytedance/sdk/component/cFZ/oJ;

    .line 2
    .line 3
    return-object v0
.end method
