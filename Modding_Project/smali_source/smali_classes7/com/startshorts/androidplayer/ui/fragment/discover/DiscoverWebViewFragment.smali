.class public final Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;
.super Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;
.source "DiscoverWebViewFragment.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$a;,
        Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment<",
        "Lcom/startshorts/androidplayer/databinding/FragmentDiscoverWebviewBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDiscoverWebViewFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DiscoverWebViewFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,428:1\n1#2:429\n216#3,2:430\n*S KotlinDebug\n*F\n+ 1 DiscoverWebViewFragment.kt\ncom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment\n*L\n136#1:430,2\n*E\n"
    }
.end annotation


# static fields
.field public static final r:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private i:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private j:Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private k:Z

.field private final l:I

.field private m:Z

.field private final n:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private o:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private p:Z

.field private final q:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->r:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/discover/e1;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/e1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->n:Lms/i;

    .line 14
    .line 15
    sget v0, Lcom/startshorts/androidplayer/R$layout;->fragment_discover_webview:I

    .line 16
    .line 17
    iput v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->q:I

    .line 18
    .line 19
    return-void
.end method

.method public static synthetic D(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;Lkotlin/jvm/functions/Function0;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->f0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;Lkotlin/jvm/functions/Function0;Ljava/lang/Boolean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic E(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->W(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic F(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->S(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic G(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->T(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic H(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->d0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic I(Landroid/webkit/CookieManager;Ljava/lang/String;Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;Z)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->c0(Landroid/webkit/CookieManager;Ljava/lang/String;Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;Z)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic J(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->R(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic K(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;)Lcom/startshorts/androidplayer/databinding/FragmentDiscoverWebviewBinding;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverWebviewBinding;

    .line 6
    .line 7
    return-object p0
.end method

.method public static final synthetic L(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;)Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->j:Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic M(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->m:Z

    .line 2
    .line 3
    return p0
.end method

.method public static final synthetic N(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->V()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic O(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->a0(Ljava/lang/String;Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic P(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->m:Z

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic Q(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->k:Z

    .line 2
    .line 3
    return-void
.end method

.method private final R(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "callH5 -> data="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/discover/g1;

    .line 28
    .line 29
    invoke-direct {v1, p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/g1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method private static final S(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverWebviewBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverWebviewBinding;->c:Landroid/webkit/WebView;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "javascript:callH5(\'"

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string p1, "\')"

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/discover/i1;

    .line 32
    .line 33
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/i1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private static final T(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "callH5 -> valueCallback "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method private final U()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->n:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method private final V()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/discover/h1;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/h1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method private static final W(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverWebviewBinding;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverWebviewBinding;->a:Landroid/widget/ProgressBar;

    .line 8
    .line 9
    const/4 v0, 0x4

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method private final X()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->U()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->J()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->t()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    add-int/2addr v1, v2

    .line 18
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->u()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    :goto_0
    add-int/2addr v1, v0

    .line 23
    move v4, v1

    .line 24
    goto :goto_1

    .line 25
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->J()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->t()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    goto :goto_0

    .line 36
    :goto_1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverWebviewBinding;

    .line 41
    .line 42
    iget-object v2, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverWebviewBinding;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 43
    .line 44
    const-string v0, "toolbarLayout"

    .line 45
    .line 46
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    const/16 v7, 0xd

    .line 50
    .line 51
    const/4 v8, 0x0

    .line 52
    const/4 v3, 0x0

    .line 53
    const/4 v5, 0x0

    .line 54
    const/4 v6, 0x0

    .line 55
    invoke-static/range {v2 .. v8}, Ljk/b0;->i(Landroid/view/View;IIIIILjava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    return-void
.end method

.method private final Y(Ljava/lang/String;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverWebviewBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverWebviewBinding;->c:Landroid/webkit/WebView;

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
    const/16 v4, 0x64

    .line 58
    .line 59
    invoke-virtual {v1, v4}, Landroid/webkit/WebSettings;->setTextZoom(I)V

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
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$b;

    .line 70
    .line 71
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$b;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;)V

    .line 72
    .line 73
    .line 74
    const-string v2, "messageHandlers"

    .line 75
    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string v1, "initWebView start"

    .line 80
    .line 81
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$c;

    .line 85
    .line 86
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 90
    .line 91
    .line 92
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d;

    .line 93
    .line 94
    invoke-direct {v1, p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment$d;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 98
    .line 99
    .line 100
    const/4 v0, 0x2

    .line 101
    const/4 v1, 0x0

    .line 102
    invoke-static {p0, p1, v3, v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->b0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    sget-object p1, Lqe/a;->a:Lqe/a;

    .line 106
    .line 107
    invoke-virtual {p1}, Lqe/a;->h()Lcom/startshorts/androidplayer/bean/configure/FeatureController;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/configure/FeatureController;->getWebviewBackgroundTransparentEnable()Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-eqz p1, :cond_0

    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    check-cast p1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverWebviewBinding;

    .line 122
    .line 123
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverWebviewBinding;->c:Landroid/webkit/WebView;

    .line 124
    .line 125
    invoke-virtual {p1, v3}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 126
    .line 127
    .line 128
    :cond_0
    return-void
.end method

.method private final Z()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v2, "from"

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v0, v1

    .line 16
    :goto_0
    iput-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->i:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    .line 24
    const-string v2, "tab"

    .line 25
    .line 26
    invoke-virtual {v0, v2}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    const-class v1, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 33
    .line 34
    invoke-static {v0, v1}, Ljk/l;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    move-object v1, v0

    .line 39
    check-cast v1, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 40
    .line 41
    :cond_1
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->j:Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 42
    .line 43
    return-void
.end method

.method private final a0(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/discover/f1;

    .line 13
    .line 14
    invoke-direct {v1, v0, p1, p0, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/f1;-><init>(Landroid/webkit/CookieManager;Ljava/lang/String;Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;Z)V

    .line 15
    .line 16
    .line 17
    invoke-direct {p0, v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->e0(Landroid/webkit/CookieManager;Lkotlin/jvm/functions/Function0;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method static synthetic b0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->a0(Ljava/lang/String;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final c0(Landroid/webkit/CookieManager;Ljava/lang/String;Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;Z)Lkotlin/Unit;
    .locals 5

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/api/base/o;->c:Lcom/startshorts/androidplayer/manager/api/base/o$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    invoke-static {v0, v1, v2, v1}, Lcom/startshorts/androidplayer/manager/api/base/o$a;->b(Lcom/startshorts/androidplayer/manager/api/base/o$a;Ljava/lang/String;ILjava/lang/Object;)Ljava/util/HashMap;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/16 v2, 0x3d

    .line 22
    .line 23
    if-eqz v1, :cond_0

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/util/Map$Entry;

    .line 30
    .line 31
    new-instance v3, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    check-cast v4, Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    check-cast v1, Ljava/lang/String;

    .line 53
    .line 54
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-virtual {p0, p1, v1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v1, "preferDisplayStyle="

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget v1, p2, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->l:I

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p0, p1, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    const-string v1, "loadingTimestamp="

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 98
    .line 99
    .line 100
    move-result-wide v3

    .line 101
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-virtual {p0, p1, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v1, "statusBarHeight="

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->J()I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {p0, p1, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    const-string v0, "openType=app"

    .line 138
    .line 139
    invoke-virtual {p0, p1, v0}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    sget-object v0, Lud/b;->a:Lud/b;

    .line 143
    .line 144
    invoke-virtual {v0}, Lud/b;->f0()Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    if-eqz v1, :cond_1

    .line 149
    .line 150
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/configure/CMSConfigResult;->getABTestIds()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    if-eqz v1, :cond_1

    .line 155
    .line 156
    new-instance v3, Ljava/lang/StringBuilder;

    .line 157
    .line 158
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 159
    .line 160
    .line 161
    const-string v4, "cmsAbTestId="

    .line 162
    .line 163
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {p0, p1, v1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    :cond_1
    iget-object v1, p2, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->j:Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 177
    .line 178
    if-eqz v1, :cond_2

    .line 179
    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    const-string v4, "tabId="

    .line 186
    .line 187
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;->getTabId()Ljava/lang/Integer;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v3

    .line 201
    invoke-virtual {p0, p1, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    new-instance v3, Ljava/lang/StringBuilder;

    .line 205
    .line 206
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    .line 208
    .line 209
    const-string v4, "tabName="

    .line 210
    .line 211
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;->getTabDisplayName()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {p0, p1, v1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .line 232
    .line 233
    const-string v3, "caseId="

    .line 234
    .line 235
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    sget-object v3, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 239
    .line 240
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->f1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 241
    .line 242
    .line 243
    move-result-object v3

    .line 244
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->abTestIntValue()I

    .line 245
    .line 246
    .line 247
    move-result v3

    .line 248
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    invoke-virtual {p0, p1, v1}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    :try_start_0
    invoke-virtual {v0}, Lud/b;->e()Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v0

    .line 262
    if-eqz v0, :cond_4

    .line 263
    .line 264
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    if-nez v1, :cond_3

    .line 269
    .line 270
    goto :goto_2

    .line 271
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .line 275
    .line 276
    const-string v3, "set externalCookie -> "

    .line 277
    .line 278
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    invoke-virtual {p2, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 289
    .line 290
    .line 291
    new-instance v1, Lorg/json/JSONObject;

    .line 292
    .line 293
    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    .line 297
    .line 298
    .line 299
    move-result-object v0

    .line 300
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 301
    .line 302
    .line 303
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    if-eqz v3, :cond_4

    .line 308
    .line 309
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 310
    .line 311
    .line 312
    move-result-object v3

    .line 313
    check-cast v3, Ljava/lang/String;

    .line 314
    .line 315
    new-instance v4, Ljava/lang/StringBuilder;

    .line 316
    .line 317
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    .line 322
    .line 323
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v3

    .line 330
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v3

    .line 337
    invoke-virtual {p0, p1, v3}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    .line 339
    .line 340
    goto :goto_1

    .line 341
    :catch_0
    move-exception v0

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    .line 343
    .line 344
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 345
    .line 346
    .line 347
    const-string v2, "parse ActCookie failed -> "

    .line 348
    .line 349
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    invoke-virtual {p2, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->g(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroid/webkit/CookieManager;->flush()V

    .line 367
    .line 368
    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    .line 370
    .line 371
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 372
    .line 373
    .line 374
    const-string v1, "loadUrlWithCookie -> reload("

    .line 375
    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    .line 378
    .line 379
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    const-string v1, ") url("

    .line 383
    .line 384
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    .line 386
    .line 387
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    .line 389
    .line 390
    const-string v1, ") Cookies("

    .line 391
    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 393
    .line 394
    .line 395
    invoke-virtual {p0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object p0

    .line 399
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    .line 401
    .line 402
    const/16 p0, 0x29

    .line 403
    .line 404
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object p0

    .line 411
    invoke-virtual {p2, p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 412
    .line 413
    .line 414
    if-eqz p3, :cond_5

    .line 415
    .line 416
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 417
    .line 418
    .line 419
    move-result-object p0

    .line 420
    check-cast p0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverWebviewBinding;

    .line 421
    .line 422
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverWebviewBinding;->c:Landroid/webkit/WebView;

    .line 423
    .line 424
    invoke-virtual {p0}, Landroid/webkit/WebView;->reload()V

    .line 425
    .line 426
    .line 427
    goto :goto_3

    .line 428
    :cond_5
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 429
    .line 430
    .line 431
    move-result-object p0

    .line 432
    check-cast p0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverWebviewBinding;

    .line 433
    .line 434
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverWebviewBinding;->c:Landroid/webkit/WebView;

    .line 435
    .line 436
    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    :goto_3
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 440
    .line 441
    return-object p0
.end method

.method private static final d0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const-string v0, "is_show_tab_view"

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
.end method

.method private final e0(Landroid/webkit/CookieManager;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/CookieManager;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    :try_start_0
    const-string v0, "removeAllCookie async"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/discover/j1;

    .line 7
    .line 8
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/j1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;Lkotlin/jvm/functions/Function0;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, v0}, Landroid/webkit/CookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    move-exception p1

    .line 16
    new-instance p2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v0, "removeAllCookie async exception -> "

    .line 22
    .line 23
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->g(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    return-void
.end method

.method private static final f0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;Lkotlin/jvm/functions/Function0;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "removeAllCookie callback,succeed="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    invoke-virtual {p0, p2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public l()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->q:I

    .line 2
    .line 3
    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    instance-of p1, p1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 14
    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    check-cast p1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move-object p1, v1

    .line 30
    :goto_0
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->C0()Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :cond_1
    iput-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->o:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;

    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 8

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->k:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const-string v0, "{\"h5_type\":2}"

    .line 9
    .line 10
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->R(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->k:Z

    .line 15
    .line 16
    :cond_0
    sget-object v1, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 17
    .line 18
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->j:Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->B(Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;)Landroid/os/Bundle;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    const-string v0, "from"

    .line 25
    .line 26
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->i:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {v3, v0, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 32
    .line 33
    const/4 v6, 0x4

    .line 34
    const/4 v7, 0x0

    .line 35
    const-string v2, "discover_show"

    .line 36
    .line 37
    const-wide/16 v4, 0x0

    .line 38
    .line 39
    invoke-static/range {v1 .. v7}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->o:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;

    .line 43
    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    const/high16 v1, 0x3f800000    # 1.0f

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    invoke-interface {v0, v1, v2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;->b(FZ)V

    .line 50
    .line 51
    .line 52
    :cond_1
    return-void
.end method

.method public p()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "DiscoverWebViewFragment"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->j:Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 12
    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const-string v1, ""

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const/16 v2, 0x5f

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->j:Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;->getTabDisplayName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v2, 0x0

    .line 38
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    return-object v0
.end method

.method public final receiveAcknowledgePurchaseResult(Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "result"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->m()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "receive AcknowledgePurchaseResult -> "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const-string p1, "{\"h5_type\":2,\"data\":{\"type\":2}}"

    .line 34
    .line 35
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->R(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final receiveAppStateEvent(Lcom/startshorts/androidplayer/bean/eventbus/AppStateEvent;)V
    .locals 3
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/AppStateEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->m()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "receive AppStateEvent -> "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Ljava/util/HashMap;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/AppStateEvent;->isOnForeground()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-eqz p1, :cond_1

    .line 43
    .line 44
    const/4 p1, 0x1

    .line 45
    goto :goto_0

    .line 46
    :cond_1
    const/4 p1, 0x2

    .line 47
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v1, "type"

    .line 52
    .line 53
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    sget-object p1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 59
    .line 60
    .line 61
    move-result-wide v1

    .line 62
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    const-string v1, "timestamp"

    .line 67
    .line 68
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 72
    .line 73
    new-instance p1, Lcom/startshorts/androidplayer/bean/act/ActCallH5Message;

    .line 74
    .line 75
    const/4 v1, 0x4

    .line 76
    invoke-direct {p1, v1, v0}, Lcom/startshorts/androidplayer/bean/act/ActCallH5Message;-><init>(ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    invoke-static {p1}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->R(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public final receiveRefreshAccountEvent(Lcom/startshorts/androidplayer/bean/eventbus/RefreshAccountEvent;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/RefreshAccountEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->m()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string p1, "receive RefreshAccountEvent"

    .line 14
    .line 15
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->j:Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 19
    .line 20
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;->getLinkUrl()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    if-eqz p1, :cond_1

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    invoke-direct {p0, p1, v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->a0(Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public final receiveRefreshSpecifiedDiscoverFragmentEvent(Lcom/startshorts/androidplayer/bean/eventbus/RefreshSpecifiedDiscoverFragmentEvent;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/eventbus/RefreshSpecifiedDiscoverFragmentEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lau/l;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->m()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->j:Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 14
    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshSpecifiedDiscoverFragmentEvent;->getTabId()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;->getTabId()Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-ne p1, v0, :cond_2

    .line 33
    .line 34
    const/4 p1, 0x0

    .line 35
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->m:Z

    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    check-cast p1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverWebviewBinding;

    .line 42
    .line 43
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverWebviewBinding;->c:Landroid/webkit/WebView;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/webkit/WebView;->reload()V

    .line 46
    .line 47
    .line 48
    :cond_2
    :goto_0
    return-void
.end method

.method public s()V
    .locals 3
    .annotation runtime Lms/c;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverWebviewBinding;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverWebviewBinding;->c:Landroid/webkit/WebView;

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
    invoke-virtual {p0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->r(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverWebviewBinding;

    .line 40
    .line 41
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverWebviewBinding;->c:Landroid/webkit/WebView;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->s()V

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method

.method public t()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->t()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->p:Z

    .line 6
    .line 7
    :try_start_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->X()V

    .line 8
    .line 9
    .line 10
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->Z()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->j:Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;->getLinkUrl()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->Y(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 29
    .line 30
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    const-string v3, "show DiscoverWebViewFragment failed -> "

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    const-string v2, "DiscoverWebViewFragment"

    .line 52
    .line 53
    invoke-virtual {v1, v2, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    :goto_0
    return-void
.end method

.method public v()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->v()V

    .line 2
    .line 3
    .line 4
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->p:Z

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    sget-object v0, Lce/j;->a:Lce/j;

    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Lce/j;->h(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Ljava/util/HashMap;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x3

    .line 27
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "type"

    .line 32
    .line 33
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    sget-object v1, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->K()J

    .line 39
    .line 40
    .line 41
    move-result-wide v1

    .line 42
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    const-string v2, "timestamp"

    .line 47
    .line 48
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 52
    .line 53
    new-instance v1, Lcom/startshorts/androidplayer/bean/act/ActCallH5Message;

    .line 54
    .line 55
    const/4 v2, 0x4

    .line 56
    invoke-direct {v1, v2, v0}, Lcom/startshorts/androidplayer/bean/act/ActCallH5Message;-><init>(ILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-static {v1}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-direct {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverWebViewFragment;->R(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseVDBFragment;->A()Landroidx/databinding/ViewDataBinding;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverWebviewBinding;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/FragmentDiscoverWebviewBinding;->c:Landroid/webkit/WebView;

    .line 73
    .line 74
    const-string v1, "about:blank"

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 83
    .line 84
    .line 85
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    new-instance v1, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v2, "release webview exception -> "

    .line 96
    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->g(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :goto_0
    return-void
.end method
