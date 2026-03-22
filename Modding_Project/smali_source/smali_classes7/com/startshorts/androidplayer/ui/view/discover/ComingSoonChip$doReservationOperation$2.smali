.class final Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ComingSoonChip.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;->G(ZILkotlin/jvm/functions/Function1;)V
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
    c = "com.startshorts.androidplayer.ui.view.discover.ComingSoonChip$doReservationOperation$2"
    f = "ComingSoonChip.kt"
    l = {
        0x6c,
        0x6f,
        0x75,
        0x78
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:Ljava/lang/Object;

.field i:I

.field final synthetic j:Z

.field final synthetic k:Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;

.field final synthetic l:I

.field final synthetic m:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZLcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;ILkotlin/jvm/functions/Function1;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2;->j:Z

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2;->k:Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;

    .line 4
    .line 5
    iput p3, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2;->l:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2;->m:Lkotlin/jvm/functions/Function1;

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
    new-instance p1, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2;

    .line 2
    .line 3
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2;->j:Z

    .line 4
    .line 5
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2;->k:Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;

    .line 6
    .line 7
    iget v3, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2;->l:I

    .line 8
    .line 9
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2;->m:Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v5, p2

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2;-><init>(ZLcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;ILkotlin/jvm/functions/Function1;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v1, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2;->i:I

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x4

    .line 9
    const/4 v4, 0x3

    .line 10
    const/4 v5, 0x2

    .line 11
    const/4 v6, 0x1

    .line 12
    if-eqz v1, :cond_4

    .line 13
    .line 14
    if-eq v1, v6, :cond_3

    .line 15
    .line 16
    if-eq v1, v5, :cond_2

    .line 17
    .line 18
    if-eq v1, v4, :cond_1

    .line 19
    .line 20
    if-ne v1, v3, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    check-cast p1, Lkotlin/Result;

    .line 35
    .line 36
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    :goto_0
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    goto/16 :goto_3

    .line 45
    .line 46
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    check-cast p1, Lkotlin/Result;

    .line 50
    .line 51
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    goto :goto_1

    .line 56
    :cond_4
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2;->j:Z

    .line 60
    .line 61
    if-eqz p1, :cond_6

    .line 62
    .line 63
    sget-object p1, Lcom/startshorts/androidplayer/repo/comingsoon/ComingSoonRepo;->a:Lcom/startshorts/androidplayer/repo/comingsoon/ComingSoonRepo;

    .line 64
    .line 65
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2;->k:Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;

    .line 66
    .line 67
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    iget v3, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2;->l:I

    .line 72
    .line 73
    iput v6, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2;->i:I

    .line 74
    .line 75
    invoke-virtual {p1, v1, v3, p0}, Lcom/startshorts/androidplayer/repo/comingsoon/ComingSoonRepo;->b(Landroid/content/Context;ILrs/c;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-ne p1, v0, :cond_5

    .line 80
    .line 81
    return-object v0

    .line 82
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2;->k:Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;

    .line 83
    .line 84
    iget v3, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2;->l:I

    .line 85
    .line 86
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2;->m:Lkotlin/jvm/functions/Function1;

    .line 87
    .line 88
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 89
    .line 90
    .line 91
    move-result v7

    .line 92
    if-eqz v7, :cond_8

    .line 93
    .line 94
    invoke-static {v1, v6}, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;->E(Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;Z)V

    .line 95
    .line 96
    .line 97
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    new-instance v7, Lcom/startshorts/androidplayer/bean/eventbus/RefreshReservationEvent;

    .line 102
    .line 103
    invoke-direct {v7, v3, v6}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshReservationEvent;-><init>(IZ)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1, v7}, Lau/c;->l(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    new-instance v3, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2$1$1;

    .line 114
    .line 115
    invoke-direct {v3, v4, v2}, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2$1$1;-><init>(Lkotlin/jvm/functions/Function1;Lrs/c;)V

    .line 116
    .line 117
    .line 118
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2;->h:Ljava/lang/Object;

    .line 119
    .line 120
    iput v5, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2;->i:I

    .line 121
    .line 122
    invoke-static {v1, v3, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    if-ne p1, v0, :cond_8

    .line 127
    .line 128
    return-object v0

    .line 129
    :cond_6
    sget-object p1, Lcom/startshorts/androidplayer/repo/comingsoon/ComingSoonRepo;->a:Lcom/startshorts/androidplayer/repo/comingsoon/ComingSoonRepo;

    .line 130
    .line 131
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2;->k:Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;

    .line 132
    .line 133
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    iget v5, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2;->l:I

    .line 138
    .line 139
    iput v4, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2;->i:I

    .line 140
    .line 141
    invoke-virtual {p1, v1, v5, p0}, Lcom/startshorts/androidplayer/repo/comingsoon/ComingSoonRepo;->c(Landroid/content/Context;ILrs/c;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    if-ne p1, v0, :cond_7

    .line 146
    .line 147
    return-object v0

    .line 148
    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2;->k:Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;

    .line 149
    .line 150
    iget v4, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2;->l:I

    .line 151
    .line 152
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2;->m:Lkotlin/jvm/functions/Function1;

    .line 153
    .line 154
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 155
    .line 156
    .line 157
    move-result v6

    .line 158
    if-eqz v6, :cond_8

    .line 159
    .line 160
    const/4 v6, 0x0

    .line 161
    invoke-static {v1, v6}, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;->E(Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;Z)V

    .line 162
    .line 163
    .line 164
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    new-instance v7, Lcom/startshorts/androidplayer/bean/eventbus/RefreshReservationEvent;

    .line 169
    .line 170
    invoke-direct {v7, v4, v6}, Lcom/startshorts/androidplayer/bean/eventbus/RefreshReservationEvent;-><init>(IZ)V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1, v7}, Lau/c;->l(Ljava/lang/Object;)V

    .line 174
    .line 175
    .line 176
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    new-instance v4, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2$2$1;

    .line 181
    .line 182
    invoke-direct {v4, v5, v2}, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2$2$1;-><init>(Lkotlin/jvm/functions/Function1;Lrs/c;)V

    .line 183
    .line 184
    .line 185
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2;->h:Ljava/lang/Object;

    .line 186
    .line 187
    iput v3, p0, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip$doReservationOperation$2;->i:I

    .line 188
    .line 189
    invoke-static {v1, v4, p0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    if-ne p1, v0, :cond_8

    .line 194
    .line 195
    return-object v0

    .line 196
    :cond_8
    :goto_3
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 197
    .line 198
    return-object p1
.end method
