.class Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;->oJ(Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Pfn:Ljava/lang/String;

.field final synthetic ZYk:Ljava/lang/String;

.field final synthetic ba:Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;

.field final synthetic ex:I

.field final synthetic oJ:Ljava/lang/String;

.field final synthetic tB:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn$2;->ba:Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn$2;->oJ:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn$2;->ZYk:Ljava/lang/String;

    .line 6
    .line 7
    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn$2;->tB:Z

    .line 8
    .line 9
    iput p5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn$2;->ex:I

    .line 10
    .line 11
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn$2;->Pfn:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
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
    new-instance v2, Lorg/json/JSONObject;

    .line 12
    .line 13
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v3, "schema"

    .line 17
    .line 18
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn$2;->oJ:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    .line 22
    .line 23
    const-string v3, "jump_url"

    .line 24
    .line 25
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn$2;->ZYk:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    const-string v3, "success"

    .line 31
    .line 32
    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn$2;->tB:Z

    .line 33
    .line 34
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 35
    .line 36
    .line 37
    const-string v3, "error_type"

    .line 38
    .line 39
    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn$2;->ex:I

    .line 40
    .line 41
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 42
    .line 43
    .line 44
    const-string v3, "error_reason"

    .line 45
    .line 46
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/oJ/Pfn$2;->Pfn:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 49
    .line 50
    .line 51
    const-string v3, "pag_json_data"

    .line 52
    .line 53
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    .line 59
    .line 60
    const-string v2, "ad_extra_data"

    .line 61
    .line 62
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception v1

    .line 71
    const-string v2, "WebChromeClient"

    .line 72
    .line 73
    const-string v3, "onLpNotHttpLpOpen"

    .line 74
    .line 75
    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/component/utils/QSm;->oJ(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    :goto_0
    return-object v0
.end method
