.class public final Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$k;
.super Ljava/lang/Object;
.source "FragmentExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->Y()V
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
        "SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 ProfileLoginGuide2DialogFragment.kt\ncom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment\n*L\n1#1,20:1\n194#2,25:21\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;

    .line 2
    .line 3
    const-string v1, "phone"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->J(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->I(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer;->p:Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "requireContext(...)"

    .line 22
    .line 23
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sget-object v2, Lcom/startshorts/androidplayer/ui/fragment/a;->a:Lcom/startshorts/androidplayer/ui/fragment/a;

    .line 27
    .line 28
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/ui/fragment/a;->i()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    new-instance v3, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;

    .line 33
    .line 34
    const-string v4, "auth_reason"

    .line 35
    .line 36
    const-string v5, "1"

    .line 37
    .line 38
    invoke-direct {v3, v4, v5}, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    new-instance v4, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;

    .line 42
    .line 43
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;

    .line 44
    .line 45
    invoke-static {v5}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->F(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    const-string v6, ""

    .line 50
    .line 51
    if-nez v5, :cond_0

    .line 52
    .line 53
    move-object v5, v6

    .line 54
    :cond_0
    const-string v7, "auth_reason_phone"

    .line 55
    .line 56
    invoke-direct {v4, v7, v5}, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    new-instance v5, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;

    .line 60
    .line 61
    iget-object v7, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;

    .line 62
    .line 63
    invoke-static {v7}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->D(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v7

    .line 67
    if-nez v7, :cond_1

    .line 68
    .line 69
    move-object v7, v6

    .line 70
    :cond_1
    const-string v8, "auth_reason_area_code"

    .line 71
    .line 72
    invoke-direct {v5, v8, v7}, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    new-instance v7, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;

    .line 76
    .line 77
    iget-object v8, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;

    .line 78
    .line 79
    invoke-static {v8}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->E(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v8

    .line 83
    if-nez v8, :cond_2

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_2
    move-object v6, v8

    .line 87
    :goto_0
    const-string v8, "auth_reason_country_code"

    .line 88
    .line 89
    invoke-direct {v7, v8, v6}, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    new-instance v6, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;

    .line 93
    .line 94
    iget-object v8, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;

    .line 95
    .line 96
    invoke-static {v8}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->G(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    const-string v9, "from"

    .line 101
    .line 102
    invoke-direct {v6, v9, v8}, Lcom/startshorts/androidplayer/bean/bundle/StringBundle;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const/4 v8, 0x5

    .line 106
    new-array v8, v8, [Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;

    .line 107
    .line 108
    const/4 v9, 0x0

    .line 109
    aput-object v3, v8, v9

    .line 110
    .line 111
    const/4 v3, 0x1

    .line 112
    aput-object v4, v8, v3

    .line 113
    .line 114
    const/4 v3, 0x2

    .line 115
    aput-object v5, v8, v3

    .line 116
    .line 117
    const/4 v3, 0x3

    .line 118
    aput-object v7, v8, v3

    .line 119
    .line 120
    const/4 v3, 0x4

    .line 121
    aput-object v6, v8, v3

    .line 122
    .line 123
    invoke-virtual {v0, v1, v2, v8}, Lcom/startshorts/androidplayer/ui/activity/base/FragmentContainer$a;->c(Landroid/content/Context;Ljava/lang/String;[Lcom/startshorts/androidplayer/bean/bundle/IFragmentBundle;)Landroid/content/Intent;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$k;->a:Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;

    .line 128
    .line 129
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;->H(Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment;)Landroidx/activity/result/ActivityResultLauncher;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v1, v0}, Landroidx/activity/result/ActivityResultLauncher;->launch(Ljava/lang/Object;)V

    .line 134
    .line 135
    .line 136
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/auth/ProfileLoginGuide2DialogFragment$k;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object v0
.end method
