.class final Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/awB/tB/oJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:J

.field final synthetic oJ:Ljava/lang/String;

.field final synthetic tB:Z


# direct methods
.method constructor <init>(Ljava/lang/String;JZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex$3;->oJ:Ljava/lang/String;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex$3;->ZYk:J

    .line 4
    .line 5
    iput-boolean p4, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex$3;->tB:Z

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
    const-string v2, "url"

    .line 12
    .line 13
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex$3;->oJ:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    const-string v2, "duration"

    .line 19
    .line 20
    iget-wide v3, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex$3;->ZYk:J

    .line 21
    .line 22
    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 23
    .line 24
    .line 25
    const-string v2, "success"

    .line 26
    .line 27
    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/tB/ex$3;->tB:Z

    .line 28
    .line 29
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 30
    .line 31
    .line 32
    const-string v2, "ad_extra_data"

    .line 33
    .line 34
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    .line 36
    .line 37
    :catch_0
    return-object v0
.end method
