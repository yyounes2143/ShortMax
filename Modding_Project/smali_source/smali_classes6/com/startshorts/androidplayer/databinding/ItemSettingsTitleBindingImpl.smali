.class public Lcom/startshorts/androidplayer/databinding/ItemSettingsTitleBindingImpl;
.super Lcom/startshorts/androidplayer/databinding/ItemSettingsTitleBinding;
.source "ItemSettingsTitleBindingImpl.java"


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
.field private final c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
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
    sget-object v0, Lcom/startshorts/androidplayer/databinding/ItemSettingsTitleBindingImpl;->e:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/startshorts/androidplayer/databinding/ItemSettingsTitleBindingImpl;->f:Landroid/util/SparseIntArray;

    const/4 v2, 0x1

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/databinding/ItemSettingsTitleBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/databinding/ItemSettingsTitleBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    const-wide/16 v1, -0x1

    .line 3
    iput-wide v1, p0, Lcom/startshorts/androidplayer/databinding/ItemSettingsTitleBindingImpl;->d:J

    .line 4
    aget-object p1, p3, v0

    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    iput-object p1, p0, Lcom/startshorts/androidplayer/databinding/ItemSettingsTitleBindingImpl;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    const/4 p3, 0x0

    .line 5
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 7
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/databinding/ItemSettingsTitleBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Integer;)V
    .locals 4
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/databinding/ItemSettingsTitleBinding;->a:Ljava/lang/Integer;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemSettingsTitleBindingImpl;->d:J

    .line 5
    .line 6
    const-wide/16 v2, 0x2

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemSettingsTitleBindingImpl;->d:J

    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/4 p1, 0x4

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

.method public d(Lcom/startshorts/androidplayer/bean/settings/AppSettings;)V
    .locals 4
    .param p1    # Lcom/startshorts/androidplayer/bean/settings/AppSettings;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/databinding/ItemSettingsTitleBinding;->b:Lcom/startshorts/androidplayer/bean/settings/AppSettings;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemSettingsTitleBindingImpl;->d:J

    .line 5
    .line 6
    const-wide/16 v2, 0x1

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemSettingsTitleBindingImpl;->d:J

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
    .locals 13

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemSettingsTitleBindingImpl;->d:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    iput-wide v2, p0, Lcom/startshorts/androidplayer/databinding/ItemSettingsTitleBindingImpl;->d:J

    .line 7
    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v4, p0, Lcom/startshorts/androidplayer/databinding/ItemSettingsTitleBinding;->b:Lcom/startshorts/androidplayer/bean/settings/AppSettings;

    .line 10
    .line 11
    iget-object v5, p0, Lcom/startshorts/androidplayer/databinding/ItemSettingsTitleBinding;->a:Ljava/lang/Integer;

    .line 12
    .line 13
    const-wide/16 v6, 0x7

    .line 14
    .line 15
    and-long/2addr v6, v0

    .line 16
    cmp-long v6, v6, v2

    .line 17
    .line 18
    const-wide/16 v7, 0x5

    .line 19
    .line 20
    const/4 v9, 0x0

    .line 21
    const/4 v10, 0x0

    .line 22
    if-eqz v6, :cond_1

    .line 23
    .line 24
    and-long v11, v0, v7

    .line 25
    .line 26
    cmp-long v11, v11, v2

    .line 27
    .line 28
    if-eqz v11, :cond_0

    .line 29
    .line 30
    if-eqz v4, :cond_0

    .line 31
    .line 32
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/settings/AppSettings;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v9

    .line 36
    :cond_0
    invoke-static {v5}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Integer;)I

    .line 37
    .line 38
    .line 39
    move-result v5

    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    invoke-virtual {v4, v5}, Lcom/startshorts/androidplayer/bean/settings/AppSettings;->getTitlePaddingTop(I)I

    .line 43
    .line 44
    .line 45
    move-result v10

    .line 46
    :cond_1
    if-eqz v6, :cond_2

    .line 47
    .line 48
    iget-object v4, p0, Lcom/startshorts/androidplayer/databinding/ItemSettingsTitleBindingImpl;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 49
    .line 50
    int-to-float v5, v10

    .line 51
    invoke-static {v4, v5}, Landroidx/databinding/adapters/ViewBindingAdapter;->setPaddingTop(Landroid/view/View;F)V

    .line 52
    .line 53
    .line 54
    :cond_2
    and-long/2addr v0, v7

    .line 55
    cmp-long v0, v0, v2

    .line 56
    .line 57
    if-eqz v0, :cond_3

    .line 58
    .line 59
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ItemSettingsTitleBindingImpl;->c:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 60
    .line 61
    invoke-static {v0, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 62
    .line 63
    .line 64
    :cond_3
    return-void

    .line 65
    :catchall_0
    move-exception v0

    .line 66
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemSettingsTitleBindingImpl;->d:J

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
    iput-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemSettingsTitleBindingImpl;->d:J

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
    check-cast p2, Lcom/startshorts/androidplayer/bean/settings/AppSettings;

    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/databinding/ItemSettingsTitleBindingImpl;->d(Lcom/startshorts/androidplayer/bean/settings/AppSettings;)V

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x4

    .line 11
    if-ne v0, p1, :cond_1

    .line 12
    .line 13
    check-cast p2, Ljava/lang/Integer;

    .line 14
    .line 15
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/databinding/ItemSettingsTitleBindingImpl;->b(Ljava/lang/Integer;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    const/4 p1, 0x1

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    const/4 p1, 0x0

    .line 21
    :goto_1
    return p1
.end method
