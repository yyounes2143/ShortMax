.class public final Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap$Companion;
.super Ljava/lang/Object;
.source "PersistentCompositionLocalMap.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getEmpty$annotations()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final getEmpty()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;->access$getEmpty$cp()Landroidx/compose/runtime/internal/PersistentCompositionLocalHashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
