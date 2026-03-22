.class public final Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment$initView$6;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "DiscoverLibraryFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->w0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment$initView$6;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    if-eq p2, p1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x2

    .line 10
    if-ne p2, v0, :cond_1

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment$initView$6;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->j0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment$initView$6;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;

    .line 21
    .line 22
    invoke-static {p2, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->r0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;Z)V

    .line 23
    .line 24
    .line 25
    sget-object p1, Lkk/f;->a:Lkk/f;

    .line 26
    .line 27
    invoke-virtual {p1}, Lkk/f;->r()V

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment$initView$6;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->h0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;)Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    invoke-interface {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;->e()V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    if-nez p2, :cond_2

    .line 43
    .line 44
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment$initView$6;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;

    .line 45
    .line 46
    const/4 p2, 0x0

    .line 47
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->r0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;Z)V

    .line 48
    .line 49
    .line 50
    sget-object p1, Lkk/f;->a:Lkk/f;

    .line 51
    .line 52
    invoke-virtual {p1}, Lkk/f;->y()V

    .line 53
    .line 54
    .line 55
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment$initView$6;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;->h0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverLibraryFragment;)Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_2

    .line 62
    .line 63
    invoke-interface {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;->d()V

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_0
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    const-string p2, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
