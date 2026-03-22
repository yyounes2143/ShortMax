.class public final synthetic Lvj/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/view/banner/BannerViewPager$c;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/ui/view/search/SearchLabelView;

.field public final synthetic b:Lcom/startshorts/androidplayer/adapter/search/SearchLabelAdapter;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/ui/view/search/SearchLabelView;Lcom/startshorts/androidplayer/adapter/search/SearchLabelAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lvj/h;->a:Lcom/startshorts/androidplayer/ui/view/search/SearchLabelView;

    .line 5
    .line 6
    iput-object p2, p0, Lvj/h;->b:Lcom/startshorts/androidplayer/adapter/search/SearchLabelAdapter;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lvj/h;->a:Lcom/startshorts/androidplayer/ui/view/search/SearchLabelView;

    .line 2
    .line 3
    iget-object v1, p0, Lvj/h;->b:Lcom/startshorts/androidplayer/adapter/search/SearchLabelAdapter;

    .line 4
    .line 5
    invoke-static {v0, v1, p1, p2}, Lcom/startshorts/androidplayer/ui/view/search/SearchLabelView;->v(Lcom/startshorts/androidplayer/ui/view/search/SearchLabelView;Lcom/startshorts/androidplayer/adapter/search/SearchLabelAdapter;Landroid/view/View;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
