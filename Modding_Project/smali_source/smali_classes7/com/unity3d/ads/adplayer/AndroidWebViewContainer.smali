.class public final Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;
.super Ljava/lang/Object;
.source "AndroidWebViewContainer.kt"

# interfaces
.implements Lcom/unity3d/ads/adplayer/WebViewContainer;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ClickableViewAccessibility"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAndroidWebViewContainer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AndroidWebViewContainer.kt\ncom/unity3d/ads/adplayer/AndroidWebViewContainer\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 5 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,155:1\n20#2:156\n22#2:160\n50#3:157\n55#3:159\n106#4:158\n1#5:161\n*S KotlinDebug\n*F\n+ 1 AndroidWebViewContainer.kt\ncom/unity3d/ads/adplayer/AndroidWebViewContainer\n*L\n41#1:156\n41#1:160\n41#1:157\n41#1:159\n41#1:158\n*E\n"
    }
.end annotation


# instance fields
.field private final _lastInputEvent:Lkt/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/e<",
            "Landroid/view/InputEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final lastInputEvent:Lkt/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/i<",
            "Landroid/view/InputEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final scope:Lgt/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sendWebViewClientErrorDiagnostics:Lcom/unity3d/ads/core/domain/SendWebViewClientErrorDiagnostics;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final webView:Landroid/webkit/WebView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final webViewClient:Lcom/unity3d/ads/adplayer/AndroidWebViewClient;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/webkit/WebView;Lcom/unity3d/ads/adplayer/AndroidWebViewClient;Lcom/unity3d/ads/core/domain/SendWebViewClientErrorDiagnostics;Lgt/c0;Lgt/c0;Lgt/g0;Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/webkit/WebView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/unity3d/ads/adplayer/AndroidWebViewClient;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/unity3d/ads/core/domain/SendWebViewClientErrorDiagnostics;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lgt/c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lgt/c0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "webView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "webViewClient"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "sendWebViewClientErrorDiagnostics"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "mainDispatcher"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "defaultDispatcher"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "adPlayerScope"

    .line 27
    .line 28
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "context"

    .line 32
    .line 33
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->webView:Landroid/webkit/WebView;

    .line 40
    .line 41
    iput-object p2, p0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->webViewClient:Lcom/unity3d/ads/adplayer/AndroidWebViewClient;

    .line 42
    .line 43
    iput-object p3, p0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->sendWebViewClientErrorDiagnostics:Lcom/unity3d/ads/core/domain/SendWebViewClientErrorDiagnostics;

    .line 44
    .line 45
    iput-object p7, p0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->context:Landroid/content/Context;

    .line 46
    .line 47
    invoke-static {p6, p4}, Lkotlinx/coroutines/i;->i(Lgt/g0;Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    new-instance p4, Lgt/f0;

    .line 52
    .line 53
    const-string p6, "AndroidWebViewContainer"

    .line 54
    .line 55
    invoke-direct {p4, p6}, Lgt/f0;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-static {p3, p4}, Lkotlinx/coroutines/i;->i(Lgt/g0;Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    iput-object p3, p0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->scope:Lgt/g0;

    .line 63
    .line 64
    const/4 p4, 0x0

    .line 65
    invoke-static {p4}, Lkotlinx/coroutines/flow/o;->a(Ljava/lang/Object;)Lkt/e;

    .line 66
    .line 67
    .line 68
    move-result-object p6

    .line 69
    iput-object p6, p0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->_lastInputEvent:Lkt/e;

    .line 70
    .line 71
    invoke-static {p6}, Lkotlinx/coroutines/flow/c;->d(Lkt/e;)Lkt/i;

    .line 72
    .line 73
    .line 74
    move-result-object p6

    .line 75
    iput-object p6, p0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->lastInputEvent:Lkt/i;

    .line 76
    .line 77
    invoke-virtual {p2}, Lcom/unity3d/ads/adplayer/AndroidWebViewClient;->isRenderProcessGone()Lkt/i;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    new-instance p6, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$special$$inlined$filter$1;

    .line 82
    .line 83
    invoke-direct {p6, p2}, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$special$$inlined$filter$1;-><init>(Lkt/b;)V

    .line 84
    .line 85
    .line 86
    new-instance p2, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$2;

    .line 87
    .line 88
    invoke-direct {p2, p0, p4}, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$2;-><init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Lrs/c;)V

    .line 89
    .line 90
    .line 91
    invoke-static {p6, p2}, Lkotlinx/coroutines/flow/c;->O(Lkt/b;Lkotlin/jvm/functions/Function2;)Lkt/b;

    .line 92
    .line 93
    .line 94
    move-result-object p2

    .line 95
    invoke-static {p3, p5}, Lkotlinx/coroutines/i;->i(Lgt/g0;Lkotlin/coroutines/CoroutineContext;)Lgt/g0;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    invoke-static {p2, p3}, Lkotlinx/coroutines/flow/c;->J(Lkt/b;Lgt/g0;)Lkotlinx/coroutines/r;

    .line 100
    .line 101
    .line 102
    new-instance p2, Lcom/unity3d/ads/adplayer/a;

    .line 103
    .line 104
    invoke-direct {p2, p0}, Lcom/unity3d/ads/adplayer/a;-><init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 108
    .line 109
    .line 110
    invoke-direct {p0}, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->applySafeAreaInsets()V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method private static final _init_$lambda$1(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    const-string p1, "this$0"

    .line 2
    .line 3
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x5

    .line 16
    if-eq p1, v0, :cond_0

    .line 17
    .line 18
    const/4 v0, 0x6

    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->_lastInputEvent:Lkt/e;

    .line 23
    .line 24
    invoke-interface {p0, p2}, Lkt/e;->setValue(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :goto_0
    const/4 p0, 0x0

    .line 28
    return p0
.end method

.method public static synthetic a(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->_init_$lambda$1(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic access$onRenderProcessGone(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->onRenderProcessGone(Lrs/c;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final applySafeAreaInsets()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->webView:Landroid/webkit/WebView;

    .line 2
    .line 3
    new-instance v1, Lcom/unity3d/ads/adplayer/b;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lcom/unity3d/ads/adplayer/b;-><init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;)V

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static final applySafeAreaInsets$lambda$3(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 6

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "v"

    .line 7
    .line 8
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string p1, "insets"

    .line 12
    .line 13
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    invoke-virtual {p2, p1}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string v0, "insets.getInsets(WindowI\u2026Compat.Type.systemBars())"

    .line 25
    .line 26
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->displayCutout()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p2, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "insets.getInsets(WindowI\u2026pat.Type.displayCutout())"

    .line 38
    .line 39
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :try_start_0
    sget-object v1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->context:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 55
    .line 56
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    goto :goto_0

    .line 65
    :catchall_0
    move-exception v1

    .line 66
    sget-object v2, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 67
    .line 68
    invoke-static {v1}, Lkotlin/f;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 77
    .line 78
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    invoke-static {v1}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    if-eqz v3, :cond_0

    .line 87
    .line 88
    move-object v1, v2

    .line 89
    :cond_0
    check-cast v1, Ljava/lang/Number;

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    iget v2, p1, Landroidx/core/graphics/Insets;->left:I

    .line 96
    .line 97
    iget v3, v0, Landroidx/core/graphics/Insets;->left:I

    .line 98
    .line 99
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    invoke-static {v2, v1}, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->applySafeAreaInsets$lambda$3$toPx(IF)I

    .line 104
    .line 105
    .line 106
    move-result v2

    .line 107
    iget v3, p1, Landroidx/core/graphics/Insets;->top:I

    .line 108
    .line 109
    iget v4, v0, Landroidx/core/graphics/Insets;->top:I

    .line 110
    .line 111
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 112
    .line 113
    .line 114
    move-result v3

    .line 115
    invoke-static {v3, v1}, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->applySafeAreaInsets$lambda$3$toPx(IF)I

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    iget v4, p1, Landroidx/core/graphics/Insets;->right:I

    .line 120
    .line 121
    iget v5, v0, Landroidx/core/graphics/Insets;->right:I

    .line 122
    .line 123
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 124
    .line 125
    .line 126
    move-result v4

    .line 127
    invoke-static {v4, v1}, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->applySafeAreaInsets$lambda$3$toPx(IF)I

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    .line 132
    .line 133
    iget v0, v0, Landroidx/core/graphics/Insets;->bottom:I

    .line 134
    .line 135
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    invoke-static {p1, v1}, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->applySafeAreaInsets$lambda$3$toPx(IF)I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    const-string v1, "\n                (function() {\n                    const root = document.documentElement;\n                    root.style.setProperty(\'--safe-area-inset-left\', \'"

    .line 149
    .line 150
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v1, "px\');\n                    root.style.setProperty(\'--safe-area-inset-right\', \'"

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v1, "px\');\n                    root.style.setProperty(\'--safe-area-inset-top\', \'"

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v1, "px\');\n                    root.style.setProperty(\'--safe-area-inset-bottom\', \'"

    .line 173
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string p1, "px\');\n                })();\n            "

    .line 181
    .line 182
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    invoke-static {p1}, Lkotlin/text/StringsKt;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->scope:Lgt/g0;

    .line 194
    .line 195
    new-instance v3, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$applySafeAreaInsets$1$1;

    .line 196
    .line 197
    const/4 v1, 0x0

    .line 198
    invoke-direct {v3, p0, p1, v1}, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$applySafeAreaInsets$1$1;-><init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Ljava/lang/String;Lrs/c;)V

    .line 199
    .line 200
    .line 201
    const/4 v4, 0x3

    .line 202
    const/4 v5, 0x0

    .line 203
    const/4 v2, 0x0

    .line 204
    invoke-static/range {v0 .. v5}, Lgt/e;->d(Lgt/g0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 205
    .line 206
    .line 207
    return-object p2
.end method

.method private static final applySafeAreaInsets$lambda$3$toPx(IF)I
    .locals 0

    .line 1
    int-to-float p0, p0

    .line 2
    div-float/2addr p0, p1

    .line 3
    float-to-int p0, p0

    .line 4
    return p0
.end method

.method public static synthetic b(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->applySafeAreaInsets$lambda$3(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final onRenderProcessGone(Lrs/c;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$onRenderProcessGone$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$onRenderProcessGone$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$onRenderProcessGone$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$onRenderProcessGone$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$onRenderProcessGone$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$onRenderProcessGone$1;-><init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$onRenderProcessGone$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$onRenderProcessGone$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    iget-object v0, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$onRenderProcessGone$1;->L$0:Ljava/lang/Object;

    .line 39
    .line 40
    check-cast v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    .line 41
    .line 42
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 47
    .line 48
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    .line 50
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    iput-object p0, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$onRenderProcessGone$1;->L$0:Ljava/lang/Object;

    .line 58
    .line 59
    iput v3, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$onRenderProcessGone$1;->label:I

    .line 60
    .line 61
    invoke-virtual {p0, v0}, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->destroy(Lrs/c;)Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    if-ne p1, v1, :cond_3

    .line 66
    .line 67
    return-object v1

    .line 68
    :cond_3
    move-object v0, p0

    .line 69
    :goto_1
    iget-object p1, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->sendWebViewClientErrorDiagnostics:Lcom/unity3d/ads/core/domain/SendWebViewClientErrorDiagnostics;

    .line 70
    .line 71
    new-instance v6, Lcom/unity3d/ads/adplayer/model/WebViewClientError;

    .line 72
    .line 73
    sget-object v2, Lcom/unity3d/ads/adplayer/model/ErrorReason;->REASON_WEBVIEW_RENDER_PROCESS_GONE:Lcom/unity3d/ads/adplayer/model/ErrorReason;

    .line 74
    .line 75
    const/4 v4, 0x4

    .line 76
    const/4 v5, 0x0

    .line 77
    const-string v1, "Render process gone"

    .line 78
    .line 79
    const/4 v3, 0x0

    .line 80
    move-object v0, v6

    .line 81
    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/adplayer/model/WebViewClientError;-><init>(Ljava/lang/String;Lcom/unity3d/ads/adplayer/model/ErrorReason;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 82
    .line 83
    .line 84
    invoke-static {v6}, Lkotlin/collections/CollectionsKt;->e(Ljava/lang/Object;)Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-interface {p1, v0}, Lcom/unity3d/ads/core/domain/SendWebViewClientErrorDiagnostics;->invoke(Ljava/util/List;)V

    .line 89
    .line 90
    .line 91
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 92
    .line 93
    return-object p1
.end method


# virtual methods
.method public addJavascriptInterface(Lcom/unity3d/ads/adplayer/WebViewBridge;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 5
    .param p1    # Lcom/unity3d/ads/adplayer/WebViewBridge;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/unity3d/ads/adplayer/WebViewBridge;",
            "Ljava/lang/String;",
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
    instance-of v0, p3, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$addJavascriptInterface$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$addJavascriptInterface$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$addJavascriptInterface$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$addJavascriptInterface$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$addJavascriptInterface$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$addJavascriptInterface$1;-><init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$addJavascriptInterface$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$addJavascriptInterface$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    :try_start_0
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :try_start_1
    iget-object p3, p0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->scope:Lgt/g0;

    .line 54
    .line 55
    invoke-interface {p3}, Lgt/g0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 56
    .line 57
    .line 58
    move-result-object p3

    .line 59
    new-instance v2, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$addJavascriptInterface$2;

    .line 60
    .line 61
    const/4 v4, 0x0

    .line 62
    invoke-direct {v2, p0, p2, p1, v4}, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$addJavascriptInterface$2;-><init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Ljava/lang/String;Lcom/unity3d/ads/adplayer/WebViewBridge;Lrs/c;)V

    .line 63
    .line 64
    .line 65
    iput v3, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$addJavascriptInterface$1;->label:I

    .line 66
    .line 67
    invoke-static {p3, v2, v0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 71
    if-ne p1, v1, :cond_3

    .line 72
    .line 73
    return-object v1

    .line 74
    :catch_0
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 75
    .line 76
    return-object p1
.end method

.method public destroy(Lrs/c;)Ljava/lang/Object;
    .locals 5
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
    instance-of v0, p1, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$destroy$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$destroy$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$destroy$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$destroy$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$destroy$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p1}, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$destroy$1;-><init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$destroy$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$destroy$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_2

    .line 36
    .line 37
    if-ne v2, v4, :cond_1

    .line 38
    .line 39
    iget-object v0, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$destroy$1;->L$0:Ljava/lang/Object;

    .line 40
    .line 41
    check-cast v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    .line 42
    .line 43
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    goto :goto_1

    .line 47
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 48
    .line 49
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 50
    .line 51
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    throw p1

    .line 55
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->scope:Lgt/g0;

    .line 59
    .line 60
    invoke-interface {p1}, Lgt/g0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    sget-object v2, Lkotlinx/coroutines/v;->a:Lkotlinx/coroutines/v;

    .line 65
    .line 66
    invoke-interface {p1, v2}, Lkotlin/coroutines/CoroutineContext;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    new-instance v2, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$destroy$2;

    .line 71
    .line 72
    invoke-direct {v2, p0, v3}, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$destroy$2;-><init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Lrs/c;)V

    .line 73
    .line 74
    .line 75
    iput-object p0, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$destroy$1;->L$0:Ljava/lang/Object;

    .line 76
    .line 77
    iput v4, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$destroy$1;->label:I

    .line 78
    .line 79
    invoke-static {p1, v2, v0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    if-ne p1, v1, :cond_3

    .line 84
    .line 85
    return-object v1

    .line 86
    :cond_3
    move-object v0, p0

    .line 87
    :goto_1
    iget-object p1, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->scope:Lgt/g0;

    .line 88
    .line 89
    invoke-static {p1, v3, v4, v3}, Lkotlinx/coroutines/i;->e(Lgt/g0;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 93
    .line 94
    return-object p1
.end method

.method public evaluateJavascript(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 5
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    instance-of v0, p2, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$evaluateJavascript$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$evaluateJavascript$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$evaluateJavascript$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$evaluateJavascript$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$evaluateJavascript$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$evaluateJavascript$1;-><init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$evaluateJavascript$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$evaluateJavascript$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    :try_start_0
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 43
    .line 44
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 45
    .line 46
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    throw p1

    .line 50
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    :try_start_1
    iget-object p2, p0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->scope:Lgt/g0;

    .line 54
    .line 55
    invoke-interface {p2}, Lgt/g0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    new-instance v2, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$evaluateJavascript$2;

    .line 60
    .line 61
    const/4 v4, 0x0

    .line 62
    invoke-direct {v2, p0, p1, v4}, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$evaluateJavascript$2;-><init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Ljava/lang/String;Lrs/c;)V

    .line 63
    .line 64
    .line 65
    iput v3, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$evaluateJavascript$1;->label:I

    .line 66
    .line 67
    invoke-static {p2, v2, v0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object p1
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    .line 71
    if-ne p1, v1, :cond_3

    .line 72
    .line 73
    return-object v1

    .line 74
    :catch_0
    :cond_3
    :goto_1
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 75
    .line 76
    return-object p1
.end method

.method public getLastInputEvent()Lkt/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkt/i<",
            "Landroid/view/InputEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->lastInputEvent:Lkt/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getScope()Lgt/g0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->scope:Lgt/g0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWebView()Landroid/webkit/WebView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->webView:Landroid/webkit/WebView;

    .line 2
    .line 3
    return-object v0
.end method

.method public final get_lastInputEvent()Lkt/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkt/e<",
            "Landroid/view/InputEvent;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->_lastInputEvent:Lkt/e;

    .line 2
    .line 3
    return-object v0
.end method

.method public loadUrl(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    instance-of v0, p2, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$loadUrl$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$loadUrl$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$loadUrl$1;->label:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$loadUrl$1;->label:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$loadUrl$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$loadUrl$1;-><init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$loadUrl$1;->result:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$loadUrl$1;->label:I

    .line 32
    .line 33
    const/4 v3, 0x3

    .line 34
    const/4 v4, 0x2

    .line 35
    const/4 v5, 0x1

    .line 36
    if-eqz v2, :cond_4

    .line 37
    .line 38
    if-eq v2, v5, :cond_3

    .line 39
    .line 40
    if-eq v2, v4, :cond_2

    .line 41
    .line 42
    if-eq v2, v3, :cond_1

    .line 43
    .line 44
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 45
    .line 46
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 47
    .line 48
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw p1

    .line 52
    :cond_1
    iget-object p1, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$loadUrl$1;->L$1:Ljava/lang/Object;

    .line 53
    .line 54
    check-cast p1, Ljava/util/List;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$loadUrl$1;->L$0:Ljava/lang/Object;

    .line 57
    .line 58
    check-cast v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    .line 59
    .line 60
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_3

    .line 64
    :cond_2
    iget-object p1, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$loadUrl$1;->L$0:Ljava/lang/Object;

    .line 65
    .line 66
    check-cast p1, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    .line 67
    .line 68
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    iget-object p1, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$loadUrl$1;->L$0:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast p1, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;

    .line 75
    .line 76
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_4
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    iget-object p2, p0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->scope:Lgt/g0;

    .line 84
    .line 85
    invoke-interface {p2}, Lgt/g0;->getCoroutineContext()Lkotlin/coroutines/CoroutineContext;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    new-instance v2, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$loadUrl$2;

    .line 90
    .line 91
    const/4 v6, 0x0

    .line 92
    invoke-direct {v2, p0, p1, v6}, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$loadUrl$2;-><init>(Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;Ljava/lang/String;Lrs/c;)V

    .line 93
    .line 94
    .line 95
    iput-object p0, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$loadUrl$1;->L$0:Ljava/lang/Object;

    .line 96
    .line 97
    iput v5, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$loadUrl$1;->label:I

    .line 98
    .line 99
    invoke-static {p2, v2, v0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    if-ne p1, v1, :cond_5

    .line 104
    .line 105
    return-object v1

    .line 106
    :cond_5
    move-object p1, p0

    .line 107
    :goto_1
    iget-object p2, p1, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->webViewClient:Lcom/unity3d/ads/adplayer/AndroidWebViewClient;

    .line 108
    .line 109
    invoke-virtual {p2}, Lcom/unity3d/ads/adplayer/AndroidWebViewClient;->getOnLoadFinished()Lgt/k0;

    .line 110
    .line 111
    .line 112
    move-result-object p2

    .line 113
    iput-object p1, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$loadUrl$1;->L$0:Ljava/lang/Object;

    .line 114
    .line 115
    iput v4, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$loadUrl$1;->label:I

    .line 116
    .line 117
    invoke-interface {p2, v0}, Lgt/k0;->await(Lrs/c;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    if-ne p2, v1, :cond_6

    .line 122
    .line 123
    return-object v1

    .line 124
    :cond_6
    :goto_2
    check-cast p2, Ljava/util/List;

    .line 125
    .line 126
    move-object v2, p2

    .line 127
    check-cast v2, Ljava/util/Collection;

    .line 128
    .line 129
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    if-nez v2, :cond_8

    .line 134
    .line 135
    iput-object p1, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$loadUrl$1;->L$0:Ljava/lang/Object;

    .line 136
    .line 137
    iput-object p2, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$loadUrl$1;->L$1:Ljava/lang/Object;

    .line 138
    .line 139
    iput v3, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer$loadUrl$1;->label:I

    .line 140
    .line 141
    invoke-virtual {p1, v0}, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->destroy(Lrs/c;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    if-ne v0, v1, :cond_7

    .line 146
    .line 147
    return-object v1

    .line 148
    :cond_7
    move-object v0, p1

    .line 149
    move-object p1, p2

    .line 150
    :goto_3
    iget-object p2, v0, Lcom/unity3d/ads/adplayer/AndroidWebViewContainer;->sendWebViewClientErrorDiagnostics:Lcom/unity3d/ads/core/domain/SendWebViewClientErrorDiagnostics;

    .line 151
    .line 152
    invoke-interface {p2, p1}, Lcom/unity3d/ads/core/domain/SendWebViewClientErrorDiagnostics;->invoke(Ljava/util/List;)V

    .line 153
    .line 154
    .line 155
    new-instance p2, Lcom/unity3d/ads/adplayer/LoadWebViewError;

    .line 156
    .line 157
    invoke-direct {p2, p1}, Lcom/unity3d/ads/adplayer/LoadWebViewError;-><init>(Ljava/util/List;)V

    .line 158
    .line 159
    .line 160
    throw p2

    .line 161
    :cond_8
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 162
    .line 163
    return-object p1
.end method
