.class public Lcom/bytedance/sdk/openadsdk/core/so/BTZ;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ZYk:Ljava/lang/String;

.field private static oJ:Ljava/lang/String;


# direct methods
.method public static ZYk()Ljava/lang/String;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/so/BTZ;->oJ:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "js_render_ver"

    .line 4
    .line 5
    const-string v2, "tt_sp"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/ex/ex;->ZYk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/so/BTZ;->oJ:Ljava/lang/String;

    .line 16
    .line 17
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/so;->ZYk()Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;->tB()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/so/BTZ;->oJ:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    if-nez v3, :cond_1

    .line 36
    .line 37
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/so/BTZ;->oJ:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/ex/ex;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/so/BTZ;->oJ:Ljava/lang/String;

    .line 43
    .line 44
    return-object v0
.end method

.method public static oJ()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;->oJ()Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/so/BTZ$1;

    .line 6
    .line 7
    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/so/BTZ$1;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;->oJ(Lcom/bytedance/sdk/component/adexpress/oJ/oJ/ZYk;)V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;->oJ()Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/so/BTZ$2;

    .line 18
    .line 19
    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/so/BTZ$2;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;->oJ(Lcom/bytedance/sdk/component/adexpress/oJ/oJ/tB;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;->oJ()Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/so/BTZ$3;

    .line 30
    .line 31
    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/so/BTZ$3;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/oJ/oJ/oJ;->oJ(Lcom/bytedance/sdk/component/adexpress/oJ/oJ/ex;)V

    .line 35
    .line 36
    .line 37
    invoke-static {}, Lcom/bytedance/sdk/component/jFA/oJ/oJ;->oJ()Lcom/bytedance/sdk/component/jFA/oJ/oJ;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/so/BTZ$4;

    .line 42
    .line 43
    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/so/BTZ$4;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/jFA/oJ/oJ;->oJ(Lcom/bytedance/sdk/component/jFA/oJ/ZYk;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public static tB()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/so/BTZ;->ZYk:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "js_render_v3_ver"

    .line 4
    .line 5
    const-string v2, "tt_sp"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/ex/ex;->ZYk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/so/BTZ;->ZYk:Ljava/lang/String;

    .line 16
    .line 17
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/adexpress/oJ/ZYk/so;->ZYk()Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;->oJ()Ljava/util/Map;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const-string v3, "v3"

    .line 30
    .line 31
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/oJ/tB/oJ;->tB()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    sget-object v3, Lcom/bytedance/sdk/openadsdk/core/so/BTZ;->ZYk:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    if-nez v3, :cond_1

    .line 52
    .line 53
    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/so/BTZ;->ZYk:Ljava/lang/String;

    .line 54
    .line 55
    invoke-static {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/ex/ex;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/so/BTZ;->ZYk:Ljava/lang/String;

    .line 59
    .line 60
    return-object v0
.end method
