.class public final Lcom/facebook/fresco/vito/options/RoundingOptions;
.super Ljava/lang/Object;
.source "RoundingOptions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field private static final AS_CIRCLE:Lcom/facebook/fresco/vito/options/RoundingOptions;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final AS_CIRCLE_ANTI_ALIASING:Lcom/facebook/fresco/vito/options/RoundingOptions;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final CORNER_RADIUS_UNSET:F

.field public static final Companion:Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final cornerRadii:[F
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final cornerRadius:F

.field private final isAntiAliased:Z

.field private final isCircular:Z

.field private final isForceRoundAtDecode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/fresco/vito/options/RoundingOptions;->Companion:Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;

    .line 8
    .line 9
    new-instance v0, Lcom/facebook/fresco/vito/options/RoundingOptions;

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x0

    .line 13
    const/4 v3, 0x1

    .line 14
    const/4 v4, 0x0

    .line 15
    const/4 v5, 0x0

    .line 16
    move-object v2, v0

    .line 17
    invoke-direct/range {v2 .. v7}, Lcom/facebook/fresco/vito/options/RoundingOptions;-><init>(ZF[FZZ)V

    .line 18
    .line 19
    .line 20
    sput-object v0, Lcom/facebook/fresco/vito/options/RoundingOptions;->AS_CIRCLE:Lcom/facebook/fresco/vito/options/RoundingOptions;

    .line 21
    .line 22
    new-instance v0, Lcom/facebook/fresco/vito/options/RoundingOptions;

    .line 23
    .line 24
    const/4 v12, 0x1

    .line 25
    const/4 v13, 0x0

    .line 26
    const/4 v9, 0x1

    .line 27
    const/4 v10, 0x0

    .line 28
    const/4 v11, 0x0

    .line 29
    move-object v8, v0

    .line 30
    invoke-direct/range {v8 .. v13}, Lcom/facebook/fresco/vito/options/RoundingOptions;-><init>(ZF[FZZ)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lcom/facebook/fresco/vito/options/RoundingOptions;->AS_CIRCLE_ANTI_ALIASING:Lcom/facebook/fresco/vito/options/RoundingOptions;

    .line 34
    .line 35
    return-void
.end method

.method public constructor <init>(ZF[FZZ)V
    .locals 0
    .param p3    # [F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isCircular:Z

    .line 5
    .line 6
    iput p2, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadius:F

    .line 7
    .line 8
    iput-object p3, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadii:[F

    .line 9
    .line 10
    iput-boolean p4, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isAntiAliased:Z

    .line 11
    .line 12
    iput-boolean p5, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isForceRoundAtDecode:Z

    .line 13
    .line 14
    return-void
.end method

.method public static final synthetic access$getAS_CIRCLE$cp()Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/fresco/vito/options/RoundingOptions;->AS_CIRCLE:Lcom/facebook/fresco/vito/options/RoundingOptions;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$getAS_CIRCLE_ANTI_ALIASING$cp()Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 1

    .line 1
    sget-object v0, Lcom/facebook/fresco/vito/options/RoundingOptions;->AS_CIRCLE_ANTI_ALIASING:Lcom/facebook/fresco/vito/options/RoundingOptions;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final asCircle()Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/fresco/vito/options/RoundingOptions;->Companion:Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;

    invoke-virtual {v0}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;->asCircle()Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object v0

    return-object v0
.end method

.method public static final asCircle(Z)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object v0, Lcom/facebook/fresco/vito/options/RoundingOptions;->Companion:Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;->asCircle(Z)Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object p0

    return-object p0
.end method

.method public static final asCircle(ZZ)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    sget-object v0, Lcom/facebook/fresco/vito/options/RoundingOptions;->Companion:Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;->asCircle(ZZ)Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic copy$default(Lcom/facebook/fresco/vito/options/RoundingOptions;ZF[FZZILjava/lang/Object;)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 3

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    .line 3
    if-eqz p7, :cond_0

    .line 4
    .line 5
    iget-boolean p1, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isCircular:Z

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    .line 9
    if-eqz p7, :cond_1

    .line 10
    .line 11
    iget p2, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadius:F

    .line 12
    .line 13
    :cond_1
    move p7, p2

    .line 14
    and-int/lit8 p2, p6, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget-object p3, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadii:[F

    .line 19
    .line 20
    :cond_2
    move-object v0, p3

    .line 21
    and-int/lit8 p2, p6, 0x8

    .line 22
    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget-boolean p4, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isAntiAliased:Z

    .line 26
    .line 27
    :cond_3
    move v1, p4

    .line 28
    and-int/lit8 p2, p6, 0x10

    .line 29
    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    iget-boolean p5, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isForceRoundAtDecode:Z

    .line 33
    .line 34
    :cond_4
    move v2, p5

    .line 35
    move-object p2, p0

    .line 36
    move p3, p1

    .line 37
    move p4, p7

    .line 38
    move-object p5, v0

    .line 39
    move p6, v1

    .line 40
    move p7, v2

    .line 41
    invoke-virtual/range {p2 .. p7}, Lcom/facebook/fresco/vito/options/RoundingOptions;->copy(ZF[FZZ)Lcom/facebook/fresco/vito/options/RoundingOptions;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    return-object p0
.end method

.method public static final forCornerRadii(FFFF)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/fresco/vito/options/RoundingOptions;->Companion:Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;->forCornerRadii(FFFF)Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object p0

    return-object p0
.end method

.method public static final forCornerRadii([F)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 1
    .param p0    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object v0, Lcom/facebook/fresco/vito/options/RoundingOptions;->Companion:Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;

    invoke-virtual {v0, p0}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;->forCornerRadii([F)Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object p0

    return-object p0
.end method

.method public static final forCornerRadii([FZ)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 1
    .param p0    # [F
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    sget-object v0, Lcom/facebook/fresco/vito/options/RoundingOptions;->Companion:Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;->forCornerRadii([FZ)Lcom/facebook/fresco/vito/options/RoundingOptions;

    move-result-object p0

    return-object p0
.end method

.method public static final forCornerRadiusPx(F)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/fresco/vito/options/RoundingOptions;->Companion:Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/facebook/fresco/vito/options/RoundingOptions$Companion;->forCornerRadiusPx(F)Lcom/facebook/fresco/vito/options/RoundingOptions;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isCircular:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component2()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadius:F

    .line 2
    .line 3
    return v0
.end method

.method public final component3()[F
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadii:[F

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isAntiAliased:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component5()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isForceRoundAtDecode:Z

    .line 2
    .line 3
    return v0
.end method

.method public final copy(ZF[FZZ)Lcom/facebook/fresco/vito/options/RoundingOptions;
    .locals 7
    .param p3    # [F
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v6, Lcom/facebook/fresco/vito/options/RoundingOptions;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move v1, p1

    .line 5
    move v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move v4, p4

    .line 8
    move v5, p5

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/facebook/fresco/vito/options/RoundingOptions;-><init>(ZF[FZZ)V

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
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/4 v1, 0x0

    .line 13
    :goto_0
    const-class v2, Lcom/facebook/fresco/vito/options/RoundingOptions;

    .line 14
    .line 15
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    if-nez v1, :cond_2

    .line 21
    .line 22
    return v2

    .line 23
    :cond_2
    const-string v1, "null cannot be cast to non-null type com.facebook.fresco.vito.options.RoundingOptions"

    .line 24
    .line 25
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    check-cast p1, Lcom/facebook/fresco/vito/options/RoundingOptions;

    .line 29
    .line 30
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isCircular:Z

    .line 31
    .line 32
    iget-boolean v3, p1, Lcom/facebook/fresco/vito/options/RoundingOptions;->isCircular:Z

    .line 33
    .line 34
    if-ne v1, v3, :cond_3

    .line 35
    .line 36
    iget v1, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadius:F

    .line 37
    .line 38
    iget v3, p1, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadius:F

    .line 39
    .line 40
    cmpg-float v1, v1, v3

    .line 41
    .line 42
    if-nez v1, :cond_3

    .line 43
    .line 44
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadii:[F

    .line 45
    .line 46
    iget-object v3, p1, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadii:[F

    .line 47
    .line 48
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([F[F)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isAntiAliased:Z

    .line 55
    .line 56
    iget-boolean v3, p1, Lcom/facebook/fresco/vito/options/RoundingOptions;->isAntiAliased:Z

    .line 57
    .line 58
    if-ne v1, v3, :cond_3

    .line 59
    .line 60
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isForceRoundAtDecode:Z

    .line 61
    .line 62
    iget-boolean p1, p1, Lcom/facebook/fresco/vito/options/RoundingOptions;->isForceRoundAtDecode:Z

    .line 63
    .line 64
    if-ne v1, p1, :cond_3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    move v0, v2

    .line 68
    :goto_1
    return v0
.end method

.method public final getCornerRadii()[F
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadii:[F

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCornerRadius()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadius:F

    .line 2
    .line 3
    return v0
.end method

.method public final hasRoundedCorners()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadius:F

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    cmpg-float v0, v0, v1

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    iget-object v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadii:[F

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 16
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isCircular:Z

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
    iget v1, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadius:F

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

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
    iget-object v1, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadii:[F

    .line 19
    .line 20
    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

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
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isAntiAliased:Z

    .line 28
    .line 29
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

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
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isForceRoundAtDecode:Z

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
    return v0
.end method

.method public final isAntiAliased()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isAntiAliased:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isCircular()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isCircular:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isForceRoundAtDecode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isForceRoundAtDecode:Z

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isCircular:Z

    .line 2
    .line 3
    iget v1, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadius:F

    .line 4
    .line 5
    iget-object v2, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->cornerRadii:[F

    .line 6
    .line 7
    invoke-static {v2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    iget-boolean v3, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isAntiAliased:Z

    .line 12
    .line 13
    iget-boolean v4, p0, Lcom/facebook/fresco/vito/options/RoundingOptions;->isForceRoundAtDecode:Z

    .line 14
    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v6, "RoundingOptions(isCircular="

    .line 21
    .line 22
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, ", cornerRadius="

    .line 29
    .line 30
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ", cornerRadii="

    .line 37
    .line 38
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, ", isAntiAliased="

    .line 45
    .line 46
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, ", isForceRoundAtDecode="

    .line 53
    .line 54
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, ")"

    .line 61
    .line 62
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    return-object v0
.end method
