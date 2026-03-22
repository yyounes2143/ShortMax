.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/H;
.super Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C<",
        "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;",
        ">;"
    }
.end annotation


# instance fields
.field public final g:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final h:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/f0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final k:Lgt/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final l:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final m:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public n:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/f0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Lgt/g0;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/f0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lgt/g0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;
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
    const-string v0, "customUserEventBuilderService"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "options"

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
    const-string v0, "scope"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "adLoader"

    .line 27
    .line 28
    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, p1, p5}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;-><init>(Landroid/content/Context;Lgt/g0;)V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/H;->g:Landroid/content/Context;

    .line 35
    .line 36
    iput-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/H;->h:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;

    .line 37
    .line 38
    iput-object p3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/H;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/f0;

    .line 39
    .line 40
    iput-object p4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/H;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;

    .line 41
    .line 42
    iput-object p5, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/H;->k:Lgt/g0;

    .line 43
    .line 44
    iput-object p6, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/H;->l:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;

    .line 45
    .line 46
    const-string p1, "MolocoVastBannerView"

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    sget-object p1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/i;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/i;

    .line 52
    .line 53
    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/H;->m:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/i;

    .line 54
    .line 55
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;->destroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/H;->n:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/t;->destroy()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/H;->n:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;

    .line 13
    .line 14
    return-void
.end method

.method public getAdLoader()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/H;->l:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;

    return-object v0
.end method

.method public bridge synthetic getAdLoader()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/m;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/H;->getAdLoader()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;

    move-result-object v0

    return-object v0
.end method

.method public getCreativeType()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/i;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/H;->m:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/H;->getAdLoader()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/F;->b()Lcom/moloco/sdk/internal/g0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    instance-of v1, v0, Lcom/moloco/sdk/internal/g0$a;

    .line 10
    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    check-cast v0, Lcom/moloco/sdk/internal/g0$a;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/g0$a;->a()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;->getAdShowListener()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/o;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/e0;

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-interface {v1, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/o;->a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/errors/c;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void

    .line 33
    :cond_1
    instance-of v1, v0, Lcom/moloco/sdk/internal/g0$b;

    .line 34
    .line 35
    if-eqz v1, :cond_2

    .line 36
    .line 37
    check-cast v0, Lcom/moloco/sdk/internal/g0$b;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/moloco/sdk/internal/g0$b;->a()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    move-object v1, v0

    .line 44
    check-cast v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;

    .line 45
    .line 46
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/H;->j:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;

    .line 47
    .line 48
    iget-object v3, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/H;->g:Landroid/content/Context;

    .line 49
    .line 50
    iget-object v4, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/H;->h:Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;

    .line 51
    .line 52
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/H;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/f0;

    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/f0;->g()Z

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/H;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/f0;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/f0;->e()Ljava/lang/Boolean;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/H;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/f0;

    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/f0;->f()I

    .line 67
    .line 68
    .line 69
    move-result v7

    .line 70
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/H;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/f0;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/f0;->c()I

    .line 73
    .line 74
    .line 75
    move-result v8

    .line 76
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/H;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/f0;

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/f0;->d()I

    .line 79
    .line 80
    .line 81
    move-result v9

    .line 82
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/H;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/f0;

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/f0;->b()Z

    .line 85
    .line 86
    .line 87
    move-result v10

    .line 88
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/H;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/f0;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/f0;->a()Z

    .line 91
    .line 92
    .line 93
    move-result v11

    .line 94
    invoke-static/range {v1 .. v11}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/g;->b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/a;Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/n0;Landroid/content/Context;Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a;ZLjava/lang/Boolean;IIIZZ)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    iput-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/H;->n:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;

    .line 99
    .line 100
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/H;->i:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/f0;

    .line 101
    .line 102
    invoke-virtual {v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/f0;->h()Lkotlin/jvm/functions/Function2;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    iget-object v2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/H;->g:Landroid/content/Context;

    .line 107
    .line 108
    invoke-interface {v1, v2, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    check-cast v1, Landroid/view/View;

    .line 113
    .line 114
    invoke-virtual {p0, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/C;->setAdView(Landroid/view/View;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/H;->o()V

    .line 118
    .line 119
    .line 120
    invoke-interface {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;->d()V

    .line 121
    .line 122
    .line 123
    return-void

    .line 124
    :cond_2
    new-instance v0, Lkotlin/NoWhenBranchMatchedException;

    .line 125
    .line 126
    invoke-direct {v0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 127
    .line 128
    .line 129
    throw v0
.end method

.method public final o()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/H;->n:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/ad/a;->a()Lkt/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/H$a;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-direct {v1, p0, v2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/H$a;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/H;Lrs/c;)V

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/c;->O(Lkt/b;Lkotlin/jvm/functions/Function2;)Lkt/b;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/H;->k:Lgt/g0;

    .line 24
    .line 25
    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/c;->J(Lkt/b;Lgt/g0;)Lkotlinx/coroutines/r;

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method
