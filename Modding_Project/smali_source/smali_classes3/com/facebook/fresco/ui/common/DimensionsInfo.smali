.class public final Lcom/facebook/fresco/ui/common/DimensionsInfo;
.super Ljava/lang/Object;
.source "DimensionsInfo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final decodedImageHeight:I

.field private final decodedImageWidth:I

.field private final encodedImageHeight:I

.field private final encodedImageWidth:I

.field private final scaleType:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final viewportHeight:I

.field private final viewportWidth:I


# direct methods
.method public constructor <init>(IIIIIILjava/lang/String;)V
    .locals 1
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "scaleType"

    .line 2
    .line 3
    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput p1, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->viewportWidth:I

    .line 10
    .line 11
    iput p2, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->viewportHeight:I

    .line 12
    .line 13
    iput p3, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->encodedImageWidth:I

    .line 14
    .line 15
    iput p4, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->encodedImageHeight:I

    .line 16
    .line 17
    iput p5, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->decodedImageWidth:I

    .line 18
    .line 19
    iput p6, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->decodedImageHeight:I

    .line 20
    .line 21
    iput-object p7, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->scaleType:Ljava/lang/String;

    .line 22
    .line 23
    return-void
.end method

.method public static synthetic copy$default(Lcom/facebook/fresco/ui/common/DimensionsInfo;IIIIIILjava/lang/String;ILjava/lang/Object;)Lcom/facebook/fresco/ui/common/DimensionsInfo;
    .locals 5

    .line 1
    and-int/lit8 p9, p8, 0x1

    .line 2
    .line 3
    if-eqz p9, :cond_0

    .line 4
    .line 5
    iget p1, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->viewportWidth:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p9, p8, 0x2

    .line 8
    .line 9
    if-eqz p9, :cond_1

    .line 10
    .line 11
    iget p2, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->viewportHeight:I

    .line 12
    .line 13
    :cond_1
    move p9, p2

    .line 14
    and-int/lit8 p2, p8, 0x4

    .line 15
    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget p3, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->encodedImageWidth:I

    .line 19
    .line 20
    :cond_2
    move v0, p3

    .line 21
    and-int/lit8 p2, p8, 0x8

    .line 22
    .line 23
    if-eqz p2, :cond_3

    .line 24
    .line 25
    iget p4, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->encodedImageHeight:I

    .line 26
    .line 27
    :cond_3
    move v1, p4

    .line 28
    and-int/lit8 p2, p8, 0x10

    .line 29
    .line 30
    if-eqz p2, :cond_4

    .line 31
    .line 32
    iget p5, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->decodedImageWidth:I

    .line 33
    .line 34
    :cond_4
    move v2, p5

    .line 35
    and-int/lit8 p2, p8, 0x20

    .line 36
    .line 37
    if-eqz p2, :cond_5

    .line 38
    .line 39
    iget p6, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->decodedImageHeight:I

    .line 40
    .line 41
    :cond_5
    move v3, p6

    .line 42
    and-int/lit8 p2, p8, 0x40

    .line 43
    .line 44
    if-eqz p2, :cond_6

    .line 45
    .line 46
    iget-object p7, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->scaleType:Ljava/lang/String;

    .line 47
    .line 48
    :cond_6
    move-object v4, p7

    .line 49
    move-object p2, p0

    .line 50
    move p3, p1

    .line 51
    move p4, p9

    .line 52
    move p5, v0

    .line 53
    move p6, v1

    .line 54
    move p7, v2

    .line 55
    move p8, v3

    .line 56
    move-object p9, v4

    .line 57
    invoke-virtual/range {p2 .. p9}, Lcom/facebook/fresco/ui/common/DimensionsInfo;->copy(IIIIIILjava/lang/String;)Lcom/facebook/fresco/ui/common/DimensionsInfo;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->viewportWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public final component2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->viewportHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public final component3()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->encodedImageWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public final component4()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->encodedImageHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public final component5()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->decodedImageWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public final component6()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->decodedImageHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public final component7()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->scaleType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final copy(IIIIIILjava/lang/String;)Lcom/facebook/fresco/ui/common/DimensionsInfo;
    .locals 9
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "scaleType"

    .line 2
    .line 3
    move-object/from16 v8, p7

    .line 4
    .line 5
    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/facebook/fresco/ui/common/DimensionsInfo;

    .line 9
    .line 10
    move-object v1, v0

    .line 11
    move v2, p1

    .line 12
    move v3, p2

    .line 13
    move v4, p3

    .line 14
    move v5, p4

    .line 15
    move v6, p5

    .line 16
    move v7, p6

    .line 17
    invoke-direct/range {v1 .. v8}, Lcom/facebook/fresco/ui/common/DimensionsInfo;-><init>(IIIIIILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
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
    const-class v2, Lcom/facebook/fresco/ui/common/DimensionsInfo;

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
    const-string v1, "null cannot be cast to non-null type com.facebook.fresco.ui.common.DimensionsInfo"

    .line 24
    .line 25
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    check-cast p1, Lcom/facebook/fresco/ui/common/DimensionsInfo;

    .line 29
    .line 30
    iget v1, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->viewportWidth:I

    .line 31
    .line 32
    iget v3, p1, Lcom/facebook/fresco/ui/common/DimensionsInfo;->viewportWidth:I

    .line 33
    .line 34
    if-ne v1, v3, :cond_3

    .line 35
    .line 36
    iget v1, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->viewportHeight:I

    .line 37
    .line 38
    iget v3, p1, Lcom/facebook/fresco/ui/common/DimensionsInfo;->viewportHeight:I

    .line 39
    .line 40
    if-ne v1, v3, :cond_3

    .line 41
    .line 42
    iget v1, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->encodedImageWidth:I

    .line 43
    .line 44
    iget v3, p1, Lcom/facebook/fresco/ui/common/DimensionsInfo;->encodedImageWidth:I

    .line 45
    .line 46
    if-ne v1, v3, :cond_3

    .line 47
    .line 48
    iget v1, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->encodedImageHeight:I

    .line 49
    .line 50
    iget v3, p1, Lcom/facebook/fresco/ui/common/DimensionsInfo;->encodedImageHeight:I

    .line 51
    .line 52
    if-ne v1, v3, :cond_3

    .line 53
    .line 54
    iget v1, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->decodedImageWidth:I

    .line 55
    .line 56
    iget v3, p1, Lcom/facebook/fresco/ui/common/DimensionsInfo;->decodedImageWidth:I

    .line 57
    .line 58
    if-ne v1, v3, :cond_3

    .line 59
    .line 60
    iget v1, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->decodedImageHeight:I

    .line 61
    .line 62
    iget v3, p1, Lcom/facebook/fresco/ui/common/DimensionsInfo;->decodedImageHeight:I

    .line 63
    .line 64
    if-ne v1, v3, :cond_3

    .line 65
    .line 66
    iget-object v1, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->scaleType:Ljava/lang/String;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/facebook/fresco/ui/common/DimensionsInfo;->scaleType:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    if-eqz p1, :cond_3

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_3
    move v0, v2

    .line 78
    :goto_1
    return v0
.end method

.method public final getDecodedImageHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->decodedImageHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public final getDecodedImageWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->decodedImageWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public final getEncodedImageHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->encodedImageHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public final getEncodedImageWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->encodedImageWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public final getScaleType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->scaleType:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getViewportHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->viewportHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public final getViewportWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->viewportWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->viewportWidth:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    iget v1, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->viewportHeight:I

    .line 6
    .line 7
    add-int/2addr v0, v1

    .line 8
    mul-int/lit8 v0, v0, 0x1f

    .line 9
    .line 10
    iget v1, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->encodedImageWidth:I

    .line 11
    .line 12
    add-int/2addr v0, v1

    .line 13
    mul-int/lit8 v0, v0, 0x1f

    .line 14
    .line 15
    iget v1, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->encodedImageHeight:I

    .line 16
    .line 17
    add-int/2addr v0, v1

    .line 18
    mul-int/lit8 v0, v0, 0x1f

    .line 19
    .line 20
    iget v1, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->decodedImageWidth:I

    .line 21
    .line 22
    add-int/2addr v0, v1

    .line 23
    mul-int/lit8 v0, v0, 0x1f

    .line 24
    .line 25
    iget v1, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->decodedImageHeight:I

    .line 26
    .line 27
    add-int/2addr v0, v1

    .line 28
    mul-int/lit8 v0, v0, 0x1f

    .line 29
    .line 30
    iget-object v1, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->scaleType:Ljava/lang/String;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    add-int/2addr v0, v1

    .line 37
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 9
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget v0, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->viewportWidth:I

    .line 2
    .line 3
    iget v1, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->viewportHeight:I

    .line 4
    .line 5
    iget v2, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->encodedImageWidth:I

    .line 6
    .line 7
    iget v3, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->encodedImageHeight:I

    .line 8
    .line 9
    iget v4, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->decodedImageWidth:I

    .line 10
    .line 11
    iget v5, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->decodedImageHeight:I

    .line 12
    .line 13
    iget-object v6, p0, Lcom/facebook/fresco/ui/common/DimensionsInfo;->scaleType:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v8, "DimensionsInfo(viewportWidth="

    .line 21
    .line 22
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v0, ", viewportHeight="

    .line 29
    .line 30
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v0, ", encodedImageWidth="

    .line 37
    .line 38
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, ", encodedImageHeight="

    .line 45
    .line 46
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    const-string v0, ", decodedImageWidth="

    .line 53
    .line 54
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v0, ", decodedImageHeight="

    .line 61
    .line 62
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v0, ", scaleType="

    .line 69
    .line 70
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v0, ")"

    .line 77
    .line 78
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    return-object v0
.end method
