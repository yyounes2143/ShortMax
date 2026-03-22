.class public final Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$b;
.super Ljava/lang/Object;
.source "TagFilterFragment.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->T(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/startshorts/androidplayer/adapter/base/SelectableAdapter$d<",
        "Lcom/startshorts/androidplayer/bean/tab/TagFilterTab;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;

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
    check-cast p3, Lcom/startshorts/androidplayer/bean/tab/TagFilterTab;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$b;->b(Landroid/view/View;ILcom/startshorts/androidplayer/bean/tab/TagFilterTab;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Landroid/view/View;ILcom/startshorts/androidplayer/bean/tab/TagFilterTab;)V
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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->J(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;)Lcom/startshorts/androidplayer/databinding/FragmentTagFilterBinding;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentTagFilterBinding;->a:Lcom/startshorts/androidplayer/ui/view/base/TabView;

    .line 18
    .line 19
    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/base/TabView;->setSelectedIndex(I)V

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;

    .line 23
    .line 24
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->Q(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;I)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->J(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;)Lcom/startshorts/androidplayer/databinding/FragmentTagFilterBinding;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentTagFilterBinding;->b:Landroidx/viewpager2/widget/ViewPager2;

    .line 34
    .line 35
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;

    .line 36
    .line 37
    invoke-static {p2}, Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;->M(Lcom/startshorts/androidplayer/ui/fragment/tag/TagFilterFragment;)I

    .line 38
    .line 39
    .line 40
    move-result p2

    .line 41
    invoke-virtual {p1, p2}, Landroidx/viewpager2/widget/ViewPager2;->setCurrentItem(I)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
