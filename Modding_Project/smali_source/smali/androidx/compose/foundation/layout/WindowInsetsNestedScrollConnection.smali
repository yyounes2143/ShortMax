.class final Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;
.super Ljava/lang/Object;
.source "WindowInsetsConnection.android.kt"

# interfaces
.implements Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;
.implements Landroid/view/WindowInsetsAnimationControlListener;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1e
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private animationController:Landroid/view/WindowInsetsAnimationController;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private animationJob:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final cancellationSignal:Landroid/os/CancellationSignal;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private continuation:Lgt/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lgt/i<",
            "-",
            "Landroid/view/WindowInsetsAnimationController;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final density:Landroidx/compose/ui/unit/Density;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isControllerRequested:Z

.field private partialConsumption:F

.field private final sideCalculator:Landroidx/compose/foundation/layout/SideCalculator;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final view:Landroid/view/View;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final windowInsets:Landroidx/compose/foundation/layout/AndroidWindowInsets;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/compose/foundation/layout/AndroidWindowInsets;Landroid/view/View;Landroidx/compose/foundation/layout/SideCalculator;Landroidx/compose/ui/unit/Density;)V
    .locals 1
    .param p1    # Landroidx/compose/foundation/layout/AndroidWindowInsets;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroidx/compose/foundation/layout/SideCalculator;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroidx/compose/ui/unit/Density;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "windowInsets"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "view"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "sideCalculator"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "density"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->windowInsets:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 25
    .line 26
    iput-object p2, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->view:Landroid/view/View;

    .line 27
    .line 28
    iput-object p3, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->sideCalculator:Landroidx/compose/foundation/layout/SideCalculator;

    .line 29
    .line 30
    iput-object p4, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->density:Landroidx/compose/ui/unit/Density;

    .line 31
    .line 32
    new-instance p1, Landroid/os/CancellationSignal;

    .line 33
    .line 34
    invoke-direct {p1}, Landroid/os/CancellationSignal;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->cancellationSignal:Landroid/os/CancellationSignal;

    .line 38
    .line 39
    return-void
.end method

.method public static final synthetic access$adjustInsets(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;F)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->adjustInsets(F)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$fling-huYlsQE(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;JFZLrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->fling-huYlsQE(JFZLrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getAnimationController(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->getAnimationController(Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getAnimationJob$p(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;)Lkotlinx/coroutines/r;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationJob:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic access$requestAnimationController(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->requestAnimationController()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$setAnimationController$p(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;Landroid/view/WindowInsetsAnimationController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationController:Landroid/view/WindowInsetsAnimationController;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setAnimationJob$p(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;Lkotlinx/coroutines/r;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationJob:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setContinuation$p(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;Lgt/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->continuation:Lgt/i;

    .line 2
    .line 3
    return-void
.end method

.method private final adjustInsets(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationController:Landroid/view/WindowInsetsAnimationController;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Landroidx/compose/foundation/layout/b;->a(Landroid/view/WindowInsetsAnimationController;)Landroid/graphics/Insets;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const-string v2, "it.currentInsets"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->sideCalculator:Landroidx/compose/foundation/layout/SideCalculator;

    .line 15
    .line 16
    invoke-static {p1}, Lbt/a;->c(F)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-interface {v2, v1, p1}, Landroidx/compose/foundation/layout/SideCalculator;->adjustInsets(Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const/high16 v1, 0x3f800000    # 1.0f

    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-static {v0, p1, v1, v2}, Landroidx/compose/foundation/layout/c;->a(Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;FF)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method private final animationEnded()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationController:Landroid/view/WindowInsetsAnimationController;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-static {v0}, Landroidx/compose/foundation/layout/k;->a(Landroid/view/WindowInsetsAnimationController;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationController:Landroid/view/WindowInsetsAnimationController;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->windowInsets:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 17
    .line 18
    invoke-virtual {v2}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->isVisible()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-static {v0, v2}, Landroidx/compose/foundation/layout/j;->a(Landroid/view/WindowInsetsAnimationController;Z)V

    .line 23
    .line 24
    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    iput-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationController:Landroid/view/WindowInsetsAnimationController;

    .line 27
    .line 28
    iget-object v2, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->continuation:Lgt/i;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    sget-object v3, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$animationEnded$1;->INSTANCE:Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$animationEnded$1;

    .line 33
    .line 34
    invoke-interface {v2, v0, v3}, Lgt/i;->e(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 35
    .line 36
    .line 37
    :cond_1
    iput-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->continuation:Lgt/i;

    .line 38
    .line 39
    iget-object v2, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationJob:Lkotlinx/coroutines/r;

    .line 40
    .line 41
    if-eqz v2, :cond_2

    .line 42
    .line 43
    invoke-static {v2, v0, v1, v0}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_2
    iput-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationJob:Lkotlinx/coroutines/r;

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    iput v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->partialConsumption:F

    .line 50
    .line 51
    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->isControllerRequested:Z

    .line 53
    .line 54
    return-void
.end method

.method private final fling-huYlsQE(JFZLrs/c;)Ljava/lang/Object;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JFZ",
            "Lrs/c<",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    move/from16 v2, p4

    .line 6
    .line 7
    move-object/from16 v3, p5

    .line 8
    .line 9
    instance-of v4, v3, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;

    .line 10
    .line 11
    if-eqz v4, :cond_0

    .line 12
    .line 13
    move-object v4, v3

    .line 14
    check-cast v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;

    .line 15
    .line 16
    iget v5, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->label:I

    .line 17
    .line 18
    const/high16 v6, -0x80000000

    .line 19
    .line 20
    and-int v7, v5, v6

    .line 21
    .line 22
    if-eqz v7, :cond_0

    .line 23
    .line 24
    sub-int/2addr v5, v6

    .line 25
    iput v5, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->label:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;

    .line 29
    .line 30
    invoke-direct {v4, v0, v3}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;-><init>(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;Lrs/c;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object v3, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->result:Ljava/lang/Object;

    .line 34
    .line 35
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    iget v6, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->label:I

    .line 40
    .line 41
    const/4 v7, 0x3

    .line 42
    const/4 v8, 0x2

    .line 43
    const/4 v9, 0x0

    .line 44
    const/4 v10, 0x0

    .line 45
    const/4 v11, 0x1

    .line 46
    if-eqz v6, :cond_4

    .line 47
    .line 48
    if-eq v6, v11, :cond_3

    .line 49
    .line 50
    if-eq v6, v8, :cond_2

    .line 51
    .line 52
    if-ne v6, v7, :cond_1

    .line 53
    .line 54
    iget-wide v1, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->J$0:J

    .line 55
    .line 56
    iget-object v4, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->L$0:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;

    .line 59
    .line 60
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto/16 :goto_5

    .line 64
    .line 65
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 66
    .line 67
    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 68
    .line 69
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw v1

    .line 73
    :cond_2
    iget-wide v1, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->J$0:J

    .line 74
    .line 75
    iget-object v5, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->L$1:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast v5, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 78
    .line 79
    iget-object v4, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->L$0:Ljava/lang/Object;

    .line 80
    .line 81
    check-cast v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;

    .line 82
    .line 83
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    goto/16 :goto_7

    .line 87
    .line 88
    :cond_3
    iget v1, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->F$0:F

    .line 89
    .line 90
    iget-wide v12, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->J$0:J

    .line 91
    .line 92
    iget-object v2, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->L$0:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v2, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;

    .line 95
    .line 96
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_4
    invoke-static {v3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    iget-object v3, v0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationJob:Lkotlinx/coroutines/r;

    .line 104
    .line 105
    if-eqz v3, :cond_5

    .line 106
    .line 107
    invoke-static {v3, v9, v11, v9}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 108
    .line 109
    .line 110
    :cond_5
    iput-object v9, v0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationJob:Lkotlinx/coroutines/r;

    .line 111
    .line 112
    iput v10, v0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->partialConsumption:F

    .line 113
    .line 114
    cmpg-float v3, v1, v10

    .line 115
    .line 116
    if-nez v3, :cond_6

    .line 117
    .line 118
    if-eqz v2, :cond_7

    .line 119
    .line 120
    :cond_6
    iget-object v3, v0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationController:Landroid/view/WindowInsetsAnimationController;

    .line 121
    .line 122
    if-nez v3, :cond_8

    .line 123
    .line 124
    iget-object v3, v0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->windowInsets:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 125
    .line 126
    invoke-virtual {v3}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->isVisible()Z

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    if-ne v3, v2, :cond_8

    .line 131
    .line 132
    :cond_7
    sget-object v1, Landroidx/compose/ui/unit/Velocity;->Companion:Landroidx/compose/ui/unit/Velocity$Companion;

    .line 133
    .line 134
    invoke-virtual {v1}, Landroidx/compose/ui/unit/Velocity$Companion;->getZero-9UxMQ8M()J

    .line 135
    .line 136
    .line 137
    move-result-wide v1

    .line 138
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    return-object v1

    .line 143
    :cond_8
    iput-object v0, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->L$0:Ljava/lang/Object;

    .line 144
    .line 145
    move-wide/from16 v2, p1

    .line 146
    .line 147
    iput-wide v2, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->J$0:J

    .line 148
    .line 149
    iput v1, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->F$0:F

    .line 150
    .line 151
    iput v11, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->label:I

    .line 152
    .line 153
    invoke-direct {v0, v4}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->getAnimationController(Lrs/c;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    if-ne v6, v5, :cond_9

    .line 158
    .line 159
    return-object v5

    .line 160
    :cond_9
    move-wide v12, v2

    .line 161
    move-object v3, v6

    .line 162
    move-object v2, v0

    .line 163
    :goto_1
    invoke-static {v3}, Landroidx/compose/foundation/layout/g;->a(Ljava/lang/Object;)Landroid/view/WindowInsetsAnimationController;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    if-nez v3, :cond_a

    .line 168
    .line 169
    sget-object v1, Landroidx/compose/ui/unit/Velocity;->Companion:Landroidx/compose/ui/unit/Velocity$Companion;

    .line 170
    .line 171
    invoke-virtual {v1}, Landroidx/compose/ui/unit/Velocity$Companion;->getZero-9UxMQ8M()J

    .line 172
    .line 173
    .line 174
    move-result-wide v1

    .line 175
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    return-object v1

    .line 180
    :cond_a
    iget-object v6, v2, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->sideCalculator:Landroidx/compose/foundation/layout/SideCalculator;

    .line 181
    .line 182
    invoke-static {v3}, Landroidx/compose/foundation/layout/h;->a(Landroid/view/WindowInsetsAnimationController;)Landroid/graphics/Insets;

    .line 183
    .line 184
    .line 185
    move-result-object v14

    .line 186
    const-string v15, "animationController.hiddenStateInsets"

    .line 187
    .line 188
    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-interface {v6, v14}, Landroidx/compose/foundation/layout/SideCalculator;->valueOf(Landroid/graphics/Insets;)I

    .line 192
    .line 193
    .line 194
    move-result v6

    .line 195
    iget-object v14, v2, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->sideCalculator:Landroidx/compose/foundation/layout/SideCalculator;

    .line 196
    .line 197
    invoke-static {v3}, Landroidx/compose/foundation/layout/i;->a(Landroid/view/WindowInsetsAnimationController;)Landroid/graphics/Insets;

    .line 198
    .line 199
    .line 200
    move-result-object v15

    .line 201
    const-string v11, "animationController.shownStateInsets"

    .line 202
    .line 203
    invoke-static {v15, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    invoke-interface {v14, v15}, Landroidx/compose/foundation/layout/SideCalculator;->valueOf(Landroid/graphics/Insets;)I

    .line 207
    .line 208
    .line 209
    move-result v11

    .line 210
    invoke-static {v3}, Landroidx/compose/foundation/layout/b;->a(Landroid/view/WindowInsetsAnimationController;)Landroid/graphics/Insets;

    .line 211
    .line 212
    .line 213
    move-result-object v14

    .line 214
    const-string v15, "animationController.currentInsets"

    .line 215
    .line 216
    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    iget-object v15, v2, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->sideCalculator:Landroidx/compose/foundation/layout/SideCalculator;

    .line 220
    .line 221
    invoke-interface {v15, v14}, Landroidx/compose/foundation/layout/SideCalculator;->valueOf(Landroid/graphics/Insets;)I

    .line 222
    .line 223
    .line 224
    move-result v15

    .line 225
    cmpg-float v14, v1, v10

    .line 226
    .line 227
    const/16 v16, 0x0

    .line 228
    .line 229
    if-gtz v14, :cond_b

    .line 230
    .line 231
    if-eq v15, v6, :cond_c

    .line 232
    .line 233
    :cond_b
    cmpl-float v14, v1, v10

    .line 234
    .line 235
    if-ltz v14, :cond_e

    .line 236
    .line 237
    if-ne v15, v11, :cond_e

    .line 238
    .line 239
    :cond_c
    if-ne v15, v11, :cond_d

    .line 240
    .line 241
    const/4 v11, 0x1

    .line 242
    goto :goto_2

    .line 243
    :cond_d
    move/from16 v11, v16

    .line 244
    .line 245
    :goto_2
    invoke-static {v3, v11}, Landroidx/compose/foundation/layout/j;->a(Landroid/view/WindowInsetsAnimationController;Z)V

    .line 246
    .line 247
    .line 248
    iput-object v9, v2, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationController:Landroid/view/WindowInsetsAnimationController;

    .line 249
    .line 250
    sget-object v1, Landroidx/compose/ui/unit/Velocity;->Companion:Landroidx/compose/ui/unit/Velocity$Companion;

    .line 251
    .line 252
    invoke-virtual {v1}, Landroidx/compose/ui/unit/Velocity$Companion;->getZero-9UxMQ8M()J

    .line 253
    .line 254
    .line 255
    move-result-wide v1

    .line 256
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    return-object v1

    .line 261
    :cond_e
    new-instance v9, Landroidx/compose/foundation/layout/SplineBasedFloatDecayAnimationSpec;

    .line 262
    .line 263
    iget-object v14, v2, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->density:Landroidx/compose/ui/unit/Density;

    .line 264
    .line 265
    invoke-direct {v9, v14}, Landroidx/compose/foundation/layout/SplineBasedFloatDecayAnimationSpec;-><init>(Landroidx/compose/ui/unit/Density;)V

    .line 266
    .line 267
    .line 268
    int-to-float v14, v15

    .line 269
    invoke-virtual {v9, v1}, Landroidx/compose/foundation/layout/SplineBasedFloatDecayAnimationSpec;->flingDistance(F)F

    .line 270
    .line 271
    .line 272
    move-result v17

    .line 273
    add-float v14, v14, v17

    .line 274
    .line 275
    int-to-float v8, v6

    .line 276
    sub-float v17, v14, v8

    .line 277
    .line 278
    sub-int v10, v11, v6

    .line 279
    .line 280
    int-to-float v10, v10

    .line 281
    div-float v17, v17, v10

    .line 282
    .line 283
    const/high16 v10, 0x3f000000    # 0.5f

    .line 284
    .line 285
    cmpl-float v10, v17, v10

    .line 286
    .line 287
    if-lez v10, :cond_f

    .line 288
    .line 289
    const/16 v23, 0x1

    .line 290
    .line 291
    goto :goto_3

    .line 292
    :cond_f
    move/from16 v23, v16

    .line 293
    .line 294
    :goto_3
    if-eqz v23, :cond_10

    .line 295
    .line 296
    move/from16 v17, v11

    .line 297
    .line 298
    goto :goto_4

    .line 299
    :cond_10
    move/from16 v17, v6

    .line 300
    .line 301
    :goto_4
    int-to-float v10, v11

    .line 302
    cmpl-float v10, v14, v10

    .line 303
    .line 304
    if-gtz v10, :cond_11

    .line 305
    .line 306
    cmpg-float v8, v14, v8

    .line 307
    .line 308
    if-gez v8, :cond_12

    .line 309
    .line 310
    :cond_11
    move v8, v15

    .line 311
    goto :goto_6

    .line 312
    :cond_12
    new-instance v6, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3;

    .line 313
    .line 314
    const/16 v21, 0x0

    .line 315
    .line 316
    move-object v14, v6

    .line 317
    move v8, v15

    .line 318
    move-object v15, v2

    .line 319
    move/from16 v16, v8

    .line 320
    .line 321
    move/from16 v18, v1

    .line 322
    .line 323
    move-object/from16 v19, v3

    .line 324
    .line 325
    move/from16 v20, v23

    .line 326
    .line 327
    invoke-direct/range {v14 .. v21}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$3;-><init>(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;IIFLandroid/view/WindowInsetsAnimationController;ZLrs/c;)V

    .line 328
    .line 329
    .line 330
    iput-object v2, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->L$0:Ljava/lang/Object;

    .line 331
    .line 332
    iput-wide v12, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->J$0:J

    .line 333
    .line 334
    iput v7, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->label:I

    .line 335
    .line 336
    invoke-static {v6, v4}, Lkotlinx/coroutines/i;->f(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    if-ne v1, v5, :cond_13

    .line 341
    .line 342
    return-object v5

    .line 343
    :cond_13
    move-object v4, v2

    .line 344
    move-wide v1, v12

    .line 345
    :goto_5
    iget-object v3, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->sideCalculator:Landroidx/compose/foundation/layout/SideCalculator;

    .line 346
    .line 347
    const/4 v4, 0x0

    .line 348
    invoke-interface {v3, v1, v2, v4}, Landroidx/compose/foundation/layout/SideCalculator;->consumedVelocity-QWom1Mo(JF)J

    .line 349
    .line 350
    .line 351
    move-result-wide v1

    .line 352
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    return-object v1

    .line 357
    :goto_6
    new-instance v7, Lkotlin/jvm/internal/Ref$FloatRef;

    .line 358
    .line 359
    invoke-direct {v7}, Lkotlin/jvm/internal/Ref$FloatRef;-><init>()V

    .line 360
    .line 361
    .line 362
    new-instance v10, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2;

    .line 363
    .line 364
    const/16 v24, 0x0

    .line 365
    .line 366
    move-object v14, v10

    .line 367
    move-object v15, v2

    .line 368
    move/from16 v16, v8

    .line 369
    .line 370
    move/from16 v17, v1

    .line 371
    .line 372
    move-object/from16 v18, v9

    .line 373
    .line 374
    move/from16 v19, v6

    .line 375
    .line 376
    move/from16 v20, v11

    .line 377
    .line 378
    move-object/from16 v21, v7

    .line 379
    .line 380
    move-object/from16 v22, v3

    .line 381
    .line 382
    invoke-direct/range {v14 .. v24}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$2;-><init>(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;IFLandroidx/compose/foundation/layout/SplineBasedFloatDecayAnimationSpec;IILkotlin/jvm/internal/Ref$FloatRef;Landroid/view/WindowInsetsAnimationController;ZLrs/c;)V

    .line 383
    .line 384
    .line 385
    iput-object v2, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->L$0:Ljava/lang/Object;

    .line 386
    .line 387
    iput-object v7, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->L$1:Ljava/lang/Object;

    .line 388
    .line 389
    iput-wide v12, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->J$0:J

    .line 390
    .line 391
    const/4 v1, 0x2

    .line 392
    iput v1, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$fling$1;->label:I

    .line 393
    .line 394
    invoke-static {v10, v4}, Lkotlinx/coroutines/i;->f(Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 395
    .line 396
    .line 397
    move-result-object v1

    .line 398
    if-ne v1, v5, :cond_14

    .line 399
    .line 400
    return-object v5

    .line 401
    :cond_14
    move-object v4, v2

    .line 402
    move-object v5, v7

    .line 403
    move-wide v1, v12

    .line 404
    :goto_7
    iget-object v3, v4, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->sideCalculator:Landroidx/compose/foundation/layout/SideCalculator;

    .line 405
    .line 406
    iget v4, v5, Lkotlin/jvm/internal/Ref$FloatRef;->element:F

    .line 407
    .line 408
    invoke-interface {v3, v1, v2, v4}, Landroidx/compose/foundation/layout/SideCalculator;->consumedVelocity-QWom1Mo(JF)J

    .line 409
    .line 410
    .line 411
    move-result-wide v1

    .line 412
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/Velocity;->box-impl(J)Landroidx/compose/ui/unit/Velocity;

    .line 413
    .line 414
    .line 415
    move-result-object v1

    .line 416
    return-object v1
.end method

.method private final getAnimationController(Lrs/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Landroid/view/WindowInsetsAnimationController;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationController:Landroid/view/WindowInsetsAnimationController;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lkotlinx/coroutines/e;

    .line 6
    .line 7
    invoke-static {p1}, Lkotlin/coroutines/intrinsics/a;->c(Lrs/c;)Lrs/c;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-direct {v0, v1, v2}, Lkotlinx/coroutines/e;-><init>(Lrs/c;I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lkotlinx/coroutines/e;->H()V

    .line 16
    .line 17
    .line 18
    invoke-static {p0, v0}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->access$setContinuation$p(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;Lgt/i;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->access$requestAnimationController(Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lkotlinx/coroutines/e;->B()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    if-ne v0, v1, :cond_0

    .line 33
    .line 34
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/f;->c(Lrs/c;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    return-object v0
.end method

.method private final requestAnimationController()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->isControllerRequested:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->isControllerRequested:Z

    .line 7
    .line 8
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->view:Landroid/view/View;

    .line 9
    .line 10
    invoke-static {v0}, Landroidx/compose/foundation/layout/d;->a(Landroid/view/View;)Landroid/view/WindowInsetsController;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    if-eqz v1, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->windowInsets:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->getType$foundation_layout_release()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    iget-object v6, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->cancellationSignal:Landroid/os/CancellationSignal;

    .line 23
    .line 24
    invoke-static {p0}, Landroidx/compose/foundation/layout/e;->a(Ljava/lang/Object;)Landroid/view/WindowInsetsAnimationControlListener;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    const-wide/16 v3, -0x1

    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    invoke-static/range {v1 .. v7}, Landroidx/compose/foundation/layout/f;->a(Landroid/view/WindowInsetsController;IJLandroid/view/animation/Interpolator;Landroid/os/CancellationSignal;Landroid/view/WindowInsetsAnimationControlListener;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method private final scroll-8S9VItk(JF)J
    .locals 7

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationJob:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    iput-object v2, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationJob:Lkotlinx/coroutines/r;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationController:Landroid/view/WindowInsetsAnimationController;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    cmpg-float v3, p3, v2

    .line 16
    .line 17
    if-nez v3, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    iget-object v3, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->windowInsets:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 21
    .line 22
    invoke-virtual {v3}, Landroidx/compose/foundation/layout/AndroidWindowInsets;->isVisible()Z

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    cmpl-float v4, p3, v2

    .line 27
    .line 28
    if-lez v4, :cond_2

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_2
    const/4 v1, 0x0

    .line 32
    :goto_0
    if-ne v3, v1, :cond_3

    .line 33
    .line 34
    if-nez v0, :cond_3

    .line 35
    .line 36
    :goto_1
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    .line 39
    .line 40
    .line 41
    move-result-wide p1

    .line 42
    return-wide p1

    .line 43
    :cond_3
    if-nez v0, :cond_4

    .line 44
    .line 45
    iput v2, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->partialConsumption:F

    .line 46
    .line 47
    invoke-direct {p0}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->requestAnimationController()V

    .line 48
    .line 49
    .line 50
    iget-object p3, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->sideCalculator:Landroidx/compose/foundation/layout/SideCalculator;

    .line 51
    .line 52
    invoke-interface {p3, p1, p2}, Landroidx/compose/foundation/layout/SideCalculator;->consumedOffsets-MK-Hz9U(J)J

    .line 53
    .line 54
    .line 55
    move-result-wide p1

    .line 56
    return-wide p1

    .line 57
    :cond_4
    iget-object v1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->sideCalculator:Landroidx/compose/foundation/layout/SideCalculator;

    .line 58
    .line 59
    invoke-static {v0}, Landroidx/compose/foundation/layout/h;->a(Landroid/view/WindowInsetsAnimationController;)Landroid/graphics/Insets;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    const-string v5, "animationController.hiddenStateInsets"

    .line 64
    .line 65
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v1, v3}, Landroidx/compose/foundation/layout/SideCalculator;->valueOf(Landroid/graphics/Insets;)I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    iget-object v3, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->sideCalculator:Landroidx/compose/foundation/layout/SideCalculator;

    .line 73
    .line 74
    invoke-static {v0}, Landroidx/compose/foundation/layout/i;->a(Landroid/view/WindowInsetsAnimationController;)Landroid/graphics/Insets;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    const-string v6, "animationController.shownStateInsets"

    .line 79
    .line 80
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    invoke-interface {v3, v5}, Landroidx/compose/foundation/layout/SideCalculator;->valueOf(Landroid/graphics/Insets;)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    invoke-static {v0}, Landroidx/compose/foundation/layout/b;->a(Landroid/view/WindowInsetsAnimationController;)Landroid/graphics/Insets;

    .line 88
    .line 89
    .line 90
    move-result-object v5

    .line 91
    const-string v6, "animationController.currentInsets"

    .line 92
    .line 93
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    iget-object v6, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->sideCalculator:Landroidx/compose/foundation/layout/SideCalculator;

    .line 97
    .line 98
    invoke-interface {v6, v5}, Landroidx/compose/foundation/layout/SideCalculator;->valueOf(Landroid/graphics/Insets;)I

    .line 99
    .line 100
    .line 101
    move-result v6

    .line 102
    if-lez v4, :cond_5

    .line 103
    .line 104
    move v4, v3

    .line 105
    goto :goto_2

    .line 106
    :cond_5
    move v4, v1

    .line 107
    :goto_2
    if-ne v6, v4, :cond_6

    .line 108
    .line 109
    iput v2, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->partialConsumption:F

    .line 110
    .line 111
    sget-object p1, Landroidx/compose/ui/geometry/Offset;->Companion:Landroidx/compose/ui/geometry/Offset$Companion;

    .line 112
    .line 113
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Offset$Companion;->getZero-F1C5BW0()J

    .line 114
    .line 115
    .line 116
    move-result-wide p1

    .line 117
    return-wide p1

    .line 118
    :cond_6
    int-to-float v4, v6

    .line 119
    add-float/2addr v4, p3

    .line 120
    iget p3, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->partialConsumption:F

    .line 121
    .line 122
    add-float/2addr v4, p3

    .line 123
    invoke-static {v4}, Lbt/a;->c(F)I

    .line 124
    .line 125
    .line 126
    move-result p3

    .line 127
    invoke-static {p3, v1, v3}, Lkotlin/ranges/e;->n(III)I

    .line 128
    .line 129
    .line 130
    move-result p3

    .line 131
    invoke-static {v4}, Lbt/a;->c(F)I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    int-to-float v1, v1

    .line 136
    sub-float/2addr v4, v1

    .line 137
    iput v4, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->partialConsumption:F

    .line 138
    .line 139
    if-eq p3, v6, :cond_7

    .line 140
    .line 141
    iget-object v1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->sideCalculator:Landroidx/compose/foundation/layout/SideCalculator;

    .line 142
    .line 143
    invoke-interface {v1, v5, p3}, Landroidx/compose/foundation/layout/SideCalculator;->adjustInsets(Landroid/graphics/Insets;I)Landroid/graphics/Insets;

    .line 144
    .line 145
    .line 146
    move-result-object p3

    .line 147
    const/high16 v1, 0x3f800000    # 1.0f

    .line 148
    .line 149
    invoke-static {v0, p3, v1, v2}, Landroidx/compose/foundation/layout/c;->a(Landroid/view/WindowInsetsAnimationController;Landroid/graphics/Insets;FF)V

    .line 150
    .line 151
    .line 152
    :cond_7
    iget-object p3, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->sideCalculator:Landroidx/compose/foundation/layout/SideCalculator;

    .line 153
    .line 154
    invoke-interface {p3, p1, p2}, Landroidx/compose/foundation/layout/SideCalculator;->consumedOffsets-MK-Hz9U(J)J

    .line 155
    .line 156
    .line 157
    move-result-wide p1

    .line 158
    return-wide p1
.end method


# virtual methods
.method public final dispose()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->continuation:Lgt/i;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    sget-object v2, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$dispose$1;->INSTANCE:Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$dispose$1;

    .line 7
    .line 8
    invoke-interface {v0, v1, v2}, Lgt/i;->e(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationJob:Lkotlinx/coroutines/r;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-static {v0, v1, v2, v1}, Lkotlinx/coroutines/r$a;->b(Lkotlinx/coroutines/r;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationController:Landroid/view/WindowInsetsAnimationController;

    .line 20
    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-static {v0}, Landroidx/compose/foundation/layout/b;->a(Landroid/view/WindowInsetsAnimationController;)Landroid/graphics/Insets;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-static {v0}, Landroidx/compose/foundation/layout/h;->a(Landroid/view/WindowInsetsAnimationController;)Landroid/graphics/Insets;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    xor-int/2addr v1, v2

    .line 36
    invoke-static {v0, v1}, Landroidx/compose/foundation/layout/j;->a(Landroid/view/WindowInsetsAnimationController;Z)V

    .line 37
    .line 38
    .line 39
    :cond_2
    return-void
.end method

.method public final getDensity()Landroidx/compose/ui/unit/Density;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->density:Landroidx/compose/ui/unit/Density;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSideCalculator()Landroidx/compose/foundation/layout/SideCalculator;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->sideCalculator:Landroidx/compose/foundation/layout/SideCalculator;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->view:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWindowInsets()Landroidx/compose/foundation/layout/AndroidWindowInsets;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->windowInsets:Landroidx/compose/foundation/layout/AndroidWindowInsets;

    .line 2
    .line 3
    return-object v0
.end method

.method public onCancelled(Landroid/view/WindowInsetsAnimationController;)V
    .locals 0
    .param p1    # Landroid/view/WindowInsetsAnimationController;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationEnded()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onFinished(Landroid/view/WindowInsetsAnimationController;)V
    .locals 1
    .param p1    # Landroid/view/WindowInsetsAnimationController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "controller"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationEnded()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onPostFling-RZ2iAVY(JJLrs/c;)Ljava/lang/Object;
    .locals 7
    .param p5    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lrs/c<",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->sideCalculator:Landroidx/compose/foundation/layout/SideCalculator;

    .line 2
    .line 3
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    invoke-static {p3, p4}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-interface {p1, p2, v0}, Landroidx/compose/foundation/layout/SideCalculator;->showMotion(FF)F

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    const/4 v5, 0x1

    .line 16
    move-object v1, p0

    .line 17
    move-wide v2, p3

    .line 18
    move-object v6, p5

    .line 19
    invoke-direct/range {v1 .. v6}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->fling-huYlsQE(JFZLrs/c;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public onPostScroll-DzOQY0M(JJI)J
    .locals 0

    .line 1
    iget-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->sideCalculator:Landroidx/compose/foundation/layout/SideCalculator;

    .line 2
    .line 3
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    invoke-static {p3, p4}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 8
    .line 9
    .line 10
    move-result p5

    .line 11
    invoke-interface {p1, p2, p5}, Landroidx/compose/foundation/layout/SideCalculator;->showMotion(FF)F

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    invoke-direct {p0, p3, p4, p1}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->scroll-8S9VItk(JF)J

    .line 16
    .line 17
    .line 18
    move-result-wide p1

    .line 19
    return-wide p1
.end method

.method public onPreFling-QWom1Mo(JLrs/c;)Ljava/lang/Object;
    .locals 9
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lrs/c<",
            "-",
            "Landroidx/compose/ui/unit/Velocity;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->sideCalculator:Landroidx/compose/foundation/layout/SideCalculator;

    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-interface {v0, v1, v2}, Landroidx/compose/foundation/layout/SideCalculator;->hideMotion(FF)F

    .line 12
    .line 13
    .line 14
    move-result v6

    .line 15
    const/4 v7, 0x0

    .line 16
    move-object v3, p0

    .line 17
    move-wide v4, p1

    .line 18
    move-object v8, p3

    .line 19
    invoke-direct/range {v3 .. v8}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->fling-huYlsQE(JFZLrs/c;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public onPreScroll-OzD1aCk(JI)J
    .locals 2

    .line 1
    iget-object p3, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->sideCalculator:Landroidx/compose/foundation/layout/SideCalculator;

    .line 2
    .line 3
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getX-impl(J)F

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Offset;->getY-impl(J)F

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-interface {p3, v0, v1}, Landroidx/compose/foundation/layout/SideCalculator;->hideMotion(FF)F

    .line 12
    .line 13
    .line 14
    move-result p3

    .line 15
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->scroll-8S9VItk(JF)J

    .line 16
    .line 17
    .line 18
    move-result-wide p1

    .line 19
    return-wide p1
.end method

.method public onReady(Landroid/view/WindowInsetsAnimationController;I)V
    .locals 1
    .param p1    # Landroid/view/WindowInsetsAnimationController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p2, "controller"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->animationController:Landroid/view/WindowInsetsAnimationController;

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    iput-boolean p2, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->isControllerRequested:Z

    .line 10
    .line 11
    iget-object p2, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->continuation:Lgt/i;

    .line 12
    .line 13
    if-eqz p2, :cond_0

    .line 14
    .line 15
    sget-object v0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$onReady$1;->INSTANCE:Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection$onReady$1;

    .line 16
    .line 17
    invoke-interface {p2, p1, v0}, Lgt/i;->e(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Landroidx/compose/foundation/layout/WindowInsetsNestedScrollConnection;->continuation:Lgt/i;

    .line 22
    .line 23
    return-void
.end method
