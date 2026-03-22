.class public Lcom/bytedance/sdk/openadsdk/Ry/oJ/oJ;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/Ry/oJ/oJ$oJ;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private oJ(Lcom/bytedance/sdk/component/Pfn/dLZ;)I
    .locals 1

    .line 27
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Pfn/dLZ;->ex()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 28
    const-string v0, "image_size"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 29
    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 30
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected oJ(ILjava/lang/String;Ljava/lang/Throwable;Lcom/bytedance/sdk/openadsdk/Ry/oJ/oJ$oJ;)V
    .locals 0

    if-eqz p4, :cond_0

    .line 31
    invoke-interface {p4, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/Ry/oJ/oJ$oJ;->oJ(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method protected oJ(Lcom/bytedance/sdk/component/Pfn/dLZ;Lcom/bytedance/sdk/openadsdk/Ry/oJ/oJ$oJ;)V
    .locals 4

    if-eqz p2, :cond_4

    .line 16
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Pfn/dLZ;->ZYk()Ljava/lang/Object;

    move-result-object v0

    .line 17
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/Ry/oJ/oJ;->oJ(Lcom/bytedance/sdk/component/Pfn/dLZ;)I

    move-result v1

    .line 18
    instance-of v2, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 19
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Pfn/dLZ;->oJ()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/Ry/oJ/ZYk;

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-direct {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/Ry/oJ/ZYk;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-interface {p2, p1, v2}, Lcom/bytedance/sdk/openadsdk/Ry/oJ/oJ$oJ;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Ry/oJ/ZYk;)V

    return-void

    .line 20
    :cond_0
    instance-of v2, v0, [B

    if-eqz v2, :cond_1

    .line 21
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Pfn/dLZ;->oJ()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/Ry/oJ/ZYk;

    check-cast v0, [B

    invoke-direct {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/Ry/oJ/ZYk;-><init>([BI)V

    invoke-interface {p2, p1, v2}, Lcom/bytedance/sdk/openadsdk/Ry/oJ/oJ$oJ;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Ry/oJ/ZYk;)V

    return-void

    .line 22
    :cond_1
    instance-of v2, v0, Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 23
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Pfn/dLZ;->tB()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/Bitmap;

    if-eqz v2, :cond_2

    .line 24
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Pfn/dLZ;->tB()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/graphics/Bitmap;

    .line 25
    :cond_2
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Pfn/dLZ;->oJ()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/Ry/oJ/ZYk;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-direct {v2, v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/Ry/oJ/ZYk;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)V

    invoke-interface {p2, p1, v2}, Lcom/bytedance/sdk/openadsdk/Ry/oJ/oJ$oJ;->oJ(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Ry/oJ/ZYk;)V

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 26
    const-string v0, "not bitmap or gif result!"

    invoke-interface {p2, p1, v0, v3}, Lcom/bytedance/sdk/openadsdk/Ry/oJ/oJ$oJ;->oJ(ILjava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/Ry/oJ;Lcom/bytedance/sdk/openadsdk/Ry/oJ/oJ$oJ;IILandroid/widget/ImageView$ScaleType;Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/core/model/cY;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/Ry/oJ;->oJ:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/jFA/ex;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v0

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/Ry/oJ;->ZYk:Ljava/lang/String;

    .line 3
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/Pfn/kkU;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object v0

    .line 4
    invoke-interface {v0, p3}, Lcom/bytedance/sdk/component/Pfn/kkU;->oJ(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object p3

    .line 5
    invoke-interface {p3, p4}, Lcom/bytedance/sdk/component/Pfn/kkU;->ZYk(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object p3

    .line 6
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->Pfn(Landroid/content/Context;)I

    move-result p4

    invoke-interface {p3, p4}, Lcom/bytedance/sdk/component/Pfn/kkU;->Pfn(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object p3

    .line 7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->oJ()Landroid/content/Context;

    move-result-object p4

    invoke-static {p4}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/content/Context;)I

    move-result p4

    invoke-interface {p3, p4}, Lcom/bytedance/sdk/component/Pfn/kkU;->ex(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object p3

    .line 8
    invoke-interface {p3, p6}, Lcom/bytedance/sdk/component/Pfn/kkU;->ZYk(Ljava/lang/String;)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object p3

    .line 9
    invoke-interface {p3, p5}, Lcom/bytedance/sdk/component/Pfn/kkU;->oJ(Landroid/widget/ImageView$ScaleType;)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object p3

    .line 10
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    const/4 p5, 0x1

    xor-int/2addr p4, p5

    invoke-interface {p3, p4}, Lcom/bytedance/sdk/component/Pfn/kkU;->oJ(Z)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object p3

    if-lez p7, :cond_0

    .line 11
    sget p4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p6, 0x1a

    if-lt p4, p6, :cond_0

    const/4 p4, 0x2

    .line 12
    invoke-interface {p3, p4}, Lcom/bytedance/sdk/component/Pfn/kkU;->tB(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    move-result-object p4

    new-instance p5, Lcom/bytedance/sdk/openadsdk/Ry/oJ/oJ$1;

    invoke-direct {p5, p0, p7}, Lcom/bytedance/sdk/openadsdk/Ry/oJ/oJ$1;-><init>(Lcom/bytedance/sdk/openadsdk/Ry/oJ/oJ;I)V

    .line 13
    invoke-interface {p4, p5}, Lcom/bytedance/sdk/component/Pfn/kkU;->oJ(Lcom/bytedance/sdk/component/Pfn/so;)Lcom/bytedance/sdk/component/Pfn/kkU;

    goto :goto_0

    .line 14
    :cond_0
    invoke-interface {p3, p5}, Lcom/bytedance/sdk/component/Pfn/kkU;->tB(I)Lcom/bytedance/sdk/component/Pfn/kkU;

    .line 15
    :goto_0
    new-instance p4, Lcom/bytedance/sdk/openadsdk/jFA/ZYk;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/Ry/oJ;->oJ:Ljava/lang/String;

    new-instance p5, Lcom/bytedance/sdk/openadsdk/Ry/oJ/oJ$2;

    invoke-direct {p5, p0, p2}, Lcom/bytedance/sdk/openadsdk/Ry/oJ/oJ$2;-><init>(Lcom/bytedance/sdk/openadsdk/Ry/oJ/oJ;Lcom/bytedance/sdk/openadsdk/Ry/oJ/oJ$oJ;)V

    invoke-direct {p4, p8, p1, p5}, Lcom/bytedance/sdk/openadsdk/jFA/ZYk;-><init>(Lcom/bytedance/sdk/openadsdk/core/model/cY;Ljava/lang/String;Lcom/bytedance/sdk/component/Pfn/eZI;)V

    invoke-interface {p3, p4}, Lcom/bytedance/sdk/component/Pfn/kkU;->oJ(Lcom/bytedance/sdk/component/Pfn/eZI;)Lcom/bytedance/sdk/component/Pfn/jFA;

    return-void
.end method
