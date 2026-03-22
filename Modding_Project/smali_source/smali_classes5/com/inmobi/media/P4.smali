.class public final Lcom/inmobi/media/P4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/W4;


# instance fields
.field public a:J


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


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/View;I)Z
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    const-string v3, "rootView"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "adView"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    check-cast v3, Landroid/view/ViewGroup;

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v6, p0

    if-eqz v3, :cond_2

    .line 12
    invoke-virtual {v6, v3, v1, v2}, Lcom/inmobi/media/P4;->a(Landroid/view/View;Landroid/view/View;I)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    move v7, v5

    goto :goto_2

    :cond_2
    :goto_1
    move v7, v4

    :goto_2
    if-eqz v3, :cond_11

    .line 13
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/2addr v0, v4

    .line 14
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    :goto_3
    if-ge v0, v8, :cond_11

    .line 15
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    const-string v10, "getChildAt(...)"

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_10

    .line 17
    instance-of v10, v1, Lcom/inmobi/media/ec;

    if-nez v10, :cond_3

    goto/16 :goto_c

    .line 18
    :cond_3
    instance-of v10, v9, Lcom/inmobi/media/w7;

    if-eqz v10, :cond_4

    goto/16 :goto_d

    .line 19
    :cond_4
    instance-of v10, v9, Lcom/inmobi/media/lc;

    if-eqz v10, :cond_5

    goto/16 :goto_c

    .line 20
    :cond_5
    move-object v10, v1

    check-cast v10, Lcom/inmobi/media/ec;

    .line 21
    invoke-virtual {v10}, Lcom/inmobi/media/ec;->getFriendlyViews()Ljava/util/Map;

    move-result-object v11

    if-eqz v11, :cond_6

    invoke-interface {v11, v9}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    goto :goto_4

    :cond_6
    move v11, v5

    :goto_4
    if-eqz v11, :cond_7

    goto/16 :goto_d

    .line 22
    :cond_7
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v1, v11}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 23
    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v9, v12}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 24
    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    .line 25
    invoke-virtual {v13, v11, v12}, Landroid/graphics/Rect;->setIntersect(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v12

    .line 26
    const-string v14, "<this>"

    invoke-static {v11, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget v15, v11, Landroid/graphics/Rect;->right:I

    iget v4, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v15, v4

    iget v4, v11, Landroid/graphics/Rect;->bottom:I

    iget v11, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v11

    mul-int/2addr v4, v15

    .line 28
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget v11, v13, Landroid/graphics/Rect;->right:I

    iget v14, v13, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v14

    iget v14, v13, Landroid/graphics/Rect;->bottom:I

    iget v13, v13, Landroid/graphics/Rect;->top:I

    sub-int/2addr v14, v13

    mul-int/2addr v14, v11

    sub-int/2addr v4, v14

    .line 30
    invoke-virtual {v10}, Lcom/inmobi/media/ec;->getConfiguredArea()J

    move-result-wide v10

    long-to-float v10, v10

    int-to-float v11, v2

    const/16 v13, 0x64

    int-to-float v13, v13

    div-float/2addr v11, v13

    mul-float/2addr v11, v10

    if-eqz v12, :cond_f

    int-to-float v4, v4

    cmpg-float v4, v4, v11

    if-gez v4, :cond_f

    .line 31
    invoke-virtual {v9}, Landroid/view/View;->getAlpha()F

    move-result v4

    const v10, 0x3e99999a    # 0.3f

    cmpg-float v4, v4, v10

    if-gtz v4, :cond_8

    goto :goto_9

    .line 32
    :cond_8
    instance-of v4, v9, Landroid/widget/ImageView;

    if-eqz v4, :cond_9

    move-object v4, v9

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_9

    goto :goto_a

    .line 33
    :cond_9
    invoke-virtual {v9}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    instance-of v4, v4, Landroid/graphics/drawable/ColorDrawable;

    const-string v10, "null cannot be cast to non-null type android.graphics.drawable.ColorDrawable"

    if-eqz v4, :cond_a

    .line 34
    invoke-virtual {v9}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-static {v4, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v4

    if-nez v4, :cond_b

    goto :goto_5

    .line 35
    :cond_a
    invoke-virtual {v9}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_b

    :goto_5
    const/4 v4, 0x1

    goto :goto_6

    :cond_b
    move v4, v5

    .line 36
    :goto_6
    invoke-virtual {v9}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    instance-of v11, v11, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v11, :cond_c

    .line 37
    invoke-virtual {v9}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {v9}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v9

    if-nez v9, :cond_d

    goto :goto_7

    .line 38
    :cond_c
    invoke-virtual {v9}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-nez v9, :cond_d

    :goto_7
    const/4 v9, 0x1

    goto :goto_8

    :cond_d
    move v9, v5

    :goto_8
    if-eqz v4, :cond_e

    if-eqz v9, :cond_e

    :goto_9
    const/4 v4, 0x1

    goto :goto_b

    :cond_e
    :goto_a
    move v4, v5

    :goto_b
    if-nez v4, :cond_f

    :goto_c
    const/4 v4, 0x1

    goto :goto_e

    :cond_f
    :goto_d
    move v4, v5

    :goto_e
    if-eqz v4, :cond_10

    return v5

    :cond_10
    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x1

    goto/16 :goto_3

    :cond_11
    return v7
.end method

.method public final a(Landroid/view/View;Landroid/view/View;ILjava/lang/Object;)Z
    .locals 7

    const/4 p4, 0x0

    if-eqz p2, :cond_8

    .line 1
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    if-eqz p1, :cond_8

    invoke-virtual {p2}, Landroid/view/View;->isShown()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    instance-of p1, p2, Lcom/inmobi/media/ec;

    if-eqz p1, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/inmobi/media/ec;

    :cond_2
    if-nez v0, :cond_3

    return p4

    .line 3
    :cond_3
    invoke-virtual {v0}, Lcom/inmobi/media/ec;->getPlacementType()B

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_5

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lez p1, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p1

    if-gtz p1, :cond_5

    :cond_4
    return p4

    .line 5
    :cond_5
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 6
    invoke-virtual {v0, p1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-nez v1, :cond_6

    return p4

    .line 7
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-long v3, p1

    mul-long/2addr v1, v3

    iput-wide v1, p0, Lcom/inmobi/media/P4;->a:J

    .line 8
    invoke-virtual {v0}, Lcom/inmobi/media/ec;->getPlacementType()B

    move-result p1

    if-ne p1, p2, :cond_7

    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int/2addr v1, p1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/ec;->setConfiguredArea(J)V

    .line 10
    :cond_7
    invoke-virtual {v0}, Lcom/inmobi/media/ec;->getArea()I

    move-result p1

    if-lez p1, :cond_8

    const/16 p1, 0x64

    int-to-long v1, p1

    iget-wide v3, p0, Lcom/inmobi/media/P4;->a:J

    mul-long/2addr v1, v3

    int-to-long v3, p3

    invoke-virtual {v0}, Lcom/inmobi/media/ec;->getConfiguredArea()J

    move-result-wide v5

    mul-long/2addr v5, v3

    cmp-long p1, v1, v5

    if-ltz p1, :cond_8

    move p4, p2

    :cond_8
    :goto_1
    return p4
.end method
