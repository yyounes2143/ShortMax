.class final Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$initView$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ActBottomFloatView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$initView$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.startshorts.androidplayer.ui.view.act.ActBottomFloatView$initView$2$1"
    f = "ActBottomFloatView.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/bean/act/ActResource;

.field final synthetic j:Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/bean/act/ActResource;Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/act/ActResource;",
            "Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$initView$2$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$initView$2$1;->i:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$initView$2$1;->j:Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;

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
    new-instance p1, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$initView$2$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$initView$2$1;->i:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$initView$2$1;->j:Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$initView$2$1;-><init>(Lcom/startshorts/androidplayer/bean/act/ActResource;Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;Lrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$initView$2$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$initView$2$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$initView$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$initView$2$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$initView$2$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_3

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$initView$2$1;->i:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 12
    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    sget-object v0, Lce/j;->a:Lce/j;

    .line 19
    .line 20
    invoke-virtual {v0, p1}, Lce/j;->l(Lcom/startshorts/androidplayer/bean/act/ActResource;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$initView$2$1;->j:Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;

    .line 24
    .line 25
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->D(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;)Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const/4 v1, 0x0

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    const-string v0, "mActBottomFloatResourceIv"

    .line 33
    .line 34
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    move-object v0, v1

    .line 38
    :cond_1
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$initView$2$1;->i:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getResourceMap()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-static {p1, v0, v2}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->G(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$initView$2$1;->j:Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->E(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;)Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    const-string v0, "mActBottomFloatResourceShrinkedIv"

    .line 56
    .line 57
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    move-object v0, v1

    .line 61
    :cond_2
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$initView$2$1;->i:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 62
    .line 63
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getResourceMapShrink()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-static {p1, v0, v2}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->G(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;Lcom/startshorts/androidplayer/ui/view/fresco/CustomFrescoView;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    sget-object v3, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 71
    .line 72
    const-string p1, "bf_icon_tab"

    .line 73
    .line 74
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$initView$2$1;->i:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 75
    .line 76
    invoke-virtual {v3, p1, v0}, Lcom/startshorts/androidplayer/manager/event/EventManager;->T(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/act/ActResource;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$initView$2$1;->i:Lcom/startshorts/androidplayer/bean/act/ActResource;

    .line 80
    .line 81
    const/4 v0, 0x0

    .line 82
    const/4 v2, 0x2

    .line 83
    invoke-static {v3, p1, v0, v2, v1}, Lcom/startshorts/androidplayer/manager/event/EventManager;->x(Lcom/startshorts/androidplayer/manager/event/EventManager;Lcom/startshorts/androidplayer/bean/act/ActResource;ZILjava/lang/Object;)Landroid/os/Bundle;

    .line 84
    .line 85
    .line 86
    move-result-object v5

    .line 87
    const/4 v8, 0x4

    .line 88
    const/4 v9, 0x0

    .line 89
    const-string v4, "bf_icon_tab_show"

    .line 90
    .line 91
    const-wide/16 v6, 0x0

    .line 92
    .line 93
    invoke-static/range {v3 .. v9}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 94
    .line 95
    .line 96
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 97
    .line 98
    return-object p1

    .line 99
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 100
    .line 101
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 102
    .line 103
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    throw p1
.end method
