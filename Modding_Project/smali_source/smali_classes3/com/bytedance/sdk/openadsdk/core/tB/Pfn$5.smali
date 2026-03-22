.class Lcom/bytedance/sdk/openadsdk/core/tB/Pfn$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/oJ/oJ/ZYk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->oJ(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:I

.field final synthetic oJ:I

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn$5;->tB:Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;

    .line 2
    .line 3
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn$5;->oJ:I

    .line 4
    .line 5
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn$5;->ZYk:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public oJ()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn$5;->oJ:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn$5;->ZYk:I

    .line 6
    .line 7
    if-lt v0, v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn$5;->tB:Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/tB/Pfn;->oJ(I)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
