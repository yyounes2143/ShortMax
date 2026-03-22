.class public final Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;
.super Landroidx/compose/ui/layout/Placeable$PlacementScope;
.source "Placeable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/layout/Placeable$PlacementScope;
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
    invoke-direct {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getParentLayoutDirection(Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;)Landroidx/compose/ui/unit/LayoutDirection;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;->getParentLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;->getParentWidth()I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method


# virtual methods
.method public final executeWithRtlMirroringValues(ILandroidx/compose/ui/unit/LayoutDirection;Lkotlin/jvm/functions/Function1;)V
    .locals 2
    .param p2    # Landroidx/compose/ui/unit/LayoutDirection;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lkotlin/jvm/functions/Function1;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/ui/unit/LayoutDirection;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/layout/Placeable$PlacementScope;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "parentLayoutDirection"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "block"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Landroidx/compose/ui/layout/Placeable$PlacementScope;->Companion:Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;

    .line 12
    .line 13
    invoke-static {v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;->access$getParentWidth(Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-static {v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;->access$getParentLayoutDirection(Landroidx/compose/ui/layout/Placeable$PlacementScope$Companion;)Landroidx/compose/ui/unit/LayoutDirection;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {p1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$setParentWidth$cp(I)V

    .line 22
    .line 23
    .line 24
    invoke-static {p2}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$setParentLayoutDirection$cp(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 25
    .line 26
    .line 27
    invoke-interface {p3, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$setParentWidth$cp(I)V

    .line 31
    .line 32
    .line 33
    invoke-static {v0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$setParentLayoutDirection$cp(Landroidx/compose/ui/unit/LayoutDirection;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method protected getParentLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentLayoutDirection$cp()Landroidx/compose/ui/unit/LayoutDirection;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected getParentWidth()I
    .locals 1

    .line 1
    invoke-static {}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$getParentWidth$cp()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method
