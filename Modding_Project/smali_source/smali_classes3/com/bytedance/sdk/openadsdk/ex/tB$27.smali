.class final Lcom/bytedance/sdk/openadsdk/ex/tB$27;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/ex/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Ljava/lang/String;

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$27;->oJ:Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$27;->ZYk:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public oJ()Lorg/json/JSONObject;
    .locals 5

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    .line 7
    .line 8
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "arbi_current_url"

    .line 12
    .line 13
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$27;->oJ:Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;

    .line 14
    .line 15
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->tB()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    const-string v2, "current_url_index"

    .line 23
    .line 24
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$27;->oJ:Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;

    .line 25
    .line 26
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->ex()I

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 31
    .line 32
    .line 33
    const-string v2, "arbi_load_duration"

    .line 34
    .line 35
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/ex/tB$27;->oJ:Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;

    .line 36
    .line 37
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/awB/oJ/oJ;->Ry()F

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    float-to-double v3, v3

    .line 42
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    const-string v2, "ad_extra_data"

    .line 46
    .line 47
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception v1

    .line 56
    const-string v2, "onWebBehaviorLoad"

    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v2, "TTAD.AdEvent"

    .line 67
    .line 68
    invoke-static {v2, v1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    :goto_0
    return-object v0
.end method
