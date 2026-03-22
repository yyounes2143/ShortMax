.class public Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "oJ"
.end annotation


# instance fields
.field private ZYk:Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$tB;

.field private final oJ:Ljava/lang/String;

.field private tB:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$tB;->oJ:Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$tB;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$tB;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$oJ;->tB:Z

    .line 10
    .line 11
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$oJ;->oJ:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public oJ(Z)Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$oJ;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$oJ;->tB:Z

    return-object p0
.end method

.method public oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;
    .locals 4

    .line 2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$oJ;->oJ:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$tB;

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$oJ;->tB:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/dLZ/ZYk/tB$tB;Ljava/lang/Boolean;)V

    return-object v0
.end method
