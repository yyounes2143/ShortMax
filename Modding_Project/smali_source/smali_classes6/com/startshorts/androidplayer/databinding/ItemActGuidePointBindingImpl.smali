.class public Lcom/startshorts/androidplayer/databinding/ItemActGuidePointBindingImpl;
.super Lcom/startshorts/androidplayer/databinding/ItemActGuidePointBinding;
.source "ItemActGuidePointBindingImpl.java"


# static fields
.field private static final d:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final e:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final b:Landroid/view/View;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private c:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3
    .param p1    # Landroidx/databinding/DataBindingComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/databinding/ItemActGuidePointBindingImpl;->d:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/startshorts/androidplayer/databinding/ItemActGuidePointBindingImpl;->e:Landroid/util/SparseIntArray;

    const/4 v2, 0x1

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/databinding/ItemActGuidePointBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/databinding/ItemActGuidePointBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemActGuidePointBindingImpl;->c:J

    const/4 p1, 0x0

    .line 4
    aget-object p1, p3, p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/startshorts/androidplayer/databinding/ItemActGuidePointBindingImpl;->b:Landroid/view/View;

    const/4 p3, 0x0

    .line 5
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/databinding/ItemActGuidePointBindingImpl;->invalidateAll()V

    return-void
.end method

.method private b(Lcom/startshorts/androidplayer/bean/act/ActGuidePoint;I)Z
    .locals 4

    .line 1
    const/4 p1, 0x1

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemActGuidePointBindingImpl;->c:J

    .line 6
    .line 7
    const-wide/16 v2, 0x1

    .line 8
    .line 9
    or-long/2addr v0, v2

    .line 10
    iput-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemActGuidePointBindingImpl;->c:J

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return p1

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p1

    .line 17
    :cond_0
    const/4 v0, 0x6

    .line 18
    if-ne p2, v0, :cond_1

    .line 19
    .line 20
    monitor-enter p0

    .line 21
    :try_start_1
    iget-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemActGuidePointBindingImpl;->c:J

    .line 22
    .line 23
    const-wide/16 v2, 0x2

    .line 24
    .line 25
    or-long/2addr v0, v2

    .line 26
    iput-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemActGuidePointBindingImpl;->c:J

    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return p1

    .line 30
    :catchall_1
    move-exception p1

    .line 31
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 32
    throw p1

    .line 33
    :cond_1
    const/4 p1, 0x0

    .line 34
    return p1
.end method


# virtual methods
.method public d(Lcom/startshorts/androidplayer/bean/act/ActGuidePoint;)V
    .locals 4
    .param p1    # Lcom/startshorts/androidplayer/bean/act/ActGuidePoint;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/startshorts/androidplayer/databinding/ItemActGuidePointBinding;->a:Lcom/startshorts/androidplayer/bean/act/ActGuidePoint;

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemActGuidePointBindingImpl;->c:J

    .line 9
    .line 10
    const-wide/16 v2, 0x1

    .line 11
    .line 12
    or-long/2addr v0, v2

    .line 13
    iput-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemActGuidePointBindingImpl;->c:J

    .line 14
    .line 15
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    const/4 p1, 0x5

    .line 17
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 18
    .line 19
    .line 20
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    throw p1
.end method

.method protected executeBindings()V
    .locals 12

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemActGuidePointBindingImpl;->c:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    iput-wide v2, p0, Lcom/startshorts/androidplayer/databinding/ItemActGuidePointBindingImpl;->c:J

    .line 7
    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v4, p0, Lcom/startshorts/androidplayer/databinding/ItemActGuidePointBinding;->a:Lcom/startshorts/androidplayer/bean/act/ActGuidePoint;

    .line 10
    .line 11
    const-wide/16 v5, 0x7

    .line 12
    .line 13
    and-long v7, v0, v5

    .line 14
    .line 15
    cmp-long v7, v7, v2

    .line 16
    .line 17
    const/4 v8, 0x0

    .line 18
    if-eqz v7, :cond_4

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 23
    .line 24
    .line 25
    move-result v9

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move v9, v8

    .line 28
    :goto_0
    if-eqz v7, :cond_2

    .line 29
    .line 30
    if-eqz v9, :cond_1

    .line 31
    .line 32
    const-wide/16 v10, 0x10

    .line 33
    .line 34
    :goto_1
    or-long/2addr v0, v10

    .line 35
    goto :goto_2

    .line 36
    :cond_1
    const-wide/16 v10, 0x8

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    :goto_2
    iget-object v7, p0, Lcom/startshorts/androidplayer/databinding/ItemActGuidePointBindingImpl;->b:Landroid/view/View;

    .line 40
    .line 41
    invoke-virtual {v7}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    if-eqz v9, :cond_3

    .line 46
    .line 47
    sget v10, Lcom/startshorts/androidplayer/R$drawable;->shape_act_guide_point_selected:I

    .line 48
    .line 49
    :goto_3
    invoke-static {v7, v10}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 50
    .line 51
    .line 52
    move-result-object v7

    .line 53
    goto :goto_4

    .line 54
    :cond_3
    sget v10, Lcom/startshorts/androidplayer/R$drawable;->shape_act_guide_point_normal:I

    .line 55
    .line 56
    goto :goto_3

    .line 57
    :goto_4
    if-eqz v4, :cond_5

    .line 58
    .line 59
    invoke-virtual {v4, v9}, Lcom/startshorts/androidplayer/bean/act/ActGuidePoint;->getWidth(Z)I

    .line 60
    .line 61
    .line 62
    move-result v8

    .line 63
    goto :goto_5

    .line 64
    :cond_4
    const/4 v7, 0x0

    .line 65
    :cond_5
    :goto_5
    and-long/2addr v0, v5

    .line 66
    cmp-long v0, v0, v2

    .line 67
    .line 68
    if-eqz v0, :cond_6

    .line 69
    .line 70
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ItemActGuidePointBindingImpl;->b:Landroid/view/View;

    .line 71
    .line 72
    invoke-static {v0, v7}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ItemActGuidePointBindingImpl;->b:Landroid/view/View;

    .line 76
    .line 77
    invoke-static {v0, v8}, Lkd/c;->a(Landroid/view/View;I)V

    .line 78
    .line 79
    .line 80
    :cond_6
    return-void

    .line 81
    :catchall_0
    move-exception v0

    .line 82
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemActGuidePointBindingImpl;->c:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v0, v0, v2

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    monitor-exit p0

    .line 16
    const/4 v0, 0x0

    .line 17
    return v0

    .line 18
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, 0x4

    .line 3
    .line 4
    :try_start_0
    iput-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemActGuidePointBindingImpl;->c:J

    .line 5
    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    check-cast p2, Lcom/startshorts/androidplayer/bean/act/ActGuidePoint;

    .line 6
    .line 7
    invoke-direct {p0, p2, p3}, Lcom/startshorts/androidplayer/databinding/ItemActGuidePointBindingImpl;->b(Lcom/startshorts/androidplayer/bean/act/ActGuidePoint;I)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x5

    .line 2
    if-ne v0, p1, :cond_0

    .line 3
    .line 4
    check-cast p2, Lcom/startshorts/androidplayer/bean/act/ActGuidePoint;

    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/databinding/ItemActGuidePointBindingImpl;->d(Lcom/startshorts/androidplayer/bean/act/ActGuidePoint;)V

    .line 7
    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method
