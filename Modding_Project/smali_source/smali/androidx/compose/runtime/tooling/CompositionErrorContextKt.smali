.class public final Landroidx/compose/runtime/tooling/CompositionErrorContextKt;
.super Ljava/lang/Object;
.source "CompositionErrorContext.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final LocalCompositionErrorContext:Landroidx/compose/runtime/CompositionLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/CompositionLocal<",
            "Landroidx/compose/runtime/tooling/CompositionErrorContext;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/runtime/tooling/b;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/runtime/tooling/b;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Landroidx/compose/runtime/CompositionLocalKt;->staticCompositionLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/ProvidableCompositionLocal;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    sput-object v0, Landroidx/compose/runtime/tooling/CompositionErrorContextKt;->LocalCompositionErrorContext:Landroidx/compose/runtime/CompositionLocal;

    .line 11
    .line 12
    return-void
.end method

.method private static final LocalCompositionErrorContext$lambda$0()Landroidx/compose/runtime/tooling/CompositionErrorContext;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method public static synthetic a()Landroidx/compose/runtime/tooling/CompositionErrorContext;
    .locals 1

    .line 1
    invoke-static {}, Landroidx/compose/runtime/tooling/CompositionErrorContextKt;->LocalCompositionErrorContext$lambda$0()Landroidx/compose/runtime/tooling/CompositionErrorContext;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static final getLocalCompositionErrorContext()Landroidx/compose/runtime/CompositionLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/runtime/CompositionLocal<",
            "Landroidx/compose/runtime/tooling/CompositionErrorContext;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/runtime/tooling/CompositionErrorContextKt;->LocalCompositionErrorContext:Landroidx/compose/runtime/CompositionLocal;

    .line 2
    .line 3
    return-object v0
.end method
