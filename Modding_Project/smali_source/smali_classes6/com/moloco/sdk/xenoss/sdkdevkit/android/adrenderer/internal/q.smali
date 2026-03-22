.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x1
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/moloco/sdk/internal/ortb/model/c;ZLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/u;
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/ortb/model/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/moloco/sdk/internal/ortb/model/c;",
            "Z",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;",
            ")",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/u<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/f0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string p3, "context"

    .line 2
    .line 3
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p3, "bid"

    .line 7
    .line 8
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string/jumbo p3, "watermark"

    .line 12
    .line 13
    .line 14
    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sget-object p3, Lcom/moloco/sdk/service_locator/b$g;->a:Lcom/moloco/sdk/service_locator/b$g;

    .line 18
    .line 19
    invoke-virtual {p3}, Lcom/moloco/sdk/service_locator/b$g;->b()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;

    .line 20
    .line 21
    .line 22
    move-result-object p3

    .line 23
    invoke-virtual {p3}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/media/o;->d()Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/16 v6, 0x30

    .line 28
    .line 29
    const/4 v7, 0x0

    .line 30
    const/4 v4, 0x0

    .line 31
    const/4 v5, 0x0

    .line 32
    move-object v0, p1

    .line 33
    move-object v1, p2

    .line 34
    move-object v3, p4

    .line 35
    invoke-static/range {v0 .. v7}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/w;->b(Landroid/content/Context;Lcom/moloco/sdk/internal/ortb/model/c;ZLcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/g;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/l0;ILjava/lang/Object;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/u;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1
.end method

.method public b(Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/u;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;",
            "Ljava/lang/String;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;",
            ")",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/u<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/o;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/p;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "customUserEventBuilderService"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "adm"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "externalLinkHandler"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string/jumbo v0, "watermark"

    .line 22
    .line 23
    .line 24
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1, p2, p3, p4, p5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/j;->a(Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/u;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1
.end method

.method public c(Landroid/content/Context;Lgt/g0;Lcom/moloco/sdk/internal/ortb/model/c;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lkt/e;Z)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/u;
    .locals 16
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/internal/ortb/model/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lkt/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lgt/g0;",
            "Lcom/moloco/sdk/internal/ortb/model/c;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;",
            "Lkt/e<",
            "Ljava/lang/Boolean;",
            ">;Z)",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/u<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/o;",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/p;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    move-object/from16 v7, p1

    .line 2
    .line 3
    move-object/from16 v15, p2

    .line 4
    .line 5
    move-object/from16 v14, p3

    .line 6
    .line 7
    const-string v0, "context"

    .line 8
    .line 9
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v0, "scope"

    .line 13
    .line 14
    invoke-static {v15, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const-string v0, "bid"

    .line 18
    .line 19
    invoke-static {v14, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "externalLinkHandler"

    .line 23
    .line 24
    move-object/from16 v2, p4

    .line 25
    .line 26
    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    const-string/jumbo v0, "watermark"

    .line 30
    .line 31
    .line 32
    move-object/from16 v13, p5

    .line 33
    .line 34
    invoke-static {v13, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    const-string v0, "isAdDisplaying"

    .line 38
    .line 39
    move-object/from16 v4, p6

    .line 40
    .line 41
    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    move/from16 v0, p7

    .line 45
    .line 46
    invoke-static {v7, v15, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/o;->a(Landroid/content/Context;Lgt/g0;Z)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/n;

    .line 47
    .line 48
    .line 49
    move-result-object v8

    .line 50
    invoke-virtual/range {p3 .. p3}, Lcom/moloco/sdk/internal/ortb/model/c;->a()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v5

    .line 54
    sget-object v6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;->c:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;

    .line 55
    .line 56
    new-instance v12, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/q$b;

    .line 57
    .line 58
    move-object v0, v12

    .line 59
    move-object/from16 v1, p1

    .line 60
    .line 61
    move-object v3, v8

    .line 62
    invoke-direct/range {v0 .. v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/q$b;-><init>(Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/n;Lkt/e;Ljava/lang/String;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/r;)V

    .line 63
    .line 64
    .line 65
    new-instance v4, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/k;

    .line 66
    .line 67
    new-instance v10, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/q$c;

    .line 68
    .line 69
    invoke-direct {v10, v12}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/q$c;-><init>(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    const/4 v0, 0x0

    .line 73
    invoke-static {v0, v0}, Lkotlin/ranges/e;->e(II)I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    invoke-static {v0}, Lms/n;->b(I)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    invoke-interface {v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/n;->c()Landroid/webkit/WebView;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    invoke-interface {v8}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/n;->w()Lkt/f;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    const/4 v9, 0x1

    .line 90
    const/4 v3, 0x0

    .line 91
    move-object v8, v4

    .line 92
    move-object/from16 v11, p2

    .line 93
    .line 94
    move-object v5, v12

    .line 95
    move v12, v0

    .line 96
    move-object v13, v1

    .line 97
    move-object v0, v14

    .line 98
    move-object v14, v2

    .line 99
    move-object v1, v15

    .line 100
    move-object v15, v3

    .line 101
    invoke-direct/range {v8 .. v15}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/k;-><init>(ZLkotlin/jvm/functions/Function0;Lgt/g0;ILandroid/webkit/WebView;Lkt/f;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 102
    .line 103
    .line 104
    new-instance v2, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s;

    .line 105
    .line 106
    sget-object v3, Lcom/moloco/sdk/service_locator/b$a;->a:Lcom/moloco/sdk/service_locator/b$a;

    .line 107
    .line 108
    invoke-virtual {v3}, Lcom/moloco/sdk/service_locator/b$a;->a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/l0;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    new-instance v6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/q$a;

    .line 113
    .line 114
    invoke-direct {v6, v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/q$a;-><init>(Ljava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    invoke-direct {v2, v1, v0, v3, v6}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s;-><init>(Lgt/g0;Lcom/moloco/sdk/internal/ortb/model/c;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/l0;Lkotlin/jvm/functions/Function1;)V

    .line 118
    .line 119
    .line 120
    sget-object v6, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/MraidActivity;->f:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/MraidActivity$a;

    .line 121
    .line 122
    move-object/from16 v0, p1

    .line 123
    .line 124
    move-object/from16 v1, p5

    .line 125
    .line 126
    move-object v3, v5

    .line 127
    move-object v5, v6

    .line 128
    invoke-static/range {v0 .. v5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/u0;->a(Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/g0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/s;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/e;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/s;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/mraid/MraidActivity$a;)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/u;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    return-object v0
.end method
