.class public final Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$d;
.super Ljava/lang/Object;
.source "DiscoverRankingViewPagerItemAdapter.kt"

# interfaces
.implements Lla/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter;->T(Lcom/hades/aar/pagestate/StateViewGroup;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$d$a;
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$d;->a:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$d;->b:Lkotlin/jvm/functions/Function0;

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
    const-string/jumbo v0, "state"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    sget-object v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$d$a;->$EnumSwitchMapping$0:[I

    .line 8
    .line 9
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    aget p1, v0, p1

    .line 14
    .line 15
    const/4 v0, 0x2

    .line 16
    const/4 v1, 0x0

    .line 17
    if-eq p1, v0, :cond_3

    .line 18
    .line 19
    const/4 v0, 0x3

    .line 20
    if-eq p1, v0, :cond_0

    .line 21
    .line 22
    goto :goto_2

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$d;->a:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 24
    .line 25
    sget-object v0, Lcom/hades/aar/pagestate/State;->OTHER_ERROR:Lcom/hades/aar/pagestate/State;

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/hades/aar/pagestate/StateViewGroup;->a(Lcom/hades/aar/pagestate/State;)Ljava/lang/ref/WeakReference;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lla/b;

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move-object p1, v1

    .line 41
    :goto_0
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/view/pagestate/SOtherErrorView;

    .line 42
    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    move-object v1, p1

    .line 46
    check-cast v1, Lcom/startshorts/androidplayer/ui/view/pagestate/SOtherErrorView;

    .line 47
    .line 48
    :cond_2
    if-eqz v1, :cond_6

    .line 49
    .line 50
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$d;->b:Lkotlin/jvm/functions/Function0;

    .line 51
    .line 52
    new-instance v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$d$c;

    .line 53
    .line 54
    invoke-direct {v0, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$d$c;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/ui/view/pagestate/SOtherErrorView;->setMOnRefreshListener(Lrj/a;)V

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_3
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$d;->a:Lcom/hades/aar/pagestate/StateViewGroup;

    .line 62
    .line 63
    sget-object v0, Lcom/hades/aar/pagestate/State;->NETWORK_ERROR:Lcom/hades/aar/pagestate/State;

    .line 64
    .line 65
    invoke-virtual {p1, v0}, Lcom/hades/aar/pagestate/StateViewGroup;->a(Lcom/hades/aar/pagestate/State;)Ljava/lang/ref/WeakReference;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-eqz p1, :cond_4

    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    check-cast p1, Lla/b;

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_4
    move-object p1, v1

    .line 79
    :goto_1
    instance-of v0, p1, Lcom/startshorts/androidplayer/ui/view/pagestate/SNetworkErrorView;

    .line 80
    .line 81
    if-eqz v0, :cond_5

    .line 82
    .line 83
    move-object v1, p1

    .line 84
    check-cast v1, Lcom/startshorts/androidplayer/ui/view/pagestate/SNetworkErrorView;

    .line 85
    .line 86
    :cond_5
    if-eqz v1, :cond_6

    .line 87
    .line 88
    iget-object p1, p0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$d;->b:Lkotlin/jvm/functions/Function0;

    .line 89
    .line 90
    new-instance v0, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$d$b;

    .line 91
    .line 92
    invoke-direct {v0, p1}, Lcom/startshorts/androidplayer/adapter/discover/DiscoverRankingViewPagerItemAdapter$d$b;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v0}, Lcom/startshorts/androidplayer/ui/view/pagestate/SNetworkErrorView;->setMOnRefreshListener(Lrj/a;)V

    .line 96
    .line 97
    .line 98
    :cond_6
    :goto_2
    return-void
.end method
