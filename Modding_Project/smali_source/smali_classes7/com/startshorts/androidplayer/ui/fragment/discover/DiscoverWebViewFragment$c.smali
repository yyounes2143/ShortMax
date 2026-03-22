.class public final Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$c;
.super Landroid/webkit/WebChromeClient;
.source "DiscoverWebViewFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->Y(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$c;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$c;->b(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final b(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;I)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->K(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;)Lcom/startshorts/androidplayer/databinding/FragmentDiscoverWebviewBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverWebviewBinding;->a:Landroid/widget/ProgressBar;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/webkit/WebView;I)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$c;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->M(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$c;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;

    .line 10
    .line 11
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$c;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;

    .line 18
    .line 19
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/discover/n1;

    .line 20
    .line 21
    invoke-direct {v1, v0, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/n1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;I)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    const/16 p1, 0x63

    .line 28
    .line 29
    if-lt p2, p1, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$c;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->M(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;)Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-nez p1, :cond_1

    .line 38
    .line 39
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$c;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->N(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method
