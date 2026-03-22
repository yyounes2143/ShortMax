.class final Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2;
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
    c = "com.startshorts.androidplayer.viewmodel.routing.RoutingViewModel$process$1$2"
    f = "RoutingViewModel.kt"
    l = {
        0x85,
        0x89,
        0x8e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;

.field final synthetic j:Lkotlin/jvm/internal/Ref$BooleanRef;

.field final synthetic k:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlinx/coroutines/r;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic l:Lcom/startshorts/androidplayer/viewmodel/routing/b;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/startshorts/androidplayer/viewmodel/routing/b;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;",
            "Lkotlin/jvm/internal/Ref$BooleanRef;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Lkotlinx/coroutines/r;",
            ">;",
            "Lcom/startshorts/androidplayer/viewmodel/routing/b;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2;->i:Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2;->j:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2;->k:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2;->l:Lcom/startshorts/androidplayer/viewmodel/routing/b;

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 6
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
    new-instance p1, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2;->i:Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2;->j:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2;->k:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2;->l:Lcom/startshorts/androidplayer/viewmodel/routing/b;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2;-><init>(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;Lkotlin/jvm/internal/Ref$BooleanRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/startshorts/androidplayer/viewmodel/routing/b;Lrs/c;)V

    .line 14
    .line 15
    .line 16
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2;->h:I

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
    goto :goto_3

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
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2;->i:Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;

    .line 42
    .line 43
    const-string v1, "loadContentStart -> scene=act"

    .line 44
    .line 45
    invoke-virtual {p1, v1}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2;->i:Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;

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
    if-eqz p1, :cond_9

    .line 61
    .line 62
    sget-object p1, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView;->j:Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion;

    .line 63
    .line 64
    iput v4, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2;->h:I

    .line 65
    .line 66
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/ui/view/act/ActAppOpenView$Companion;->c(Lrs/c;)Ljava/lang/Object;

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2;->j:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 76
    .line 77
    if-eqz p1, :cond_6

    .line 78
    .line 79
    move v5, v4

    .line 80
    goto :goto_2

    .line 81
    :cond_6
    const/4 v5, 0x0

    .line 82
    :goto_2
    iput-boolean v5, v1, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 83
    .line 84
    if-eqz p1, :cond_8

    .line 85
    .line 86
    iget-object v1, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2;->i:Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;

    .line 87
    .line 88
    invoke-static {v1}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->I(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;)Landroidx/lifecycle/MutableLiveData;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    instance-of v1, v1, Lcom/startshorts/androidplayer/viewmodel/routing/a$d;

    .line 97
    .line 98
    if-eqz v1, :cond_7

    .line 99
    .line 100
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    new-instance v2, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2$1;

    .line 105
    .line 106
    iget-object v4, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2;->i:Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;

    .line 107
    .line 108
    iget-object v5, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2;->l:Lcom/startshorts/androidplayer/viewmodel/routing/b;

    .line 109
    .line 110
    const/4 v6, 0x0

    .line 111
    invoke-direct {v2, v4, v5, p1, v6}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2$1;-><init>(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;Lcom/startshorts/androidplayer/viewmodel/routing/b;Lcom/startshorts/androidplayer/bean/act/ActResource;Lrs/c;)V

    .line 112
    .line 113
    .line 114
    iput v3, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2;->h:I

    .line 115
    .line 116
    invoke-static {v1, v2, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    if-ne p1, v0, :cond_7

    .line 121
    .line 122
    return-object v0

    .line 123
    :cond_7
    :goto_3
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2;->i:Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;

    .line 124
    .line 125
    iget-object v0, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2;->k:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 126
    .line 127
    iget-object v0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast v0, Lkotlinx/coroutines/r;

    .line 130
    .line 131
    const-string v1, "TimeOutJob"

    .line 132
    .line 133
    const-string v2, "act end p0"

    .line 134
    .line 135
    invoke-static {p1, v1, v2, v0}, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;->H(Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/r;)V

    .line 136
    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_8
    iput v2, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2;->h:I

    .line 140
    .line 141
    const-wide/16 v5, 0xc8

    .line 142
    .line 143
    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/DelayKt;->b(JLrs/c;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object p1

    .line 147
    if-ne p1, v0, :cond_4

    .line 148
    .line 149
    return-object v0

    .line 150
    :cond_9
    :goto_4
    iget-object p1, p0, Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel$process$1$2;->i:Lcom/startshorts/androidplayer/viewmodel/routing/RoutingViewModel;

    .line 151
    .line 152
    const-string v0, "loadContentEnd -> scene=act p0"

    .line 153
    .line 154
    invoke-virtual {p1, v0}, Lcom/startshorts/androidplayer/viewmodel/base/BaseViewModel;->v(Ljava/lang/String;)V

    .line 155
    .line 156
    .line 157
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 158
    .line 159
    return-object p1
.end method
