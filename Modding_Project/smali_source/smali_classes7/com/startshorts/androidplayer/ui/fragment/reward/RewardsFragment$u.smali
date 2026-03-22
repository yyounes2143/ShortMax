.class public final Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$u;
.super Ljava/lang/Object;
.source "RewardsFragment.kt"

# interfaces
.implements Lke/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->k2(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$u;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/hades/aar/auth/base/AuthType;)V
    .locals 2

    .line 1
    const-string v0, "authType"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/hades/aar/auth/base/AuthType;->FACEBOOK:Lcom/hades/aar/auth/base/AuthType;

    .line 7
    .line 8
    if-ne p1, v0, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$u;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->g1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->N()Landroidx/lifecycle/MutableLiveData;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/reward/j$i;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/reward/j$i;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget-object v0, Lcom/hades/aar/auth/base/AuthType;->GOOGLE:Lcom/hades/aar/auth/base/AuthType;

    .line 31
    .line 32
    if-ne p1, v0, :cond_1

    .line 33
    .line 34
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$u;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 35
    .line 36
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->g1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->N()Landroidx/lifecycle/MutableLiveData;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    new-instance v0, Lcom/startshorts/androidplayer/viewmodel/reward/j$i;

    .line 45
    .line 46
    const/4 v1, 0x4

    .line 47
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/reward/j$i;-><init>(I)V

    .line 48
    .line 49
    .line 50
    invoke-static {p1, v0}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lcom/hades/aar/auth/base/AuthType;ILjava/lang/String;)V
    .locals 0

    .line 1
    const-string p2, "authType"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$u;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 7
    .line 8
    invoke-virtual {p1, p3}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->x(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
