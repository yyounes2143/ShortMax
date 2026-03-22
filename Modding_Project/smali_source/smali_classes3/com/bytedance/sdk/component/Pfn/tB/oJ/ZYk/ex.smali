.class public Lcom/bytedance/sdk/component/Pfn/tB/oJ/ZYk/ex;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/Pfn/si;


# instance fields
.field private final ZYk:Lcom/bytedance/sdk/component/Pfn/tB/oJ/ZYk;

.field private final oJ:Lcom/bytedance/sdk/component/Pfn/si;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/Pfn/si;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/Pfn/tB/oJ/ZYk/ex;-><init>(Lcom/bytedance/sdk/component/Pfn/si;Lcom/bytedance/sdk/component/Pfn/tB/oJ/ZYk;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/Pfn/si;Lcom/bytedance/sdk/component/Pfn/tB/oJ/ZYk;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/bytedance/sdk/component/Pfn/tB/oJ/ZYk/ex;->oJ:Lcom/bytedance/sdk/component/Pfn/si;

    .line 4
    iput-object p2, p0, Lcom/bytedance/sdk/component/Pfn/tB/oJ/ZYk/ex;->ZYk:Lcom/bytedance/sdk/component/Pfn/tB/oJ/ZYk;

    return-void
.end method


# virtual methods
.method public bridge synthetic ZYk(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/Pfn/tB/oJ/ZYk/ex;->ZYk(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public ZYk(Ljava/lang/String;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/oJ/ZYk/ex;->oJ:Lcom/bytedance/sdk/component/Pfn/si;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/Pfn/oJ;->ZYk(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public oJ(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/oJ/ZYk/ex;->oJ:Lcom/bytedance/sdk/component/Pfn/si;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/Pfn/oJ;->oJ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1
.end method

.method public bridge synthetic oJ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/Pfn/tB/oJ/ZYk/ex;->oJ(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic oJ(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/Pfn/tB/oJ/ZYk/ex;->oJ(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result p1

    return p1
.end method

.method public oJ(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/tB/oJ/ZYk/ex;->oJ:Lcom/bytedance/sdk/component/Pfn/si;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/component/Pfn/oJ;->oJ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
