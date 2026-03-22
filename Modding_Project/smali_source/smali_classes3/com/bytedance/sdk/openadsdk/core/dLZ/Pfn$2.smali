.class final Lcom/bytedance/sdk/openadsdk/core/dLZ/Pfn$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/awB/ZYk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/dLZ/Pfn;->oJ(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/Pfn$2;->oJ:Ljava/util/Map;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getLogStats()Lcom/bytedance/sdk/openadsdk/awB/oJ/tB;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/awB/oJ/ex;->ZYk()Lcom/bytedance/sdk/openadsdk/awB/oJ/ex;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "OMSDK"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/awB/oJ/ex;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/awB/oJ/ex;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lorg/json/JSONObject;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/Pfn$2;->oJ:Ljava/util/Map;

    .line 14
    .line 15
    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/awB/oJ/ex;->ZYk(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/awB/oJ/ex;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0
.end method
