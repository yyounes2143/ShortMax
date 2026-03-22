.class Lcom/amazonaws/mobile/auth/userpools/FormView$Divider;
.super Landroid/view/View;
.source "FormView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/mobile/auth/userpools/FormView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Divider"
.end annotation


# instance fields
.field final a:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Landroid/graphics/Paint;

    .line 5
    .line 6
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/amazonaws/mobile/auth/userpools/FormView$Divider;->a:Landroid/graphics/Paint;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/amazonaws/mobile/auth/userpools/FormView$Divider;->a:Landroid/graphics/Paint;

    .line 5
    .line 6
    const v1, -0x333334

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    int-to-float v0, v0

    .line 17
    const v1, 0x3dcccccd    # 0.1f

    .line 18
    .line 19
    .line 20
    mul-float v3, v0, v1

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    int-to-float v0, v0

    .line 27
    const v1, 0x3f666666    # 0.9f

    .line 28
    .line 29
    .line 30
    mul-float v5, v0, v1

    .line 31
    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    int-to-float v6, v0

    .line 37
    iget-object v7, p0, Lcom/amazonaws/mobile/auth/userpools/FormView$Divider;->a:Landroid/graphics/Paint;

    .line 38
    .line 39
    const/4 v4, 0x0

    .line 40
    move-object v2, p1

    .line 41
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
