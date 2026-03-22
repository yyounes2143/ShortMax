.class final Lcom/bytedance/sdk/openadsdk/oq/oJ$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Id/oJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/oq/oJ;->oJ(Landroid/content/Context;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/Id/tB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public ZYk()V
    .locals 4

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/oq/oJ$2$2;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/oq/oJ$2$2;-><init>(Lcom/bytedance/sdk/openadsdk/oq/oJ$2;)V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/si/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    .line 7
    .line 8
    .line 9
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ba/oJ;->oJ()Lcom/bytedance/sdk/openadsdk/ba/oJ;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/ba/oJ;->ZYk()V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/tB;->oJ()Lcom/bytedance/sdk/openadsdk/QSm/oJ/tB;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/QSm/oJ/tB;->ZYk()V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/oq;->ZYk()V

    .line 24
    .line 25
    .line 26
    new-instance v0, Ljava/util/HashMap;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v1, ""

    .line 32
    .line 33
    const-string v2, "sec_config"

    .line 34
    .line 35
    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/oq/oJ;->oJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-nez v3, :cond_0

    .line 44
    .line 45
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA/ZYk;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA/ZYk;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/jFA/ZYk;->oJ(Ljava/util/Map;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public oJ()V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/oq/oJ$2$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/oq/oJ$2$1;-><init>(Lcom/bytedance/sdk/openadsdk/oq/oJ$2;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/si/tB;->oJ(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    return-void
.end method

.method public oJ(ILjava/lang/String;)V
    .locals 0

    .line 2
    new-instance p1, Lcom/bytedance/sdk/openadsdk/oq/oJ$2$3;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/oq/oJ$2$3;-><init>(Lcom/bytedance/sdk/openadsdk/oq/oJ$2;)V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/si/tB;->tB(Lcom/bytedance/sdk/openadsdk/si/ex;)V

    .line 3
    sget-object p1, Lcom/bytedance/sdk/openadsdk/oq/oJ;->ZYk:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/oq;->oJ(Ljava/lang/String;)V

    return-void
.end method
