.class public Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreCategoryFilterBindingImpl;
.super Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreCategoryFilterBinding;
.source "ItemDiscoverMoreCategoryFilterBindingImpl.java"


# static fields
.field private static final e:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final f:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final c:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private d:J


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
    sget-object v0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreCategoryFilterBindingImpl;->e:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreCategoryFilterBindingImpl;->f:Landroid/util/SparseIntArray;

    const/4 v2, 0x2

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreCategoryFilterBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x1

    .line 2
    aget-object v1, p3, v0

    check-cast v1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreCategoryFilterBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILcom/startshorts/androidplayer/ui/view/base/BaseTextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreCategoryFilterBindingImpl;->d:J

    const/4 p1, 0x0

    .line 4
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreCategoryFilterBindingImpl;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 p3, 0x0

    .line 5
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreCategoryFilterBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 8
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreCategoryFilterBindingImpl;->invalidateAll()V

    return-void
.end method

.method private b(Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;I)Z
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
    iget-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreCategoryFilterBindingImpl;->d:J

    .line 6
    .line 7
    const-wide/16 v2, 0x1

    .line 8
    .line 9
    or-long/2addr v0, v2

    .line 10
    iput-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreCategoryFilterBindingImpl;->d:J

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
    iget-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreCategoryFilterBindingImpl;->d:J

    .line 22
    .line 23
    const-wide/16 v2, 0x2

    .line 24
    .line 25
    or-long/2addr v0, v2

    .line 26
    iput-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreCategoryFilterBindingImpl;->d:J

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
.method public d(Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;)V
    .locals 4
    .param p1    # Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreCategoryFilterBinding;->b:Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreCategoryFilterBindingImpl;->d:J

    .line 9
    .line 10
    const-wide/16 v2, 0x1

    .line 11
    .line 12
    or-long/2addr v0, v2

    .line 13
    iput-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreCategoryFilterBindingImpl;->d:J

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
    .locals 14

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreCategoryFilterBindingImpl;->d:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    iput-wide v2, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreCategoryFilterBindingImpl;->d:J

    .line 7
    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v4, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreCategoryFilterBinding;->b:Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;

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
    const-wide/16 v8, 0x5

    .line 18
    .line 19
    const/4 v10, 0x0

    .line 20
    if-eqz v7, :cond_5

    .line 21
    .line 22
    and-long v11, v0, v8

    .line 23
    .line 24
    cmp-long v11, v11, v2

    .line 25
    .line 26
    if-eqz v11, :cond_0

    .line 27
    .line 28
    if-eqz v4, :cond_0

    .line 29
    .line 30
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;->getName()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v10

    .line 34
    :cond_0
    if-eqz v4, :cond_1

    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/adapter/SelectableItem;->isSelected()Z

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    const/4 v4, 0x0

    .line 42
    :goto_0
    if-eqz v7, :cond_3

    .line 43
    .line 44
    if-eqz v4, :cond_2

    .line 45
    .line 46
    const-wide/16 v11, 0x10

    .line 47
    .line 48
    :goto_1
    or-long/2addr v0, v11

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const-wide/16 v11, 0x8

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_3
    :goto_2
    if-eqz v4, :cond_4

    .line 54
    .line 55
    iget-object v4, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreCategoryFilterBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 56
    .line 57
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    sget v7, Lcom/startshorts/androidplayer/R$drawable;->bg_discover_more_category_filter_fragment_item_selected:I

    .line 62
    .line 63
    :goto_3
    invoke-static {v4, v7}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    goto :goto_4

    .line 68
    :cond_4
    iget-object v4, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreCategoryFilterBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 69
    .line 70
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 71
    .line 72
    .line 73
    move-result-object v4

    .line 74
    sget v7, Lcom/startshorts/androidplayer/R$drawable;->bg_discover_more_category_filter_fragment_item_default:I

    .line 75
    .line 76
    goto :goto_3

    .line 77
    :goto_4
    move-object v13, v10

    .line 78
    move-object v10, v4

    .line 79
    move-object v4, v13

    .line 80
    goto :goto_5

    .line 81
    :cond_5
    move-object v4, v10

    .line 82
    :goto_5
    and-long/2addr v5, v0

    .line 83
    cmp-long v5, v5, v2

    .line 84
    .line 85
    if-eqz v5, :cond_6

    .line 86
    .line 87
    iget-object v5, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreCategoryFilterBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 88
    .line 89
    invoke-static {v5, v10}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 90
    .line 91
    .line 92
    :cond_6
    and-long/2addr v0, v8

    .line 93
    cmp-long v0, v0, v2

    .line 94
    .line 95
    if-eqz v0, :cond_7

    .line 96
    .line 97
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreCategoryFilterBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 98
    .line 99
    invoke-static {v0, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    :cond_7
    return-void

    .line 103
    :catchall_0
    move-exception v0

    .line 104
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreCategoryFilterBindingImpl;->d:J

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
    iput-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreCategoryFilterBindingImpl;->d:J

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
    check-cast p2, Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;

    .line 6
    .line 7
    invoke-direct {p0, p2, p3}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreCategoryFilterBindingImpl;->b(Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;I)Z

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
    check-cast p2, Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;

    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/databinding/ItemDiscoverMoreCategoryFilterBindingImpl;->d(Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;)V

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
