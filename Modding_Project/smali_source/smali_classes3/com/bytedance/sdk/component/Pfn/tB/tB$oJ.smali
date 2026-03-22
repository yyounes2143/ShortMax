.class Lcom/bytedance/sdk/component/Pfn/tB/tB$oJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/Pfn/eZI;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/Pfn/tB/tB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "oJ"
.end annotation


# instance fields
.field private ZYk:Lcom/bytedance/sdk/component/Pfn/eZI;

.field final synthetic oJ:Lcom/bytedance/sdk/component/Pfn/tB/tB;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/Pfn/tB/tB;Lcom/bytedance/sdk/component/Pfn/eZI;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB$oJ;->oJ:Lcom/bytedance/sdk/component/Pfn/tB/tB;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB$oJ;->ZYk:Lcom/bytedance/sdk/component/Pfn/eZI;

    .line 7
    .line 8
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/component/Pfn/tB/tB$oJ;)Lcom/bytedance/sdk/component/Pfn/eZI;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB$oJ;->ZYk:Lcom/bytedance/sdk/component/Pfn/eZI;

    return-object p0
.end method

.method private oJ(Landroid/widget/ImageView;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const v1, 0x413c0901

    .line 15
    invoke-virtual {p1, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 16
    iget-object v1, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB$oJ;->oJ:Lcom/bytedance/sdk/component/Pfn/tB/tB;

    invoke-static {v1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->kkU(Lcom/bytedance/sdk/component/Pfn/tB/tB;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method


# virtual methods
.method public oJ(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB$oJ;->oJ:Lcom/bytedance/sdk/component/Pfn/tB/tB;

    invoke-static {v0}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->jFA(Lcom/bytedance/sdk/component/Pfn/tB/tB;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 18
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB$oJ;->oJ:Lcom/bytedance/sdk/component/Pfn/tB/tB;

    invoke-static {v0}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->cFZ(Lcom/bytedance/sdk/component/Pfn/tB/tB;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/Pfn/tB/tB$oJ$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/bytedance/sdk/component/Pfn/tB/tB$oJ$3;-><init>(Lcom/bytedance/sdk/component/Pfn/tB/tB$oJ;ILjava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB$oJ;->ZYk:Lcom/bytedance/sdk/component/Pfn/eZI;

    if-eqz v0, :cond_1

    .line 20
    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/Pfn/eZI;->oJ(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/Pfn/dLZ;)V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB$oJ;->oJ:Lcom/bytedance/sdk/component/Pfn/tB/tB;

    invoke-static {v0}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->Pfn(Lcom/bytedance/sdk/component/Pfn/tB/tB;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB$oJ;->oJ:Lcom/bytedance/sdk/component/Pfn/tB/tB;

    invoke-static {v1}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->ba(Lcom/bytedance/sdk/component/Pfn/tB/tB;)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/Pfn/tB/tB$oJ;->oJ(Landroid/widget/ImageView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Pfn/dLZ;->ZYk()Ljava/lang/Object;

    move-result-object v1

    .line 5
    instance-of v1, v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Pfn/dLZ;->ZYk()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 7
    iget-object v2, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB$oJ;->oJ:Lcom/bytedance/sdk/component/Pfn/tB/tB;

    invoke-static {v2}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->cFZ(Lcom/bytedance/sdk/component/Pfn/tB/tB;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/component/Pfn/tB/tB$oJ$1;

    invoke-direct {v3, p0, v0, v1}, Lcom/bytedance/sdk/component/Pfn/tB/tB$oJ$1;-><init>(Lcom/bytedance/sdk/component/Pfn/tB/tB$oJ;Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 8
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB$oJ;->oJ:Lcom/bytedance/sdk/component/Pfn/tB/tB;

    invoke-static {v0}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->so(Lcom/bytedance/sdk/component/Pfn/tB/tB;)Lcom/bytedance/sdk/component/Pfn/so;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/Pfn/dLZ;->ZYk()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB$oJ;->oJ:Lcom/bytedance/sdk/component/Pfn/tB/tB;

    invoke-static {v0}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->so(Lcom/bytedance/sdk/component/Pfn/tB/tB;)Lcom/bytedance/sdk/component/Pfn/so;

    move-result-object v0

    invoke-interface {p1}, Lcom/bytedance/sdk/component/Pfn/dLZ;->ZYk()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/Pfn/so;->oJ(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/Pfn/dLZ;->oJ(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    :catchall_0
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB$oJ;->oJ:Lcom/bytedance/sdk/component/Pfn/tB/tB;

    invoke-static {v0}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->jFA(Lcom/bytedance/sdk/component/Pfn/tB/tB;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB$oJ;->oJ:Lcom/bytedance/sdk/component/Pfn/tB/tB;

    invoke-static {v0}, Lcom/bytedance/sdk/component/Pfn/tB/tB;->cFZ(Lcom/bytedance/sdk/component/Pfn/tB/tB;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/Pfn/tB/tB$oJ$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/Pfn/tB/tB$oJ$2;-><init>(Lcom/bytedance/sdk/component/Pfn/tB/tB$oJ;Lcom/bytedance/sdk/component/Pfn/dLZ;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void

    .line 13
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/tB$oJ;->ZYk:Lcom/bytedance/sdk/component/Pfn/eZI;

    if-eqz v0, :cond_3

    .line 14
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/Pfn/eZI;->oJ(Lcom/bytedance/sdk/component/Pfn/dLZ;)V

    :cond_3
    return-void
.end method
