.class public final Landroidx/navigation/ActivityNavArgsLazyKt;
.super Ljava/lang/Object;
.source "ActivityNavArgsLazy.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final synthetic navArgs(Landroid/app/Activity;)Landroidx/navigation/NavArgsLazy;
    .locals 3
    .param p0    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Args::",
            "Landroidx/navigation/NavArgs;",
            ">(",
            "Landroid/app/Activity;",
            ")",
            "Landroidx/navigation/NavArgsLazy<",
            "TArgs;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "$this$navArgs"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/navigation/NavArgsLazy;

    .line 7
    .line 8
    const/4 v1, 0x4

    .line 9
    const-string v2, "Args"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const-class v1, Landroidx/navigation/NavArgs;

    .line 15
    .line 16
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Landroidx/navigation/ActivityNavArgsLazyKt$navArgs$1;

    .line 21
    .line 22
    invoke-direct {v2, p0}, Landroidx/navigation/ActivityNavArgsLazyKt$navArgs$1;-><init>(Landroid/app/Activity;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {v0, v1, v2}, Landroidx/navigation/NavArgsLazy;-><init>(Lkotlin/reflect/KClass;Lkotlin/jvm/functions/Function0;)V

    .line 26
    .line 27
    .line 28
    return-object v0
.end method
