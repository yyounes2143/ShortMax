.class public final synthetic Lcom/startshorts/androidplayer/adapter/discover/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;

.field public final synthetic b:I

.field public final synthetic c:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/h;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;

    .line 5
    .line 6
    iput p2, p0, Lcom/startshorts/androidplayer/adapter/discover/h;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/startshorts/androidplayer/adapter/discover/h;->c:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/adapter/discover/h;->a:Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;

    .line 2
    .line 3
    iget v1, p0, Lcom/startshorts/androidplayer/adapter/discover/h;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/adapter/discover/h;->c:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 6
    .line 7
    invoke-static {v0, v1, v2, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;->q(Lcom/startshorts/androidplayer/adapter/discover/DiscoverCategoryViewPagerItemAdapter;ILcom/startshorts/androidplayer/bean/discover/DiscoverShorts;Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
