.class public Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/tB;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private Pfn:Z

.field private ZYk:Ljava/lang/String;

.field private ex:Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/tB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field private tB:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/tB;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/model/cY;",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;->Pfn:Z

    .line 6
    .line 7
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;->ZYk:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;->tB:Lorg/json/JSONObject;

    .line 12
    .line 13
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;->ex:Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/tB;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public Pfn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;->Pfn:Z

    .line 2
    .line 3
    return v0
.end method

.method public ZYk()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;->ZYk:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public ex()Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/tB;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;->ex:Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/tB;

    .line 2
    .line 3
    return-object v0
.end method

.method public oJ()Lcom/bytedance/sdk/openadsdk/core/model/cY;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    return-object v0
.end method

.method public oJ(Z)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;->Pfn:Z

    return-void
.end method

.method public tB()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;->tB:Lorg/json/JSONObject;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;->tB:Lorg/json/JSONObject;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/oJ;->tB:Lorg/json/JSONObject;

    .line 13
    .line 14
    return-object v0
.end method
