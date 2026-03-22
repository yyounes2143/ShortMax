.class final Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "RoutingViewModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel$process$1$4"
    f = "RoutingViewModel.kt"
    l = {
        0xc8,
        0xcb,
        0xd0
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;

.field final synthetic j:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlinx/coroutines/r;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic k:Lcom/startshorts/androidplayer/viewmodel/routing/b;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/startshorts/androidplayer/viewmodel/routing/b;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlinx/coroutines/r;",
            ">;",
            "Lcom/startshorts/androidplayer/viewmodel/routing/b;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$4;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$4;->i:Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$4;->j:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$4;->k:Lcom/startshorts/androidplayer/viewmodel/routing/b;

    .line 6
    .line 7
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3
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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$4;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$4;->i:Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$4;->j:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$4;->k:Lcom/startshorts/androidplayer/viewmodel/routing/b;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$4;-><init>(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/startshorts/androidplayer/viewmodel/routing/b;Lrs/c;)V

    .line 10
    .line 11
    .line 12
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$4;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$4;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$4;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$4;->h:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    if-eq v1, v4, :cond_2

    .line 13
    .line 14
    if-eq v1, v3, :cond_1

    .line 15
    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$4;->i:Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;

    .line 42
    .line 43
    const-string v1, "loadContentStart -> scene=act p1"

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$4;->i:Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->I(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;)Landroidx/lifecycle/MutableLiveData;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    instance-of p1, p1, Lcom/startshorts/androidplayer/viewmodel/routing/a$d;

    .line 59
    .line 60
    if-eqz p1, :cond_8

    .line 61
    .line 62
    sget-object p1, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->j:Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion;

    .line 63
    .line 64
    iput v4, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$4;->h:I

    .line 65
    .line 66
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion;->d(Lrs/c;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    if-ne p1, v0, :cond_5

    .line 71
    .line 72
    return-object v0

    .line 73
    :cond_5
    :goto_1
    check-cast p1, Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 74
    .line 75
    if-eqz p1, :cond_7

    .line 76
    .line 77
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$4;->i:Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;

    .line 78
    .line 79
    invoke-static {v1}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->I(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;)Landroidx/lifecycle/MutableLiveData;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    instance-of v1, v1, Lcom/startshorts/androidplayer/viewmodel/routing/a$d;

    .line 88
    .line 89
    if-eqz v1, :cond_6

    .line 90
    .line 91
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$4$1;

    .line 96
    .line 97
    iget-object v4, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$4;->i:Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;

    .line 98
    .line 99
    iget-object v5, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$4;->k:Lcom/startshorts/androidplayer/viewmodel/routing/b;

    .line 100
    .line 101
    const/4 v6, 0x0

    .line 102
    invoke-direct {v2, v4, v5, p1, v6}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$4$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;Lcom/startshorts/androidplayer/viewmodel/routing/b;Lcom/startshorts/androidplayer/bean/act/ActResource;Lrs/c;)V

    .line 103
    .line 104
    .line 105
    iput v3, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$4;->h:I

    .line 106
    .line 107
    invoke-static {v1, v2, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    if-ne p1, v0, :cond_6

    .line 112
    .line 113
    return-object v0

    .line 114
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$4;->i:Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;

    .line 115
    .line 116
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$4;->j:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 117
    .line 118
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 119
    .line 120
    check-cast v0, Lkotlinx/coroutines/r;

    .line 121
    .line 122
    const-string v1, "TimeOutJob"

    .line 123
    .line 124
    const-string v2, "act end p1"

    .line 125
    .line 126
    invoke-static {p1, v1, v2, v0}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->H(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/r;)V

    .line 127
    .line 128
    .line 129
    goto :goto_3

    .line 130
    :cond_7
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$4;->h:I

    .line 131
    .line 132
    const-wide/16 v5, 0xc8

    .line 133
    .line 134
    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/DelayKt;->b(JLrs/c;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object p1

    .line 138
    if-ne p1, v0, :cond_4

    .line 139
    .line 140
    return-object v0

    .line 141
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$4;->i:Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;

    .line 142
    .line 143
    const-string v0, "loadContentEnd -> scene=act p1"

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 149
    .line 150
    return-object p1
.end method
