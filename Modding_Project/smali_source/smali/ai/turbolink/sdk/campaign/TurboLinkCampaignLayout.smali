.class public final Lai/turbolink/sdk/campaign/TurboLinkCampaignLayout;
.super Landroid/widget/FrameLayout;
.source "TurboLinkCampaignLayout.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private titleBack:Landroid/widget/Button;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private tvTitle:Landroid/widget/TextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private webview:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
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
    const-string v0, "attrs"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 12
    .line 13
    .line 14
    sget-object p2, Lai/turbolink/sdk/TurboLink$Campaign;->INSTANCE:Lai/turbolink/sdk/TurboLink$Campaign;

    .line 15
    .line 16
    invoke-virtual {p2}, Lai/turbolink/sdk/TurboLink$Campaign;->getNightMode()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    sget v0, Lai/turbolink/sdk/R$layout;->actionbar_night_turbolink:I

    .line 27
    .line 28
    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    sget v0, Lai/turbolink/sdk/R$layout;->actionbar_turbolink:I

    .line 37
    .line 38
    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    :goto_0
    sget p1, Lai/turbolink/sdk/R$id;->titleBack:I

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v0, "findViewById(R.id.titleBack)"

    .line 48
    .line 49
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    check-cast p1, Landroid/widget/Button;

    .line 53
    .line 54
    iput-object p1, p0, Lai/turbolink/sdk/campaign/TurboLinkCampaignLayout;->titleBack:Landroid/widget/Button;

    .line 55
    .line 56
    sget p1, Lai/turbolink/sdk/R$id;->tvTitle:I

    .line 57
    .line 58
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    const-string v0, "findViewById(R.id.tvTitle)"

    .line 63
    .line 64
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    check-cast p1, Landroid/widget/TextView;

    .line 68
    .line 69
    iput-object p1, p0, Lai/turbolink/sdk/campaign/TurboLinkCampaignLayout;->tvTitle:Landroid/widget/TextView;

    .line 70
    .line 71
    invoke-virtual {p2}, Lai/turbolink/sdk/TurboLink$Campaign;->getTitleSize()F

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextSize(F)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lai/turbolink/sdk/campaign/TurboLinkCampaignLayout;->titleBack:Landroid/widget/Button;

    .line 79
    .line 80
    new-instance p2, Lai/turbolink/sdk/campaign/k;

    .line 81
    .line 82
    invoke-direct {p2, p0}, Lai/turbolink/sdk/campaign/k;-><init>(Lai/turbolink/sdk/campaign/TurboLinkCampaignLayout;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    .line 87
    .line 88
    return-void
.end method

.method private static final _init_$lambda-0(Lai/turbolink/sdk/campaign/TurboLinkCampaignLayout;Landroid/view/View;)V
    .locals 2

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lai/turbolink/sdk/campaign/TurboLinkCampaignLayout;->webview:Landroid/webkit/WebView;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    const-string v1, "webview"

    .line 10
    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    move-object p1, v0

    .line 17
    :cond_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->canGoBack()Z

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    iget-object p0, p0, Lai/turbolink/sdk/campaign/TurboLinkCampaignLayout;->webview:Landroid/webkit/WebView;

    .line 24
    .line 25
    if-nez p0, :cond_1

    .line 26
    .line 27
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    move-object v0, p0

    .line 32
    :goto_0
    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string p1, "null cannot be cast to non-null type android.app.Activity"

    .line 41
    .line 42
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    check-cast p0, Landroid/app/Activity;

    .line 46
    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 48
    .line 49
    .line 50
    :goto_1
    return-void
.end method

.method public static synthetic a(Lai/turbolink/sdk/campaign/TurboLinkCampaignLayout;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lai/turbolink/sdk/campaign/TurboLinkCampaignLayout;->_init_$lambda-0(Lai/turbolink/sdk/campaign/TurboLinkCampaignLayout;Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final setBack(Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lai/turbolink/sdk/campaign/TurboLinkCampaignLayout;->titleBack:Landroid/widget/Button;

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget-object p1, p0, Lai/turbolink/sdk/campaign/TurboLinkCampaignLayout;->titleBack:Landroid/widget/Button;

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "title"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lai/turbolink/sdk/campaign/TurboLinkCampaignLayout;->tvTitle:Landroid/widget/TextView;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public final setWebView(Landroid/webkit/WebView;)V
    .locals 1
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "webview"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/campaign/TurboLinkCampaignLayout;->webview:Landroid/webkit/WebView;

    .line 7
    .line 8
    return-void
.end method
