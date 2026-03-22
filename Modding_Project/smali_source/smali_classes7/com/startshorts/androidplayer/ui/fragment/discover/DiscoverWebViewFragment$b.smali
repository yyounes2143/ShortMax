.class final Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$b;
.super Ljava/lang/Object;
.source "DiscoverWebViewFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$b;->e(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic b(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;ILorg/json/JSONObject;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$b;->d(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;ILorg/json/JSONObject;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic c(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$b;->f(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;Ljava/lang/String;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final d(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;ILorg/json/JSONObject;)Lkotlin/Unit;
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    if-eq p1, v0, :cond_7

    .line 3
    .line 4
    const/16 v0, 0xd

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eq p1, v0, :cond_3

    .line 8
    .line 9
    const/16 v0, 0xf

    .line 10
    .line 11
    if-eq p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    if-eqz p2, :cond_1

    .line 15
    .line 16
    const-string p1, "url"

    .line 17
    .line 18
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :cond_1
    if-eqz v1, :cond_8

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_2

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_2
    sget-object p1, Lfk/h0;->a:Lfk/h0;

    .line 32
    .line 33
    new-instance p2, Lcom/startshorts/androidplayer/ui/fragment/discover/m1;

    .line 34
    .line 35
    invoke-direct {p2, p0, v1}, Lcom/startshorts/androidplayer/ui/fragment/discover/m1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1, p2}, Lfk/h0;->e(Ljava/lang/Runnable;)V

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_3
    if-eqz p2, :cond_4

    .line 43
    .line 44
    const-string p1, "key"

    .line 45
    .line 46
    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    goto :goto_0

    .line 51
    :cond_4
    move-object p1, v1

    .line 52
    :goto_0
    if-eqz p1, :cond_8

    .line 53
    .line 54
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    if-nez p2, :cond_5

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_5
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->L(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;)Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    if-eqz p0, :cond_6

    .line 70
    .line 71
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;->getLinkUrl()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    :cond_6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string p1, "=; Expires=Wed, 31 Dec 2015 23:59:59 GMT"

    .line 84
    .line 85
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-virtual {p2, v1, p0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Landroid/webkit/CookieManager;->flush()V

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_7
    const/4 p1, 0x1

    .line 100
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->Q(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;Z)V

    .line 101
    .line 102
    .line 103
    :cond_8
    :goto_1
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 104
    .line 105
    return-object p0
.end method

.method private static final e(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->O(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;Ljava/lang/String;Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method private static final f(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;Ljava/lang/String;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->J(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method


# virtual methods
.method public final callApp(Ljava/lang/String;)V
    .locals 12
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    instance-of v1, v0, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 13
    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    check-cast v0, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;

    .line 17
    .line 18
    :goto_0
    move-object v4, v0

    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const/4 v0, 0x0

    .line 21
    goto :goto_0

    .line 22
    :goto_1
    if-nez v4, :cond_1

    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    sget-object v1, Lce/j;->a:Lce/j;

    .line 26
    .line 27
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;

    .line 38
    .line 39
    new-instance v7, Lcom/startshorts/androidplayer/ui/fragment/discover/k1;

    .line 40
    .line 41
    invoke-direct {v7, v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/k1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;

    .line 45
    .line 46
    new-instance v9, Lcom/startshorts/androidplayer/ui/fragment/discover/l1;

    .line 47
    .line 48
    invoke-direct {v9, v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/l1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;)V

    .line 49
    .line 50
    .line 51
    const/16 v10, 0x40

    .line 52
    .line 53
    const/4 v11, 0x0

    .line 54
    const/4 v2, 0x0

    .line 55
    const/4 v5, 0x0

    .line 56
    const/4 v8, 0x0

    .line 57
    move-object v6, p1

    .line 58
    invoke-static/range {v1 .. v11}, Lce/j;->r(Lce/j;ZLjava/lang/String;Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method
