.class final Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadTabs$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DiscoverViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;->M()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lgt/g0;",
        "Lrs/c<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.viewmodel.discover.DiscoverViewModel$loadTabs$2"
    f = "DiscoverViewModel.kt"
    l = {
        0x75,
        0x7a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:Z

.field i:Ljava/lang/Object;

.field j:Ljava/lang/Object;

.field k:I

.field final synthetic l:Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadTabs$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadTabs$2;->l:Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lrs/c<",
            "*>;)",
            "Lrs/c<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadTabs$2;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadTabs$2;->l:Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;

    .line 4
    .line 5
    invoke-direct {p1, v0, p2}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadTabs$2;-><init>(Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public final invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lgt/g0;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadTabs$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadTabs$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadTabs$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadTabs$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadTabs$2;->k:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadTabs$2;->h:Z

    .line 16
    .line 17
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadTabs$2;->j:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadTabs$2;->i:Ljava/lang/Object;

    .line 22
    .line 23
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    check-cast p1, Lkotlin/Result;

    .line 27
    .line 28
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    goto :goto_1

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 36
    .line 37
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    throw p1

    .line 41
    :cond_1
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadTabs$2;->h:Z

    .line 42
    .line 43
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    check-cast p1, Lkotlin/Result;

    .line 47
    .line 48
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    move v5, v1

    .line 53
    move-object v1, p1

    .line 54
    move p1, v5

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    sget-object p1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->w0()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    sget-object v1, Lcom/startshorts/androidplayer/manager/account/AccountManager;->a:Lcom/startshorts/androidplayer/manager/account/AccountManager;

    .line 66
    .line 67
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadTabs$2;->h:Z

    .line 68
    .line 69
    iput v3, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadTabs$2;->k:I

    .line 70
    .line 71
    invoke-virtual {v1, p0}, Lcom/startshorts/androidplayer/manager/account/AccountManager;->n(Lrs/c;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    if-ne v1, v0, :cond_3

    .line 76
    .line 77
    return-object v0

    .line 78
    :cond_3
    :goto_0
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadTabs$2;->l:Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;

    .line 79
    .line 80
    invoke-static {v1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-eqz v4, :cond_5

    .line 85
    .line 86
    move-object v4, v1

    .line 87
    check-cast v4, Ljava/lang/Boolean;

    .line 88
    .line 89
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 90
    .line 91
    .line 92
    if-eqz p1, :cond_5

    .line 93
    .line 94
    sget-object v4, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->a:Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;

    .line 95
    .line 96
    iput-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadTabs$2;->i:Ljava/lang/Object;

    .line 97
    .line 98
    iput-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadTabs$2;->j:Ljava/lang/Object;

    .line 99
    .line 100
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadTabs$2;->h:Z

    .line 101
    .line 102
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadTabs$2;->k:I

    .line 103
    .line 104
    const/4 v2, 0x0

    .line 105
    invoke-virtual {v4, v2, p0}, Lcom/startshorts/androidplayer/repo/discover/DiscoverRepo;->q(ZLrs/c;)Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    if-ne v2, v0, :cond_4

    .line 110
    .line 111
    return-object v0

    .line 112
    :cond_4
    move v0, p1

    .line 113
    move-object p1, v2

    .line 114
    move-object v2, v1

    .line 115
    move-object v1, v3

    .line 116
    :goto_1
    invoke-static {v1, p1}, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;->E(Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    move p1, v0

    .line 120
    move-object v1, v2

    .line 121
    :cond_5
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel$loadTabs$2;->l:Lcom/startshorts/androidplayer/viewmodel/discover/DiscoverViewModel;

    .line 122
    .line 123
    invoke-static {v1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    if-eqz v1, :cond_7

    .line 128
    .line 129
    if-nez p1, :cond_6

    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    const-string v2, "Job was cancelled"

    .line 136
    .line 137
    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    if-eqz p1, :cond_6

    .line 142
    .line 143
    goto :goto_2

    .line 144
    :cond_6
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->z(Ljava/lang/Throwable;)V

    .line 145
    .line 146
    .line 147
    :cond_7
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 148
    .line 149
    return-object p1
.end method
