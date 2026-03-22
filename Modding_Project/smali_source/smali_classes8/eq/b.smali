.class public final Leq/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lio/bidmachine/util/Tag;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Leq/j;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final c:Leq/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leq/g<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private d:Landroid/view/ViewPropertyAnimator;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/bidmachine/util/Tag;Leq/j;Leq/g;)V
    .locals 1
    .param p1    # Lio/bidmachine/util/Tag;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Leq/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Leq/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/bidmachine/util/Tag;",
            "Leq/j;",
            "Leq/g<",
            "*>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "tag"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "animatorFactory"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "valuesCalculator"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Leq/b;->a:Lio/bidmachine/util/Tag;

    .line 20
    .line 21
    iput-object p2, p0, Leq/b;->b:Leq/j;

    .line 22
    .line 23
    iput-object p3, p0, Leq/b;->c:Leq/g;

    .line 24
    .line 25
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    const/4 p2, 0x0

    .line 28
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Leq/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    return-void
.end method

.method public static synthetic a(Leq/b;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Leq/b;->f(Leq/b;Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final c(Landroid/view/View;Leq/f;)V
    .locals 1
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    invoke-virtual {p2}, Leq/f;->a()F

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Leq/f;->b()F

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p2}, Leq/f;->c()F

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private static final f(Leq/b;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Leq/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    iget-object v0, p0, Leq/b;->a:Lio/bidmachine/util/Tag;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    .line 6
    const-string v3, "Cancel animation"

    .line 7
    .line 8
    invoke-static {v0, v3, v2}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Leq/b;->d:Landroid/view/ViewPropertyAnimator;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/view/ViewPropertyAnimator;

    .line 23
    .line 24
    .line 25
    :cond_0
    iput-object v2, p0, Leq/b;->d:Landroid/view/ViewPropertyAnimator;

    .line 26
    .line 27
    iget-object v0, p0, Leq/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public final d(Landroid/view/View;Lio/bidmachine/rendering/model/AnimationEventType;)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/rendering/model/AnimationEventType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "eventType"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Leq/b;->c:Leq/g;

    .line 12
    .line 13
    invoke-interface {v0, p1, p2}, Leq/g;->a(Landroid/view/View;Lio/bidmachine/rendering/model/AnimationEventType;)Leq/f;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-direct {p0, p1, v0}, Leq/b;->c(Landroid/view/View;Leq/f;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Leq/b;->a:Lio/bidmachine/util/Tag;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string v2, "Prepare animation for event: "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p2, "; initial values: "

    .line 36
    .line 37
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    const/4 v0, 0x0

    .line 48
    new-array v0, v0, [Ljava/lang/Object;

    .line 49
    .line 50
    invoke-static {p1, p2, v0}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method public final e(Landroid/view/View;Lio/bidmachine/rendering/model/AnimationEventType;Ljava/lang/Runnable;Ljava/lang/Runnable;Z)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lio/bidmachine/rendering/model/AnimationEventType;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Runnable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .line 1
    const-string v0, "eventType"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-eqz p3, :cond_0

    .line 7
    .line 8
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 p3, 0x0

    .line 12
    if-nez p1, :cond_2

    .line 13
    .line 14
    iget-object p1, p0, Leq/b;->a:Lio/bidmachine/util/Tag;

    .line 15
    .line 16
    new-instance p5, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    const-string v0, "Animation not started for event: "

    .line 22
    .line 23
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string p2, "; view is null"

    .line 30
    .line 31
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    new-array p3, p3, [Ljava/lang/Object;

    .line 39
    .line 40
    invoke-static {p1, p2, p3}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    if-eqz p4, :cond_1

    .line 44
    .line 45
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    .line 46
    .line 47
    .line 48
    :cond_1
    return-void

    .line 49
    :cond_2
    invoke-virtual {p0}, Leq/b;->g()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_6

    .line 54
    .line 55
    if-eqz p5, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    iget-object p5, p0, Leq/b;->c:Leq/g;

    .line 59
    .line 60
    invoke-interface {p5, p1, p2}, Leq/g;->b(Landroid/view/View;Lio/bidmachine/rendering/model/AnimationEventType;)Leq/f;

    .line 61
    .line 62
    .line 63
    move-result-object p5

    .line 64
    iget-object v0, p0, Leq/b;->b:Leq/j;

    .line 65
    .line 66
    invoke-virtual {v0, p1, p2, p5}, Leq/j;->c(Landroid/view/View;Lio/bidmachine/rendering/model/AnimationEventType;Leq/f;)Landroid/view/ViewPropertyAnimator;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    const-string v1, "; target values: "

    .line 71
    .line 72
    if-nez v0, :cond_5

    .line 73
    .line 74
    invoke-direct {p0, p1, p5}, Leq/b;->c(Landroid/view/View;Leq/f;)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Leq/b;->a:Lio/bidmachine/util/Tag;

    .line 78
    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .line 83
    .line 84
    const-string v2, "Apply values without animation for event: "

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    new-array p3, p3, [Ljava/lang/Object;

    .line 103
    .line 104
    invoke-static {p1, p2, p3}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    if-eqz p4, :cond_4

    .line 108
    .line 109
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    .line 110
    .line 111
    .line 112
    :cond_4
    return-void

    .line 113
    :cond_5
    iget-object p1, p0, Leq/b;->a:Lio/bidmachine/util/Tag;

    .line 114
    .line 115
    new-instance v2, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string v3, "Start animation for event: "

    .line 121
    .line 122
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    new-array p3, p3, [Ljava/lang/Object;

    .line 139
    .line 140
    invoke-static {p1, p2, p3}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    iget-object p1, p0, Leq/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 144
    .line 145
    const/4 p2, 0x1

    .line 146
    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 147
    .line 148
    .line 149
    new-instance p1, Leq/a;

    .line 150
    .line 151
    invoke-direct {p1, p0, p4}, Leq/a;-><init>(Leq/b;Ljava/lang/Runnable;)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 159
    .line 160
    .line 161
    iput-object p1, p0, Leq/b;->d:Landroid/view/ViewPropertyAnimator;

    .line 162
    .line 163
    return-void

    .line 164
    :cond_6
    :goto_0
    iget-object p1, p0, Leq/b;->a:Lio/bidmachine/util/Tag;

    .line 165
    .line 166
    new-instance p5, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    const-string v0, "Animation is already running for event: "

    .line 172
    .line 173
    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    new-array p3, p3, [Ljava/lang/Object;

    .line 184
    .line 185
    invoke-static {p1, p2, p3}, Ltp/s;->g(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    if-eqz p4, :cond_7

    .line 189
    .line 190
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    .line 191
    .line 192
    .line 193
    :cond_7
    return-void
.end method

.method public final g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Leq/b;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
