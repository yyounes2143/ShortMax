.class final Lcom/bytedance/sdk/openadsdk/ex/oJ/ex$1;
.super Lcom/bytedance/sdk/component/so/so;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/ex/oJ/ex;->oJ(Ljava/util/List;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:I

.field final synthetic oJ:Ljava/util/List;

.field final synthetic tB:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ/ex$1;->oJ:Ljava/util/List;

    .line 2
    .line 3
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ/ex$1;->ZYk:I

    .line 4
    .line 5
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ/ex$1;->tB:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/so/so;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ZYk;->ZYk()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/ZYk;->tB()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/oJ/ex;->oJ(Landroid/content/Context;Z)V

    .line 16
    .line 17
    .line 18
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ;->oJ(Landroid/content/Context;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ/ex$1;->oJ:Ljava/util/List;

    .line 27
    .line 28
    iget v2, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ/ex$1;->ZYk:I

    .line 29
    .line 30
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/ex/oJ/ex$1;->tB:Ljava/lang/String;

    .line 31
    .line 32
    const/4 v4, 0x1

    .line 33
    invoke-static {v0, v1, v4, v2, v3}, Lcom/bytedance/sdk/component/ba/oJ/ZYk;->oJ(Ljava/lang/String;Ljava/util/List;ZILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
