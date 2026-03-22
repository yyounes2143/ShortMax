.class public final Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$d0;
.super Ljava/lang/Object;
.source "FragmentExt.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->onResume()V
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
        "SMAP\nFragmentExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FragmentExt.kt\ncom/startshorts/androidplayer/utils/ext/FragmentExtKt$checkOnStarted$3\n+ 2 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,20:1\n1365#2,5:21\n1370#2,11:29\n2632#3,3:26\n*S KotlinDebug\n*F\n+ 1 RewardsFragment.kt\ncom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment\n*L\n1369#1:26,3\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$d0;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

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
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$d0;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->e1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lcom/startshorts/androidplayer/bean/task/Task;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_5

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/bean/task/Task;->getTaskType()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->t0()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    sget-object v2, Lud/b;->a:Lud/b;

    .line 20
    .line 21
    invoke-virtual {v2, v1}, Lud/b;->x1(Ljava/lang/String;)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    check-cast v2, Ljava/util/Collection;

    .line 28
    .line 29
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->g1(Ljava/util/Collection;)Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-nez v2, :cond_1

    .line 34
    .line 35
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    :cond_1
    move-object v3, v2

    .line 41
    check-cast v3, Ljava/lang/Iterable;

    .line 42
    .line 43
    instance-of v4, v3, Ljava/util/Collection;

    .line 44
    .line 45
    if-eqz v4, :cond_2

    .line 46
    .line 47
    move-object v4, v3

    .line 48
    check-cast v4, Ljava/util/Collection;

    .line 49
    .line 50
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-eqz v4, :cond_2

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 62
    .line 63
    .line 64
    move-result v4

    .line 65
    if-eqz v4, :cond_4

    .line 66
    .line 67
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    check-cast v4, Ljava/lang/Number;

    .line 72
    .line 73
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    .line 74
    .line 75
    .line 76
    move-result v4

    .line 77
    if-ne v4, v0, :cond_3

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    :goto_1
    sget-object v3, Lud/b;->a:Lud/b;

    .line 88
    .line 89
    invoke-virtual {v3, v1, v2}, Lud/b;->K4(Ljava/lang/String;Ljava/util/List;)V

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$d0;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 93
    .line 94
    invoke-static {v1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->g1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;)Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-virtual {v1}, Lcom/startshorts/androidplayer/viewmodel/reward/RewardsViewModel;->N()Landroidx/lifecycle/MutableLiveData;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/reward/j$j;

    .line 103
    .line 104
    invoke-direct {v2, v0}, Lcom/startshorts/androidplayer/viewmodel/reward/j$j;-><init>(I)V

    .line 105
    .line 106
    .line 107
    invoke-static {v1, v2}, Ljk/o;->b(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$d0;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 111
    .line 112
    const/4 v1, 0x0

    .line 113
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->w1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Z)V

    .line 114
    .line 115
    .line 116
    sget-object v0, Lud/a;->a:Lud/a;

    .line 117
    .line 118
    const/4 v1, 0x1

    .line 119
    invoke-virtual {v0, v1}, Lud/a;->D0(Z)V

    .line 120
    .line 121
    .line 122
    :cond_5
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$d0;->a:Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;

    .line 123
    .line 124
    const/4 v1, 0x0

    .line 125
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->v1(Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;Lcom/startshorts/androidplayer/bean/task/Task;)V

    .line 126
    .line 127
    .line 128
    return-void
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$d0;->a()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 5
    .line 6
    return-object v0
.end method
