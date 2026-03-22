.class final Lcom/bytedance/sdk/component/utils/ZYk$1;
.super Lcom/bytedance/sdk/component/so/so;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/utils/ZYk;->oJ(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/ZYk$ZYk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Landroid/content/Intent;

.field final synthetic oJ:Landroid/content/Context;

.field final synthetic tB:Lcom/bytedance/sdk/component/utils/ZYk$ZYk;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/ZYk$ZYk;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/bytedance/sdk/component/utils/ZYk$1;->oJ:Landroid/content/Context;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/bytedance/sdk/component/utils/ZYk$1;->ZYk:Landroid/content/Intent;

    .line 4
    .line 5
    iput-object p4, p0, Lcom/bytedance/sdk/component/utils/ZYk$1;->tB:Lcom/bytedance/sdk/component/utils/ZYk$ZYk;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/utils/ZYk$1;->oJ:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/component/utils/ZYk$1;->ZYk:Landroid/content/Intent;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/bytedance/sdk/component/utils/ZYk$1;->tB:Lcom/bytedance/sdk/component/utils/ZYk$ZYk;

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/component/utils/ZYk;->ZYk(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/sdk/component/utils/ZYk$ZYk;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method
