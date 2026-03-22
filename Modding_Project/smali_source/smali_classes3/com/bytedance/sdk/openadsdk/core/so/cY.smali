.class public Lcom/bytedance/sdk/openadsdk/core/so/cY;
.super Landroid/view/GestureDetector;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/so/cY$oJ;
    }
.end annotation


# instance fields
.field private final ZYk:Lcom/bytedance/sdk/openadsdk/core/ZYk/ba;

.field private final oJ:Lcom/bytedance/sdk/openadsdk/core/so/cY$oJ;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/so/cY$oJ;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/so/cY$oJ;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/so/cY;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/so/cY$oJ;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/so/cY$oJ;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/so/cY;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/cY$oJ;

    .line 4
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/ZYk/ba;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ba;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/so/cY;->ZYk:Lcom/bytedance/sdk/openadsdk/core/ZYk/ba;

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method


# virtual methods
.method public ZYk()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/cY;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/cY$oJ;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/cY$oJ;->ZYk()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public oJ(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)Lcom/bytedance/sdk/openadsdk/core/model/BTZ;
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/cY;->ZYk:Lcom/bytedance/sdk/openadsdk/core/ZYk/ba;

    if-nez v0, :cond_0

    .line 3
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->oJ()Lcom/bytedance/sdk/openadsdk/core/model/BTZ;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/cY;->ZYk:Lcom/bytedance/sdk/openadsdk/core/ZYk/ba;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/ZYk/ba;->oJ:F

    .line 5
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->ba(F)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/cY;->ZYk:Lcom/bytedance/sdk/openadsdk/core/ZYk/ba;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/ZYk/ba;->ZYk:F

    .line 6
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->Pfn(F)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/cY;->ZYk:Lcom/bytedance/sdk/openadsdk/core/ZYk/ba;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/ZYk/ba;->tB:F

    .line 7
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->ex(F)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/cY;->ZYk:Lcom/bytedance/sdk/openadsdk/core/ZYk/ba;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/ZYk/ba;->ex:F

    .line 8
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->tB(F)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/cY;->ZYk:Lcom/bytedance/sdk/openadsdk/core/ZYk/ba;

    iget-wide v1, v1, Lcom/bytedance/sdk/openadsdk/core/ZYk/ba;->Pfn:J

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->ZYk(J)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/so/cY;->ZYk:Lcom/bytedance/sdk/openadsdk/core/ZYk/ba;

    iget-wide v1, v1, Lcom/bytedance/sdk/openadsdk/core/ZYk/ba;->ba:J

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->oJ(J)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    move-result-object v0

    .line 11
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->ZYk([I)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    move-result-object v0

    .line 12
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->oJ(Landroid/view/View;)[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->oJ([I)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    move-result-object v0

    .line 13
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/view/View;)[I

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->tB([I)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    move-result-object p2

    .line 14
    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->tB(Landroid/view/View;)[I

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->ex([I)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/so/cY;->ZYk:Lcom/bytedance/sdk/openadsdk/core/ZYk/ba;

    iget p3, p3, Lcom/bytedance/sdk/openadsdk/core/ZYk/ba;->cFZ:I

    .line 15
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->ex(I)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/so/cY;->ZYk:Lcom/bytedance/sdk/openadsdk/core/ZYk/ba;

    iget p3, p3, Lcom/bytedance/sdk/openadsdk/core/ZYk/ba;->so:I

    .line 16
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->Pfn(I)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/so/cY;->ZYk:Lcom/bytedance/sdk/openadsdk/core/ZYk/ba;

    iget p3, p3, Lcom/bytedance/sdk/openadsdk/core/ZYk/ba;->jFA:I

    .line 17
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->ba(I)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/so/cY;->ZYk:Lcom/bytedance/sdk/openadsdk/core/ZYk/ba;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/core/ZYk/ba;->BTZ:Landroid/util/SparseArray;

    .line 18
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->oJ(Landroid/util/SparseArray;)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    move-result-object p2

    .line 19
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/jFA;->ZYk()Lcom/bytedance/sdk/openadsdk/core/jFA;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/jFA;->oJ()Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x1

    goto :goto_0

    :cond_1
    const/4 p3, 0x2

    :goto_0
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->ZYk(I)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    move-result-object p2

    const-string p3, "vessel"

    .line 20
    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    move-result-object p2

    .line 21
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->so(Landroid/content/Context;)F

    move-result p3

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->oJ(F)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    move-result-object p2

    .line 22
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->kkU(Landroid/content/Context;)I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->tB(I)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    move-result-object p2

    .line 23
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/cdg;->jFA(Landroid/content/Context;)F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->ZYk(F)Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/BTZ$oJ;->oJ()Lcom/bytedance/sdk/openadsdk/core/model/BTZ;

    move-result-object p1

    return-object p1
.end method

.method oJ()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/cY;->oJ:Lcom/bytedance/sdk/openadsdk/core/so/cY$oJ;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/cY$oJ;->oJ()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/so/cY;->ZYk:Lcom/bytedance/sdk/openadsdk/core/ZYk/ba;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ZYk/ba;->oJ(Landroid/view/MotionEvent;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method
