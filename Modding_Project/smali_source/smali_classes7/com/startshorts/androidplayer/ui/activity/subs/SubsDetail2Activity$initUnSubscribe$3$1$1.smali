.class final Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$initUnSubscribe$3$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SubsDetail2Activity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$initUnSubscribe$3$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Boolean;",
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
    c = "com.startshorts.androidplayer.ui.activity.subs.SubsDetail2Activity$initUnSubscribe$3$1$1"
    f = "SubsDetail2Activity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field synthetic i:Z

.field final synthetic j:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$initUnSubscribe$3$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$initUnSubscribe$3$1$1;->j:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;

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
    new-instance v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$initUnSubscribe$3$1$1;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$initUnSubscribe$3$1$1;->j:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;

    .line 4
    .line 5
    invoke-direct {v0, v1, p2}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$initUnSubscribe$3$1$1;-><init>(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;Lrs/c;)V

    .line 6
    .line 7
    .line 8
    check-cast p1, Ljava/lang/Boolean;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput-boolean p1, v0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$initUnSubscribe$3$1$1;->i:Z

    .line 15
    .line 16
    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$initUnSubscribe$3$1$1;->invoke(ZLrs/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(ZLrs/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$initUnSubscribe$3$1$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$initUnSubscribe$3$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$initUnSubscribe$3$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$initUnSubscribe$3$1$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-boolean p1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$initUnSubscribe$3$1$1;->i:Z

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$initUnSubscribe$3$1$1;->j:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;->l0(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;)Lcom/startshorts/androidplayer/databinding/ActivitySubsDetail2Binding;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetail2Binding;->I:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 22
    .line 23
    invoke-static {p1}, Ljk/b0;->l(Landroid/view/View;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity$initUnSubscribe$3$1$1;->j:Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;->l0(Lcom/startshorts/androidplayer/ui/activity/subs/SubsDetail2Activity;)Lcom/startshorts/androidplayer/databinding/ActivitySubsDetail2Binding;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p1, p1, Lcom/startshorts/androidplayer/databinding/ActivitySubsDetail2Binding;->I:Lcom/startshorts/androidplayer/ui/view/base/BaseTextView;

    .line 34
    .line 35
    invoke-static {p1}, Ljk/b0;->d(Landroid/view/View;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p1

    .line 41
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 42
    .line 43
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    .line 45
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1
.end method
