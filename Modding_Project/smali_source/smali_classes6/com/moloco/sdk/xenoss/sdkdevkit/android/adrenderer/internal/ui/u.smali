.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/u;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x1
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTouchInterceptClickHandlerView.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TouchInterceptClickHandlerView.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/TouchInterceptClickHandlerView\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,70:1\n1#2:71\n*E\n"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 16
    .line 17
    .line 18
    const/4 p1, 0x0

    .line 19
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public static synthetic b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/u;Landroid/view/MotionEvent;Lcom/moloco/sdk/internal/services/f0;Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;Lkt/d;Lcom/moloco/sdk/internal/h0;Lrs/c;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    and-int/lit8 v0, p9, 0x40

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/moloco/sdk/internal/k0;->b()Lcom/moloco/sdk/internal/h0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    move-object v8, v0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object/from16 v8, p7

    .line 12
    .line 13
    :goto_0
    move-object v1, p0

    .line 14
    move-object v2, p1

    .line 15
    move-object v3, p2

    .line 16
    move-object v4, p3

    .line 17
    move-object v5, p4

    .line 18
    move-object v6, p5

    .line 19
    move-object/from16 v7, p6

    .line 20
    .line 21
    move-object/from16 v9, p8

    .line 22
    .line 23
    invoke-virtual/range {v1 .. v9}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/u;->a(Landroid/view/MotionEvent;Lcom/moloco/sdk/internal/services/f0;Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;Lkt/d;Lcom/moloco/sdk/internal/h0;Lrs/c;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;Lcom/moloco/sdk/internal/services/f0;Ljava/lang/String;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;Lkt/d;Lcom/moloco/sdk/internal/h0;Lrs/c;)Ljava/lang/Object;
    .locals 17
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/services/f0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lkt/d;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/moloco/sdk/internal/h0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "Lcom/moloco/sdk/internal/services/f0;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;",
            "Lkt/d<",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/moloco/sdk/internal/h0;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    new-array v0, v0, [I

    .line 9
    .line 10
    move-object/from16 v1, p0

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 13
    .line 14
    .line 15
    new-instance v9, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/staticrenderer/model/a;

    .line 16
    .line 17
    invoke-static {v0}, Lkotlin/collections/n;->j0([I)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    invoke-static {v0}, Lkotlin/collections/n;->W0([I)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-static {v0}, Lkotlin/collections/n;->j0([I)I

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    int-to-float v7, v7

    .line 42
    add-float/2addr v2, v7

    .line 43
    float-to-int v7, v2

    .line 44
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    invoke-static {v0}, Lkotlin/collections/n;->W0([I)I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    int-to-float v0, v0

    .line 53
    add-float/2addr v2, v0

    .line 54
    float-to-int v8, v2

    .line 55
    move-object v2, v9

    .line 56
    invoke-direct/range {v2 .. v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/staticrenderer/model/a;-><init>(IIIIII)V

    .line 57
    .line 58
    .line 59
    if-eqz p3, :cond_0

    .line 60
    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 62
    .line 63
    .line 64
    move-result-wide v12

    .line 65
    const/4 v15, 0x4

    .line 66
    const/16 v16, 0x0

    .line 67
    .line 68
    const/4 v14, 0x0

    .line 69
    move-object/from16 v10, p7

    .line 70
    .line 71
    move-object/from16 v11, p3

    .line 72
    .line 73
    invoke-static/range {v10 .. v16}, Lcom/moloco/sdk/internal/h0$a;->a(Lcom/moloco/sdk/internal/h0;Ljava/lang/String;JLcom/moloco/sdk/internal/c0;ILjava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 78
    .line 79
    .line 80
    :cond_0
    if-eqz p4, :cond_2

    .line 81
    .line 82
    move-object/from16 v2, p2

    .line 83
    .line 84
    move-object/from16 v3, p4

    .line 85
    .line 86
    move-object v4, v9

    .line 87
    move-object/from16 v5, p5

    .line 88
    .line 89
    move-object/from16 v6, p6

    .line 90
    .line 91
    move-object/from16 v7, p8

    .line 92
    .line 93
    invoke-interface/range {v2 .. v7}, Lcom/moloco/sdk/internal/services/f0;->b(Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/staticrenderer/model/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/ui/r;Lkt/d;Lrs/c;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object v2

    .line 101
    if-ne v0, v2, :cond_2

    .line 102
    .line 103
    return-object v0

    .line 104
    :cond_1
    move-object/from16 v1, p0

    .line 105
    .line 106
    :cond_2
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 107
    .line 108
    return-object v0
.end method
