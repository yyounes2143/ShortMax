.class public final Lcom/startshorts/androidplayer/ui/activity/subs/HomeTurboLinkFloatView;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "HomeTurboLinkFloatView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/activity/subs/HomeTurboLinkFloatView$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final c:Lcom/startshorts/androidplayer/ui/activity/subs/HomeTurboLinkFloatView$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Lcom/startshorts/androidplayer/databinding/ViewTurbolinkFloatBinding;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/subs/HomeTurboLinkFloatView$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/activity/subs/HomeTurboLinkFloatView$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/activity/subs/HomeTurboLinkFloatView;->c:Lcom/startshorts/androidplayer/ui/activity/subs/HomeTurboLinkFloatView$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const/4 p2, 0x1

    .line 14
    invoke-static {p1, p0, p2}, Lcom/startshorts/androidplayer/databinding/ViewTurbolinkFloatBinding;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/startshorts/androidplayer/databinding/ViewTurbolinkFloatBinding;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string p2, "inflate(...)"

    .line 19
    .line 20
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/HomeTurboLinkFloatView;->a:Lcom/startshorts/androidplayer/databinding/ViewTurbolinkFloatBinding;

    .line 24
    .line 25
    const-string p1, ""

    .line 26
    .line 27
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/HomeTurboLinkFloatView;->b:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {p0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public static synthetic q(Lcom/startshorts/androidplayer/ui/activity/subs/HomeTurboLinkFloatView;Ljava/lang/String;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/subs/HomeTurboLinkFloatView;->t(Lcom/startshorts/androidplayer/ui/activity/subs/HomeTurboLinkFloatView;Ljava/lang/String;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final s(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/subs/HomeTurboLinkFloatView;->a:Lcom/startshorts/androidplayer/databinding/ViewTurbolinkFloatBinding;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/startshorts/androidplayer/databinding/ViewTurbolinkFloatBinding;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 4
    .line 5
    const-string v0, "ivTurbolink"

    .line 6
    .line 7
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    new-instance v4, Lci/f;

    .line 11
    .line 12
    invoke-direct {v4, p0, p2}, Lci/f;-><init>(Lcom/startshorts/androidplayer/ui/activity/subs/HomeTurboLinkFloatView;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v5, 0x1

    .line 16
    const/4 v6, 0x0

    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    invoke-static/range {v1 .. v6}, Ljk/b0;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    sget-object p2, Lkk/f;->a:Lkk/f;

    .line 23
    .line 24
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/subs/HomeTurboLinkFloatView;->a:Lcom/startshorts/androidplayer/databinding/ViewTurbolinkFloatBinding;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/ViewTurbolinkFloatBinding;->b:Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 27
    .line 28
    new-instance v1, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;

    .line 29
    .line 30
    invoke-direct {v1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setUrl(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->icon_turbolink:I

    .line 37
    .line 38
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setPlaceholderResId(I)V

    .line 39
    .line 40
    .line 41
    const/4 p1, 0x1

    .line 42
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerTransform(Z)V

    .line 43
    .line 44
    .line 45
    const/4 p1, 0x0

    .line 46
    invoke-virtual {v1, p1}, Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;->setCornerRadius(F)V

    .line 47
    .line 48
    .line 49
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 50
    .line 51
    invoke-virtual {p2, v0, v1}, Lkk/f;->A(Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Lcom/startshorts/androidplayer/bean/fresco/FrescoConfig;)Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private static final t(Lcom/startshorts/androidplayer/ui/activity/subs/HomeTurboLinkFloatView;Ljava/lang/String;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p2, Lng/g;->a:Lng/g;

    .line 7
    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    const-string v0, "getContext(...)"

    .line 13
    .line 14
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p0, p1}, Lng/g;->d(Landroid/content/Context;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    sget-object p0, Lcom/startshorts/androidplayer/repo/config/appConfig/TurboLinkRepo;->a:Lcom/startshorts/androidplayer/repo/config/appConfig/TurboLinkRepo;

    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/config/appConfig/TurboLinkRepo;->d()V

    .line 23
    .line 24
    .line 25
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 26
    .line 27
    return-object p0
.end method


# virtual methods
.method public final getBinding()Lcom/startshorts/androidplayer/databinding/ViewTurbolinkFloatBinding;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/subs/HomeTurboLinkFloatView;->a:Lcom/startshorts/androidplayer/databinding/ViewTurbolinkFloatBinding;

    .line 2
    .line 3
    return-object v0
.end method

.method public final r(Ljava/lang/String;)V
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "tabName"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/HomeTurboLinkFloatView;->b:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "DISCOVER"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-nez p1, :cond_0

    .line 15
    .line 16
    invoke-static {p0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    sget-object p1, Lng/e;->a:Lng/e;

    .line 21
    .line 22
    const-string v0, "turboLinkSwitch"

    .line 23
    .line 24
    const-string v1, ""

    .line 25
    .line 26
    invoke-virtual {p1, v0, v1}, Lng/e;->i(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/String;

    .line 31
    .line 32
    const-string v2, "turboLinkActivityUrl"

    .line 33
    .line 34
    invoke-virtual {p1, v2, v1}, Lng/e;->i(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    check-cast v2, Ljava/lang/String;

    .line 39
    .line 40
    const-string v3, "turboLinkActivityLogo"

    .line 41
    .line 42
    invoke-virtual {p1, v3, v1}, Lng/e;->i(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    check-cast v3, Ljava/lang/String;

    .line 47
    .line 48
    const-string v4, "turboLinkLanguage"

    .line 49
    .line 50
    invoke-virtual {p1, v4, v1}, Lng/e;->i(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    check-cast p1, Ljava/lang/String;

    .line 55
    .line 56
    const-string v1, "1"

    .line 57
    .line 58
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-lez v0, :cond_2

    .line 69
    .line 70
    invoke-direct {p0, v3, v2}, Lcom/startshorts/androidplayer/ui/activity/subs/HomeTurboLinkFloatView;->s(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-lez v0, :cond_1

    .line 78
    .line 79
    sget-object v0, Lng/g;->a:Lng/g;

    .line 80
    .line 81
    invoke-virtual {v0, p1}, Lng/g;->k(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_1
    invoke-static {p0}, Ljk/b0;->l(Landroid/view/View;)V

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_2
    invoke-static {p0}, Ljk/b0;->d(Landroid/view/View;)V

    .line 89
    .line 90
    .line 91
    :goto_0
    return-void
.end method

.method public final setBinding(Lcom/startshorts/androidplayer/databinding/ViewTurbolinkFloatBinding;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/databinding/ViewTurbolinkFloatBinding;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/HomeTurboLinkFloatView;->a:Lcom/startshorts/androidplayer/databinding/ViewTurbolinkFloatBinding;

    .line 7
    .line 8
    return-void
.end method
