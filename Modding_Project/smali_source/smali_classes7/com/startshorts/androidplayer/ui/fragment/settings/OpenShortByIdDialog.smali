.class public final Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "OpenShortByIdDialog.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final b:Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Lcom/startshorts/androidplayer/databinding/DialogOpenShortByIdBinding;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog;->b:Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic e(Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog;->l(Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic f(Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog;->n(Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic g(Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog;Landroid/view/View;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog;->m(Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog;Landroid/view/View;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic h(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static/range {p0 .. p5}, Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog;->k(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final i()Lcom/startshorts/androidplayer/databinding/DialogOpenShortByIdBinding;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog;->a:Lcom/startshorts/androidplayer/databinding/DialogOpenShortByIdBinding;

    .line 2
    .line 3
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final j()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog;->i()Lcom/startshorts/androidplayer/databinding/DialogOpenShortByIdBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogOpenShortByIdBinding;->a:Landroid/widget/EditText;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 16
    .line 17
    .line 18
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    sget-object v1, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->V0:Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v3, "requireActivity(...)"

    .line 29
    .line 30
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    new-instance v3, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;

    .line 34
    .line 35
    invoke-direct {v3}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;-><init>()V

    .line 36
    .line 37
    .line 38
    const/4 v4, 0x3

    .line 39
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setType(I)V

    .line 40
    .line 41
    .line 42
    new-instance v4, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;

    .line 43
    .line 44
    invoke-direct {v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4, v0}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;->setShortsId(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v4}, Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;->setShortsInfo(Lcom/startshorts/androidplayer/bean/immersion/ImmersionShortsInfo;)V

    .line 51
    .line 52
    .line 53
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 54
    .line 55
    invoke-virtual {v1, v2, v3}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity$a;->a(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/immersion/ImmersionParams;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :catch_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog;->i()Lcom/startshorts/androidplayer/databinding/DialogOpenShortByIdBinding;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v0, v0, Lcom/startshorts/androidplayer/databinding/DialogOpenShortByIdBinding;->a:Landroid/widget/EditText;

    .line 67
    .line 68
    const-string v1, ""

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    :goto_0
    return-void
.end method

.method private static final k(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lkotlin/text/Regex;

    .line 5
    .line 6
    const-string p2, "[0-9]*"

    .line 7
    .line 8
    invoke-direct {p1, p2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1, p0}, Lkotlin/text/Regex;->k(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    const/4 p0, 0x0

    .line 18
    :cond_0
    return-object p0
.end method

.method private static final l(Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/4 p1, 0x6

    .line 2
    if-eq p2, p1, :cond_1

    .line 3
    .line 4
    if-eqz p3, :cond_0

    .line 5
    .line 6
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/16 p2, 0x42

    .line 11
    .line 12
    if-ne p1, p2, :cond_0

    .line 13
    .line 14
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p0, 0x0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog;->j()V

    .line 24
    .line 25
    .line 26
    const/4 p0, 0x1

    .line 27
    :goto_1
    return p0
.end method

.method private static final m(Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog;Landroid/view/View;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog;->j()V

    .line 7
    .line 8
    .line 9
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 10
    .line 11
    return-object p0
.end method

.method private static final n(Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog;Landroid/view/View;)Lkotlin/Unit;
    .locals 3

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    const-string v0, "clipboard"

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    const-string v0, "null cannot be cast to non-null type android.content.ClipboardManager"

    .line 17
    .line 18
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    check-cast p1, Landroid/content/ClipboardManager;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    const/4 v1, 0x0

    .line 28
    if-eqz v0, :cond_4

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getPrimaryClipDescription()Landroid/content/ClipDescription;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_4

    .line 35
    .line 36
    const-string v2, "text/plain"

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    const/4 v2, 0x1

    .line 43
    if-ne v0, v2, :cond_4

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    const/4 v0, 0x0

    .line 50
    if-eqz p1, :cond_0

    .line 51
    .line 52
    invoke-virtual {p1, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    move-object p1, v0

    .line 58
    :goto_0
    if-eqz p1, :cond_1

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-eqz p1, :cond_1

    .line 65
    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    :cond_1
    if-eqz v0, :cond_3

    .line 71
    .line 72
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    if-nez p1, :cond_2

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    new-instance p1, Lkotlin/text/Regex;

    .line 80
    .line 81
    const-string v2, "[0-9]+"

    .line 82
    .line 83
    invoke-direct {p1, v2}, Lkotlin/text/Regex;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1, v0}, Lkotlin/text/Regex;->k(Ljava/lang/CharSequence;)Z

    .line 87
    .line 88
    .line 89
    move-result p1

    .line 90
    if-eqz p1, :cond_3

    .line 91
    .line 92
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog;->i()Lcom/startshorts/androidplayer/databinding/DialogOpenShortByIdBinding;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogOpenShortByIdBinding;->a:Landroid/widget/EditText;

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog;->i()Lcom/startshorts/androidplayer/databinding/DialogOpenShortByIdBinding;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    iget-object p0, p0, Lcom/startshorts/androidplayer/databinding/DialogOpenShortByIdBinding;->a:Landroid/widget/EditText;

    .line 106
    .line 107
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 108
    .line 109
    .line 110
    move-result p1

    .line 111
    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    const-string p1, "\u526a\u5207\u677f\u5185\u5bb9\u4e3a\u7a7a\u6216\u4e0d\u662f\u6570\u5b57"

    .line 120
    .line 121
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 122
    .line 123
    .line 124
    move-result-object p0

    .line 125
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 126
    .line 127
    .line 128
    goto :goto_2

    .line 129
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 130
    .line 131
    .line 132
    move-result-object p0

    .line 133
    const-string p1, "\u526a\u5207\u677f\u65e0\u6709\u6548\u6587\u672c"

    .line 134
    .line 135
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 140
    .line 141
    .line 142
    :goto_2
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 143
    .line 144
    return-object p0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/startshorts/androidplayer/databinding/DialogOpenShortByIdBinding;->b(Landroid/view/LayoutInflater;)Lcom/startshorts/androidplayer/databinding/DialogOpenShortByIdBinding;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog;->a:Lcom/startshorts/androidplayer/databinding/DialogOpenShortByIdBinding;

    .line 10
    .line 11
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog;->i()Lcom/startshorts/androidplayer/databinding/DialogOpenShortByIdBinding;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogOpenShortByIdBinding;->a:Landroid/widget/EditText;

    .line 16
    .line 17
    new-instance v0, Lwi/g;

    .line 18
    .line 19
    invoke-direct {v0}, Lwi/g;-><init>()V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    new-array v2, v1, [Landroid/text/InputFilter;

    .line 24
    .line 25
    const/4 v3, 0x0

    .line 26
    aput-object v0, v2, v3

    .line 27
    .line 28
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog;->i()Lcom/startshorts/androidplayer/databinding/DialogOpenShortByIdBinding;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/DialogOpenShortByIdBinding;->a:Landroid/widget/EditText;

    .line 36
    .line 37
    new-instance v0, Lwi/h;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lwi/h;-><init>(Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog;)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 43
    .line 44
    .line 45
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog;->i()Lcom/startshorts/androidplayer/databinding/DialogOpenShortByIdBinding;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object v2, p1, Lcom/startshorts/androidplayer/databinding/DialogOpenShortByIdBinding;->b:Landroid/widget/TextView;

    .line 50
    .line 51
    const-string p1, "go"

    .line 52
    .line 53
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    new-instance v5, Lwi/i;

    .line 57
    .line 58
    invoke-direct {v5, p0}, Lwi/i;-><init>(Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog;)V

    .line 59
    .line 60
    .line 61
    const/4 v6, 0x1

    .line 62
    const/4 v7, 0x0

    .line 63
    const-wide/16 v3, 0x0

    .line 64
    .line 65
    invoke-static/range {v2 .. v7}, Ljk/b0;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog;->i()Lcom/startshorts/androidplayer/databinding/DialogOpenShortByIdBinding;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    iget-object v2, p1, Lcom/startshorts/androidplayer/databinding/DialogOpenShortByIdBinding;->c:Landroid/widget/TextView;

    .line 73
    .line 74
    const-string p1, "readCopy"

    .line 75
    .line 76
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    new-instance v5, Lwi/j;

    .line 80
    .line 81
    invoke-direct {v5, p0}, Lwi/j;-><init>(Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog;)V

    .line 82
    .line 83
    .line 84
    invoke-static/range {v2 .. v7}, Ljk/b0;->c(Landroid/view/View;JLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    new-instance p1, Landroid/app/Dialog;

    .line 88
    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-direct {p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 97
    .line 98
    .line 99
    invoke-direct {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/OpenShortByIdDialog;->i()Lcom/startshorts/androidplayer/databinding/DialogOpenShortByIdBinding;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 108
    .line 109
    .line 110
    return-object p1
.end method

.method public onStart()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStart()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/16 v1, 0x320

    .line 17
    .line 18
    const/4 v2, -0x2

    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
