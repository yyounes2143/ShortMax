.class final Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$getBottomFloatActResource$1;
.super Lkotlin/coroutines/jvm/internal/ContinuationImpl;
.source "ActBottomFloatView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->M(Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "com.startshorts.androidplayer.ui.view.act.ActBottomFloatView"
    f = "ActBottomFloatView.kt"
    l = {
        0x33
    }
    m = "getBottomFloatActResource"
.end annotation


# instance fields
.field synthetic h:Ljava/lang/Object;

.field final synthetic i:Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;

.field j:I


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;Lrs/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$getBottomFloatActResource$1;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$getBottomFloatActResource$1;->i:Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lkotlin/coroutines/jvm/internal/ContinuationImpl;-><init>(Lrs/c;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$getBottomFloatActResource$1;->h:Ljava/lang/Object;

    .line 2
    .line 3
    iget p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$getBottomFloatActResource$1;->j:I

    .line 4
    .line 5
    const/high16 v0, -0x80000000

    .line 6
    .line 7
    or-int/2addr p1, v0

    .line 8
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$getBottomFloatActResource$1;->j:I

    .line 9
    .line 10
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView$getBottomFloatActResource$1;->i:Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;

    .line 11
    .line 12
    invoke-static {p1, p0}, Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;->C(Lcom/startshorts/androidplayer/ui/view/act/ActBottomFloatView;Lrs/c;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    return-object p1
.end method
