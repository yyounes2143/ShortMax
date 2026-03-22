.class Lcom/bytedance/sdk/openadsdk/ba/ZYk$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/ba/ZYk;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/cY;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Ljava/lang/String;

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/ba/ZYk;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/ba/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ba/ZYk$4;->tB:Lcom/bytedance/sdk/openadsdk/ba/ZYk;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/ba/ZYk$4;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/ba/ZYk$4;->ZYk:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ba/ZYk$4;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->cdg()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ba/ZYk$4;->oJ:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 8
    .line 9
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->iPr()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ba/ZYk$4;->tB:Lcom/bytedance/sdk/openadsdk/ba/ZYk;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/ba/ZYk$4;->ZYk:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v2, v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/ba/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/ba/ZYk;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void
.end method
