.class public final Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$f;
.super Landroid/webkit/WebChromeClient;
.source "ActActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;->E0(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$f;->a:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$f;->b(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final b(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;I)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;->Z(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;)Lcom/startshorts/androidplayer/databinding/ActivityActBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/ActivityActBinding;->f:Landroid/widget/ProgressBar;

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
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$f;->a:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;->a0(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$f;->a:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;

    .line 10
    .line 11
    new-instance v0, Lqh/q;

    .line 12
    .line 13
    invoke-direct {v0, p1, p2}, Lqh/q;-><init>(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    const/16 p1, 0x63

    .line 20
    .line 21
    if-lt p2, p1, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$f;->a:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;->a0(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$f;->a:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;

    .line 32
    .line 33
    const/4 p2, 0x1

    .line 34
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;->k0(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;Z)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity$f;->a:Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;->f0(Lcom/startshorts/androidplayer/ui/activity/act/ActActivity;)V

    .line 40
    .line 41
    .line 42
    :cond_1
    return-void
.end method
