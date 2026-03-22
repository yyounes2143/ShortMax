.class public Lcom/startshorts/androidplayer/databinding/ItemBindInfoBindingImpl;
.super Lcom/startshorts/androidplayer/databinding/ItemBindInfoBinding;
.source "ItemBindInfoBindingImpl.java"


# static fields
.field private static final g:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final h:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final c:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private f:J


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
    sget-object v0, Lcom/startshorts/androidplayer/databinding/ItemBindInfoBindingImpl;->g:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/startshorts/androidplayer/databinding/ItemBindInfoBindingImpl;->h:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/startshorts/androidplayer/databinding/ItemBindInfoBindingImpl;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x3

    .line 2
    aget-object v0, p3, v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/startshorts/androidplayer/databinding/ItemBindInfoBinding;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;)V

    const-wide/16 v2, -0x1

    .line 3
    iput-wide v2, p0, Lcom/startshorts/androidplayer/databinding/ItemBindInfoBindingImpl;->f:J

    .line 4
    iget-object p1, p0, Lcom/startshorts/androidplayer/databinding/ItemBindInfoBinding;->a:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5
    aget-object p1, p3, v1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/startshorts/androidplayer/databinding/ItemBindInfoBindingImpl;->c:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 7
    aget-object p1, p3, p1

    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    iput-object p1, p0, Lcom/startshorts/androidplayer/databinding/ItemBindInfoBindingImpl;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x2

    .line 9
    aget-object p1, p3, p1

    check-cast p1, Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    iput-object p1, p0, Lcom/startshorts/androidplayer/databinding/ItemBindInfoBindingImpl;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 12
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/databinding/ItemBindInfoBindingImpl;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public b(Lcom/startshorts/androidplayer/bean/auth/BindInfo;)V
    .locals 4
    .param p1    # Lcom/startshorts/androidplayer/bean/auth/BindInfo;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/databinding/ItemBindInfoBinding;->b:Lcom/startshorts/androidplayer/bean/auth/BindInfo;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemBindInfoBindingImpl;->f:J

    .line 5
    .line 6
    const-wide/16 v2, 0x1

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemBindInfoBindingImpl;->f:J

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
    .locals 14

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemBindInfoBindingImpl;->f:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    iput-wide v2, p0, Lcom/startshorts/androidplayer/databinding/ItemBindInfoBindingImpl;->f:J

    .line 7
    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v4, p0, Lcom/startshorts/androidplayer/databinding/ItemBindInfoBinding;->b:Lcom/startshorts/androidplayer/bean/auth/BindInfo;

    .line 10
    .line 11
    const-wide/16 v5, 0x3

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
    const/4 v9, 0x0

    .line 19
    if-eqz v7, :cond_4

    .line 20
    .line 21
    if-eqz v4, :cond_0

    .line 22
    .line 23
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v8

    .line 31
    invoke-virtual {v4, v8}, Lcom/startshorts/androidplayer/bean/auth/BindInfo;->getBindStatus(Landroid/content/Context;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/auth/BindInfo;->hasBind()Z

    .line 36
    .line 37
    .line 38
    move-result v10

    .line 39
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v11

    .line 43
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 44
    .line 45
    .line 46
    move-result-object v11

    .line 47
    invoke-virtual {v4, v11}, Lcom/startshorts/androidplayer/bean/auth/BindInfo;->getBindName(Landroid/content/Context;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v4

    .line 51
    goto :goto_0

    .line 52
    :cond_0
    move-object v4, v8

    .line 53
    move v10, v9

    .line 54
    :goto_0
    if-eqz v7, :cond_2

    .line 55
    .line 56
    if-eqz v10, :cond_1

    .line 57
    .line 58
    const-wide/16 v11, 0x8

    .line 59
    .line 60
    :goto_1
    or-long/2addr v0, v11

    .line 61
    goto :goto_2

    .line 62
    :cond_1
    const-wide/16 v11, 0x4

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    :goto_2
    if-eqz v10, :cond_3

    .line 66
    .line 67
    const/16 v9, 0x8

    .line 68
    .line 69
    :cond_3
    move-object v13, v8

    .line 70
    move-object v8, v4

    .line 71
    move-object v4, v13

    .line 72
    goto :goto_3

    .line 73
    :cond_4
    move-object v4, v8

    .line 74
    :goto_3
    and-long/2addr v0, v5

    .line 75
    cmp-long v0, v0, v2

    .line 76
    .line 77
    if-eqz v0, :cond_5

    .line 78
    .line 79
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ItemBindInfoBinding;->a:Landroid/widget/ImageView;

    .line 80
    .line 81
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ItemBindInfoBindingImpl;->d:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 85
    .line 86
    invoke-static {v0, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/startshorts/androidplayer/databinding/ItemBindInfoBindingImpl;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 90
    .line 91
    invoke-static {v0, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    :cond_5
    return-void

    .line 95
    :catchall_0
    move-exception v0

    .line 96
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 97
    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemBindInfoBindingImpl;->f:J

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
    iput-wide v0, p0, Lcom/startshorts/androidplayer/databinding/ItemBindInfoBindingImpl;->f:J

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
    check-cast p2, Lcom/startshorts/androidplayer/bean/auth/BindInfo;

    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/databinding/ItemBindInfoBindingImpl;->b(Lcom/startshorts/androidplayer/bean/auth/BindInfo;)V

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
