.class public final Landroidx/compose/foundation/MagnifierStyle;
.super Ljava/lang/Object;
.source "Magnifier.kt"


# annotations
.annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
.end annotation

.annotation build Landroidx/compose/runtime/Stable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/foundation/MagnifierStyle$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/foundation/MagnifierStyle$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final Default:Landroidx/compose/foundation/MagnifierStyle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TextDefault:Landroidx/compose/foundation/MagnifierStyle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final clippingEnabled:Z

.field private final cornerRadius:F

.field private final elevation:F

.field private final fishEyeEnabled:Z

.field private final size:J

.field private final useTextDefault:Z


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 1
    new-instance v0, Landroidx/compose/foundation/MagnifierStyle$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/compose/foundation/MagnifierStyle$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/compose/foundation/MagnifierStyle;->Companion:Landroidx/compose/foundation/MagnifierStyle$Companion;

    .line 8
    .line 9
    new-instance v0, Landroidx/compose/foundation/MagnifierStyle;

    .line 10
    .line 11
    const/16 v9, 0x1f

    .line 12
    .line 13
    const/4 v10, 0x0

    .line 14
    const-wide/16 v3, 0x0

    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v7, 0x0

    .line 19
    const/4 v8, 0x0

    .line 20
    move-object v2, v0

    .line 21
    invoke-direct/range {v2 .. v10}, Landroidx/compose/foundation/MagnifierStyle;-><init>(JFFZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 22
    .line 23
    .line 24
    sput-object v0, Landroidx/compose/foundation/MagnifierStyle;->Default:Landroidx/compose/foundation/MagnifierStyle;

    .line 25
    .line 26
    new-instance v1, Landroidx/compose/foundation/MagnifierStyle;

    .line 27
    .line 28
    iget-wide v13, v0, Landroidx/compose/foundation/MagnifierStyle;->size:J

    .line 29
    .line 30
    iget v15, v0, Landroidx/compose/foundation/MagnifierStyle;->cornerRadius:F

    .line 31
    .line 32
    iget v2, v0, Landroidx/compose/foundation/MagnifierStyle;->elevation:F

    .line 33
    .line 34
    iget-boolean v3, v0, Landroidx/compose/foundation/MagnifierStyle;->clippingEnabled:Z

    .line 35
    .line 36
    iget-boolean v0, v0, Landroidx/compose/foundation/MagnifierStyle;->fishEyeEnabled:Z

    .line 37
    .line 38
    const/16 v19, 0x0

    .line 39
    .line 40
    const/4 v12, 0x1

    .line 41
    move-object v11, v1

    .line 42
    move/from16 v16, v2

    .line 43
    .line 44
    move/from16 v17, v3

    .line 45
    .line 46
    move/from16 v18, v0

    .line 47
    .line 48
    invoke-direct/range {v11 .. v19}, Landroidx/compose/foundation/MagnifierStyle;-><init>(ZJFFZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 49
    .line 50
    .line 51
    sput-object v1, Landroidx/compose/foundation/MagnifierStyle;->TextDefault:Landroidx/compose/foundation/MagnifierStyle;

    .line 52
    .line 53
    return-void
.end method

.method private constructor <init>(JFFZZ)V
    .locals 9

    const/4 v1, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 14
    invoke-direct/range {v0 .. v8}, Landroidx/compose/foundation/MagnifierStyle;-><init>(ZJFFZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(JFFZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 v0, p7, 0x1

    if-eqz v0, :cond_0

    .line 10
    sget-object v0, Landroidx/compose/ui/unit/DpSize;->Companion:Landroidx/compose/ui/unit/DpSize$Companion;

    invoke-virtual {v0}, Landroidx/compose/ui/unit/DpSize$Companion;->getUnspecified-MYxV2XQ()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    move-wide v0, p1

    :goto_0
    and-int/lit8 v2, p7, 0x2

    if-eqz v2, :cond_1

    .line 11
    sget-object v2, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v2}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result v2

    goto :goto_1

    :cond_1
    move v2, p3

    :goto_1
    and-int/lit8 v3, p7, 0x4

    if-eqz v3, :cond_2

    .line 12
    sget-object v3, Landroidx/compose/ui/unit/Dp;->Companion:Landroidx/compose/ui/unit/Dp$Companion;

    invoke-virtual {v3}, Landroidx/compose/ui/unit/Dp$Companion;->getUnspecified-D9Ej5fM()F

    move-result v3

    goto :goto_2

    :cond_2
    move v3, p4

    :goto_2
    and-int/lit8 v4, p7, 0x8

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    goto :goto_3

    :cond_3
    move v4, p5

    :goto_3
    and-int/lit8 v5, p7, 0x10

    if-eqz v5, :cond_4

    const/4 v5, 0x0

    goto :goto_4

    :cond_4
    move v5, p6

    :goto_4
    const/4 v6, 0x0

    move-object p1, p0

    move-wide p2, v0

    move p4, v2

    move p5, v3

    move p6, v4

    move p7, v5

    move-object p8, v6

    .line 13
    invoke-direct/range {p1 .. p8}, Landroidx/compose/foundation/MagnifierStyle;-><init>(JFFZZLkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(JFFZZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0
    .annotation runtime Landroidx/compose/foundation/ExperimentalFoundationApi;
    .end annotation

    .line 1
    invoke-direct/range {p0 .. p6}, Landroidx/compose/foundation/MagnifierStyle;-><init>(JFFZZ)V

    return-void
.end method

.method private constructor <init>(ZJFFZZ)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-boolean p1, p0, Landroidx/compose/foundation/MagnifierStyle;->useTextDefault:Z

    .line 5
    iput-wide p2, p0, Landroidx/compose/foundation/MagnifierStyle;->size:J

    .line 6
    iput p4, p0, Landroidx/compose/foundation/MagnifierStyle;->cornerRadius:F

    .line 7
    iput p5, p0, Landroidx/compose/foundation/MagnifierStyle;->elevation:F

    .line 8
    iput-boolean p6, p0, Landroidx/compose/foundation/MagnifierStyle;->clippingEnabled:Z

    .line 9
    iput-boolean p7, p0, Landroidx/compose/foundation/MagnifierStyle;->fishEyeEnabled:Z

    return-void
.end method

.method public synthetic constructor <init>(ZJFFZZLkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p7}, Landroidx/compose/foundation/MagnifierStyle;-><init>(ZJFFZZ)V

    return-void
.end method

.method public static final synthetic access$getDefault$cp()Landroidx/compose/foundation/MagnifierStyle;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/MagnifierStyle;->Default:Landroidx/compose/foundation/MagnifierStyle;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getTextDefault$cp()Landroidx/compose/foundation/MagnifierStyle;
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/foundation/MagnifierStyle;->TextDefault:Landroidx/compose/foundation/MagnifierStyle;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7
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
    instance-of v1, p1, Landroidx/compose/foundation/MagnifierStyle;

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
    iget-boolean v1, p0, Landroidx/compose/foundation/MagnifierStyle;->useTextDefault:Z

    .line 12
    .line 13
    check-cast p1, Landroidx/compose/foundation/MagnifierStyle;

    .line 14
    .line 15
    iget-boolean v3, p1, Landroidx/compose/foundation/MagnifierStyle;->useTextDefault:Z

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    iget-wide v3, p0, Landroidx/compose/foundation/MagnifierStyle;->size:J

    .line 21
    .line 22
    iget-wide v5, p1, Landroidx/compose/foundation/MagnifierStyle;->size:J

    .line 23
    .line 24
    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/unit/DpSize;->equals-impl0(JJ)Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget v1, p0, Landroidx/compose/foundation/MagnifierStyle;->cornerRadius:F

    .line 32
    .line 33
    iget v3, p1, Landroidx/compose/foundation/MagnifierStyle;->cornerRadius:F

    .line 34
    .line 35
    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    .line 41
    return v2

    .line 42
    :cond_4
    iget v1, p0, Landroidx/compose/foundation/MagnifierStyle;->elevation:F

    .line 43
    .line 44
    iget v3, p1, Landroidx/compose/foundation/MagnifierStyle;->elevation:F

    .line 45
    .line 46
    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_5

    .line 51
    .line 52
    return v2

    .line 53
    :cond_5
    iget-boolean v1, p0, Landroidx/compose/foundation/MagnifierStyle;->clippingEnabled:Z

    .line 54
    .line 55
    iget-boolean v3, p1, Landroidx/compose/foundation/MagnifierStyle;->clippingEnabled:Z

    .line 56
    .line 57
    if-eq v1, v3, :cond_6

    .line 58
    .line 59
    return v2

    .line 60
    :cond_6
    iget-boolean v1, p0, Landroidx/compose/foundation/MagnifierStyle;->fishEyeEnabled:Z

    .line 61
    .line 62
    iget-boolean p1, p1, Landroidx/compose/foundation/MagnifierStyle;->fishEyeEnabled:Z

    .line 63
    .line 64
    if-eq v1, p1, :cond_7

    .line 65
    .line 66
    return v2

    .line 67
    :cond_7
    return v0
.end method

.method public final getClippingEnabled$foundation_release()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/MagnifierStyle;->clippingEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getCornerRadius-D9Ej5fM$foundation_release()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/MagnifierStyle;->cornerRadius:F

    .line 2
    .line 3
    return v0
.end method

.method public final getElevation-D9Ej5fM$foundation_release()F
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/foundation/MagnifierStyle;->elevation:F

    .line 2
    .line 3
    return v0
.end method

.method public final getFishEyeEnabled$foundation_release()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/MagnifierStyle;->fishEyeEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getSize-MYxV2XQ$foundation_release()J
    .locals 2

    .line 1
    iget-wide v0, p0, Landroidx/compose/foundation/MagnifierStyle;->size:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getUseTextDefault$foundation_release()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/MagnifierStyle;->useTextDefault:Z

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/MagnifierStyle;->useTextDefault:Z

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-wide v1, p0, Landroidx/compose/foundation/MagnifierStyle;->size:J

    .line 10
    .line 11
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/DpSize;->hashCode-impl(J)I

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
    iget v1, p0, Landroidx/compose/foundation/MagnifierStyle;->cornerRadius:F

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
    iget v1, p0, Landroidx/compose/foundation/MagnifierStyle;->elevation:F

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
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    .line 36
    iget-boolean v1, p0, Landroidx/compose/foundation/MagnifierStyle;->clippingEnabled:Z

    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    add-int/2addr v0, v1

    .line 43
    mul-int/lit8 v0, v0, 0x1f

    .line 44
    .line 45
    iget-boolean v1, p0, Landroidx/compose/foundation/MagnifierStyle;->fishEyeEnabled:Z

    .line 46
    .line 47
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/2addr v0, v1

    .line 52
    return v0
.end method

.method public final isSupported()Z
    .locals 4

    .line 1
    sget-object v0, Landroidx/compose/foundation/MagnifierStyle;->Companion:Landroidx/compose/foundation/MagnifierStyle$Companion;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    invoke-static {v0, p0, v3, v1, v2}, Landroidx/compose/foundation/MagnifierStyle$Companion;->isStyleSupported$foundation_release$default(Landroidx/compose/foundation/MagnifierStyle$Companion;Landroidx/compose/foundation/MagnifierStyle;IILjava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/compose/foundation/MagnifierStyle;->useTextDefault:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "MagnifierStyle.TextDefault"

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "MagnifierStyle(size="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Landroidx/compose/foundation/MagnifierStyle;->size:J

    .line 19
    .line 20
    invoke-static {v1, v2}, Landroidx/compose/ui/unit/DpSize;->toString-impl(J)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v1, ", cornerRadius="

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget v1, p0, Landroidx/compose/foundation/MagnifierStyle;->cornerRadius:F

    .line 33
    .line 34
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ", elevation="

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    iget v1, p0, Landroidx/compose/foundation/MagnifierStyle;->elevation:F

    .line 47
    .line 48
    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->toString-impl(F)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v1, ", clippingEnabled="

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    iget-boolean v1, p0, Landroidx/compose/foundation/MagnifierStyle;->clippingEnabled:Z

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    const-string v1, ", fishEyeEnabled="

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    iget-boolean v1, p0, Landroidx/compose/foundation/MagnifierStyle;->fishEyeEnabled:Z

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    const/16 v1, 0x29

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    :goto_0
    return-object v0
.end method
