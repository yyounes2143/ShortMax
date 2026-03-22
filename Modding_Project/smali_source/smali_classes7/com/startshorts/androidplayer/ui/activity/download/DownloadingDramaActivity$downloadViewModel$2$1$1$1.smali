.class final Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$downloadViewModel$2$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "DownloadingDramaActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;-><init>()V
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
    c = "com.startshorts.androidplayer.ui.activity.download.DownloadingDramaActivity$downloadViewModel$2$1$1$1"
    f = "DownloadingDramaActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;

.field final synthetic j:Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;

.field final synthetic k:Lcom/startshorts/androidplayer/ui/activity/download/h;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;Lcom/startshorts/androidplayer/ui/activity/download/h;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;",
            "Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;",
            "Lcom/startshorts/androidplayer/ui/activity/download/h;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$downloadViewModel$2$1$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$downloadViewModel$2$1$1$1;->i:Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$downloadViewModel$2$1$1$1;->j:Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$downloadViewModel$2$1$1$1;->k:Lcom/startshorts/androidplayer/ui/activity/download/h;

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
    new-instance p1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$downloadViewModel$2$1$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$downloadViewModel$2$1$1$1;->i:Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$downloadViewModel$2$1$1$1;->j:Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$downloadViewModel$2$1$1$1;->k:Lcom/startshorts/androidplayer/ui/activity/download/h;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1, v2, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$downloadViewModel$2$1$1$1;-><init>(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;Lcom/startshorts/androidplayer/ui/activity/download/h;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$downloadViewModel$2$1$1$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$downloadViewModel$2$1$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$downloadViewModel$2$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$downloadViewModel$2$1$1$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$downloadViewModel$2$1$1$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_2

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$downloadViewModel$2$1$1$1;->i:Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->l0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$downloadViewModel$2$1$1$1;->j:Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;->C()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$downloadViewModel$2$1$1$1;->j:Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;->C()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$downloadViewModel$2$1$1$1;->k:Lcom/startshorts/androidplayer/ui/activity/download/h;

    .line 32
    .line 33
    check-cast v0, Lcom/startshorts/androidplayer/ui/activity/download/h$b;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/h$b;->a()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/util/Collection;

    .line 40
    .line 41
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$downloadViewModel$2$1$1$1;->k:Lcom/startshorts/androidplayer/ui/activity/download/h;

    .line 45
    .line 46
    check-cast p1, Lcom/startshorts/androidplayer/ui/activity/download/h$b;

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/download/h$b;->a()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    const-string v0, "recyclerView"

    .line 57
    .line 58
    if-eqz p1, :cond_0

    .line 59
    .line 60
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$downloadViewModel$2$1$1$1;->i:Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->m0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$downloadViewModel$2$1$1$1;->i:Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;

    .line 66
    .line 67
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->k0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;)Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;->c:Landroid/widget/ImageView;

    .line 72
    .line 73
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$downloadViewModel$2$1$1$1;->i:Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;

    .line 77
    .line 78
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->k0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;)Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 83
    .line 84
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$downloadViewModel$2$1$1$1;->j:Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;->C()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {p1, v0}, Lo1/b;->f(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V

    .line 94
    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$downloadViewModel$2$1$1$1;->i:Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;

    .line 98
    .line 99
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->j0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;)Lcom/startshorts/androidplayer/ui/activity/download/adapter/DramaDownloadingAdapter;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    if-eqz v1, :cond_1

    .line 104
    .line 105
    new-instance v2, Lcom/startshorts/androidplayer/bean/download/DownloadPauseHeader;

    .line 106
    .line 107
    invoke-direct {v2}, Lcom/startshorts/androidplayer/bean/download/DownloadPauseHeader;-><init>()V

    .line 108
    .line 109
    .line 110
    const/4 v5, 0x2

    .line 111
    const/4 v6, 0x0

    .line 112
    const/4 v3, 0x0

    .line 113
    const/4 v4, 0x1

    .line 114
    invoke-static/range {v1 .. v6}, Lcom/drake/brv/BindingAdapter;->i(Lcom/drake/brv/BindingAdapter;Ljava/lang/Object;IZILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$downloadViewModel$2$1$1$1;->i:Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;

    .line 118
    .line 119
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->k0(Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;)Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ActivityDownloadManageBinding;->f:Landroidx/recyclerview/widget/RecyclerView;

    .line 124
    .line 125
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$downloadViewModel$2$1$1$1;->j:Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;

    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;->C()Ljava/util/List;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-static {p1, v0}, Lo1/b;->f(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/List;)V

    .line 135
    .line 136
    .line 137
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$downloadViewModel$2$1$1$1;->i:Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;

    .line 138
    .line 139
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity;->E0()V

    .line 140
    .line 141
    .line 142
    sget-object p1, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->a:Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;

    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadEpisodeManager;->v()V

    .line 145
    .line 146
    .line 147
    :goto_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaActivity$downloadViewModel$2$1$1$1;->j:Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;

    .line 148
    .line 149
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/download/DownloadingDramaModel;->B()V

    .line 150
    .line 151
    .line 152
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 153
    .line 154
    return-object p1

    .line 155
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 156
    .line 157
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 158
    .line 159
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    throw p1
.end method
