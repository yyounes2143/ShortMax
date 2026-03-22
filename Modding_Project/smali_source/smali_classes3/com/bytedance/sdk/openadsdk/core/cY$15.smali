.class Lcom/bytedance/sdk/openadsdk/core/cY$15;
.super Lcom/bytedance/sdk/component/cFZ/oJ/oJ;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/cY;->oJ(Lorg/json/JSONObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/cY;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/cY;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/cY$15;->oJ:Lcom/bytedance/sdk/openadsdk/core/cY;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/bytedance/sdk/component/cFZ/oJ/oJ;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public oJ(Lcom/bytedance/sdk/component/cFZ/ZYk/tB;Lcom/bytedance/sdk/component/cFZ/ZYk;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ba()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/cFZ/ZYk;->ex()Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/cFZ/ZYk/tB;Ljava/io/IOException;)V
    .locals 0

    .line 3
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method
