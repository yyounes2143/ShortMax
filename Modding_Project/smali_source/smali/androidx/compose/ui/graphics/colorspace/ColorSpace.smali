.class public abstract Landroidx/compose/ui/graphics/colorspace/ColorSpace;
.super Ljava/lang/Object;
.source "ColorSpace.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/graphics/colorspace/ColorSpace$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/graphics/colorspace/ColorSpace$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MaxId:I = 0x3f

.field public static final MinId:I = -0x1


# instance fields
.field private final id:I

.field private final model:J

.field private final name:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/compose/ui/graphics/colorspace/ColorSpace$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/colorspace/ColorSpace$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->Companion:Landroidx/compose/ui/graphics/colorspace/ColorSpace$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;J)V
    .locals 6

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 12
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;-><init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;JI)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->name:Ljava/lang/String;

    .line 5
    iput-wide p2, p0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->model:J

    .line 6
    iput p4, p0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->id:I

    .line 7
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    if-lt p4, p1, :cond_0

    const/16 p1, 0x3f

    if-gt p4, p1, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The id must be between -1 and 63"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 9
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 10
    const-string p2, "The name of a color space cannot be null and must contain at least 1 character"

    .line 11
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;-><init>(Ljava/lang/String;JI)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;JLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;-><init>(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    if-eqz p1, :cond_4

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    check-cast p1, Landroidx/compose/ui/graphics/colorspace/ColorSpace;

    .line 32
    .line 33
    iget v1, p0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->id:I

    .line 34
    .line 35
    iget v2, p1, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->id:I

    .line 36
    .line 37
    if-eq v1, v2, :cond_2

    .line 38
    .line 39
    return v0

    .line 40
    :cond_2
    iget-object v1, p0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->name:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v2, p1, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->name:Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v1

    .line 48
    if-nez v1, :cond_3

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_3
    iget-wide v0, p0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->model:J

    .line 52
    .line 53
    iget-wide v2, p1, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->model:J

    .line 54
    .line 55
    invoke-static {v0, v1, v2, v3}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->equals-impl0(JJ)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    :cond_4
    :goto_0
    return v0
.end method

.method public final fromXyz(FFF)[F
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->model:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->getComponentCount-impl(J)I

    move-result v0

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 2
    aput p1, v0, v1

    const/4 p1, 0x1

    .line 3
    aput p2, v0, p1

    const/4 p1, 0x2

    .line 4
    aput p3, v0, p1

    .line 5
    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->fromXyz([F)[F

    move-result-object p1

    return-object p1
.end method

.method public abstract fromXyz([F)[F
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public final getComponentCount()I
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->model:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->getComponentCount-impl(J)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final getId$ui_graphics_release()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->id:I

    .line 2
    .line 3
    return v0
.end method

.method public abstract getMaxValue(I)F
.end method

.method public abstract getMinValue(I)F
.end method

.method public final getModel-xdoWZVw()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->model:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->name:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->name:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-wide v1, p0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->model:J

    .line 10
    .line 11
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->hashCode-impl(J)I

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
    iget v1, p0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->id:I

    .line 19
    .line 20
    add-int/2addr v0, v1

    .line 21
    return v0
.end method

.method public isSrgb()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public abstract isWideGamut()Z
.end method

.method public toString()Ljava/lang/String;
    .locals 3
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
    iget-object v1, p0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->name:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, " (id="

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget v1, p0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->id:I

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ", model="

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    iget-wide v1, p0, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->model:J

    .line 27
    .line 28
    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/colorspace/ColorModel;->toString-impl(J)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const/16 v1, 0x29

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    return-object v0
.end method

.method public final toXyz(FFF)[F
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    invoke-virtual {p0, v0}, Landroidx/compose/ui/graphics/colorspace/ColorSpace;->toXyz([F)[F

    move-result-object p1

    return-object p1
.end method

.method public abstract toXyz([F)[F
    .param p1    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method
