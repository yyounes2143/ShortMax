.class public final Landroidx/compose/foundation/text/KeyboardActionsKt;
.super Ljava/lang/Object;
.source "KeyboardActions.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final KeyboardActions(Lkotlin/jvm/functions/Function1;)Landroidx/compose/foundation/text/KeyboardActions;
    .locals 8
    .param p0    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/foundation/text/KeyboardActionScope;",
            "Lkotlin/Unit;",
            ">;)",
            "Landroidx/compose/foundation/text/KeyboardActions;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "onAny"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/compose/foundation/text/KeyboardActions;

    .line 7
    .line 8
    move-object v1, v0

    .line 9
    move-object v2, p0

    .line 10
    move-object v3, p0

    .line 11
    move-object v4, p0

    .line 12
    move-object v5, p0

    .line 13
    move-object v6, p0

    .line 14
    move-object v7, p0

    .line 15
    invoke-direct/range {v1 .. v7}, Landroidx/compose/foundation/text/KeyboardActions;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method
