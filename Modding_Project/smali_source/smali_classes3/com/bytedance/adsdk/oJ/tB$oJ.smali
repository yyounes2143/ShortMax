.class Lcom/bytedance/adsdk/oJ/tB$oJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/adsdk/ugeno/tB/oJ$oJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/oJ/tB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "oJ"
.end annotation


# instance fields
.field private ZYk:Ljava/lang/String;

.field private oJ:Lcom/bytedance/adsdk/oJ/ZYk/oJ;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/adsdk/oJ/tB$oJ;->ZYk:Ljava/lang/String;

    .line 5
    .line 6
    invoke-static {p1}, Lcom/bytedance/adsdk/oJ/ZYk/oJ;->oJ(Ljava/lang/String;)Lcom/bytedance/adsdk/oJ/ZYk/oJ;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/bytedance/adsdk/oJ/tB$oJ;->oJ:Lcom/bytedance/adsdk/oJ/ZYk/oJ;

    .line 11
    .line 12
    return-void
.end method

.method public static oJ(Ljava/lang/String;)Lcom/bytedance/adsdk/oJ/tB$oJ;
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/adsdk/oJ/tB$oJ;

    invoke-direct {v0, p0}, Lcom/bytedance/adsdk/oJ/tB$oJ;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public oJ(Lorg/json/JSONObject;)Ljava/lang/Object;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/adsdk/oJ/tB$oJ;->oJ:Lcom/bytedance/adsdk/oJ/ZYk/oJ;

    if-nez v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/bytedance/adsdk/oJ/tB$oJ;->ZYk:Ljava/lang/String;

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/adsdk/oJ/ZYk/oJ;->oJ(Lorg/json/JSONObject;)Ljava/lang/Object;

    move-result-object p1

    .line 5
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    return-object p1

    .line 6
    :cond_1
    instance-of v0, p1, Lcom/bytedance/adsdk/oJ/ZYk/oJ/oJ;

    if-eqz v0, :cond_2

    .line 7
    check-cast p1, Lcom/bytedance/adsdk/oJ/ZYk/oJ/oJ;

    invoke-static {p1}, Lcom/bytedance/adsdk/oJ/dLZ;->oJ(Lcom/bytedance/adsdk/oJ/ZYk/oJ/oJ;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 8
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
