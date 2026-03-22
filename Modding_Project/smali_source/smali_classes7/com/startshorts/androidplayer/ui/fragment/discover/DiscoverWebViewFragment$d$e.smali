.class final Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d$e;
.super Ljava/lang/Object;
.source "DiscoverWebViewFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Landroid/webkit/SslErrorHandler;


# direct methods
.method constructor <init>(Landroid/webkit/SslErrorHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d$e;->a:Landroid/webkit/SslErrorHandler;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const-string v0, "dialog"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "event"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    const/4 v0, 0x1

    .line 16
    if-ne p3, v0, :cond_0

    .line 17
    .line 18
    const/4 p3, 0x4

    .line 19
    if-ne p2, p3, :cond_0

    .line 20
    .line 21
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d$e;->a:Landroid/webkit/SslErrorHandler;

    .line 22
    .line 23
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    .line 24
    .line 25
    .line 26
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 27
    .line 28
    .line 29
    return v0

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    return p1
.end method
