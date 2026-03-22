.class final Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$onAttachedToWindow$1$1;
.super Ljava/lang/Object;
.source "ActBottomFloatView.kt"

# interfaces
.implements Lkt/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$onAttachedToWindow$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkt/c;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$onAttachedToWindow$1$1;->a:Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ZLrs/c;)Ljava/lang/Object;
    .locals 4
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

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$onAttachedToWindow$1$1;->a:Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "onAttachedToWindow -> value="

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;->s(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v1, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$onAttachedToWindow$1$1$1;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$onAttachedToWindow$1$1;->a:Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;

    .line 30
    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-direct {v1, v2, p1, v3}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$onAttachedToWindow$1$1$1;-><init>(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;ZLrs/c;)V

    .line 33
    .line 34
    .line 35
    invoke-static {v0, v1, p2}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    if-ne p1, p2, :cond_0

    .line 44
    .line 45
    return-object p1

    .line 46
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 47
    .line 48
    return-object p1
.end method

.method public bridge synthetic emit(Ljava/lang/Object;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$onAttachedToWindow$1$1;->a(ZLrs/c;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
