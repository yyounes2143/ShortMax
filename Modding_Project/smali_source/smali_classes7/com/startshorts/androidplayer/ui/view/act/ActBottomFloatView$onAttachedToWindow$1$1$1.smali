.class final Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$onAttachedToWindow$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "ActBottomFloatView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$onAttachedToWindow$1$1;->a(ZLrs/c;)Ljava/lang/Object;
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
    c = "com.startshorts.androidplayer.ui.view.act.ActBottomFloatView$onAttachedToWindow$1$1$1"
    f = "ActBottomFloatView.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field h:I

.field final synthetic i:Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;

.field final synthetic j:Z


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;ZLrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;",
            "Z",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$onAttachedToWindow$1$1$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$onAttachedToWindow$1$1$1;->i:Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$onAttachedToWindow$1$1$1;->j:Z

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

.method public static synthetic i(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;Lcom/startshorts/androidplayer/bean/act/ActResource;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$onAttachedToWindow$1$1$1;->s(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;Lcom/startshorts/androidplayer/bean/act/ActResource;)Lkotlin/Unit;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static synthetic j(Lcom/startshorts/androidplayer/bean/act/ActResource;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$onAttachedToWindow$1$1$1;->q(Lcom/startshorts/androidplayer/bean/act/ActResource;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic k(Lcom/startshorts/androidplayer/bean/act/ActResource;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$onAttachedToWindow$1$1$1;->n(Lcom/startshorts/androidplayer/bean/act/ActResource;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private static final n(Lcom/startshorts/androidplayer/bean/act/ActResource;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method private static final q(Lcom/startshorts/androidplayer/bean/act/ActResource;)Z
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x1

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    const/4 p0, 0x0

    .line 6
    :goto_0
    return p0
.end method

.method private static final s(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;Lcom/startshorts/androidplayer/bean/act/ActResource;)Lkotlin/Unit;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onAttachedToWindow -> isVisible="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-static {p0}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->F(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;)Lkotlin/jvm/functions/Function1;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-interface {v1, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;->s(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 36
    .line 37
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
    new-instance p1, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$onAttachedToWindow$1$1$1;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$onAttachedToWindow$1$1$1;->i:Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;

    .line 4
    .line 5
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$onAttachedToWindow$1$1$1;->j:Z

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$onAttachedToWindow$1$1$1;-><init>(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;ZLrs/c;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$onAttachedToWindow$1$1$1;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    move-result-object p1

    check-cast p1, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$onAttachedToWindow$1$1$1;

    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$onAttachedToWindow$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    check-cast p1, Lgt/g0;

    check-cast p2, Lrs/c;

    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$onAttachedToWindow$1$1$1;->invoke(Lgt/g0;Lrs/c;)Ljava/lang/Object;

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
    iget v0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$onAttachedToWindow$1$1$1;->h:I

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$onAttachedToWindow$1$1$1;->i:Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;

    .line 12
    .line 13
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$onAttachedToWindow$1$1$1;->j:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/act/a;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/startshorts/androidplayer/ui/view/act/a;-><init>()V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/act/b;

    .line 24
    .line 25
    invoke-direct {v0}, Lcom/startshorts/androidplayer/ui/view/act/b;-><init>()V

    .line 26
    .line 27
    .line 28
    :goto_0
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->I(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;Lkotlin/jvm/functions/Function1;)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$onAttachedToWindow$1$1$1;->i:Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;

    .line 32
    .line 33
    new-instance v0, Lcom/startshorts/androidplayer/ui/view/act/c;

    .line 34
    .line 35
    invoke-direct {v0, p1}, Lcom/startshorts/androidplayer/ui/view/act/c;-><init>(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;)V

    .line 36
    .line 37
    .line 38
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->H(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;Lkotlin/jvm/functions/Function1;)V

    .line 39
    .line 40
    .line 41
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 42
    .line 43
    return-object p1

    .line 44
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1
.end method
