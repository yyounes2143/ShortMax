.class public final Lcom/inmobi/media/I;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/ec;

.field public final b:Ljava/util/Set;

.field public final c:J

.field public final d:Lcom/inmobi/media/Sb;

.field public final e:Lcom/inmobi/media/z5;

.field public final f:Landroid/content/Context;

.field public g:Lcom/inmobi/media/B;

.field public h:Lcom/inmobi/media/A4;

.field public final i:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

.field public final j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public k:Ljava/util/concurrent/ScheduledFuture;

.field public l:Lcom/inmobi/media/Df;

.field public final m:Lcom/inmobi/media/H;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/ec;Ljava/util/Set;JLcom/inmobi/media/Sb;Lcom/inmobi/media/z5;)V
    .locals 1

    .line 1
    const-string v0, "adView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "listener"

    .line 7
    .line 8
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/inmobi/media/I;->a:Lcom/inmobi/media/ec;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/inmobi/media/I;->b:Ljava/util/Set;

    .line 17
    .line 18
    iput-wide p3, p0, Lcom/inmobi/media/I;->c:J

    .line 19
    .line 20
    iput-object p5, p0, Lcom/inmobi/media/I;->d:Lcom/inmobi/media/Sb;

    .line 21
    .line 22
    iput-object p6, p0, Lcom/inmobi/media/I;->e:Lcom/inmobi/media/z5;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/inmobi/media/I;->f:Landroid/content/Context;

    .line 29
    .line 30
    sget-object p1, Lcom/inmobi/media/z4;->c:Lms/i;

    .line 31
    .line 32
    invoke-interface {p1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/inmobi/media/I;->i:Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 39
    .line 40
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41
    .line 42
    const/4 p2, 0x0

    .line 43
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/inmobi/media/I;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    .line 48
    new-instance p1, Lcom/inmobi/media/H;

    .line 49
    .line 50
    invoke-direct {p1, p0}, Lcom/inmobi/media/H;-><init>(Lcom/inmobi/media/I;)V

    .line 51
    .line 52
    .line 53
    iput-object p1, p0, Lcom/inmobi/media/I;->m:Lcom/inmobi/media/H;

    .line 54
    .line 55
    return-void
.end method

.method public static final a(Landroid/graphics/Rect;Ljava/util/ArrayList;Landroid/graphics/RectF;)V
    .locals 3

    .line 156
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v0}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 157
    new-instance p0, Landroid/graphics/Rect;

    .line 158
    iget v0, p2, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Lcom/inmobi/media/B2;->b(F)I

    move-result v0

    .line 159
    iget v1, p2, Landroid/graphics/RectF;->top:F

    invoke-static {v1}, Lcom/inmobi/media/B2;->b(F)I

    move-result v1

    .line 160
    iget v2, p2, Landroid/graphics/RectF;->right:F

    invoke-static {v2}, Lcom/inmobi/media/B2;->b(F)I

    move-result v2

    .line 161
    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    invoke-static {p2}, Lcom/inmobi/media/B2;->b(F)I

    move-result p2

    .line 162
    invoke-direct {p0, v0, v1, v2, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 163
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static final a(Lcom/inmobi/media/I;)V
    .locals 16

    move-object/from16 v1, p0

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 3
    iget-object v2, v1, Lcom/inmobi/media/I;->a:Lcom/inmobi/media/ec;

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 4
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-nez v2, :cond_0

    goto/16 :goto_8

    .line 5
    :cond_0
    iget-object v2, v1, Lcom/inmobi/media/I;->a:Lcom/inmobi/media/ec;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_8

    .line 6
    :cond_1
    invoke-static {}, Lcom/inmobi/media/Uc;->m()Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_8

    .line 7
    :cond_2
    iget-object v2, v1, Lcom/inmobi/media/I;->a:Lcom/inmobi/media/ec;

    invoke-virtual {v2, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_8

    .line 8
    :cond_3
    iget-object v2, v1, Lcom/inmobi/media/I;->f:Landroid/content/Context;

    const-string v7, "context"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    const-string v7, "<this>"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    :try_start_0
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 11
    new-instance v7, Lkotlin/Pair;

    iget v8, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v7, v8, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 12
    :catch_0
    new-instance v7, Lkotlin/Pair;

    invoke-direct {v7, v6, v6}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 13
    :goto_0
    invoke-virtual {v7}, Lkotlin/Pair;->b()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v7}, Lkotlin/Pair;->d()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    .line 14
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 15
    iget-object v8, v1, Lcom/inmobi/media/I;->a:Lcom/inmobi/media/ec;

    invoke-virtual {v8, v7}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_16

    .line 16
    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_4

    goto/16 :goto_8

    .line 17
    :cond_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iget-object v9, v1, Lcom/inmobi/media/I;->a:Lcom/inmobi/media/ec;

    invoke-virtual {v9}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v9

    .line 19
    iget-object v10, v1, Lcom/inmobi/media/I;->b:Ljava/util/Set;

    if-nez v10, :cond_5

    invoke-static {}, Lkotlin/collections/y0;->f()Ljava/util/Set;

    move-result-object v10

    .line 20
    :cond_5
    instance-of v11, v9, Landroid/view/ViewGroup;

    if-eqz v11, :cond_15

    .line 21
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 22
    new-instance v12, Ljava/util/ArrayDeque;

    invoke-direct {v12}, Ljava/util/ArrayDeque;-><init>()V

    .line 23
    invoke-virtual {v12, v9}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    move v9, v5

    .line 24
    :cond_6
    :goto_1
    invoke-virtual {v12}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_e

    .line 25
    invoke-virtual {v12}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 26
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-nez v14, :cond_6

    .line 27
    iget-object v14, v1, Lcom/inmobi/media/I;->a:Lcom/inmobi/media/ec;

    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    move v9, v3

    goto :goto_1

    .line 28
    :cond_7
    invoke-interface {v10, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    goto :goto_1

    .line 29
    :cond_8
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 30
    invoke-virtual {v13, v14}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v15

    if-eqz v15, :cond_6

    invoke-virtual {v14}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v14

    if-eqz v14, :cond_9

    goto :goto_1

    .line 31
    :cond_9
    new-instance v14, Landroid/graphics/Rect;

    invoke-direct {v14}, Landroid/graphics/Rect;-><init>()V

    .line 32
    invoke-virtual {v13, v14}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v15

    .line 33
    iget-object v4, v1, Lcom/inmobi/media/I;->a:Lcom/inmobi/media/ec;

    invoke-static {v13, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    if-eqz v15, :cond_6

    invoke-virtual {v14, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_a

    goto :goto_1

    .line 34
    :cond_a
    sget-object v4, Lcom/inmobi/media/L3;->a:Lcom/inmobi/media/L3;

    invoke-virtual {v4}, Lcom/inmobi/media/L3;->H()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-virtual {v13}, Landroid/view/View;->getZ()F

    move-result v4

    iget-object v15, v1, Lcom/inmobi/media/I;->a:Lcom/inmobi/media/ec;

    invoke-virtual {v15}, Landroid/view/View;->getZ()F

    move-result v15

    cmpl-float v4, v4, v15

    if-ltz v4, :cond_b

    goto :goto_2

    :cond_b
    move v4, v5

    goto :goto_3

    :cond_c
    :goto_2
    move v4, v3

    :goto_3
    if-eqz v9, :cond_d

    if-eqz v4, :cond_d

    .line 35
    invoke-virtual {v11, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_d
    instance-of v4, v13, Landroid/view/ViewGroup;

    if-eqz v4, :cond_6

    .line 37
    check-cast v13, Landroid/view/ViewGroup;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_4
    const/4 v14, -0x1

    if-ge v14, v4, :cond_6

    .line 38
    invoke-virtual {v13, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v12, v14}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_4

    .line 39
    :cond_e
    iget-object v4, v1, Lcom/inmobi/media/I;->g:Lcom/inmobi/media/B;

    if-eqz v4, :cond_f

    .line 40
    iget-object v4, v4, Lcom/inmobi/media/B;->b:Landroid/graphics/RectF;

    if-eqz v4, :cond_f

    .line 41
    invoke-static {v0, v11, v4}, Lcom/inmobi/media/I;->a(Landroid/graphics/Rect;Ljava/util/ArrayList;Landroid/graphics/RectF;)V

    .line 42
    :cond_f
    iget-object v4, v1, Lcom/inmobi/media/I;->g:Lcom/inmobi/media/B;

    if-eqz v4, :cond_10

    .line 43
    iget-object v4, v4, Lcom/inmobi/media/B;->b:Landroid/graphics/RectF;

    if-eqz v4, :cond_10

    .line 44
    invoke-static {v0, v11, v4}, Lcom/inmobi/media/I;->a(Landroid/graphics/Rect;Ljava/util/ArrayList;Landroid/graphics/RectF;)V

    .line 45
    :cond_10
    iget-object v4, v1, Lcom/inmobi/media/I;->g:Lcom/inmobi/media/B;

    if-eqz v4, :cond_11

    .line 46
    iget-object v4, v4, Lcom/inmobi/media/B;->c:Landroid/graphics/RectF;

    if-eqz v4, :cond_11

    .line 47
    invoke-static {v0, v11, v4}, Lcom/inmobi/media/I;->a(Landroid/graphics/Rect;Ljava/util/ArrayList;Landroid/graphics/RectF;)V

    .line 48
    :cond_11
    iget-object v4, v1, Lcom/inmobi/media/I;->g:Lcom/inmobi/media/B;

    if-eqz v4, :cond_12

    .line 49
    iget-object v4, v4, Lcom/inmobi/media/B;->d:Landroid/graphics/RectF;

    if-eqz v4, :cond_12

    .line 50
    invoke-static {v0, v11, v4}, Lcom/inmobi/media/I;->a(Landroid/graphics/Rect;Ljava/util/ArrayList;Landroid/graphics/RectF;)V

    .line 51
    :cond_12
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, v3, :cond_13

    .line 52
    invoke-virtual {v11, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 53
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 54
    :cond_13
    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    .line 55
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Rect;

    .line 56
    sget-object v10, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v9, v10}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto :goto_5

    .line 57
    :cond_14
    new-instance v4, Landroid/graphics/RegionIterator;

    invoke-direct {v4, v0}, Landroid/graphics/RegionIterator;-><init>(Landroid/graphics/Region;)V

    .line 58
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 59
    :goto_6
    invoke-virtual {v4, v0}, Landroid/graphics/RegionIterator;->next(Landroid/graphics/Rect;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 60
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 61
    :cond_15
    :goto_7
    new-instance v0, Lcom/inmobi/media/C;

    .line 62
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 63
    invoke-direct {v0, v4, v8, v2, v6}, Lcom/inmobi/media/C;-><init>(Landroid/graphics/RectF;Ljava/util/ArrayList;II)V

    goto :goto_9

    :cond_16
    :goto_8
    const/4 v0, 0x0

    .line 64
    :goto_9
    monitor-enter p0

    const/4 v2, 0x0

    if-nez v0, :cond_17

    .line 65
    :try_start_1
    new-instance v0, Lcom/inmobi/media/A4;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3}, Lcom/inmobi/media/A4;-><init>(FLcom/inmobi/media/B4;Ljava/util/ArrayList;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    goto/16 :goto_11

    :catchall_0
    move-exception v0

    goto/16 :goto_12

    .line 66
    :cond_17
    :try_start_2
    iget-object v4, v0, Lcom/inmobi/media/C;->a:Landroid/graphics/RectF;

    .line 67
    invoke-virtual {v4}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_18

    new-instance v0, Lcom/inmobi/media/A4;

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v3}, Lcom/inmobi/media/A4;-><init>(FLcom/inmobi/media/B4;Ljava/util/ArrayList;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    goto/16 :goto_11

    .line 68
    :cond_18
    :try_start_3
    iget-object v6, v1, Lcom/inmobi/media/I;->a:Lcom/inmobi/media/ec;

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget-object v7, v1, Lcom/inmobi/media/I;->a:Lcom/inmobi/media/ec;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    mul-int/2addr v7, v6

    int-to-float v6, v7

    cmpg-float v7, v6, v2

    if-gtz v7, :cond_19

    .line 69
    new-instance v0, Lcom/inmobi/media/A4;

    const/4 v7, 0x0

    invoke-direct {v0, v2, v7, v7}, Lcom/inmobi/media/A4;-><init>(FLcom/inmobi/media/B4;Ljava/util/ArrayList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    goto/16 :goto_11

    :cond_19
    const/4 v7, 0x0

    .line 70
    :try_start_4
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 71
    iget-object v9, v1, Lcom/inmobi/media/I;->a:Lcom/inmobi/media/ec;

    const/4 v10, 0x2

    .line 72
    new-array v10, v10, [I

    .line 73
    invoke-virtual {v9, v10}, Landroid/view/View;->getLocationInWindow([I)V

    .line 74
    aget v9, v10, v5

    int-to-float v9, v9

    .line 75
    aget v3, v10, v3

    int-to-float v3, v3

    .line 76
    new-instance v10, Lkotlin/Pair;

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-direct {v10, v9, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    invoke-virtual {v10}, Lkotlin/Pair;->b()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    invoke-virtual {v10}, Lkotlin/Pair;->d()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->floatValue()F

    move-result v9

    .line 78
    iget-object v10, v0, Lcom/inmobi/media/C;->b:Ljava/util/ArrayList;

    .line 79
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_a
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1a

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/RectF;

    .line 80
    new-instance v12, Landroid/graphics/RectF;

    .line 81
    iget v13, v11, Landroid/graphics/RectF;->left:F

    sub-float/2addr v13, v3

    .line 82
    iget v14, v11, Landroid/graphics/RectF;->top:F

    sub-float/2addr v14, v9

    .line 83
    iget v15, v11, Landroid/graphics/RectF;->right:F

    sub-float/2addr v15, v3

    .line 84
    iget v11, v11, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v11, v9

    .line 85
    invoke-direct {v12, v13, v14, v15, v11}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 86
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 87
    :cond_1a
    iget-object v0, v0, Lcom/inmobi/media/C;->b:Ljava/util/ArrayList;

    .line 88
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1b

    move v3, v2

    goto :goto_c

    .line 89
    :cond_1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v2

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/RectF;

    .line 90
    invoke-virtual {v9}, Landroid/graphics/RectF;->width()F

    move-result v10

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    mul-float/2addr v9, v10

    add-float/2addr v3, v9

    goto :goto_b

    .line 91
    :cond_1c
    :goto_c
    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 92
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v4}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 93
    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v9

    .line 94
    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpg-float v10, v9, v2

    if-lez v10, :cond_1e

    cmpg-float v10, v3, v2

    if-gtz v10, :cond_1d

    goto :goto_d

    :cond_1d
    mul-float/2addr v9, v3

    .line 95
    invoke-static {v2, v9}, Ljava/lang/Math;->max(FF)F

    move-result v3

    goto :goto_e

    :cond_1e
    :goto_d
    move v3, v2

    :goto_e
    sub-float/2addr v3, v0

    .line 96
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr v0, v6

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v0, v3

    .line 97
    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 98
    invoke-static {v0}, Lcom/inmobi/media/B2;->a(F)F

    move-result v0

    .line 99
    new-instance v3, Lcom/inmobi/media/B4;

    .line 100
    iget v6, v4, Landroid/graphics/RectF;->left:F

    .line 101
    invoke-static {}, Lcom/inmobi/media/U3;->b()F

    move-result v9

    div-float/2addr v6, v9

    .line 102
    invoke-static {v6}, Lcom/inmobi/media/B2;->a(F)F

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 103
    iget v9, v4, Landroid/graphics/RectF;->top:F

    .line 104
    invoke-static {}, Lcom/inmobi/media/U3;->b()F

    move-result v10

    div-float/2addr v9, v10

    .line 105
    invoke-static {v9}, Lcom/inmobi/media/B2;->a(F)F

    move-result v9

    invoke-static {v2, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 106
    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v10

    .line 107
    invoke-static {}, Lcom/inmobi/media/U3;->b()F

    move-result v11

    div-float/2addr v10, v11

    .line 108
    invoke-static {v10}, Lcom/inmobi/media/B2;->b(F)I

    move-result v10

    invoke-static {v5, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 109
    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    .line 110
    invoke-static {}, Lcom/inmobi/media/U3;->b()F

    move-result v11

    div-float/2addr v4, v11

    .line 111
    invoke-static {v4}, Lcom/inmobi/media/B2;->b(F)I

    move-result v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 112
    invoke-direct {v3, v6, v9, v10, v4}, Lcom/inmobi/media/B4;-><init>(FFII)V

    .line 113
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1f

    move-object v4, v7

    goto :goto_10

    .line 114
    :cond_1f
    new-instance v4, Ljava/util/ArrayList;

    const/16 v6, 0xa

    invoke-static {v8, v6}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 115
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_f
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_20

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 116
    check-cast v7, Landroid/graphics/RectF;

    .line 117
    new-instance v8, Lcom/inmobi/media/B4;

    .line 118
    iget v9, v7, Landroid/graphics/RectF;->left:F

    .line 119
    invoke-static {}, Lcom/inmobi/media/U3;->b()F

    move-result v10

    div-float/2addr v9, v10

    .line 120
    invoke-static {v9}, Lcom/inmobi/media/B2;->a(F)F

    move-result v9

    invoke-static {v2, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    .line 121
    iget v10, v7, Landroid/graphics/RectF;->top:F

    .line 122
    invoke-static {}, Lcom/inmobi/media/U3;->b()F

    move-result v11

    div-float/2addr v10, v11

    .line 123
    invoke-static {v10}, Lcom/inmobi/media/B2;->a(F)F

    move-result v10

    invoke-static {v2, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 124
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v11

    .line 125
    invoke-static {}, Lcom/inmobi/media/U3;->b()F

    move-result v12

    div-float/2addr v11, v12

    .line 126
    invoke-static {v11}, Lcom/inmobi/media/B2;->b(F)I

    move-result v11

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 127
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-static {v7}, Lcom/inmobi/media/B2;->b(F)I

    move-result v7

    int-to-float v7, v7

    .line 128
    invoke-static {}, Lcom/inmobi/media/U3;->b()F

    move-result v12

    div-float/2addr v7, v12

    invoke-static {v7}, Lcom/inmobi/media/B2;->b(F)I

    move-result v7

    .line 129
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 130
    invoke-direct {v8, v9, v10, v11, v7}, Lcom/inmobi/media/B4;-><init>(FFII)V

    .line 131
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 132
    :cond_20
    new-instance v2, Lcom/inmobi/media/D;

    invoke-direct {v2}, Lcom/inmobi/media/D;-><init>()V

    invoke-static {v4, v2}, Lkotlin/collections/CollectionsKt;->U0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v2

    .line 133
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 134
    :goto_10
    new-instance v2, Lcom/inmobi/media/A4;

    invoke-direct {v2, v0, v3, v4}, Lcom/inmobi/media/A4;-><init>(FLcom/inmobi/media/B4;Ljava/util/ArrayList;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    move-object v0, v2

    .line 135
    :goto_11
    invoke-virtual {v1, v0}, Lcom/inmobi/media/I;->a(Lcom/inmobi/media/A4;)V

    return-void

    .line 136
    :goto_12
    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/A4;)V
    .locals 5

    .line 137
    iget-object v0, p0, Lcom/inmobi/media/I;->h:Lcom/inmobi/media/A4;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 138
    iget-object v0, p0, Lcom/inmobi/media/I;->d:Lcom/inmobi/media/Sb;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    const-string v1, "metrics"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object v0, v0, Lcom/inmobi/media/Sb;->a:Lcom/inmobi/media/ec;

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "window.mraidview.broadcastEvent(\'exposureChange\', "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    iget v2, p1, Lcom/inmobi/media/A4;->a:F

    .line 143
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    iget-object v3, p1, Lcom/inmobi/media/A4;->b:Lcom/inmobi/media/B4;

    const-string v4, "null"

    if-eqz v3, :cond_0

    .line 145
    invoke-static {v3}, Lcom/inmobi/media/C4;->a(Lcom/inmobi/media/B4;)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    iget-object v2, p1, Lcom/inmobi/media/A4;->c:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    .line 147
    new-instance v3, Ljava/util/ArrayList;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 148
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 149
    check-cast v4, Lcom/inmobi/media/B4;

    .line 150
    invoke-static {v4}, Lcom/inmobi/media/C4;->a(Lcom/inmobi/media/B4;)Lorg/json/JSONObject;

    move-result-object v4

    .line 151
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 152
    :cond_1
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 153
    :cond_2
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Lcom/inmobi/media/ec;->c(Ljava/lang/String;)V

    .line 155
    iput-object p1, p0, Lcom/inmobi/media/I;->h:Lcom/inmobi/media/A4;

    :cond_3
    return-void
.end method
