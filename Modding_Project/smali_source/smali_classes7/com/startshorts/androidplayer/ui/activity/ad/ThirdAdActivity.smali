.class public final Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;
.super Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;
.source "ThirdAdActivity.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity$a;,
        Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity<",
        "Lcom/startshorts/androidplayer/databinding/ActivityThirdAdBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nThirdAdActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThirdAdActivity.kt\ncom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,235:1\n1863#2,2:236\n1#3:238\n*S KotlinDebug\n*F\n+ 1 ThirdAdActivity.kt\ncom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity\n*L\n88#1:236,2\n*E\n"
    }
.end annotation


# static fields
.field public static final o:Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private l:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final m:I

.field private final n:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;->o:Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    sget v0, Lcom/startshorts/androidplayer/R$layout;->activity_third_ad:I

    .line 5
    .line 6
    iput v0, p0, Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;->m:I

    .line 7
    .line 8
    const-string v0, "ThirdAdActivity"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;->n:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method

.method public static synthetic H(Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;->P(Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic I(Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;->L()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic J(Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;)Lcom/startshorts/androidplayer/databinding/ActivityThirdAdBinding;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/startshorts/androidplayer/databinding/ActivityThirdAdBinding;

    .line 6
    .line 7
    return-object p0
.end method

.method public static final synthetic K(Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;->O()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final L()Ljava/lang/String;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/content/Intent;

    .line 7
    .line 8
    const-string v2, "https://"

    .line 9
    .line 10
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const-string v3, "android.intent.action.VIEW"

    .line 15
    .line 16
    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const/high16 v3, 0x10000

    .line 28
    .line 29
    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const/4 v3, 0x0

    .line 34
    if-eqz v2, :cond_0

    .line 35
    .line 36
    iget-object v4, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move-object v4, v3

    .line 40
    :goto_0
    if-eqz v4, :cond_1

    .line 41
    .line 42
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 43
    .line 44
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    move-object v2, v3

    .line 48
    :goto_1
    if-eqz v2, :cond_2

    .line 49
    .line 50
    const-string v4, "android"

    .line 51
    .line 52
    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    if-eqz v4, :cond_9

    .line 57
    .line 58
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 63
    .line 64
    .line 65
    move-result-object v4

    .line 66
    const/4 v5, 0x0

    .line 67
    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-string v4, "queryIntentActivities(...)"

    .line 72
    .line 73
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    move-object v4, v3

    .line 81
    :cond_3
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-eqz v5, :cond_5

    .line 86
    .line 87
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 92
    .line 93
    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 94
    .line 95
    iget v6, v5, Landroid/content/pm/ActivityInfo;->flags:I

    .line 96
    .line 97
    and-int/lit8 v6, v6, 0x1

    .line 98
    .line 99
    if-eqz v6, :cond_4

    .line 100
    .line 101
    iget-object v3, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_4
    iget-object v4, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 105
    .line 106
    if-eqz v4, :cond_3

    .line 107
    .line 108
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_5
    const-string v1, "com.android.chrome"

    .line 113
    .line 114
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_6

    .line 119
    .line 120
    move-object v2, v1

    .line 121
    goto :goto_3

    .line 122
    :cond_6
    if-nez v3, :cond_8

    .line 123
    .line 124
    if-nez v4, :cond_7

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_7
    move-object v2, v4

    .line 128
    goto :goto_3

    .line 129
    :cond_8
    move-object v2, v3

    .line 130
    :cond_9
    :goto_3
    if-nez v2, :cond_a

    .line 131
    .line 132
    const-string v2, ""

    .line 133
    .line 134
    :cond_a
    return-object v2
.end method

.method private final M()V
    .locals 4

    .line 1
    sget-object v0, Lfk/u;->a:Lfk/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfk/u;->c()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget v1, Lcom/startshorts/androidplayer/R$dimen;->toolbar_view_height:I

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    float-to-int v0, v0

    .line 14
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Lcom/startshorts/androidplayer/databinding/ActivityThirdAdBinding;

    .line 19
    .line 20
    iget-object v1, v1, Lcom/startshorts/androidplayer/databinding/ActivityThirdAdBinding;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    sget-object v3, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->J()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    add-int/2addr v3, v0

    .line 33
    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityThirdAdBinding;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityThirdAdBinding;->a:Landroid/widget/ImageView;

    .line 45
    .line 46
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity$c;

    .line 47
    .line 48
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity$c;-><init>(Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityThirdAdBinding;

    .line 59
    .line 60
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityThirdAdBinding;->d:Landroid/widget/ImageView;

    .line 61
    .line 62
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity$d;

    .line 63
    .line 64
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity$d;-><init>(Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method private final N()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "JavascriptInterface"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityThirdAdBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityThirdAdBinding;->e:Landroid/webkit/WebView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const/4 v3, 0x0

    .line 50
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const/16 v3, 0x64

    .line 58
    .line 59
    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 67
    .line 68
    .line 69
    new-instance v1, Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity$b;

    .line 70
    .line 71
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity$b;-><init>(Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;)V

    .line 72
    .line 73
    .line 74
    const-string v2, "shortTvMax"

    .line 75
    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    new-instance v1, Landroid/webkit/WebViewClient;

    .line 80
    .line 81
    invoke-direct {v1}, Landroid/webkit/WebViewClient;-><init>()V

    .line 82
    .line 83
    .line 84
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;->l:Ljava/lang/String;

    .line 88
    .line 89
    if-eqz v1, :cond_0

    .line 90
    .line 91
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :cond_0
    return-void
.end method

.method private final O()Z
    .locals 3

    .line 1
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const-string v2, "huawei"

    .line 5
    .line 6
    invoke-static {v2, v0, v1}, Lkotlin/text/StringsKt;->G(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method private static final P(Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final Q()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;->l:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "did"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    sget-object v2, Lud/a;->a:Lud/a;

    .line 16
    .line 17
    invoke-virtual {v2}, Lud/a;->m()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-lez v3, :cond_2

    .line 26
    .line 27
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->clearQuery()Landroid/net/Uri$Builder;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v0}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const-string v5, "getQueryParameterNames(...)"

    .line 40
    .line 41
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    check-cast v4, Ljava/lang/Iterable;

    .line 45
    .line 46
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    if-eqz v5, :cond_1

    .line 55
    .line 56
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    check-cast v5, Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v5, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-eqz v6, :cond_0

    .line 67
    .line 68
    move-object v6, v2

    .line 69
    goto :goto_1

    .line 70
    :cond_0
    invoke-virtual {v0, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v6

    .line 74
    :goto_1
    invoke-virtual {v3, v5, v6}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;->l:Ljava/lang/String;

    .line 87
    .line 88
    :cond_2
    return-void
.end method


# virtual methods
.method public o()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;->m:I

    .line 2
    .line 3
    return v0
.end method

.method public onBackPressed()V
    .locals 3
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityThirdAdBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityThirdAdBinding;->e:Landroid/webkit/WebView;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "onBackPressed -> canGoBack="

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->s(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/startshorts/androidplayer/databinding/ActivityThirdAdBinding;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ActivityThirdAdBinding;->e:Landroid/webkit/WebView;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lfk/a;->a:Lfk/a;

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Lfk/a;->h(Landroid/app/Activity;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "url"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;->l:Ljava/lang/String;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    invoke-static {p1}, Ljk/v;->g(Ljava/lang/String;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_0

    .line 28
    .line 29
    const-string p1, "ThirdAdActivity --> Not a website address"

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->m(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_0
    move-exception p1

    .line 39
    goto :goto_1

    .line 40
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;->M()V

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;->Q()V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;->l:Ljava/lang/String;

    .line 47
    .line 48
    invoke-static {p1}, Ljk/v;->o(Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;->N()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/activity/base/BaseVDBActivity;->E()Landroidx/databinding/ViewDataBinding;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/startshorts/androidplayer/databinding/ActivityThirdAdBinding;

    .line 59
    .line 60
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ActivityThirdAdBinding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 61
    .line 62
    new-instance v0, Lrh/a;

    .line 63
    .line 64
    invoke-direct {v0, p0}, Lrh/a;-><init>(Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    const-string v1, "show ThirdAdActivity failed -> "

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/activity/base/BaseActivity;->m(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 96
    .line 97
    .line 98
    :goto_2
    return-void
.end method

.method public r()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/ad/ThirdAdActivity;->n:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
