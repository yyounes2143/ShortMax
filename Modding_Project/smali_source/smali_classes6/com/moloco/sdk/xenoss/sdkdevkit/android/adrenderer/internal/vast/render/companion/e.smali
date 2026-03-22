.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/companion/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/companion/g;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCompanionGoNextAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompanionGoNextAction.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/companion/CompanionGoNextActionImpl\n+ 2 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 3 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 4 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n*L\n1#1,58:1\n49#2:59\n51#2:63\n46#3:60\n51#3:62\n105#4:61\n*S KotlinDebug\n*F\n+ 1 CompanionGoNextAction.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/companion/CompanionGoNextActionImpl\n*L\n44#1:59\n44#1:63\n44#1:60\n44#1:62\n44#1:61\n*E\n"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/x;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Lkt/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkt/i<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/d$a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILgt/g0;)V
    .locals 9

    const-string v0, "scope"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/companion/e;->a:I

    .line 4
    new-instance v0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/x;

    const/4 v1, 0x0

    .line 5
    invoke-direct {v0, p1, p2, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/x;-><init>(ILgt/g0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/companion/e;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/x;

    .line 6
    invoke-virtual {v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/x;->b()Lkt/i;

    move-result-object v0

    .line 7
    new-instance v1, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/companion/e$a;

    invoke-direct {v1, v0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/companion/e$a;-><init>(Lkt/b;)V

    .line 8
    sget-object v2, Lkotlinx/coroutines/flow/m;->a:Lkotlinx/coroutines/flow/m$a;

    const/4 v7, 0x3

    const/4 v8, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    invoke-static/range {v2 .. v8}, Lkotlinx/coroutines/flow/m$a;->b(Lkotlinx/coroutines/flow/m$a;JJILjava/lang/Object;)Lkotlinx/coroutines/flow/m;

    move-result-object v0

    .line 9
    invoke-static {p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/companion/h;->b(I)Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/d$a;

    move-result-object p1

    .line 10
    invoke-static {v1, p2, v0, p1}, Lkotlinx/coroutines/flow/c;->T(Lkt/b;Lgt/g0;Lkotlinx/coroutines/flow/m;Ljava/lang/Object;)Lkt/i;

    move-result-object p1

    iput-object p1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/companion/e;->c:Lkt/i;

    return-void
.end method

.method public synthetic constructor <init>(ILgt/g0;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/companion/e;-><init>(ILgt/g0;)V

    return-void
.end method


# virtual methods
.method public m()Lkt/i;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkt/i<",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/d$a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/companion/e;->c:Lkt/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/companion/e;->b:Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/x;

    .line 2
    .line 3
    iget v1, p0, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/vast/render/companion/e;->a:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/x;->c(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
