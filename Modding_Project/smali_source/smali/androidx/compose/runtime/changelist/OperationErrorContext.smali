.class public interface abstract Landroidx/compose/runtime/changelist/OperationErrorContext;
.super Ljava/lang/Object;
.source "OperationArgContainer.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract buildStackTrace(Ljava/lang/Integer;)Ljava/util/List;
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Landroidx/compose/runtime/tooling/ComposeStackTraceFrame;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
