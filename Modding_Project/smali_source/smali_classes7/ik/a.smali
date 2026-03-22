.class public final Lik/a;
.super Ljava/lang/Object;
.source "ExposureHandler.kt"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lik/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final l:Lik/a$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final a:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Lik/c;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private g:J

.field private h:F

.field private i:I

.field private final j:Landroid/graphics/Rect;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lik/a$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lik/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lik/a;->l:Lik/a$a;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lik/a;->a:Landroid/view/View;

    .line 10
    .line 11
    const/4 p1, 0x1

    .line 12
    iput-boolean p1, p0, Lik/a;->c:Z

    .line 13
    .line 14
    iput-boolean p1, p0, Lik/a;->d:Z

    .line 15
    .line 16
    new-instance p1, Landroid/graphics/Rect;

    .line 17
    .line 18
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object p1, p0, Lik/a;->j:Landroid/graphics/Rect;

    .line 22
    .line 23
    return-void
.end method

.method private final i()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lik/a;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 6
    .line 7
    const-string v1, "ExposureHandler"

    .line 8
    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v3, "mAttachedToWindow="

    .line 15
    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-boolean v3, p0, Lik/a;->b:Z

    .line 20
    .line 21
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v3, ",mHasWindowFocus="

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-boolean v3, p0, Lik/a;->c:Z

    .line 30
    .line 31
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v3, ",mVisibilityAggregated="

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget-boolean v3, p0, Lik/a;->d:Z

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v3, ",mExposure="

    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-boolean v3, p0, Lik/a;->e:Z

    .line 50
    .line 51
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v3, "\uff0cmTimeLimit="

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget v3, p0, Lik/a;->i:I

    .line 60
    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_0
    monitor-enter p0

    .line 72
    :try_start_0
    iget-boolean v0, p0, Lik/a;->b:Z

    .line 73
    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    iget-boolean v0, p0, Lik/a;->c:Z

    .line 77
    .line 78
    if-eqz v0, :cond_1

    .line 79
    .line 80
    iget-boolean v0, p0, Lik/a;->d:Z

    .line 81
    .line 82
    if-eqz v0, :cond_1

    .line 83
    .line 84
    iget-boolean v0, p0, Lik/a;->e:Z

    .line 85
    .line 86
    if-nez v0, :cond_1

    .line 87
    .line 88
    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lik/a;->e:Z

    .line 90
    .line 91
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 92
    .line 93
    .line 94
    move-result-wide v0

    .line 95
    iput-wide v0, p0, Lik/a;->g:J

    .line 96
    .line 97
    iget v0, p0, Lik/a;->i:I

    .line 98
    .line 99
    if-nez v0, :cond_1

    .line 100
    .line 101
    iget-object v0, p0, Lik/a;->f:Lik/c;

    .line 102
    .line 103
    if-eqz v0, :cond_1

    .line 104
    .line 105
    invoke-interface {v0}, Lik/c;->show()V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :catchall_0
    move-exception v0

    .line 110
    goto :goto_1

    .line 111
    :cond_1
    :goto_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .line 113
    monitor-exit p0

    .line 114
    return-void

    .line 115
    :goto_1
    monitor-exit p0

    .line 116
    throw v0
.end method

.method private final j()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lik/a;->k:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 6
    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    const-string v2, "mAttachedToWindow="

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-boolean v2, p0, Lik/a;->b:Z

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v2, ",mHasWindowFocus="

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-boolean v2, p0, Lik/a;->c:Z

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v2, ",mVisibilityAggregated="

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-boolean v2, p0, Lik/a;->d:Z

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, ",mExposure="

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-boolean v2, p0, Lik/a;->e:Z

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v2, "\uff0cmTimeLimit="

    .line 53
    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget v2, p0, Lik/a;->i:I

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const-string v2, "ExposureHandler"

    .line 67
    .line 68
    invoke-virtual {v0, v2, v1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    :cond_0
    iget-boolean v0, p0, Lik/a;->b:Z

    .line 72
    .line 73
    if-eqz v0, :cond_1

    .line 74
    .line 75
    iget-boolean v0, p0, Lik/a;->c:Z

    .line 76
    .line 77
    if-eqz v0, :cond_1

    .line 78
    .line 79
    iget-boolean v0, p0, Lik/a;->d:Z

    .line 80
    .line 81
    if-nez v0, :cond_2

    .line 82
    .line 83
    :cond_1
    iget-boolean v0, p0, Lik/a;->e:Z

    .line 84
    .line 85
    if-eqz v0, :cond_2

    .line 86
    .line 87
    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lik/a;->e:Z

    .line 89
    .line 90
    iget v0, p0, Lik/a;->i:I

    .line 91
    .line 92
    if-lez v0, :cond_2

    .line 93
    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 95
    .line 96
    .line 97
    move-result-wide v0

    .line 98
    iget-wide v2, p0, Lik/a;->g:J

    .line 99
    .line 100
    sub-long/2addr v0, v2

    .line 101
    iget v2, p0, Lik/a;->i:I

    .line 102
    .line 103
    int-to-long v2, v2

    .line 104
    cmp-long v0, v0, v2

    .line 105
    .line 106
    if-lez v0, :cond_2

    .line 107
    .line 108
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 109
    .line 110
    const-string v1, "TAG"

    .line 111
    .line 112
    const-string v2, "tryStopExposure show "

    .line 113
    .line 114
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lik/a;->f:Lik/c;

    .line 118
    .line 119
    if-eqz v0, :cond_2

    .line 120
    .line 121
    invoke-interface {v0}, Lik/c;->show()V

    .line 122
    .line 123
    .line 124
    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lik/a;->b:Z

    .line 3
    .line 4
    iget-object v0, p0, Lik/a;->a:Landroid/view/View;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lik/a;->b:Z

    .line 3
    .line 4
    iget-object v0, p0, Lik/a;->a:Landroid/view/View;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 11
    .line 12
    .line 13
    iget-boolean v0, p0, Lik/a;->k:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 18
    .line 19
    const-string v1, "ExposureHandler"

    .line 20
    .line 21
    const-string v2, "onDetachedFromWindow"

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    invoke-direct {p0}, Lik/a;->j()V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method public final c(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lik/a;->d:Z

    .line 2
    .line 3
    iget-boolean v0, p0, Lik/a;->k:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "onVisibilityAggregated "

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v1, "ExposureHandler"

    .line 27
    .line 28
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-direct {p0}, Lik/a;->j()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final d(Z)V
    .locals 3

    .line 1
    iput-boolean p1, p0, Lik/a;->c:Z

    .line 2
    .line 3
    iget-boolean v0, p0, Lik/a;->k:Z

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 8
    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "onWindowFocusChanged "

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v1, "ExposureHandler"

    .line 27
    .line 28
    invoke-virtual {v0, v1, p1}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    invoke-direct {p0}, Lik/a;->j()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method public final e(Lik/c;)V
    .locals 1
    .param p1    # Lik/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lik/a;->f:Lik/c;

    .line 7
    .line 8
    return-void
.end method

.method public final f(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lik/a;->k:Z

    .line 2
    .line 3
    return-void
.end method

.method public final g(F)V
    .locals 0

    .line 1
    iput p1, p0, Lik/a;->h:F

    .line 2
    .line 3
    return-void
.end method

.method public final h(I)V
    .locals 0

    .line 1
    iput p1, p0, Lik/a;->i:I

    .line 2
    .line 3
    return-void
.end method

.method public onPreDraw()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lik/a;->a:Landroid/view/View;

    .line 2
    .line 3
    iget-object v1, p0, Lik/a;->j:Landroid/graphics/Rect;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    const-string v2, "ExposureHandler"

    .line 11
    .line 12
    if-eqz v0, :cond_5

    .line 13
    .line 14
    iget-object v0, p0, Lik/a;->a:Landroid/view/View;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_5

    .line 21
    .line 22
    iget v0, p0, Lik/a;->h:F

    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    cmpl-float v0, v0, v3

    .line 26
    .line 27
    if-lez v0, :cond_3

    .line 28
    .line 29
    iget-object v0, p0, Lik/a;->j:Landroid/graphics/Rect;

    .line 30
    .line 31
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    .line 32
    .line 33
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 34
    .line 35
    sub-int/2addr v3, v0

    .line 36
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    int-to-float v0, v0

    .line 41
    iget-object v3, p0, Lik/a;->a:Landroid/view/View;

    .line 42
    .line 43
    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    int-to-float v3, v3

    .line 48
    iget v4, p0, Lik/a;->h:F

    .line 49
    .line 50
    mul-float/2addr v3, v4

    .line 51
    cmpl-float v0, v0, v3

    .line 52
    .line 53
    if-lez v0, :cond_1

    .line 54
    .line 55
    iget-object v0, p0, Lik/a;->j:Landroid/graphics/Rect;

    .line 56
    .line 57
    iget v3, v0, Landroid/graphics/Rect;->right:I

    .line 58
    .line 59
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 60
    .line 61
    sub-int/2addr v3, v0

    .line 62
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    int-to-float v0, v0

    .line 67
    iget-object v3, p0, Lik/a;->a:Landroid/view/View;

    .line 68
    .line 69
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    int-to-float v3, v3

    .line 74
    iget v4, p0, Lik/a;->h:F

    .line 75
    .line 76
    mul-float/2addr v3, v4

    .line 77
    cmpl-float v0, v0, v3

    .line 78
    .line 79
    if-lez v0, :cond_1

    .line 80
    .line 81
    iget-boolean v0, p0, Lik/a;->k:Z

    .line 82
    .line 83
    if-eqz v0, :cond_0

    .line 84
    .line 85
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 86
    .line 87
    const-string v3, "mShowRatio>0, tryExposure"

    .line 88
    .line 89
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_0
    invoke-direct {p0}, Lik/a;->i()V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_1
    iget-boolean v0, p0, Lik/a;->k:Z

    .line 97
    .line 98
    if-eqz v0, :cond_2

    .line 99
    .line 100
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 101
    .line 102
    const-string v3, "tryStopExposure"

    .line 103
    .line 104
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    :cond_2
    invoke-direct {p0}, Lik/a;->j()V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_3
    iget-boolean v0, p0, Lik/a;->k:Z

    .line 112
    .line 113
    if-eqz v0, :cond_4

    .line 114
    .line 115
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 116
    .line 117
    const-string v3, "mShowRatio=0,tryExposure"

    .line 118
    .line 119
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    .line 121
    .line 122
    :cond_4
    invoke-direct {p0}, Lik/a;->i()V

    .line 123
    .line 124
    .line 125
    :goto_0
    return v1

    .line 126
    :cond_5
    iget-boolean v0, p0, Lik/a;->k:Z

    .line 127
    .line 128
    if-eqz v0, :cond_6

    .line 129
    .line 130
    sget-object v0, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 131
    .line 132
    const-string v3, "!visible "

    .line 133
    .line 134
    invoke-virtual {v0, v2, v3}, Lcom/startshorts/androidplayer/log/Logger;->h(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :cond_6
    invoke-direct {p0}, Lik/a;->j()V

    .line 138
    .line 139
    .line 140
    return v1
.end method
