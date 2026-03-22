.class public final Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$s;
.super Ljava/lang/Object;
.source "FragmentExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->h2(Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;Ljava/lang/String;)V
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
        "SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment\n*L\n1#1,20:1\n918#2,8:21\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

.field final synthetic b:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

.field final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$s;->a:Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$s;->b:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$s;->c:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$s;->a:Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskContent()Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x4

    .line 15
    if-ne v0, v1, :cond_1

    .line 16
    .line 17
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$s;->b:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 18
    .line 19
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->g1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    new-instance v1, Lcom/startshorts/androidplayer/viewmodel/reward/c$m;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$s;->b:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 26
    .line 27
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$s;->a:Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

    .line 32
    .line 33
    invoke-direct {v1, v2, v3}, Lcom/startshorts/androidplayer/viewmodel/reward/c$m;-><init>(Landroid/content/Context;Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->Q(Lcom/startshorts/androidplayer/viewmodel/reward/c;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$s;->b:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 41
    .line 42
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$s;->c:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$s;->a:Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;

    .line 45
    .line 46
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/ad/WatchAdBonusTask;->getTaskName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    const/4 v3, 0x1

    .line 51
    invoke-static {v0, v1, v2, v3}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->k1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 52
    .line 53
    .line 54
    :goto_1
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$s;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object v0
.end method
