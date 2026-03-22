.class Lcom/bytedance/sdk/openadsdk/activity/jFA$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/jFA;->oJ(Lcom/bytedance/sdk/openadsdk/activity/so;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:I

.field final synthetic oJ:J

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/activity/jFA;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/jFA;JI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA$2;->tB:Lcom/bytedance/sdk/openadsdk/activity/jFA;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA$2;->oJ:J

    .line 4
    .line 5
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA$2;->ZYk:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public oJ()Lorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "duration"

    .line 7
    .line 8
    iget-wide v2, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA$2;->oJ:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    new-instance v1, Lorg/json/JSONObject;

    .line 14
    .line 15
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 16
    .line 17
    .line 18
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/activity/jFA$2;->ZYk:I

    .line 19
    .line 20
    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/ex/tB;->oJ(ILorg/json/JSONObject;)V

    .line 21
    .line 22
    .line 23
    const-string v2, "ad_extra_data"

    .line 24
    .line 25
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception v1

    .line 34
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    :goto_0
    return-object v0
.end method
