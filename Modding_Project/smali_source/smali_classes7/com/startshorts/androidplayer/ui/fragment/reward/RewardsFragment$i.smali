.class public final Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$i;
.super Ljava/lang/Object;
.source "FragmentExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->a2()V
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
        "SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment\n*L\n1#1,20:1\n1414#2,8:21\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

.field final synthetic b:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$i;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$i;->b:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$i;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->g1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/reward/c$c;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$i;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$i;->b:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 16
    .line 17
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$i;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 18
    .line 19
    invoke-static {v4}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->c1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-direct {v1, v2, v3, v4}, Lcom/startshorts/androidplayer/viewmodel/reward/c$c;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->Q(Lcom/startshorts/androidplayer/viewmodel/reward/c;)V

    .line 27
    .line 28
    .line 29
    sget-object v0, Lcom/startshorts/androidplayer/manager/configure/ad/c;->a:Lcom/startshorts/androidplayer/manager/configure/ad/c;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/configure/ad/c;->n()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$i;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object v0
.end method
