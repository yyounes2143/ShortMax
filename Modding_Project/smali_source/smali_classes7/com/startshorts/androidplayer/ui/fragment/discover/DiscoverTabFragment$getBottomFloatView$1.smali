.class final Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DiscoverTabFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->x0(ZLkotlin/jvm/functions/Function1;)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.ui.fragment.discover.DiscoverTabFragment$getBottomFloatView$1"
    f = "DiscoverTabFragment.kt"
    l = {
        0x210,
        0x217,
        0x21d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic j:Z

.field final synthetic k:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function1;ZLcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;",
            "Lkotlin/Unit;",
            ">;Z",
            "Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1;->i:Lkotlin/jvm/functions/Function1;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1;->j:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1;->k:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

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
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1;->i:Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1;->j:Z

    .line 6
    .line 7
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1;->k:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1;-><init>(Lkotlin/jvm/functions/Function1;ZLcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1;->h:I

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    const/4 v3, 0x2

    .line 9
    const/4 v4, 0x1

    .line 10
    const/4 v5, 0x0

    .line 11
    if-eqz v1, :cond_3

    .line 12
    .line 13
    if-eq v1, v4, :cond_2

    .line 14
    .line 15
    if-eq v1, v3, :cond_1

    .line 16
    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto/16 :goto_2

    .line 23
    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    sget-object p1, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->a:Lcom/startshorts/androidplayer/manager/act/ActResourceManager;

    .line 44
    .line 45
    iput v4, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1;->h:I

    .line 46
    .line 47
    invoke-virtual {p1, p0}, Lcom/startshorts/androidplayer/manager/act/ActResourceManager;->k(Lrs/c;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    if-ne p1, v0, :cond_4

    .line 52
    .line 53
    return-object v0

    .line 54
    :cond_4
    :goto_0
    check-cast p1, Ljava/util/List;

    .line 55
    .line 56
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 61
    .line 62
    const-string v1, "DiscoverTabFragment"

    .line 63
    .line 64
    if-nez p1, :cond_5

    .line 65
    .line 66
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 67
    .line 68
    const-string v0, "getBottomFloatView -> no bottom float"

    .line 69
    .line 70
    invoke-virtual {p1, v1, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1;->i:Lkotlin/jvm/functions/Function1;

    .line 74
    .line 75
    invoke-interface {p1, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :cond_5
    iget-boolean v4, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1;->j:Z

    .line 80
    .line 81
    if-eqz v4, :cond_6

    .line 82
    .line 83
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1;->k:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 84
    .line 85
    invoke-static {v4}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->j0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    if-nez v4, :cond_6

    .line 90
    .line 91
    sget-object v4, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 92
    .line 93
    new-instance v6, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v7, "getBottomFloatView -> init resource="

    .line 99
    .line 100
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {v4, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1$1;

    .line 118
    .line 119
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1;->k:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 120
    .line 121
    invoke-direct {v1, v4, v5}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;Lrs/c;)V

    .line 122
    .line 123
    .line 124
    iput v3, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1;->h:I

    .line 125
    .line 126
    invoke-static {p1, v1, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    if-ne p1, v0, :cond_6

    .line 131
    .line 132
    return-object v0

    .line 133
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1;->k:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 134
    .line 135
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;->j0(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;)Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    if-eqz p1, :cond_7

    .line 140
    .line 141
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    new-instance v1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1$2;

    .line 146
    .line 147
    iget-object v3, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1;->i:Lkotlin/jvm/functions/Function1;

    .line 148
    .line 149
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1;->k:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;

    .line 150
    .line 151
    invoke-direct {v1, v3, v4, v5}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1$2;-><init>(Lkotlin/jvm/functions/Function1;Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment;Lrs/c;)V

    .line 152
    .line 153
    .line 154
    iput v2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1;->h:I

    .line 155
    .line 156
    invoke-static {p1, v1, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    if-ne p1, v0, :cond_8

    .line 161
    .line 162
    return-object v0

    .line 163
    :cond_7
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$getBottomFloatView$1;->i:Lkotlin/jvm/functions/Function1;

    .line 164
    .line 165
    invoke-interface {p1, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    :cond_8
    :goto_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 169
    .line 170
    return-object p1
.end method
