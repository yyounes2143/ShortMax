.class public final Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$y0;
.super Ljava/lang/Object;
.source "FragmentExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->L2(Lcom/startshorts/androidplayer/bean/task/Task;)V
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
        "SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment\n*L\n1#1,20:1\n798#2,12:21\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

.field final synthetic b:Lcom/startshorts/androidplayer/bean/task/Task;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/task/Task;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$y0;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$y0;->b:Lcom/startshorts/androidplayer/bean/task/Task;

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
    new-instance v0, Lji/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$y0;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "requireActivity(...)"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$y0;->b:Lcom/startshorts/androidplayer/bean/task/Task;

    .line 15
    .line 16
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/task/Task;->getId()I

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$a1;

    .line 21
    .line 22
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$y0;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 23
    .line 24
    invoke-direct {v3, v4}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$a1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V

    .line 25
    .line 26
    .line 27
    const-string v4, "task_center"

    .line 28
    .line 29
    invoke-direct {v0, v1, v4, v2, v3}, Lji/a;-><init>(Landroid/app/Activity;Ljava/lang/String;ILji/a$b;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lji/a;->show()V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$y0;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object v0
.end method
