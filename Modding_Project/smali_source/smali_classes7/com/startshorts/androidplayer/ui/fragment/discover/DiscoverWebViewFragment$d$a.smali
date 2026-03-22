.class public final Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d$a;
.super Ljava/lang/Object;
.source "FragmentExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d;->onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 DiscoverWebViewFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$initWebView$1$2\n*L\n1#1,20:1\n250#2,15:21\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;

.field final synthetic b:Landroid/webkit/SslErrorHandler;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;Landroid/webkit/SslErrorHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d$a;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d$a;->b:Landroid/webkit/SslErrorHandler;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d$a;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    sget v1, Lcom/startshorts/androidplayer/R$string;->common_ssl_verified_fail:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 15
    .line 16
    .line 17
    sget v1, Lcom/startshorts/androidplayer/R$string;->common_continue:I

    .line 18
    .line 19
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d$c;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d$a;->b:Landroid/webkit/SslErrorHandler;

    .line 22
    .line 23
    invoke-direct {v2, v3}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d$c;-><init>(Landroid/webkit/SslErrorHandler;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 27
    .line 28
    .line 29
    sget v1, Lcom/startshorts/androidplayer/R$string;->common_cancel:I

    .line 30
    .line 31
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d$d;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d$a;->b:Landroid/webkit/SslErrorHandler;

    .line 34
    .line 35
    invoke-direct {v2, v3}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d$d;-><init>(Landroid/webkit/SslErrorHandler;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 39
    .line 40
    .line 41
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d$e;

    .line 42
    .line 43
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d$a;->b:Landroid/webkit/SslErrorHandler;

    .line 44
    .line 45
    invoke-direct {v1, v2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d$e;-><init>(Landroid/webkit/SslErrorHandler;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d$a;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object v0
.end method
