.class public final Landroidx/compose/runtime/CompositionLocalMap$Companion;
.super Ljava/lang/Object;
.source "CompositionLocalMap.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/CompositionLocalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field static final synthetic $$INSTANCE:Landroidx/compose/runtime/CompositionLocalMap$Companion;

.field private static final Empty:Landroidx/compose/runtime/CompositionLocalMap;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/compose/runtime/CompositionLocalMap$Companion;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/compose/runtime/CompositionLocalMap$Companion;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/compose/runtime/CompositionLocalMap$Companion;->$$INSTANCE:Landroidx/compose/runtime/CompositionLocalMap$Companion;

    .line 7
    .line 8
    invoke-static {}, Landroidx/compose/runtime/internal/PersistentCompositionLocalMapKt;->persistentCompositionLocalHashMapOf()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Landroidx/compose/runtime/CompositionLocalMap$Companion;->Empty:Landroidx/compose/runtime/CompositionLocalMap;

    .line 13
    .line 14
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getEmpty()Landroidx/compose/runtime/CompositionLocalMap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Landroidx/compose/runtime/CompositionLocalMap$Companion;->Empty:Landroidx/compose/runtime/CompositionLocalMap;

    .line 2
    .line 3
    return-object v0
.end method
