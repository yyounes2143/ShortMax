.class final Landroidx/compose/runtime/Recomposer$RecomposerErrorState;
.super Ljava/lang/Object;
.source "Recomposer.kt"

# interfaces
.implements Landroidx/compose/runtime/RecomposerErrorInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/Recomposer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RecomposerErrorState"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final cause:Ljava/lang/Throwable;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final recoverable:Z


# direct methods
.method public constructor <init>(ZLjava/lang/Throwable;)V
    .locals 0
    .param p2    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Landroidx/compose/runtime/Recomposer$RecomposerErrorState;->recoverable:Z

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/runtime/Recomposer$RecomposerErrorState;->cause:Ljava/lang/Throwable;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Throwable;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/Recomposer$RecomposerErrorState;->cause:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getRecoverable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/runtime/Recomposer$RecomposerErrorState;->recoverable:Z

    .line 2
    .line 3
    return v0
.end method
