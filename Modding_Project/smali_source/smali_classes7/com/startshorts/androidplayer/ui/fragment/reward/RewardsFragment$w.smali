.class public final Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$w;
.super Ljava/lang/Object;
.source "RewardsFragment.kt"

# interfaces
.implements Lla/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment;->m2(Lcom/hades/aar/pagestate/StateViewGroup;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$w$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/hades/aar/pagestate/StateViewGroup;

.field final synthetic b:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/hades/aar/pagestate/StateViewGroup;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hades/aar/pagestate/StateViewGroup;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$w;->a:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$w;->b:Lkotlin/jvm/functions/Function0;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/hades/aar/pagestate/State;)V
    .locals 2

    .line 1
    const-string v0, "state"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$w$a;->$EnumSwitchMapping$0:[I

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    aget p1, v0, p1

    .line 13
    .line 14
    const/4 v0, 0x2

    .line 15
    const/4 v1, 0x0

    .line 16
    if-eq p1, v0, :cond_3

    .line 17
    .line 18
    const/4 v0, 0x3

    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    .line 21
    goto :goto_2

    .line 22
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$w;->a:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 23
    .line 24
    sget-object v0, Lcom/hades/aar/pagestate/State;->OTHER_ERROR:Lcom/hades/aar/pagestate/State;

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Lcom/hades/aar/pagestate/StateViewGroup;->a(Lcom/hades/aar/pagestate/State;)Ljava/lang/ref/WeakReference;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Lla/b;

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    move-object p1, v1

    .line 40
    :goto_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/view/pagestate/SOtherErrorView;

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    move-object v1, p1

    .line 45
    check-cast v1, Lcom/startshorts/androidplayer/ui/view/pagestate/SOtherErrorView;

    .line 46
    .line 47
    :cond_2
    if-eqz v1, :cond_6

    .line 48
    .line 49
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$w;->b:Lkotlin/jvm/functions/Function0;

    .line 50
    .line 51
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$w$c;

    .line 52
    .line 53
    invoke-direct {v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$w$c;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/ui/view/pagestate/SOtherErrorView;->setMOnRefreshListener(Lrj/a;)V

    .line 57
    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_3
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$w;->a:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 61
    .line 62
    sget-object v0, Lcom/hades/aar/pagestate/State;->NETWORK_ERROR:Lcom/hades/aar/pagestate/State;

    .line 63
    .line 64
    invoke-virtual {p1, v0}, Lcom/hades/aar/pagestate/StateViewGroup;->a(Lcom/hades/aar/pagestate/State;)Ljava/lang/ref/WeakReference;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    if-eqz p1, :cond_4

    .line 69
    .line 70
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    check-cast p1, Lla/b;

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    move-object p1, v1

    .line 78
    :goto_1
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/view/pagestate/SNetworkErrorView;

    .line 79
    .line 80
    if-eqz v0, :cond_5

    .line 81
    .line 82
    move-object v1, p1

    .line 83
    check-cast v1, Lcom/startshorts/androidplayer/ui/view/pagestate/SNetworkErrorView;

    .line 84
    .line 85
    :cond_5
    if-eqz v1, :cond_6

    .line 86
    .line 87
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$w;->b:Lkotlin/jvm/functions/Function0;

    .line 88
    .line 89
    new-instance v0, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$w$b;

    .line 90
    .line 91
    invoke-direct {v0, p1}, Lcom/startshorts/androidplayer/ui/fragment/reward/RewardsFragment$w$b;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/ui/view/pagestate/SNetworkErrorView;->setMOnRefreshListener(Lrj/a;)V

    .line 95
    .line 96
    .line 97
    :cond_6
    :goto_2
    return-void
.end method
