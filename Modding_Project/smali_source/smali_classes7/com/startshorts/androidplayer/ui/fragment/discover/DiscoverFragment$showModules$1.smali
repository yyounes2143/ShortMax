.class final Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DiscoverFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;->L2(Ljava/util/List;)Lkotlinx/coroutines/r;
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
    c = "com.startshorts.androidplayer.ui.fragment.discover.DiscoverFragment$showModules$1"
    f = "DiscoverFragment.kt"
    l = {
        0x26c,
        0x275
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

.field final synthetic j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;Ljava/util/List;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1;->i:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1;->j:Ljava/util/List;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic i(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1;->j(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private static final j(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->n()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/startshorts/androidplayer/manager/dialog/home/i;->a:Lcom/startshorts/androidplayer/manager/dialog/home/i$a;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/dialog/home/i$a;->a()Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lau/c;->d()Lau/c;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    new-instance v0, Lcom/startshorts/androidplayer/bean/eventbus/HandleHomeDialogProcessorEvent;

    .line 20
    .line 21
    invoke-direct {v0}, Lcom/startshorts/androidplayer/bean/eventbus/HandleHomeDialogProcessorEvent;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lau/c;->l(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 28
    .line 29
    return-object p0
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2
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
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1;->i:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1;->j:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;Ljava/util/List;Lrs/c;)V

    .line 8
    .line 9
    .line 10
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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget v2, v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1;->h:I

    .line 8
    .line 9
    const/4 v3, 0x2

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v2, :cond_2

    .line 12
    .line 13
    if-eq v2, v4, :cond_1

    .line 14
    .line 15
    if-ne v2, v3, :cond_0

    .line 16
    .line 17
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw v1

    .line 30
    :cond_1
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    goto/16 :goto_2

    .line 34
    .line 35
    :cond_2
    invoke-static/range {p1 .. p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    sget-object v2, Lud/a;->a:Lud/a;

    .line 39
    .line 40
    invoke-virtual {v2, v4}, Lud/a;->g0(Z)V

    .line 41
    .line 42
    .line 43
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1;->i:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/ui/fragment/base/BaseFragment;->n()Z

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-nez v2, :cond_3

    .line 50
    .line 51
    sget-object v2, Lcom/startshorts/androidplayer/manager/dialog/home/i;->a:Lcom/startshorts/androidplayer/manager/dialog/home/i$a;

    .line 52
    .line 53
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/manager/dialog/home/i$a;->a()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_3

    .line 58
    .line 59
    sget-object v5, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 60
    .line 61
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1;->i:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 62
    .line 63
    new-instance v9, Lcom/startshorts/androidplayer/ui/fragment/discover/y;

    .line 64
    .line 65
    invoke-direct {v9, v2}, Lcom/startshorts/androidplayer/ui/fragment/discover/y;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;)V

    .line 66
    .line 67
    .line 68
    const/4 v10, 0x2

    .line 69
    const/4 v11, 0x0

    .line 70
    const-wide/16 v6, 0x1f4

    .line 71
    .line 72
    const/4 v8, 0x0

    .line 73
    invoke-static/range {v5 .. v11}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->g(Lcom/startshorts/androidplayer/utils/CoroutineUtil;JLkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 74
    .line 75
    .line 76
    :cond_3
    sget-object v12, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 77
    .line 78
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1;->i:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 79
    .line 80
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;->D1(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;)Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v12, v2}, Lcom/startshorts/androidplayer/manager/event/EventManager;->B(Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;)Landroid/os/Bundle;

    .line 85
    .line 86
    .line 87
    move-result-object v14

    .line 88
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1;->i:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 89
    .line 90
    const-string v5, "from"

    .line 91
    .line 92
    invoke-static {v2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;->y1(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    invoke-virtual {v14, v5, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 100
    .line 101
    const/16 v17, 0x4

    .line 102
    .line 103
    const/16 v18, 0x0

    .line 104
    .line 105
    const-string v13, "discover_show_success"

    .line 106
    .line 107
    const-wide/16 v15, 0x0

    .line 108
    .line 109
    invoke-static/range {v12 .. v18}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1;->i:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 113
    .line 114
    iget-object v5, v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1;->j:Ljava/util/List;

    .line 115
    .line 116
    invoke-static {v2, v5}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;->F1(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;Ljava/util/List;)V

    .line 117
    .line 118
    .line 119
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1;->j:Ljava/util/List;

    .line 120
    .line 121
    check-cast v2, Ljava/util/Collection;

    .line 122
    .line 123
    const/4 v5, 0x0

    .line 124
    if-eqz v2, :cond_7

    .line 125
    .line 126
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    if-eqz v2, :cond_4

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_4
    iget-object v2, v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1;->j:Ljava/util/List;

    .line 134
    .line 135
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    check-cast v2, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 140
    .line 141
    if-nez v2, :cond_5

    .line 142
    .line 143
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 144
    .line 145
    return-object v1

    .line 146
    :cond_5
    iget-object v4, v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1;->i:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 147
    .line 148
    iget-object v6, v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1;->j:Ljava/util/List;

    .line 149
    .line 150
    invoke-static {v4, v6}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;->x1(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;Ljava/util/List;)Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    iget-object v6, v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1;->i:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 155
    .line 156
    invoke-static {v6, v4}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;->w1(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;Ljava/util/List;)V

    .line 157
    .line 158
    .line 159
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 160
    .line 161
    .line 162
    move-result-object v6

    .line 163
    new-instance v7, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1$4;

    .line 164
    .line 165
    iget-object v8, v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1;->i:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 166
    .line 167
    invoke-direct {v7, v2, v8, v4, v5}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1$4;-><init>(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;Ljava/util/List;Lrs/c;)V

    .line 168
    .line 169
    .line 170
    iput v3, v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1;->h:I

    .line 171
    .line 172
    invoke-static {v6, v7, v0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    move-result-object v2

    .line 176
    if-ne v2, v1, :cond_6

    .line 177
    .line 178
    return-object v1

    .line 179
    :cond_6
    :goto_0
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 180
    .line 181
    return-object v1

    .line 182
    :cond_7
    :goto_1
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 183
    .line 184
    .line 185
    move-result-object v2

    .line 186
    new-instance v3, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1$3;

    .line 187
    .line 188
    iget-object v6, v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1;->i:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 189
    .line 190
    iget-object v7, v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1;->j:Ljava/util/List;

    .line 191
    .line 192
    invoke-direct {v3, v6, v7, v5}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1$3;-><init>(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;Ljava/util/List;Lrs/c;)V

    .line 193
    .line 194
    .line 195
    iput v4, v0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1;->h:I

    .line 196
    .line 197
    invoke-static {v2, v3, v0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    if-ne v2, v1, :cond_8

    .line 202
    .line 203
    return-object v1

    .line 204
    :cond_8
    :goto_2
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 205
    .line 206
    return-object v1
.end method
