.class final Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FloatWindowPlayLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private a:F

.field private b:F

.field final synthetic c:Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$a;->c:Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$a;->c:Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->b(Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_3

    .line 13
    .line 14
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$a;->c:Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->c(Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object p1, Lid/a;->a:Lid/a;

    .line 24
    .line 25
    invoke-virtual {p1}, Lid/a;->c()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$a;->c:Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->a(Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "onDoubleTap"

    .line 40
    .line 41
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$a;->c:Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->getListener()Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$b;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-interface {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$b;->onDoubleTap()V

    .line 53
    .line 54
    .line 55
    :cond_2
    const/4 p1, 0x1

    .line 56
    return p1

    .line 57
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 58
    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$a;->a:F

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$a;->b:F

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    return p1
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p1, "e2"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    iget p3, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$a;->a:F

    .line 15
    .line 16
    sub-float p3, p1, p3

    .line 17
    .line 18
    iget p4, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$a;->b:F

    .line 19
    .line 20
    sub-float p4, p2, p4

    .line 21
    .line 22
    iput p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$a;->a:F

    .line 23
    .line 24
    iput p2, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$a;->b:F

    .line 25
    .line 26
    const/4 p1, 0x0

    .line 27
    cmpg-float p2, p3, p1

    .line 28
    .line 29
    const/4 v0, 0x1

    .line 30
    if-nez p2, :cond_0

    .line 31
    .line 32
    cmpg-float p1, p4, p1

    .line 33
    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$a;->c:Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;

    .line 38
    .line 39
    invoke-static {p1, v0}, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->d(Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;Z)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$a;->c:Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;

    .line 43
    .line 44
    const/4 p2, 0x0

    .line 45
    invoke-static {p1, p2}, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->e(Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;Z)V

    .line 46
    .line 47
    .line 48
    :goto_0
    sget-object p1, Lid/a;->a:Lid/a;

    .line 49
    .line 50
    invoke-virtual {p1}, Lid/a;->c()Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-eqz p1, :cond_1

    .line 55
    .line 56
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 57
    .line 58
    iget-object p2, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$a;->c:Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;

    .line 59
    .line 60
    invoke-static {p2}, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->a(Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;)Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    new-instance v1, Ljava/lang/StringBuilder;

    .line 65
    .line 66
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    .line 68
    .line 69
    const-string v2, "onScroll:dx="

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string v2, ", dy="

    .line 78
    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {p1, p2, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$a;->c:Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;

    .line 93
    .line 94
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->getListener()Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$b;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    if-eqz p1, :cond_2

    .line 99
    .line 100
    invoke-interface {p1, p3, p4}, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$b;->d(FF)V

    .line 101
    .line 102
    .line 103
    :cond_2
    return v0
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$a;->c:Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->b(Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_3

    .line 13
    .line 14
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$a;->c:Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->c(Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;)Z

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    if-eqz p1, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    sget-object p1, Lid/a;->a:Lid/a;

    .line 24
    .line 25
    invoke-virtual {p1}, Lid/a;->c()Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    sget-object p1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$a;->c:Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->a(Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const-string v1, "onSingleTapConfirmed"

    .line 40
    .line 41
    invoke-virtual {p1, v0, v1}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$a;->c:Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout;->getListener()Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$b;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-interface {p1}, Lcom/startshorts/androidplayer/ui/view/immersion/floatwindow/FloatWindowPlayLayout$b;->c()V

    .line 53
    .line 54
    .line 55
    :cond_2
    const/4 p1, 0x1

    .line 56
    return p1

    .line 57
    :cond_3
    :goto_0
    const/4 p1, 0x0

    .line 58
    return p1
.end method
