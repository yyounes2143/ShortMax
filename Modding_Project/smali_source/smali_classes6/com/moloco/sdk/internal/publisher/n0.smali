.class public final Lcom/moloco/sdk/internal/publisher/n0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
    otherwise = 0x2
.end annotation

.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/moloco/sdk/publisher/AdShowListener;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/u;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/u<",
            "**>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public b:Lcom/moloco/sdk/internal/ortb/model/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public c:Lcom/moloco/sdk/internal/publisher/e0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public d:Lkotlinx/coroutines/r;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public e:Lcom/moloco/sdk/internal/publisher/t0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/u;Lcom/moloco/sdk/internal/ortb/model/r;Lcom/moloco/sdk/internal/publisher/e0;Lkotlinx/coroutines/r;Lcom/moloco/sdk/internal/publisher/t0;)V
    .locals 0
    .param p1    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/u;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/moloco/sdk/internal/ortb/model/r;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/moloco/sdk/internal/publisher/e0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lkotlinx/coroutines/r;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/moloco/sdk/internal/publisher/t0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/u<",
            "**>;",
            "Lcom/moloco/sdk/internal/ortb/model/r;",
            "Lcom/moloco/sdk/internal/publisher/e0;",
            "Lkotlinx/coroutines/r;",
            "Lcom/moloco/sdk/internal/publisher/t0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/n0;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/u;

    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/internal/publisher/n0;->b:Lcom/moloco/sdk/internal/ortb/model/r;

    .line 4
    iput-object p3, p0, Lcom/moloco/sdk/internal/publisher/n0;->c:Lcom/moloco/sdk/internal/publisher/e0;

    .line 5
    iput-object p4, p0, Lcom/moloco/sdk/internal/publisher/n0;->d:Lkotlinx/coroutines/r;

    .line 6
    iput-object p5, p0, Lcom/moloco/sdk/internal/publisher/n0;->e:Lcom/moloco/sdk/internal/publisher/t0;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/u;Lcom/moloco/sdk/internal/ortb/model/r;Lcom/moloco/sdk/internal/publisher/e0;Lkotlinx/coroutines/r;Lcom/moloco/sdk/internal/publisher/t0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 4

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    move-object p7, v0

    goto :goto_0

    :cond_0
    move-object p7, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    move-object v1, v0

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    move-object v2, v0

    goto :goto_2

    :cond_2
    move-object v2, p3

    :goto_2
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    move-object v3, v0

    goto :goto_3

    :cond_3
    move-object v3, p4

    :goto_3
    and-int/lit8 p1, p6, 0x10

    if-eqz p1, :cond_4

    move-object p6, v0

    goto :goto_4

    :cond_4
    move-object p6, p5

    :goto_4
    move-object p1, p0

    move-object p2, p7

    move-object p3, v1

    move-object p4, v2

    move-object p5, v3

    .line 7
    invoke-direct/range {p1 .. p6}, Lcom/moloco/sdk/internal/publisher/n0;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/u;Lcom/moloco/sdk/internal/ortb/model/r;Lcom/moloco/sdk/internal/publisher/e0;Lkotlinx/coroutines/r;Lcom/moloco/sdk/internal/publisher/t0;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/u<",
            "**>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/n0;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/u;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b(Lcom/moloco/sdk/internal/ortb/model/r;)V
    .locals 0
    .param p1    # Lcom/moloco/sdk/internal/ortb/model/r;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/n0;->b:Lcom/moloco/sdk/internal/ortb/model/r;

    .line 2
    .line 3
    return-void
.end method

.method public final c(Lcom/moloco/sdk/internal/publisher/e0;)V
    .locals 0
    .param p1    # Lcom/moloco/sdk/internal/publisher/e0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/n0;->c:Lcom/moloco/sdk/internal/publisher/e0;

    .line 2
    .line 3
    return-void
.end method

.method public final d(Lcom/moloco/sdk/internal/publisher/t0;)V
    .locals 0
    .param p1    # Lcom/moloco/sdk/internal/publisher/t0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/n0;->e:Lcom/moloco/sdk/internal/publisher/t0;

    .line 2
    .line 3
    return-void
.end method

.method public final e(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/u;)V
    .locals 0
    .param p1    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/u;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/u<",
            "**>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/n0;->a:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/u;

    .line 2
    .line 3
    return-void
.end method

.method public final f(Lkotlinx/coroutines/r;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/r;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/moloco/sdk/internal/publisher/n0;->d:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    return-void
.end method

.method public final g()Lkotlinx/coroutines/r;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/n0;->d:Lkotlinx/coroutines/r;

    .line 2
    .line 3
    return-object v0
.end method

.method public final h()Lcom/moloco/sdk/internal/publisher/e0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/n0;->c:Lcom/moloco/sdk/internal/publisher/e0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final i()Lcom/moloco/sdk/internal/publisher/t0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/n0;->e:Lcom/moloco/sdk/internal/publisher/t0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final j()Lcom/moloco/sdk/internal/ortb/model/r;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/internal/publisher/n0;->b:Lcom/moloco/sdk/internal/ortb/model/r;

    .line 2
    .line 3
    return-object v0
.end method
