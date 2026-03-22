.class final Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity$b;
.super Ljava/lang/Object;
.source "ThirdAdActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity$b;->a:Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity$b;->b(Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final b(Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;->J(Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;)Lcom/startshorts/androidplayer/databinding/ActivityThirdAdBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityThirdAdBinding;->e:Landroid/webkit/WebView;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->v()V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final close()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity$b;->a:Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;

    .line 2
    .line 3
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/ad/a;

    .line 4
    .line 5
    invoke-direct {v1, v0}, Lcom/startshorts/androidplayer/ui/activity/ad/a;-><init>(Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final openBrowser(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "url"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v0, "intent"

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x2

    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->V(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    invoke-static {p1, v0}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 24
    .line 25
    const-string v1, "android.intent.action.VIEW"

    .line 26
    .line 27
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 32
    .line 33
    .line 34
    move-object p1, v0

    .line 35
    :goto_0
    if-eqz p1, :cond_2

    .line 36
    .line 37
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity$b;->a:Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;

    .line 38
    .line 39
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;->K(Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    .line 45
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;->I(Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    :cond_1
    const-string v1, "android.intent.category.BROWSABLE"

    .line 53
    .line 54
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 58
    .line 59
    .line 60
    const/high16 v1, 0x10000000

    .line 61
    .line 62
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    :catch_0
    :cond_2
    return-void
.end method
