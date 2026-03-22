.class public final Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$f$b;
.super Ljava/lang/Object;
.source "FragmentExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$f;->a(Lkotlin/jvm/functions/Function0;)Ljava/lang/Boolean;
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
        "SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$checkShowAd2PayDialog$1$1\n*L\n1#1,20:1\n748#2,14:21\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;

.field final synthetic b:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

.field final synthetic c:Lkotlin/jvm/functions/Function0;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$f$b;->a:Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$f$b;->b:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$f$b;->c:Lkotlin/jvm/functions/Function0;

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
    .locals 3

    .line 1
    const-string v0, "C"

    .line 2
    .line 3
    :try_start_0
    sget-object v1, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->a:Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->m(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {v1, v0, v2}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->y(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$f$b;->a:Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->getSubscribeResp()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$f$b;->b:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$f$b;->a:Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$f$b;->c:Lkotlin/jvm/functions/Function0;

    .line 25
    .line 26
    invoke-static {v0, v1, v2}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->X0(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;Lkotlin/jvm/functions/Function0;)Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2SubscribeDialog;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$f$b;->b:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$f$b;->a:Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;

    .line 34
    .line 35
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$f$b;->c:Lkotlin/jvm/functions/Function0;

    .line 36
    .line 37
    invoke-static {v0, v1, v2}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->W0(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;Lkotlin/jvm/functions/Function0;)Lcom/startshorts/androidplayer/ui/fragment/purchase/Ad2CoinsDialog;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$f$b;->b:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 50
    .line 51
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    invoke-virtual {v0, v2, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :catch_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$f$b;->c:Lkotlin/jvm/functions/Function0;

    .line 60
    .line 61
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    :goto_1
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$f$b;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object v0
.end method
