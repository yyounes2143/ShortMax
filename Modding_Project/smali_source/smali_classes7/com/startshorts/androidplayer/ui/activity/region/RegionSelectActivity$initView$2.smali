.class public final Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity$initView$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "RegionSelectActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;->g0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Landroidx/recyclerview/widget/LinearLayoutManager;

.field final synthetic b:Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/LinearLayoutManager;Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity$initView$2;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity$initView$2;->b:Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    .line 1
    const-string v0, "recyclerView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity$initView$2;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    .line 17
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity$initView$2;->a:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 18
    .line 19
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    .line 20
    .line 21
    .line 22
    move-result p2

    .line 23
    if-nez p2, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity$initView$2;->b:Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;->d0(Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;)Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBinding;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 32
    .line 33
    const/4 p2, 0x4

    .line 34
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity$initView$2;->b:Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;

    .line 39
    .line 40
    invoke-static {p2}, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;->c0(Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;)Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p2, p1}, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2;->a(I)Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$a;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-nez p1, :cond_1

    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity$initView$2;->b:Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;

    .line 52
    .line 53
    invoke-static {p2}, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;->d0(Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;)Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBinding;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 58
    .line 59
    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$a;->a()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p2

    .line 71
    if-nez p2, :cond_2

    .line 72
    .line 73
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity$initView$2;->b:Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;

    .line 74
    .line 75
    invoke-static {p2}, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;->d0(Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;)Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBinding;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    iget-object p2, p2, Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 80
    .line 81
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/region/RegionAdapter2$a;->a()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    .line 87
    .line 88
    :cond_2
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity$initView$2;->b:Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;

    .line 89
    .line 90
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;->d0(Lcom/startshorts/androidplayer/ui/activity/region/RegionSelectActivity;)Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBinding;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ActivityRegionSelectBinding;->f:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 95
    .line 96
    const/4 p2, 0x0

    .line 97
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 98
    .line 99
    .line 100
    return-void
.end method
