.class public final Lcom/facebook/fresco/vito/options/BorderOptions;
.super Ljava/lang/Object;
.source "BorderOptions.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/vito/options/BorderOptions$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/facebook/fresco/vito/options/BorderOptions$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final color:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public final padding:F

.field public final scaleDownInsideBorders:Z

.field public final width:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/fresco/vito/options/BorderOptions$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/facebook/fresco/vito/options/BorderOptions$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/facebook/fresco/vito/options/BorderOptions;->Companion:Lcom/facebook/fresco/vito/options/BorderOptions$Companion;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(IFFZ)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/facebook/fresco/vito/options/BorderOptions;->color:I

    .line 3
    iput p2, p0, Lcom/facebook/fresco/vito/options/BorderOptions;->width:F

    .line 4
    iput p3, p0, Lcom/facebook/fresco/vito/options/BorderOptions;->padding:F

    .line 5
    iput-boolean p4, p0, Lcom/facebook/fresco/vito/options/BorderOptions;->scaleDownInsideBorders:Z

    return-void
.end method

.method public synthetic constructor <init>(IFFZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_0

    const/4 p3, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_1

    const/4 p4, 0x0

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/fresco/vito/options/BorderOptions;-><init>(IFFZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/facebook/fresco/vito/options/BorderOptions;IFFZILjava/lang/Object;)Lcom/facebook/fresco/vito/options/BorderOptions;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/facebook/fresco/vito/options/BorderOptions;->color:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    iget p2, p0, Lcom/facebook/fresco/vito/options/BorderOptions;->width:F

    .line 12
    .line 13
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 14
    .line 15
    if-eqz p6, :cond_2

    .line 16
    .line 17
    iget p3, p0, Lcom/facebook/fresco/vito/options/BorderOptions;->padding:F

    .line 18
    .line 19
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 20
    .line 21
    if-eqz p5, :cond_3

    .line 22
    .line 23
    iget-boolean p4, p0, Lcom/facebook/fresco/vito/options/BorderOptions;->scaleDownInsideBorders:Z

    .line 24
    .line 25
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/facebook/fresco/vito/options/BorderOptions;->copy(IFFZ)Lcom/facebook/fresco/vito/options/BorderOptions;

    .line 26
    .line 27
    .line 28
    move-result-object p0

    .line 29
    return-object p0
.end method

.method public static final create(IF)Lcom/facebook/fresco/vito/options/BorderOptions;
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/facebook/fresco/vito/options/BorderOptions;->Companion:Lcom/facebook/fresco/vito/options/BorderOptions$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/facebook/fresco/vito/options/BorderOptions$Companion;->create(IF)Lcom/facebook/fresco/vito/options/BorderOptions;

    move-result-object p0

    return-object p0
.end method

.method public static final create(IFF)Lcom/facebook/fresco/vito/options/BorderOptions;
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    sget-object v0, Lcom/facebook/fresco/vito/options/BorderOptions;->Companion:Lcom/facebook/fresco/vito/options/BorderOptions$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/facebook/fresco/vito/options/BorderOptions$Companion;->create(IFF)Lcom/facebook/fresco/vito/options/BorderOptions;

    move-result-object p0

    return-object p0
.end method

.method public static final create(IFFZ)Lcom/facebook/fresco/vito/options/BorderOptions;
    .locals 1
    .param p0    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 3
    sget-object v0, Lcom/facebook/fresco/vito/options/BorderOptions;->Companion:Lcom/facebook/fresco/vito/options/BorderOptions$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/facebook/fresco/vito/options/BorderOptions$Companion;->create(IFFZ)Lcom/facebook/fresco/vito/options/BorderOptions;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/vito/options/BorderOptions;->color:I

    .line 2
    .line 3
    return v0
.end method

.method public final component2()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/vito/options/BorderOptions;->width:F

    .line 2
    .line 3
    return v0
.end method

.method public final component3()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/vito/options/BorderOptions;->padding:F

    .line 2
    .line 3
    return v0
.end method

.method public final component4()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/vito/options/BorderOptions;->scaleDownInsideBorders:Z

    .line 2
    .line 3
    return v0
.end method

.method public final copy(IFFZ)Lcom/facebook/fresco/vito/options/BorderOptions;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/fresco/vito/options/BorderOptions;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p3, p4}, Lcom/facebook/fresco/vito/options/BorderOptions;-><init>(IFFZ)V

    .line 4
    .line 5
    .line 6
    return-object v0
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
    const-class v2, Lcom/facebook/fresco/vito/options/BorderOptions;

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
    const-string v1, "null cannot be cast to non-null type com.facebook.fresco.vito.options.BorderOptions"

    .line 24
    .line 25
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    check-cast p1, Lcom/facebook/fresco/vito/options/BorderOptions;

    .line 29
    .line 30
    iget v1, p0, Lcom/facebook/fresco/vito/options/BorderOptions;->color:I

    .line 31
    .line 32
    iget v3, p1, Lcom/facebook/fresco/vito/options/BorderOptions;->color:I

    .line 33
    .line 34
    if-ne v1, v3, :cond_3

    .line 35
    .line 36
    iget v1, p0, Lcom/facebook/fresco/vito/options/BorderOptions;->width:F

    .line 37
    .line 38
    iget v3, p1, Lcom/facebook/fresco/vito/options/BorderOptions;->width:F

    .line 39
    .line 40
    cmpg-float v1, v1, v3

    .line 41
    .line 42
    if-nez v1, :cond_3

    .line 43
    .line 44
    iget v1, p0, Lcom/facebook/fresco/vito/options/BorderOptions;->padding:F

    .line 45
    .line 46
    iget v3, p1, Lcom/facebook/fresco/vito/options/BorderOptions;->padding:F

    .line 47
    .line 48
    cmpg-float v1, v1, v3

    .line 49
    .line 50
    if-nez v1, :cond_3

    .line 51
    .line 52
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/BorderOptions;->scaleDownInsideBorders:Z

    .line 53
    .line 54
    iget-boolean p1, p1, Lcom/facebook/fresco/vito/options/BorderOptions;->scaleDownInsideBorders:Z

    .line 55
    .line 56
    if-ne v1, p1, :cond_3

    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_3
    move v0, v2

    .line 60
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/facebook/fresco/vito/options/BorderOptions;->color:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget v1, p0, Lcom/facebook/fresco/vito/options/BorderOptions;->width:F

    .line 6
    .line 7
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    add-int/2addr v0, v1

    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    .line 14
    iget v1, p0, Lcom/facebook/fresco/vito/options/BorderOptions;->padding:F

    .line 15
    .line 16
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    add-int/2addr v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    .line 23
    iget-boolean v1, p0, Lcom/facebook/fresco/vito/options/BorderOptions;->scaleDownInsideBorders:Z

    .line 24
    .line 25
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    add-int/2addr v0, v1

    .line 30
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget v0, p0, Lcom/facebook/fresco/vito/options/BorderOptions;->color:I

    .line 2
    .line 3
    iget v1, p0, Lcom/facebook/fresco/vito/options/BorderOptions;->width:F

    .line 4
    .line 5
    iget v2, p0, Lcom/facebook/fresco/vito/options/BorderOptions;->padding:F

    .line 6
    .line 7
    iget-boolean v3, p0, Lcom/facebook/fresco/vito/options/BorderOptions;->scaleDownInsideBorders:Z

    .line 8
    .line 9
    new-instance v4, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v5, "BorderOptions(color="

    .line 15
    .line 16
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v0, ", width="

    .line 23
    .line 24
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v0, ", padding="

    .line 31
    .line 32
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v0, ", scaleDownInsideBorders="

    .line 39
    .line 40
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v0, ")"

    .line 47
    .line 48
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method
