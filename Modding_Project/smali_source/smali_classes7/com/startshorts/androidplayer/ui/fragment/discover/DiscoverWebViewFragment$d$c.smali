.class final Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d$c;
.super Ljava/lang/Object;
.source "DiscoverWebViewFragment.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d$c;->a:Landroid/webkit/SslErrorHandler;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d$c;->a:Landroid/webkit/SslErrorHandler;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/webkit/SslErrorHandler;->proceed()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
