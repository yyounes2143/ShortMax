.class final Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DiscoverFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.startshorts.androidplayer.ui.fragment.discover.DiscoverFragment$showModules$1$4"
    f = "DiscoverFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

.field final synthetic j:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

.field final synthetic k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;Ljava/util/List;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
            "Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1$4;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1$4;->i:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1$4;->j:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1$4;->k:Ljava/util/List;

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
    new-instance p1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1$4;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1$4;->i:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1$4;->j:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1$4;->k:Ljava/util/List;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1$4;-><init>(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;Ljava/util/List;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1$4;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1$4;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1$4;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1$4;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_4

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1$4;->i:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStyle()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/16 v0, -0x1f

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    const/4 v2, 0x0

    .line 21
    if-eq p1, v0, :cond_1

    .line 22
    .line 23
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1$4;->i:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStyle()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const/16 v0, -0x1e

    .line 30
    .line 31
    if-eq p1, v0, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1$4;->i:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getStyle()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    const/16 v0, -0x21

    .line 40
    .line 41
    if-ne p1, v0, :cond_0

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1$4;->j:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 45
    .line 46
    invoke-static {p1, v2}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;->I1(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;Z)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1$4;->j:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_3

    .line 56
    .line 57
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1$4;->j:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 58
    .line 59
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;->A1(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;)Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    if-eqz p1, :cond_3

    .line 64
    .line 65
    const/high16 v0, 0x3f800000    # 1.0f

    .line 66
    .line 67
    invoke-interface {p1, v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;->b(FZ)V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1$4;->j:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 72
    .line 73
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;->B1(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;)Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$b;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$b;->d()F

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1$4;->j:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 82
    .line 83
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;->C1(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;)I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    int-to-float v0, v0

    .line 88
    cmpl-float p1, p1, v0

    .line 89
    .line 90
    if-ltz p1, :cond_2

    .line 91
    .line 92
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 93
    .line 94
    return-object p1

    .line 95
    :cond_2
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1$4;->j:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 96
    .line 97
    invoke-static {p1, v1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;->I1(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;Z)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1$4;->j:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 101
    .line 102
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isResumed()Z

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    if-eqz p1, :cond_3

    .line 107
    .line 108
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1$4;->j:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 109
    .line 110
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;->A1(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;)Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    if-eqz p1, :cond_3

    .line 115
    .line 116
    const/4 v0, 0x2

    .line 117
    const/4 v1, 0x0

    .line 118
    const/4 v3, 0x0

    .line 119
    invoke-static {p1, v3, v2, v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b$a;->a(Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverTabFragment$b;FZILjava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1$4;->j:Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment;

    .line 123
    .line 124
    iget-object v5, p0, Lcom/startshorts/androidplayer/ui/fragment/discover/DiscoverFragment$showModules$1$4;->k:Ljava/util/List;

    .line 125
    .line 126
    const/4 v8, 0x6

    .line 127
    const/4 v9, 0x0

    .line 128
    const/4 v6, 0x0

    .line 129
    const/4 v7, 0x0

    .line 130
    invoke-static/range {v4 .. v9}, Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;->S0(Lcom/startshorts/androidplayer/ui/fragment/base/RefreshFragment;Ljava/util/List;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 131
    .line 132
    .line 133
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 134
    .line 135
    return-object p1

    .line 136
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 137
    .line 138
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 139
    .line 140
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    throw p1
.end method
