.class Lcom/bytedance/sdk/openadsdk/core/cY$5;
.super Lcom/bytedance/sdk/component/cFZ/oJ/oJ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/core/Id$ZYk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/core/cY;

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/Id$ZYk;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/cY;Lcom/bytedance/sdk/openadsdk/core/Id$ZYk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/cY$5;->ZYk:Lcom/bytedance/sdk/openadsdk/core/cY;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/cY$5;->oJ:Lcom/bytedance/sdk/openadsdk/core/Id$ZYk;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/bytedance/sdk/component/cFZ/oJ/oJ;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public oJ(Lcom/bytedance/sdk/component/cFZ/ZYk/tB;Lcom/bytedance/sdk/component/cFZ/ZYk;)V
    .locals 4

    .line 1
    const-string v0, "reward"

    const/4 v1, -0x1

    if-eqz p2, :cond_6

    .line 2
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ba()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ex()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 3
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ex()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    const-string p2, "cypher"

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    .line 5
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 8
    :try_start_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object p1, v0

    .line 9
    :catchall_0
    :cond_0
    :try_start_2
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/cY$ZYk;->oJ(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/cY$ZYk;

    move-result-object p1

    .line 10
    iget p2, p1, Lcom/bytedance/sdk/openadsdk/core/cY$ZYk;->oJ:I

    const/16 v0, 0x4e20

    if-eq p2, v0, :cond_1

    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/cY$5;->oJ:Lcom/bytedance/sdk/openadsdk/core/Id$ZYk;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/so;->oJ(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/Id$ZYk;->oJ(ILjava/lang/String;)V

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    .line 12
    :cond_1
    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/core/cY$ZYk;->tB:Lcom/bytedance/sdk/openadsdk/core/model/UN;

    if-nez p2, :cond_2

    .line 13
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/cY$5;->ZYk:Lcom/bytedance/sdk/openadsdk/core/cY;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/cY$5;->oJ:Lcom/bytedance/sdk/openadsdk/core/Id$ZYk;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/cY;Lcom/bytedance/sdk/openadsdk/core/Id$ZYk;)V

    return-void

    .line 14
    :cond_2
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/cY$5;->oJ:Lcom/bytedance/sdk/openadsdk/core/Id$ZYk;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/Id$ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/cY$ZYk;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 15
    :goto_0
    const-string p2, "NetApiImpl"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/cY$5;->ZYk:Lcom/bytedance/sdk/openadsdk/core/cY;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/cY$5;->oJ:Lcom/bytedance/sdk/openadsdk/core/Id$ZYk;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/cY;Lcom/bytedance/sdk/openadsdk/core/Id$ZYk;)V

    .line 17
    :goto_1
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/cY$5$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/cY$5$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/cY$5;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/si/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    return-void

    :cond_3
    const/4 v1, -0x2

    .line 18
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/so;->oJ(I)Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->oJ()I

    move-result v2

    .line 20
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ba()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ZYk()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 21
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ZYk()Ljava/lang/String;

    move-result-object v1

    .line 22
    :cond_4
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/cY$5;->oJ:Lcom/bytedance/sdk/openadsdk/core/Id$ZYk;

    invoke-interface {v3, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/Id$ZYk;->oJ(ILjava/lang/String;)V

    .line 23
    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/cY$5$2;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/cY$5$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/cY$5;)V

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/si/tB;->tB(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    .line 24
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ba()Z

    move-result p2

    if-nez p2, :cond_5

    .line 25
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ex()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2, v1}, Lcom/bytedance/sdk/openadsdk/awB/oJ/Pfn;->oJ(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :cond_5
    return-void

    .line 26
    :cond_6
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/cY$5$3;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/cY$5$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/cY$5;)V

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/si/tB;->tB(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    .line 27
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ex()Ljava/lang/String;

    move-result-object p1

    const-string p2, "response is null"

    invoke-static {v0, p1, v1, p2}, Lcom/bytedance/sdk/openadsdk/awB/oJ/Pfn;->oJ(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 28
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/cY$5;->ZYk:Lcom/bytedance/sdk/openadsdk/core/cY;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/cY$5;->oJ:Lcom/bytedance/sdk/openadsdk/core/Id$ZYk;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lcom/bytedance/sdk/openadsdk/core/cY;Lcom/bytedance/sdk/openadsdk/core/Id$ZYk;)V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/cFZ/ZYk/tB;Ljava/io/IOException;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 29
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 30
    :cond_0
    const-string p2, ""

    .line 31
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/cY$5;->oJ:Lcom/bytedance/sdk/openadsdk/core/Id$ZYk;

    const/4 v1, -0x2

    invoke-interface {v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/core/Id$ZYk;->oJ(ILjava/lang/String;)V

    if-eqz p1, :cond_1

    .line 32
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/cFZ/ZYk/tB;->ex()Ljava/lang/String;

    move-result-object p1

    .line 33
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/oq;->oJ(Ljava/lang/String;)V

    .line 34
    const-string v0, "reward"

    const/4 v1, -0x1

    invoke-static {v0, p1, v1, p2}, Lcom/bytedance/sdk/openadsdk/awB/oJ/Pfn;->oJ(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 35
    :cond_1
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/cY$5$4;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/cY$5$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/cY$5;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/si/tB;->tB(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    return-void
.end method
