.class public final Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$f;
.super Ljava/lang/Object;
.source "FragmentExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;-><init>()V
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
        "SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 SwitchInfoFragment.kt\ncom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment\n*L\n1#1,20:1\n60#2,17:21\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;

.field final synthetic b:Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$f;->a:Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$f;->b:Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;

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
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$f;->a:Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->getBindType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    if-eq v0, v1, :cond_2

    .line 10
    .line 11
    const/16 v1, 0x14

    .line 12
    .line 13
    if-eq v0, v1, :cond_1

    .line 14
    .line 15
    const/16 v1, 0x3c

    .line 16
    .line 17
    if-eq v0, v1, :cond_0

    .line 18
    .line 19
    const-string v0, ""

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v0, "autoLoginPhone"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-string v0, "autoLoginFaceBook"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const-string v0, "autoLoginGoogle"

    .line 29
    .line 30
    :goto_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$f;->a:Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/auth/SwitchInfo;->getProviderId()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$f;->b:Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;

    .line 37
    .line 38
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const-string v3, "requireContext(...)"

    .line 43
    .line 44
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    new-instance v3, Landroid/content/Intent;

    .line 48
    .line 49
    const-class v4, Lcom/startshorts/androidplayer/ui/activity/auth/LoginActivity;

    .line 50
    .line 51
    invoke-direct {v3, v2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 52
    .line 53
    .line 54
    const-string v4, "from"

    .line 55
    .line 56
    const-string v5, "login_page"

    .line 57
    .line 58
    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    .line 60
    .line 61
    const-string v4, "autoLogin"

    .line 62
    .line 63
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 64
    .line 65
    .line 66
    const-string v0, "ex_phone"

    .line 67
    .line 68
    invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 72
    .line 73
    .line 74
    invoke-static {v2}, Ljk/d;->a(Landroid/content/Context;)Landroidx/appcompat/app/AppCompatActivity;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    if-eqz v0, :cond_3

    .line 79
    .line 80
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 81
    .line 82
    .line 83
    :cond_3
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$f;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object v0
.end method
