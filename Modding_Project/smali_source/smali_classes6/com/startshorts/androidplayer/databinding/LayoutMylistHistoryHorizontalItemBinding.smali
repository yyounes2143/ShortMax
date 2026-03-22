.class public abstract Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;
.super Landroidx/databinding/ViewDataBinding;
.source "LayoutMylistHistoryHorizontalItemBinding.java"


# instance fields
.field public final a:Landroidx/constraintlayout/widget/Barrier;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final b:Landroidx/appcompat/widget/AppCompatImageView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final c:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final d:Lcom/hades/aar/pagestate/StateViewGroup;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field public final h:Lcom/startshorts/androidplayer/ui/view/pagestate/MyListMyCollectionEmptyView;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Landroid/view/View;ILandroidx/constraintlayout/widget/Barrier;Landroidx/appcompat/widget/AppCompatImageView;Landroidx/recyclerview/widget/RecyclerView;Lcom/hades/aar/pagestate/StateViewGroup;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;Lcom/startshorts/androidplayer/ui/view/pagestate/MyListMyCollectionEmptyView;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/ViewDataBinding;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    iput-object p4, p0, Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;->a:Landroidx/constraintlayout/widget/Barrier;

    .line 5
    .line 6
    iput-object p5, p0, Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;->b:Landroidx/appcompat/widget/AppCompatImageView;

    .line 7
    .line 8
    iput-object p6, p0, Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    .line 10
    iput-object p7, p0, Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;->d:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 11
    .line 12
    iput-object p8, p0, Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;->e:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 13
    .line 14
    iput-object p9, p0, Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 15
    .line 16
    iput-object p10, p0, Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;->g:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 17
    .line 18
    iput-object p11, p0, Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;->h:Lcom/startshorts/androidplayer/ui/view/pagestate/MyListMyCollectionEmptyView;

    .line 19
    .line 20
    return-void
.end method

.method public static b(Landroid/view/LayoutInflater;)Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;
    .locals 1
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/databinding/DataBindingUtil;->getDefaultComponent()Landroidx/databinding/DataBindingComponent;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;->d(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public static d(Landroid/view/LayoutInflater;Ljava/lang/Object;)Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;
    .locals 3
    .param p0    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->layout_mylist_history_horizontal_item:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    invoke-static {p0, v0, v1, v2, p1}, Landroidx/databinding/ViewDataBinding;->inflateInternal(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;ZLjava/lang/Object;)Landroidx/databinding/ViewDataBinding;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lcom/startshorts/androidplayer/databinding/LayoutMylistHistoryHorizontalItemBinding;

    .line 10
    .line 11
    return-object p0
.end method
