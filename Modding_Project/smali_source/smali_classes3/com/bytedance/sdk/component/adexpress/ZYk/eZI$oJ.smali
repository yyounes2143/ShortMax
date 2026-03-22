.class Lcom/bytedance/sdk/component/adexpress/ZYk/eZI$oJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/adexpress/ZYk/eZI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "oJ"
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/component/adexpress/ZYk/eZI;

.field oJ:Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;

.field private tB:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/ZYk/eZI;ILcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/eZI$oJ;->ZYk:Lcom/bytedance/sdk/component/adexpress/ZYk/eZI;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/eZI$oJ;->tB:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/eZI$oJ;->oJ:Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/eZI$oJ;->tB:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/eZI$oJ;->ZYk:Lcom/bytedance/sdk/component/adexpress/ZYk/eZI;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/eZI;->ZYk(Lcom/bytedance/sdk/component/adexpress/ZYk/eZI;)Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/adexpress/Pfn/oJ;->oJ(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/eZI$oJ;->ZYk:Lcom/bytedance/sdk/component/adexpress/ZYk/eZI;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/eZI$oJ;->oJ:Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;

    .line 18
    .line 19
    const/16 v2, 0x6b

    .line 20
    .line 21
    const/4 v3, 0x0

    .line 22
    invoke-static {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/adexpress/ZYk/eZI;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/eZI;Lcom/bytedance/sdk/component/adexpress/ZYk/kkU$oJ;ILjava/lang/String;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method
