.class public final Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$c;
.super Ljava/lang/Object;
.source "ContainerMyCollectionFragment.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->h0(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$d<",
        "Lcom/startshorts/androidplayer/bean/tab/MyListTab;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$c;->a:Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p3, Lcom/startshorts/androidplayer/bean/tab/MyListTab;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$c;->b(Landroid/view/View;ILcom/startshorts/androidplayer/bean/tab/MyListTab;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Landroid/view/View;ILcom/startshorts/androidplayer/bean/tab/MyListTab;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p1, "d"

    .line 7
    .line 8
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$c;->a:Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->L(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;)Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$c;->a:Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->J(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;)Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;->d:Lcom/startshorts/androidplayer/ui/view/base/TabView;

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/base/TabView;->setSelectedIndex(I)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$c;->a:Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;->J(Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;)Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentCollectionListBinding;->g:Landroidx/viewpager2/widget/ViewPager2;

    .line 37
    .line 38
    const/4 p3, 0x0

    .line 39
    invoke-virtual {p1, p2, p3}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(IZ)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment$c;->a:Lcom/startshorts/androidplayer/ui/fragment/mylist/ContainerMyCollectionFragment;

    .line 44
    .line 45
    sget p2, Lcom/startshorts/androidplayer/R$string;->my_list_fragment_edit_mode_tab_disable_tip:I

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->w(I)V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method
