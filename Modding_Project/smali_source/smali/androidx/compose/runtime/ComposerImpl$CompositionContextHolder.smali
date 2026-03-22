.class public final Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;
.super Ljava/lang/Object;
.source "Composer.kt"

# interfaces
.implements Landroidx/compose/runtime/ReusableRememberObserver;


# annotations
.annotation build Landroidx/compose/runtime/internal/StabilityInferred;
    parameters = 0x0
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/ComposerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CompositionContextHolder"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private final ref:Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 1
    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;)V
    .locals 0
    .param p1    # Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;->ref:Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getRef()Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;->ref:Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;

    .line 2
    .line 3
    return-object v0
.end method

.method public onAbandoned()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;->ref:Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->dispose()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onForgotten()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroidx/compose/runtime/ComposerImpl$CompositionContextHolder;->ref:Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;->dispose()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onRemembered()V
    .locals 0

    .line 1
    return-void
.end method
