.class public final Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$s0;
.super Ljava/lang/Object;
.source "FragmentExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->J2(Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;)V
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
        "SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment\n*L\n1#1,20:1\n1075#2,2:21\n1105#2:23\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

.field final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic c:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$s0;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$s0;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$s0;->c:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

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
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$s0;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->d1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lve/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v7, Lve/c;

    .line 8
    .line 9
    new-instance v4, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$u0;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$s0;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$s0;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 14
    .line 15
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$s0;->c:Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;

    .line 16
    .line 17
    invoke-direct {v4, v1, v2, v3}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$u0;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lkotlin/jvm/internal/Ref$BooleanRef;Lcom/startshorts/androidplayer/bean/checkin/SignInAdInfoResult;)V

    .line 18
    .line 19
    .line 20
    const/4 v5, 0x3

    .line 21
    const/4 v6, 0x0

    .line 22
    const/4 v2, 0x0

    .line 23
    const/4 v3, 0x0

    .line 24
    move-object v1, v7

    .line 25
    invoke-direct/range {v1 .. v6}, Lve/c;-><init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v7}, Lve/g;->m(Lve/c;)Z

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$s0;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object v0
.end method
