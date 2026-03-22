.class final Lcom/bytedance/sdk/openadsdk/utils/si$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Ry/oJ/oJ$oJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/utils/si;->oJ(Lcom/bytedance/sdk/openadsdk/Ry/oJ;IILcom/bytedance/sdk/openadsdk/utils/si$oJ;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/utils/si$oJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/utils/si$oJ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/si$1;->oJ:Lcom/bytedance/sdk/openadsdk/utils/si$oJ;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public oJ(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/si$1;->oJ:Lcom/bytedance/sdk/openadsdk/utils/si$oJ;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/utils/si$oJ;->oJ()V

    :cond_0
    return-void
.end method

.method public oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Ry/oJ/ZYk;)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/Ry/oJ/ZYk;->Pfn()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/si$1;->oJ:Lcom/bytedance/sdk/openadsdk/utils/si$oJ;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/utils/si$oJ;->oJ(Lcom/bytedance/sdk/openadsdk/Ry/oJ/ZYk;)V

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/si$1;->oJ:Lcom/bytedance/sdk/openadsdk/utils/si$oJ;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/utils/si$oJ;->oJ()V

    :cond_1
    return-void
.end method
