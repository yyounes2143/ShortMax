.class public Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBindingImpl;
.super Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBinding;
.source "ItemProfileMenuRewardsBindingImpl.java"


# static fields
.field private static final i:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final j:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final f:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final g:Landroid/widget/ImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBindingImpl;->j:Landroid/util/SparseIntArray;

    .line 7
    .line 8
    sget v1, Lcom/startshorts/androidplayer/R$id;->tip_layout:I

    .line 9
    .line 10
    const/4 v2, 0x3

    .line 11
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 12
    .line 13
    .line 14
    sget v1, Lcom/startshorts/androidplayer/R$id;->tip2_tv:I

    .line 15
    .line 16
    const/4 v2, 0x4

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 18
    .line 19
    .line 20
    sget v1, Lcom/startshorts/androidplayer/R$id;->iv_arrow:I

    .line 21
    .line 22
    const/4 v2, 0x5

    .line 23
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 24
    .line 25
    .line 26
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
    sget-object v0, Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBindingImpl;->i:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBindingImpl;->j:Landroid/util/SparseIntArray;

    const/4 v2, 0x6

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 9

    const/4 v0, 0x5

    .line 2
    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/FrameLayout;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Landroid/widget/FrameLayout;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBindingImpl;->h:J

    const/4 p1, 0x0

    .line 4
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBindingImpl;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 6
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBindingImpl;->g:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 10
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public b(Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;)V
    .locals 4
    .param p1    # Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBinding;->e:Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBindingImpl;->h:J

    .line 5
    .line 6
    const-wide/16 v2, 0x1

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBindingImpl;->h:J

    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/4 p1, 0x5

    .line 13
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 14
    .line 15
    .line 16
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p1

    .line 21
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    throw p1
.end method

.method protected executeBindings()V
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBindingImpl;->h:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    iput-wide v2, p0, Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBindingImpl;->h:J

    .line 7
    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v4, p0, Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBinding;->e:Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;

    .line 10
    .line 11
    const-wide/16 v5, 0x3

    .line 12
    .line 13
    and-long/2addr v0, v5

    .line 14
    cmp-long v0, v0, v2

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    if-eqz v4, :cond_0

    .line 19
    .line 20
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const/4 v1, 0x0

    .line 30
    move-object v2, v1

    .line 31
    :goto_0
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBindingImpl;->g:Landroid/widget/ImageView;

    .line 34
    .line 35
    invoke-static {v0, v2}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBinding;->b:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 39
    .line 40
    invoke-static {v0, v1}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void

    .line 44
    :catchall_0
    move-exception v0

    .line 45
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBindingImpl;->h:J

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
    const-wide/16 v0, 0x2

    .line 3
    .line 4
    :try_start_0
    iput-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBindingImpl;->h:J

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
    const/4 p1, 0x0

    .line 2
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
    check-cast p2, Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;

    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/databinding/ItemProfileMenuRewardsBindingImpl;->b(Lcom/startshorts/androidplayer/bean/profile/ProfileMenu;)V

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
