.class public final Landroidx/compose/ui/unit/DpRect;
.super Ljava/lang/Object;
.source "Dp.kt"


# annotations
.annotation build Landroidx/compose/runtime/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/unit/DpRect$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/unit/DpRect$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final bottom:F

.field private final left:F

.field private final right:F

.field private final top:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/unit/DpRect$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/unit/DpRect$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/unit/DpRect;->Companion:Landroidx/compose/ui/unit/DpRect$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(FFFF)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput p1, p0, Landroidx/compose/ui/unit/DpRect;->left:F

    .line 5
    iput p2, p0, Landroidx/compose/ui/unit/DpRect;->top:F

    .line 6
    iput p3, p0, Landroidx/compose/ui/unit/DpRect;->right:F

    .line 7
    iput p4, p0, Landroidx/compose/ui/unit/DpRect;->bottom:F

    return-void
.end method

.method public synthetic constructor <init>(FFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/unit/DpRect;-><init>(FFFF)V

    return-void
.end method

.method private constructor <init>(JJ)V
    .locals 6

    .line 8
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/DpOffset;->getX-D9Ej5fM(J)F

    move-result v1

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/DpOffset;->getY-D9Ej5fM(J)F

    move-result v2

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/DpOffset;->getX-D9Ej5fM(J)F

    move-result v0

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/DpSize;->getWidth-D9Ej5fM(J)F

    move-result v3

    add-float/2addr v0, v3

    .line 9
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v3

    .line 10
    invoke-static {p1, p2}, Landroidx/compose/ui/unit/DpOffset;->getY-D9Ej5fM(J)F

    move-result p1

    invoke-static {p3, p4}, Landroidx/compose/ui/unit/DpSize;->getHeight-D9Ej5fM(J)F

    move-result p2

    add-float/2addr p1, p2

    .line 11
    invoke-static {p1}, Landroidx/compose/ui/unit/Dp;->constructor-impl(F)F

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    .line 12
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/unit/DpRect;-><init>(FFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(JJLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/unit/DpRect;-><init>(JJ)V

    return-void
.end method

.method public static synthetic copy-a9UjIt4$default(Landroidx/compose/ui/unit/DpRect;FFFFILjava/lang/Object;)Landroidx/compose/ui/unit/DpRect;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    iget p1, p0, Landroidx/compose/ui/unit/DpRect;->left:F

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    iget p2, p0, Landroidx/compose/ui/unit/DpRect;->top:F

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 14
    .line 15
    if-eqz p6, :cond_2

    .line 16
    .line 17
    iget p3, p0, Landroidx/compose/ui/unit/DpRect;->right:F

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 20
    .line 21
    if-eqz p5, :cond_3

    .line 22
    .line 23
    iget p4, p0, Landroidx/compose/ui/unit/DpRect;->bottom:F

    .line 24
    .line 25
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/unit/DpRect;->copy-a9UjIt4(FFFF)Landroidx/compose/ui/unit/DpRect;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public static synthetic getBottom-D9Ej5fM$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getLeft-D9Ej5fM$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getRight-D9Ej5fM$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    return-void
.end method

.method public static synthetic getTop-D9Ej5fM$annotations()V
    .locals 0
    .annotation build Landroidx/compose/runtime/Stable;
    .end annotation

    .line 1
    return-void
.end method


# virtual methods
.method public final component1-D9Ej5fM()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/unit/DpRect;->left:F

    .line 2
    .line 3
    return v0
.end method

.method public final component2-D9Ej5fM()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/unit/DpRect;->top:F

    .line 2
    .line 3
    return v0
.end method

.method public final component3-D9Ej5fM()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/unit/DpRect;->right:F

    .line 2
    .line 3
    return v0
.end method

.method public final component4-D9Ej5fM()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/unit/DpRect;->bottom:F

    .line 2
    .line 3
    return v0
.end method

.method public final copy-a9UjIt4(FFFF)Landroidx/compose/ui/unit/DpRect;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v6, Landroidx/compose/ui/unit/DpRect;

    .line 2
    .line 3
    const/4 v5, 0x0

    .line 4
    move-object v0, v6

    .line 5
    move v1, p1

    .line 6
    move v2, p2

    .line 7
    move v3, p3

    .line 8
    move v4, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/unit/DpRect;-><init>(FFFFLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 10
    .line 11
    .line 12
    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/compose/ui/unit/DpRect;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroidx/compose/ui/unit/DpRect;

    .line 12
    .line 13
    iget v1, p0, Landroidx/compose/ui/unit/DpRect;->left:F

    .line 14
    .line 15
    iget v3, p1, Landroidx/compose/ui/unit/DpRect;->left:F

    .line 16
    .line 17
    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    .line 23
    return v2

    .line 24
    :cond_2
    iget v1, p0, Landroidx/compose/ui/unit/DpRect;->top:F

    .line 25
    .line 26
    iget v3, p1, Landroidx/compose/ui/unit/DpRect;->top:F

    .line 27
    .line 28
    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    return v2

    .line 35
    :cond_3
    iget v1, p0, Landroidx/compose/ui/unit/DpRect;->right:F

    .line 36
    .line 37
    iget v3, p1, Landroidx/compose/ui/unit/DpRect;->right:F

    .line 38
    .line 39
    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    .line 45
    return v2

    .line 46
    :cond_4
    iget v1, p0, Landroidx/compose/ui/unit/DpRect;->bottom:F

    .line 47
    .line 48
    iget p1, p1, Landroidx/compose/ui/unit/DpRect;->bottom:F

    .line 49
    .line 50
    invoke-static {v1, p1}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 51
    .line 52
    .line 53
    move-result p1

    .line 54
    if-nez p1, :cond_5

    .line 55
    .line 56
    return v2

    .line 57
    :cond_5
    return v0
.end method

.method public final getBottom-D9Ej5fM()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/unit/DpRect;->bottom:F

    .line 2
    .line 3
    return v0
.end method

.method public final getLeft-D9Ej5fM()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/unit/DpRect;->left:F

    .line 2
    .line 3
    return v0
.end method

.method public final getRight-D9Ej5fM()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/unit/DpRect;->right:F

    .line 2
    .line 3
    return v0
.end method

.method public final getTop-D9Ej5fM()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/unit/DpRect;->top:F

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/ui/unit/DpRect;->left:F

    .line 2
    .line 3
    invoke-static {v0}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget v1, p0, Landroidx/compose/ui/unit/DpRect;->top:F

    .line 10
    .line 11
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    mul-int/lit8 v0, v0, 0x1f

    .line 17
    .line 18
    iget v1, p0, Landroidx/compose/ui/unit/DpRect;->right:F

    .line 19
    .line 20
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/2addr v0, v1

    .line 25
    mul-int/lit8 v0, v0, 0x1f

    .line 26
    .line 27
    iget v1, p0, Landroidx/compose/ui/unit/DpRect;->bottom:F

    .line 28
    .line 29
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/2addr v0, v1

    .line 34
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "DpRect(left="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Landroidx/compose/ui/unit/DpRect;->left:F

    .line 12
    .line 13
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, ", top="

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget v1, p0, Landroidx/compose/ui/unit/DpRect;->top:F

    .line 26
    .line 27
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v1, ", right="

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget v1, p0, Landroidx/compose/ui/unit/DpRect;->right:F

    .line 40
    .line 41
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, ", bottom="

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget v1, p0, Landroidx/compose/ui/unit/DpRect;->bottom:F

    .line 54
    .line 55
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const/16 v1, 0x29

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    return-object v0
.end method
