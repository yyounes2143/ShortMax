.class public Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/ZYk/oJ;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/Pfn/si;


# instance fields
.field private ZYk:I

.field private ex:Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/tB;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/tB<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private oJ:J

.field private tB:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/32 v0, 0x400000

    .line 5
    .line 6
    .line 7
    iput-wide v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/ZYk/oJ;->oJ:J

    .line 8
    .line 9
    iput p2, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/ZYk/oJ;->ZYk:I

    .line 10
    .line 11
    iput p1, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/ZYk/oJ;->tB:I

    .line 12
    .line 13
    new-instance p1, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/tB;

    .line 14
    .line 15
    invoke-direct {p1, p2}, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/tB;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object p1, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/ZYk/oJ;->ex:Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/tB;

    .line 19
    .line 20
    return-void
.end method

.method public static oJ(Landroid/graphics/Bitmap;)I
    .locals 0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result p0

    return p0
.end method


# virtual methods
.method public bridge synthetic ZYk(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/ZYk/oJ;->ZYk(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public ZYk(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/ZYk/oJ;->ex:Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/tB;

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/tB;->oJ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    :cond_0
    return v0
.end method

.method public oJ(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/ZYk/oJ;->ex:Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/tB;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/tB;->oJ(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic oJ(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/ZYk/oJ;->oJ(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic oJ(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 2
    check-cast p1, Ljava/lang/String;

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/ZYk/oJ;->oJ(Ljava/lang/String;Landroid/graphics/Bitmap;)Z

    move-result p1

    return p1
.end method

.method public oJ(Ljava/lang/String;Landroid/graphics/Bitmap;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    invoke-static {p2}, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/ZYk/oJ;->oJ(Landroid/graphics/Bitmap;)I

    move-result v1

    int-to-long v2, v1

    .line 4
    iget-wide v4, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/ZYk/oJ;->oJ:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/ZYk/oJ;->ex:Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/tB;

    invoke-virtual {v1, p1, p2}, Lcom/bytedance/sdk/component/Pfn/ex/tB/oJ/tB;->oJ(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    :cond_2
    :goto_0
    return v0
.end method
