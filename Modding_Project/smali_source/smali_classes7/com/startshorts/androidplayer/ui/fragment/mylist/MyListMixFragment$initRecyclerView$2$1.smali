.class public final Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment$initRecyclerView$2$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "MyListMixFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;->i0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment$initRecyclerView$2$1;->a:Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p1, :cond_1

    .line 3
    .line 4
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment$initRecyclerView$2$1;->a:Lcom/startshorts/androidplayer/ui/fragment/mylist/MyListMixFragment;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/base/RecyclerViewFragment;->e0()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    instance-of v1, p1, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    check-cast p1, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p1, 0x0

    .line 18
    :goto_0
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/adapter/base/WrapperAdapter;->b()Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-ne p1, v0, :cond_1

    .line 25
    .line 26
    const/4 v0, 0x3

    .line 27
    :cond_1
    return v0
.end method
