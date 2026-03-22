.class public Lcom/bytedance/adsdk/ugeno/core/dLZ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private ZYk:Lorg/json/JSONObject;

.field private ex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private oJ:Landroid/content/Context;

.field private tB:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public ZYk()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/dLZ;->ex:Ljava/util/Map;

    return-object v0
.end method

.method public ZYk(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/dLZ;->tB:Lorg/json/JSONObject;

    return-void
.end method

.method public oJ()Lorg/json/JSONObject;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/dLZ;->tB:Lorg/json/JSONObject;

    return-object v0
.end method

.method public oJ(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/dLZ;->oJ:Landroid/content/Context;

    return-void
.end method

.method public oJ(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/dLZ;->ex:Ljava/util/Map;

    return-void
.end method

.method public oJ(Lorg/json/JSONObject;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/dLZ;->ZYk:Lorg/json/JSONObject;

    return-void
.end method
