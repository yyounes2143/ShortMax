.class Lcom/startshorts/androidplayer/ui/view/banner/provider/ScrollDurationManger$a;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "ScrollDurationManger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/view/banner/provider/ScrollDurationManger;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/view/banner/provider/ScrollDurationManger;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/view/banner/provider/ScrollDurationManger;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/banner/provider/ScrollDurationManger$a;->a:Lcom/startshorts/androidplayer/ui/view/banner/provider/ScrollDurationManger;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected calculateTimeForDeceleration(I)I
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/banner/provider/ScrollDurationManger$a;->a:Lcom/startshorts/androidplayer/ui/view/banner/provider/ScrollDurationManger;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/view/banner/provider/ScrollDurationManger;->k(Lcom/startshorts/androidplayer/ui/view/banner/provider/ScrollDurationManger;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
