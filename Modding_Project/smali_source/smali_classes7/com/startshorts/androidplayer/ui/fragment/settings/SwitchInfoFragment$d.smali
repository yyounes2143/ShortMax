.class public final Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$d;
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
        "SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 SwitchInfoFragment.kt\ncom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment\n*L\n1#1,20:1\n82#2,16:21\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;

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
    .locals 4

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager;->g()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const-string v2, "requireContext(...)"

    .line 16
    .line 17
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$c;

    .line 21
    .line 22
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;

    .line 23
    .line 24
    invoke-direct {v2, v3, v1}, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$c;-><init>(Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/manager/account/AccountListMergeManager;->o(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$d;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment;

    .line 32
    .line 33
    sget v1, Lcom/startshorts/androidplayer/R$string;->settings_fragment_account_switch_completed:I

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->w(I)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SwitchInfoFragment$d;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object v0
.end method
