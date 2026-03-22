.class public final Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$b;
.super Ljava/lang/Object;
.source "FragmentExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->J0()V
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
        "SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 SettingsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment\n*L\n1#1,20:1\n350#2,4:21\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;

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
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;

    .line 2
    .line 3
    new-instance v1, Lhi/b;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$b;->a:Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "requireContext(...)"

    .line 12
    .line 13
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v1, v2}, Lhi/b;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1}, Lfi/a;->show()V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;->E0(Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment;Lhi/b;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/settings/SettingsFragment$b;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object v0
.end method
