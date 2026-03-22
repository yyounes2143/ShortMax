.class final synthetic Lkotlinx/coroutines/flow/FlowKt__TransformKt;
.super Ljava/lang/Object;
.source "Transform.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nTransform.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n+ 2 Emitters.kt\nkotlinx/coroutines/flow/FlowKt__EmittersKt\n+ 3 SafeCollector.common.kt\nkotlinx/coroutines/flow/internal/SafeCollector_commonKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,167:1\n17#1:174\n19#1:178\n17#1:179\n19#1:183\n46#2:168\n51#2:170\n46#2:171\n51#2:173\n46#2:175\n51#2:177\n46#2:180\n51#2:182\n46#2:184\n51#2:186\n46#2:187\n51#2:189\n46#2:190\n51#2:192\n46#2:194\n51#2:196\n105#3:169\n105#3:172\n105#3:176\n105#3:181\n105#3:185\n105#3:188\n105#3:191\n105#3:193\n105#3:195\n105#3:197\n105#3:198\n105#3:200\n1#4:199\n*S KotlinDebug\n*F\n+ 1 Transform.kt\nkotlinx/coroutines/flow/FlowKt__TransformKt\n*L\n32#1:174\n32#1:178\n37#1:179\n37#1:183\n17#1:168\n17#1:170\n24#1:171\n24#1:173\n32#1:175\n32#1:177\n37#1:180\n37#1:182\n42#1:184\n42#1:186\n49#1:187\n49#1:189\n56#1:190\n56#1:192\n74#1:194\n74#1:196\n17#1:169\n24#1:172\n32#1:176\n37#1:181\n42#1:185\n49#1:188\n56#1:191\n64#1:193\n74#1:195\n101#1:197\n121#1:198\n152#1:200\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Lkt/b;)Lkt/b;
    .locals 1
    .param p0    # Lkt/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkt/b<",
            "+TT;>;)",
            "Lkt/b<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkt/b;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static final b(Lkt/b;Lkotlin/jvm/functions/Function2;)Lkt/b;
    .locals 1
    .param p0    # Lkt/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function2;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkt/b<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkt/b<",
            "TT;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$onEach$$inlined$unsafeTransform$1;-><init>(Lkt/b;Lkotlin/jvm/functions/Function2;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
