.class interface abstract Landroidx/compose/foundation/layout/SideCalculator;
.super Ljava/lang/Object;
.source "WindowInsetsConnection.android.kt"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x1e
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/layout/SideCalculator$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/foundation/layout/SideCalculator$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/layout/SideCalculator$Companion;->$$INSTANCE:Landroidx/compose/foundation/layout/SideCalculator$Companion;

    .line 2
    .line 3
    sput-object v0, Landroidx/compose/foundation/layout/SideCalculator;->Companion:Landroidx/compose/foundation/layout/SideCalculator$Companion;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract adjustInsets(Landroid/graphics/Insets;I)Landroid/graphics/Insets;
    .param p1    # Landroid/graphics/Insets;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract consumedOffsets-MK-Hz9U(J)J
.end method

.method public abstract consumedVelocity-QWom1Mo(JF)J
.end method

.method public hideMotion(FF)F
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2}, Landroidx/compose/foundation/layout/SideCalculator;->motionOf(FF)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-static {p1, p2}, Lkotlin/ranges/e;->i(FF)F

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public abstract motionOf(FF)F
.end method

.method public showMotion(FF)F
    .locals 0

    .line 1
    invoke-interface {p0, p1, p2}, Landroidx/compose/foundation/layout/SideCalculator;->motionOf(FF)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-static {p1, p2}, Lkotlin/ranges/e;->d(FF)F

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public abstract valueOf(Landroid/graphics/Insets;)I
    .param p1    # Landroid/graphics/Insets;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
