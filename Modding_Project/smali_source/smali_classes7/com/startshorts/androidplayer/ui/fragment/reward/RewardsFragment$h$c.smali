.class public final Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$c;
.super Ljava/lang/Object;
.source "FragmentExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h;->c(ILcom/startshorts/androidplayer/bean/checkin/CheckInInfo;Z)V
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
        "SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$createRecyclerAdapter$1\n*L\n1#1,20:1\n520#2,11:21\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;ZILcom/startshorts/androidplayer/bean/checkin/CheckInInfo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$c;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$c;->b:Z

    .line 4
    .line 5
    iput p3, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$c;->c:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$c;->d:Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$c;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->g1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v8, Lcom/startshorts/androidplayer/viewmodel/reward/c$b;

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$c;->b:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    move-object v2, v1

    .line 15
    goto :goto_1

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$c;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    goto :goto_0

    .line 23
    :goto_1
    iget v3, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$c;->c:I

    .line 24
    .line 25
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$c;->d:Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;->getDay()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$c;->d:Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;

    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;->getBonus()I

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$c;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 38
    .line 39
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->f1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    iget-boolean v7, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$c;->b:Z

    .line 44
    .line 45
    move-object v1, v8

    .line 46
    invoke-direct/range {v1 .. v7}, Lcom/startshorts/androidplayer/viewmodel/reward/c$b;-><init>(Landroid/content/Context;ILjava/lang/String;ILjava/lang/String;Z)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0, v8}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->Q(Lcom/startshorts/androidplayer/viewmodel/reward/c;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$h$c;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object v0
.end method
