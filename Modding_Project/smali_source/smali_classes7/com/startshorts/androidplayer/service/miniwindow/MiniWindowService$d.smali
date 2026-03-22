.class public final Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$d;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MiniWindowService.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

.field final synthetic b:F


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$d;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 2
    .line 3
    iput p2, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$d;->b:F

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    const-string v0, "animation"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$d;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->l()Lcom/startshorts/androidplayer/databinding/ItemWindowPlayBinding;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    instance-of v0, p1, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;

    .line 21
    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    check-cast p1, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 p1, 0x0

    .line 28
    :goto_0
    if-nez p1, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    iget v0, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$d;->b:F

    .line 32
    .line 33
    iget-object v1, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$d;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 34
    .line 35
    invoke-static {v1}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->h(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)Landroid/view/WindowManager$LayoutParams;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 40
    .line 41
    iget-object v2, p0, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService$d;->a:Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;

    .line 42
    .line 43
    invoke-static {v2}, Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;->h(Lcom/startshorts/androidplayer/service/miniwindow/MiniWindowService;)Landroid/view/WindowManager$LayoutParams;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 48
    .line 49
    invoke-virtual {p1, v0, v1, v2}, Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;->update(FII)V

    .line 50
    .line 51
    .line 52
    sget-object v0, Lud/b;->a:Lud/b;

    .line 53
    .line 54
    invoke-virtual {v0, p1}, Lud/b;->N3(Lcom/startshorts/androidplayer/bean/shorts/FloatingWindow;)V

    .line 55
    .line 56
    .line 57
    return-void
.end method
