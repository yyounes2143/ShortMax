.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/x;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation


# instance fields
.field public final a:Lgt/g0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Lkt/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/e<",
            "Lkt/i<",
            "Lms/n;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lkt/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/i<",
            "Lms/n;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(ILgt/g0;)V
    .locals 8

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/x;->a:Lgt/g0;

    .line 4
    invoke-static {p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/g;->b(ILgt/g0;)Lkt/i;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lkotlinx/coroutines/flow/o;->a(Ljava/lang/Object;)Lkt/e;

    move-result-object p1

    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/x;->b:Lkt/e;

    .line 6
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/x$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/x$a;-><init>(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/x;Lrs/c;)V

    invoke-static {v0}, Lkotlinx/coroutines/flow/c;->k(Lkotlin/jvm/functions/Function2;)Lkt/b;

    move-result-object v0

    .line 7
    sget-object v1, Lkotlinx/coroutines/flow/m;->a:Lkotlinx/coroutines/flow/m$a;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-static/range {v1 .. v7}, Lkotlinx/coroutines/flow/m$a;->b(Lkotlinx/coroutines/flow/m$a;JJILjava/lang/Object;)Lkotlinx/coroutines/flow/m;

    move-result-object v1

    invoke-interface {p1}, Lkt/e;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkt/i;

    invoke-interface {p1}, Lkt/i;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p2, v1, p1}, Lkotlinx/coroutines/flow/c;->T(Lkt/b;Lgt/g0;Lkotlinx/coroutines/flow/m;Ljava/lang/Object;)Lkt/i;

    move-result-object p1

    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/x;->c:Lkt/i;

    return-void
.end method

.method public synthetic constructor <init>(ILgt/g0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/x;-><init>(ILgt/g0;)V

    return-void
.end method

.method public static final synthetic a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/x;)Lkt/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/x;->b:Lkt/e;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public final b()Lkt/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkt/i<",
            "Lms/n;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/x;->c:Lkt/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/x;->b:Lkt/e;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/x;->a:Lgt/g0;

    .line 4
    .line 5
    invoke-static {p1, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/g;->b(ILgt/g0;)Lkt/i;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {v0, p1}, Lkt/e;->setValue(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
