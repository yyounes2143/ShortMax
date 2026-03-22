.class public interface abstract Landroidx/compose/runtime/CompositionLocalMap;
.super Ljava/lang/Object;
.source "CompositionLocalMap.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/runtime/CompositionLocalMap$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/runtime/CompositionLocalMap$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/runtime/CompositionLocalMap$Companion;->$$INSTANCE:Landroidx/compose/runtime/CompositionLocalMap$Companion;

    .line 2
    .line 3
    sput-object v0, Landroidx/compose/runtime/CompositionLocalMap;->Companion:Landroidx/compose/runtime/CompositionLocalMap$Companion;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract get(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;
    .param p1    # Landroidx/compose/runtime/CompositionLocal;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/compose/runtime/CompositionLocal<",
            "TT;>;)TT;"
        }
    .end annotation
.end method
