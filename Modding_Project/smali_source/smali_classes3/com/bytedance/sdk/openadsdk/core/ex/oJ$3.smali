.class Lcom/bytedance/sdk/openadsdk/core/ex/oJ$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/awB/ZYk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ex/oJ;->oJ(IJILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Pfn:Lcom/bytedance/sdk/openadsdk/core/ex/oJ;

.field final synthetic ZYk:J

.field final synthetic ex:I

.field final synthetic oJ:I

.field final synthetic tB:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ex/oJ;IJLjava/lang/String;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ex/oJ$3;->Pfn:Lcom/bytedance/sdk/openadsdk/core/ex/oJ;

    .line 2
    .line 3
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/ex/oJ$3;->oJ:I

    .line 4
    .line 5
    iput-wide p3, p0, Lcom/bytedance/sdk/openadsdk/core/ex/oJ$3;->ZYk:J

    .line 6
    .line 7
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/ex/oJ$3;->tB:Ljava/lang/String;

    .line 8
    .line 9
    iput p6, p0, Lcom/bytedance/sdk/openadsdk/core/ex/oJ$3;->ex:I

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public getLogStats()Lcom/bytedance/sdk/openadsdk/awB/oJ/tB;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "result"

    .line 7
    .line 8
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/ex/oJ$3;->oJ:I

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/ex/oJ$3;->ZYk:J

    .line 14
    .line 15
    const-wide/16 v3, -0x1

    .line 16
    .line 17
    cmp-long v3, v1, v3

    .line 18
    .line 19
    if-eqz v3, :cond_0

    .line 20
    .line 21
    const-string v3, "load_duration"

    .line 22
    .line 23
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/awB/oJ/ex;->ZYk()Lcom/bytedance/sdk/openadsdk/awB/oJ/ex;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v2, "music_preload_finish"

    .line 31
    .line 32
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/awB/oJ/ex;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/awB/oJ/ex;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/awB/oJ/ex;->ZYk(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/awB/oJ/ex;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ex/oJ$3;->tB:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_1

    .line 51
    .line 52
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/ex/oJ$3;->ex:I

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/awB/oJ/ex;->ZYk(I)Lcom/bytedance/sdk/openadsdk/awB/oJ/ex;

    .line 55
    .line 56
    .line 57
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ex/oJ$3;->tB:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/awB/oJ/ex;->ba(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/awB/oJ/ex;

    .line 60
    .line 61
    .line 62
    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/awB/oJ/ex;->oJ()Lorg/json/JSONObject;

    .line 63
    .line 64
    .line 65
    return-object v0
.end method
