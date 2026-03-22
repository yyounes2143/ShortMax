.class Lcom/bytedance/sdk/openadsdk/activity/ZYk$2;
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
.field final synthetic Pfn:I

.field final synthetic ZYk:Z

.field final synthetic ba:Ljava/lang/String;

.field final synthetic cFZ:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

.field final synthetic ex:Ljava/lang/String;

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/activity/so;

.field final synthetic tB:I


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/ZYk;Lcom/bytedance/sdk/openadsdk/activity/so;ZILjava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$2;->cFZ:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$2;->oJ:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$2;->ZYk:Z

    .line 6
    .line 7
    iput p4, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$2;->tB:I

    .line 8
    .line 9
    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$2;->ex:Ljava/lang/String;

    .line 10
    .line 11
    iput p6, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$2;->Pfn:I

    .line 12
    .line 13
    iput-object p7, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$2;->ba:Ljava/lang/String;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$2;->cFZ:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$2;->oJ:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 4
    .line 5
    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$2;->ZYk:Z

    .line 6
    .line 7
    iget v3, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$2;->tB:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$2;->ex:Ljava/lang/String;

    .line 10
    .line 11
    iget v5, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$2;->Pfn:I

    .line 12
    .line 13
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/activity/ZYk$2;->ba:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/activity/so;ZILjava/lang/String;ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method
