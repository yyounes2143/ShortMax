.class public final Lcom/inmobi/media/q8;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/L8;


# instance fields
.field public final a:Lcom/inmobi/media/p8;

.field public final b:Lcom/inmobi/media/D8;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Landroid/os/Handler;

.field public f:Z

.field public final g:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/p8;Lcom/inmobi/media/D8;)V
    .locals 1

    .line 1
    const-string v0, "mNativeDataModel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "mNativeLayoutInflater"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/inmobi/media/q8;->a:Lcom/inmobi/media/p8;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/inmobi/media/q8;->b:Lcom/inmobi/media/D8;

    .line 17
    .line 18
    const-class p1, Lcom/inmobi/media/q8;

    .line 19
    .line 20
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/inmobi/media/q8;->c:Ljava/lang/String;

    .line 25
    .line 26
    const/16 p1, 0x32

    .line 27
    .line 28
    iput p1, p0, Lcom/inmobi/media/q8;->d:I

    .line 29
    .line 30
    new-instance p1, Landroid/os/Handler;

    .line 31
    .line 32
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/inmobi/media/q8;->e:Landroid/os/Handler;

    .line 40
    .line 41
    new-instance p1, Landroid/util/SparseArray;

    .line 42
    .line 43
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 44
    .line 45
    .line 46
    iput-object p1, p0, Lcom/inmobi/media/q8;->g:Landroid/util/SparseArray;

    .line 47
    .line 48
    return-void
.end method

.method public static final a(Lcom/inmobi/media/q8;ILandroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/inmobi/media/h8;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$it"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$pageContainerAsset"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-boolean v0, p0, Lcom/inmobi/media/q8;->f:Z

    if-eqz v0, :cond_0

    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/q8;->g:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 16
    iget-object p0, p0, Lcom/inmobi/media/q8;->b:Lcom/inmobi/media/D8;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "container"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "parent"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "root"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, p2, p4}, Lcom/inmobi/media/D8;->b(Landroid/view/ViewGroup;Lcom/inmobi/media/h8;)Landroid/view/ViewGroup;

    return-void
.end method

.method public static final a(Ljava/lang/Object;Lcom/inmobi/media/q8;)V
    .locals 1

    const-string v0, "$item"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p1, Lcom/inmobi/media/q8;->b:Lcom/inmobi/media/D8;

    check-cast p0, Landroid/view/View;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p1, p1, Lcom/inmobi/media/D8;->m:Lcom/inmobi/media/D9;

    invoke-virtual {p1, p0}, Lcom/inmobi/media/D9;->a(Landroid/view/View;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(ILandroid/view/ViewGroup;Lcom/inmobi/media/h8;)Landroid/view/ViewGroup;
    .locals 9

    const-string v0, "parent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pageContainerAsset"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/inmobi/media/q8;->b:Lcom/inmobi/media/D8;

    invoke-virtual {v0, p2, p3}, Lcom/inmobi/media/D8;->a(Landroid/view/ViewGroup;Lcom/inmobi/media/h8;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/inmobi/media/q8;->b:Lcom/inmobi/media/D8;

    .line 7
    iget v1, v1, Lcom/inmobi/media/D8;->k:I

    sub-int/2addr v1, p1

    .line 8
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 9
    new-instance v8, Lub/c6;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-object v4, v0

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lub/c6;-><init>(Lcom/inmobi/media/q8;ILandroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/inmobi/media/h8;)V

    .line 10
    iget-object p2, p0, Lcom/inmobi/media/q8;->g:Landroid/util/SparseArray;

    invoke-virtual {p2, p1, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    iget-object p1, p0, Lcom/inmobi/media/q8;->e:Landroid/os/Handler;

    .line 12
    iget p2, p0, Lcom/inmobi/media/q8;->d:I

    mul-int/2addr v7, p2

    int-to-long p2, v7

    .line 13
    invoke-virtual {p1, v8, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-object v0
.end method

.method public final destroy()V
    .locals 5

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/inmobi/media/q8;->f:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/inmobi/media/q8;->g:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    .line 13
    iget-object v2, p0, Lcom/inmobi/media/q8;->g:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget-object v3, p0, Lcom/inmobi/media/q8;->e:Landroid/os/Handler;

    .line 20
    .line 21
    iget-object v4, p0, Lcom/inmobi/media/q8;->g:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/Runnable;

    .line 28
    .line 29
    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 30
    .line 31
    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/q8;->g:Landroid/util/SparseArray;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 38
    .line 39
    .line 40
    return-void
.end method

.method public final destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 1
    const-string v0, "container"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    instance-of v0, p3, Landroid/view/View;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    move-object v0, p3

    .line 16
    check-cast v0, Landroid/view/View;

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object p1, p0, Lcom/inmobi/media/q8;->g:Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Ljava/lang/Runnable;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    iget-object p2, p0, Lcom/inmobi/media/q8;->e:Landroid/os/Handler;

    .line 32
    .line 33
    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/inmobi/media/q8;->c:Ljava/lang/String;

    .line 37
    .line 38
    const-string p2, "TAG"

    .line 39
    .line 40
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    iget-object p1, p0, Lcom/inmobi/media/q8;->e:Landroid/os/Handler;

    .line 44
    .line 45
    new-instance p2, Lub/b6;

    .line 46
    .line 47
    invoke-direct {p2, p3, p0}, Lub/b6;-><init>(Ljava/lang/Object;Lcom/inmobi/media/q8;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/q8;->a:Lcom/inmobi/media/p8;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/inmobi/media/p8;->d()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getItemPosition(Ljava/lang/Object;)I
    .locals 2

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    instance-of v0, p1, Landroid/view/View;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Landroid/view/View;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move-object p1, v1

    .line 15
    :goto_0
    if-eqz p1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    :cond_1
    instance-of p1, v1, Ljava/lang/Integer;

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    check-cast v1, Ljava/lang/Number;

    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    const/4 p1, -0x2

    .line 33
    :goto_1
    return p1
.end method

.method public final instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 2

    .line 1
    const-string v0, "container"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/inmobi/media/q8;->c:Ljava/lang/String;

    .line 7
    .line 8
    const-string v1, "TAG"

    .line 9
    .line 10
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/inmobi/media/q8;->a:Lcom/inmobi/media/p8;

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Lcom/inmobi/media/p8;->b(I)Lcom/inmobi/media/h8;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-virtual {p0, p2, p1, v0}, Lcom/inmobi/media/q8;->a(ILandroid/view/ViewGroup;Lcom/inmobi/media/h8;)Landroid/view/ViewGroup;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 34
    .line 35
    .line 36
    :cond_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 44
    .line 45
    .line 46
    return-object v0
.end method

.method public final isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "obj"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    return p1
.end method
