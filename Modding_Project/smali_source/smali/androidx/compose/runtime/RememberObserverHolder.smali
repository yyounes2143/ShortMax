.class public final Landroidx/compose/runtime/RememberObserverHolder;
.super Ljava/lang/Object;
.source "Composer.kt"


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private after:Landroidx/compose/runtime/Anchor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private wrapped:Landroidx/compose/runtime/RememberObserver;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/RememberObserver;Landroidx/compose/runtime/Anchor;)V
    .locals 0
    .param p1    # Landroidx/compose/runtime/RememberObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroidx/compose/runtime/Anchor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/RememberObserverHolder;->wrapped:Landroidx/compose/runtime/RememberObserver;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/runtime/RememberObserverHolder;->after:Landroidx/compose/runtime/Anchor;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getAfter()Landroidx/compose/runtime/Anchor;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/RememberObserverHolder;->after:Landroidx/compose/runtime/Anchor;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWrapped()Landroidx/compose/runtime/RememberObserver;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/RememberObserverHolder;->wrapped:Landroidx/compose/runtime/RememberObserver;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setAfter(Landroidx/compose/runtime/Anchor;)V
    .locals 0
    .param p1    # Landroidx/compose/runtime/Anchor;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/RememberObserverHolder;->after:Landroidx/compose/runtime/Anchor;

    .line 2
    .line 3
    return-void
.end method

.method public final setWrapped(Landroidx/compose/runtime/RememberObserver;)V
    .locals 0
    .param p1    # Landroidx/compose/runtime/RememberObserver;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Landroidx/compose/runtime/RememberObserverHolder;->wrapped:Landroidx/compose/runtime/RememberObserver;

    .line 2
    .line 3
    return-void
.end method
