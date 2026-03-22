.class public final Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$d;
.super Ljava/lang/Object;
.source "FragmentExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->O1(Lkotlin/jvm/functions/Function0;)V
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
        "SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment\n*L\n1#1,20:1\n725#2,16:21\n767#2:37\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/jvm/functions/Function0;

.field final synthetic b:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$d;->a:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$d;->b:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

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
    .locals 10

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->a:Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/manager/purchase/Ad2PayPresent;->u()Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->getSkuResp()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;->getSubscribeResp()Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 26
    .line 27
    .line 28
    new-instance v2, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$g;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$d;->a:Lkotlin/jvm/functions/Function0;

    .line 31
    .line 32
    invoke-direct {v2, v1, v3}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$g;-><init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lkotlin/jvm/functions/Function0;)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$d;->b:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->d1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lve/g;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    new-instance v9, Lve/c;

    .line 42
    .line 43
    new-instance v6, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$f;

    .line 44
    .line 45
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$d;->b:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 46
    .line 47
    invoke-direct {v6, v3, v2, v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$f;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lkotlin/jvm/functions/Function0;Lcom/startshorts/androidplayer/bean/subs/Ad2PayConfig;)V

    .line 48
    .line 49
    .line 50
    const/4 v7, 0x3

    .line 51
    const/4 v8, 0x0

    .line 52
    const/4 v4, 0x0

    .line 53
    const/4 v5, 0x0

    .line 54
    move-object v3, v9

    .line 55
    invoke-direct/range {v3 .. v8}, Lve/c;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v9}, Lve/g;->m(Lve/c;)Z

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$d;->a:Lkotlin/jvm/functions/Function0;

    .line 63
    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    :cond_2
    :goto_1
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$d;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object v0
.end method
