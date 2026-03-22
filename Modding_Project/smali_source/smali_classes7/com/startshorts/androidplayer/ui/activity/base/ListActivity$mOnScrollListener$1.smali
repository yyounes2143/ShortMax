.class public final Lcom/startshorts/androidplayer/ui/activity/base/ListActivity$mOnScrollListener$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ListActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/base/ListActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/activity/base/ListActivity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/startshorts/androidplayer/ui/activity/base/ListActivity<",
            "TD;TVDB;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/base/ListActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/activity/base/ListActivity<",
            "TD;TVDB;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/base/ListActivity$mOnScrollListener$1;->a:Lcom/startshorts/androidplayer/ui/activity/base/ListActivity;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/base/ListActivity$mOnScrollListener$1;->a:Lcom/startshorts/androidplayer/ui/activity/base/ListActivity;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/base/ListActivity;->m0(Lcom/startshorts/androidplayer/ui/activity/base/ListActivity;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/base/ListActivity$mOnScrollListener$1;->a:Lcom/startshorts/androidplayer/ui/activity/base/ListActivity;

    .line 21
    .line 22
    invoke-static {p2, p1}, Lcom/startshorts/androidplayer/ui/activity/base/ListActivity;->n0(Lcom/startshorts/androidplayer/ui/activity/base/ListActivity;Z)V

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/base/ListActivity$mOnScrollListener$1;->a:Lcom/startshorts/androidplayer/ui/activity/base/ListActivity;

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/base/ListActivity;->u0()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    if-nez p2, :cond_2

    .line 37
    .line 38
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/base/ListActivity$mOnScrollListener$1;->a:Lcom/startshorts/androidplayer/ui/activity/base/ListActivity;

    .line 39
    .line 40
    const/4 p2, 0x0

    .line 41
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/base/ListActivity;->n0(Lcom/startshorts/androidplayer/ui/activity/base/ListActivity;Z)V

    .line 42
    .line 43
    .line 44
    sget-object p1, Lkk/f;->a:Lkk/f;

    .line 45
    .line 46
    invoke-virtual {p1}, Lkk/f;->y()V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/base/ListActivity$mOnScrollListener$1;->a:Lcom/startshorts/androidplayer/ui/activity/base/ListActivity;

    .line 50
    .line 51
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/base/ListActivity;->v0()V

    .line 52
    .line 53
    .line 54
    :cond_2
    :goto_0
    return-void
.end method
