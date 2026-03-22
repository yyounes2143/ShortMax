.class Lcom/bytedance/sdk/openadsdk/activity/ZYk$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/activity/so;ZILjava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Pfn:Ljava/lang/String;

.field final synthetic ZYk:I

.field final synthetic ba:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

.field final synthetic ex:I

.field final synthetic oJ:Z

.field final synthetic tB:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/ZYk;ZILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$3;->ba:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$3;->oJ:Z

    .line 4
    .line 5
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$3;->ZYk:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$3;->tB:Ljava/lang/String;

    .line 8
    .line 9
    iput p5, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$3;->ex:I

    .line 10
    .line 11
    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$3;->Pfn:Ljava/lang/String;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$3;->ba:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/activity/ZYk;)Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$3;->oJ:Z

    .line 8
    .line 9
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$3;->ZYk:I

    .line 10
    .line 11
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$3;->tB:Ljava/lang/String;

    .line 12
    .line 13
    iget v5, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$3;->ex:I

    .line 14
    .line 15
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$3;->Pfn:Ljava/lang/String;

    .line 16
    .line 17
    invoke-interface/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/oJ/Pfn/oJ;->oJ(ZILjava/lang/String;ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
