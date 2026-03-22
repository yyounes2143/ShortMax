.class public final Landroidx/compose/ui/text/font/ResourceFont;
.super Ljava/lang/Object;
.source "Font.kt"

# interfaces
.implements Landroidx/compose/ui/text/font/Font;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final loadingStrategy:I

.field private final resId:I

.field private final style:I

.field private final weight:Landroidx/compose/ui/text/font/FontWeight;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method private constructor <init>(ILandroidx/compose/ui/text/font/FontWeight;II)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Landroidx/compose/ui/text/font/ResourceFont;->resId:I

    .line 4
    iput-object p2, p0, Landroidx/compose/ui/text/font/ResourceFont;->weight:Landroidx/compose/ui/text/font/FontWeight;

    .line 5
    iput p3, p0, Landroidx/compose/ui/text/font/ResourceFont;->style:I

    .line 6
    iput p4, p0, Landroidx/compose/ui/text/font/ResourceFont;->loadingStrategy:I

    return-void
.end method

.method public synthetic constructor <init>(ILandroidx/compose/ui/text/font/FontWeight;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    .line 7
    sget-object p2, Landroidx/compose/ui/text/font/FontWeight;->Companion:Landroidx/compose/ui/text/font/FontWeight$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/text/font/FontWeight$Companion;->getNormal()Landroidx/compose/ui/text/font/FontWeight;

    move-result-object p2

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p5, 0x4

    if-eqz p2, :cond_1

    .line 8
    sget-object p2, Landroidx/compose/ui/text/font/FontStyle;->Companion:Landroidx/compose/ui/text/font/FontStyle$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/text/font/FontStyle$Companion;->getNormal-_-LCdwA()I

    move-result p3

    :cond_1
    move v3, p3

    and-int/lit8 p2, p5, 0x8

    if-eqz p2, :cond_2

    .line 9
    sget-object p2, Landroidx/compose/ui/text/font/FontLoadingStrategy;->Companion:Landroidx/compose/ui/text/font/FontLoadingStrategy$Companion;

    invoke-virtual {p2}, Landroidx/compose/ui/text/font/FontLoadingStrategy$Companion;->getAsync-PKNRLFQ()I

    move-result p4

    :cond_2
    move v4, p4

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    .line 10
    invoke-direct/range {v0 .. v5}, Landroidx/compose/ui/text/font/ResourceFont;-><init>(ILandroidx/compose/ui/text/font/FontWeight;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(ILandroidx/compose/ui/text/font/FontWeight;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/compose/ui/text/font/ResourceFont;-><init>(ILandroidx/compose/ui/text/font/FontWeight;II)V

    return-void
.end method

.method public static synthetic copy-RetOiIg$default(Landroidx/compose/ui/text/font/ResourceFont;ILandroidx/compose/ui/text/font/FontWeight;IILjava/lang/Object;)Landroidx/compose/ui/text/font/ResourceFont;
    .locals 0

    .line 1
    and-int/lit8 p5, p4, 0x1

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    iget p1, p0, Landroidx/compose/ui/text/font/ResourceFont;->resId:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p5, p4, 0x2

    .line 8
    .line 9
    if-eqz p5, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/ResourceFont;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    :cond_1
    and-int/lit8 p4, p4, 0x4

    .line 16
    .line 17
    if-eqz p4, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/ResourceFont;->getStyle-_-LCdwA()I

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/text/font/ResourceFont;->copy-RetOiIg(ILandroidx/compose/ui/text/font/FontWeight;I)Landroidx/compose/ui/text/font/ResourceFont;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public static synthetic copy-YpTlLL0$default(Landroidx/compose/ui/text/font/ResourceFont;ILandroidx/compose/ui/text/font/FontWeight;IIILjava/lang/Object;)Landroidx/compose/ui/text/font/ResourceFont;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    iget p1, p0, Landroidx/compose/ui/text/font/ResourceFont;->resId:I

    .line 6
    .line 7
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    .line 9
    if-eqz p6, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/ResourceFont;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 16
    .line 17
    if-eqz p6, :cond_2

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/ResourceFont;->getStyle-_-LCdwA()I

    .line 20
    .line 21
    .line 22
    move-result p3

    .line 23
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 24
    .line 25
    if-eqz p5, :cond_3

    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/ResourceFont;->getLoadingStrategy-PKNRLFQ()I

    .line 28
    .line 29
    .line 30
    move-result p4

    .line 31
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/compose/ui/text/font/ResourceFont;->copy-YpTlLL0(ILandroidx/compose/ui/text/font/FontWeight;II)Landroidx/compose/ui/text/font/ResourceFont;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    return-object p0
.end method

.method public static synthetic getLoadingStrategy-PKNRLFQ$annotations()V
    .locals 0
    .annotation runtime Landroidx/compose/ui/text/ExperimentalTextApi;
    .end annotation

    .line 1
    return-void
.end method


# virtual methods
.method public final copy-RetOiIg(ILandroidx/compose/ui/text/font/FontWeight;I)Landroidx/compose/ui/text/font/ResourceFont;
    .locals 1
    .param p2    # Landroidx/compose/ui/text/font/FontWeight;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "weight"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/ResourceFont;->getLoadingStrategy-PKNRLFQ()I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/compose/ui/text/font/ResourceFont;->copy-YpTlLL0(ILandroidx/compose/ui/text/font/FontWeight;II)Landroidx/compose/ui/text/font/ResourceFont;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public final copy-YpTlLL0(ILandroidx/compose/ui/text/font/FontWeight;II)Landroidx/compose/ui/text/font/ResourceFont;
    .locals 7
    .param p2    # Landroidx/compose/ui/text/font/FontWeight;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Landroidx/compose/ui/text/ExperimentalTextApi;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "weight"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Landroidx/compose/ui/text/font/ResourceFont;

    .line 7
    .line 8
    const/4 v6, 0x0

    .line 9
    move-object v1, v0

    .line 10
    move v2, p1

    .line 11
    move-object v3, p2

    .line 12
    move v4, p3

    .line 13
    move v5, p4

    .line 14
    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/text/font/ResourceFont;-><init>(ILandroidx/compose/ui/text/font/FontWeight;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 15
    .line 16
    .line 17
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
    instance-of v1, p1, Landroidx/compose/ui/text/font/ResourceFont;

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
    iget v1, p0, Landroidx/compose/ui/text/font/ResourceFont;->resId:I

    .line 12
    .line 13
    check-cast p1, Landroidx/compose/ui/text/font/ResourceFont;

    .line 14
    .line 15
    iget v3, p1, Landroidx/compose/ui/text/font/ResourceFont;->resId:I

    .line 16
    .line 17
    if-eq v1, v3, :cond_2

    .line 18
    .line 19
    return v2

    .line 20
    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/ResourceFont;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/ResourceFont;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/ResourceFont;->getStyle-_-LCdwA()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/ResourceFont;->getStyle-_-LCdwA()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-static {v1, v3}, Landroidx/compose/ui/text/font/FontStyle;->equals-impl0(II)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_4

    .line 48
    .line 49
    return v2

    .line 50
    :cond_4
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/ResourceFont;->getLoadingStrategy-PKNRLFQ()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    invoke-virtual {p1}, Landroidx/compose/ui/text/font/ResourceFont;->getLoadingStrategy-PKNRLFQ()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    invoke-static {v1, p1}, Landroidx/compose/ui/text/font/FontLoadingStrategy;->equals-impl0(II)Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    if-nez p1, :cond_5

    .line 63
    .line 64
    return v2

    .line 65
    :cond_5
    return v0
.end method

.method public getLoadingStrategy-PKNRLFQ()I
    .locals 1
    .annotation runtime Landroidx/compose/ui/text/ExperimentalTextApi;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/font/ResourceFont;->loadingStrategy:I

    .line 2
    .line 3
    return v0
.end method

.method public final getResId()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/font/ResourceFont;->resId:I

    .line 2
    .line 3
    return v0
.end method

.method public getStyle-_-LCdwA()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/font/ResourceFont;->style:I

    .line 2
    .line 3
    return v0
.end method

.method public getWeight()Landroidx/compose/ui/text/font/FontWeight;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Landroidx/compose/ui/text/font/ResourceFont;->weight:Landroidx/compose/ui/text/font/FontWeight;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget v0, p0, Landroidx/compose/ui/text/font/ResourceFont;->resId:I

    .line 2
    .line 3
    mul-int/lit8 v0, v0, 0x1f

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/ResourceFont;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroidx/compose/ui/text/font/FontWeight;->hashCode()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/2addr v0, v1

    .line 14
    mul-int/lit8 v0, v0, 0x1f

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/ResourceFont;->getStyle-_-LCdwA()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-static {v1}, Landroidx/compose/ui/text/font/FontStyle;->hashCode-impl(I)I

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
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/ResourceFont;->getLoadingStrategy-PKNRLFQ()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    invoke-static {v1}, Landroidx/compose/ui/text/font/FontLoadingStrategy;->hashCode-impl(I)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    add-int/2addr v0, v1

    .line 36
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
    const-string v1, "ResourceFont(resId="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Landroidx/compose/ui/text/font/ResourceFont;->resId:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", weight="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/ResourceFont;->getWeight()Landroidx/compose/ui/text/font/FontWeight;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ", style="

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/ResourceFont;->getStyle-_-LCdwA()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-static {v1}, Landroidx/compose/ui/text/font/FontStyle;->toString-impl(I)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v1, ", loadingStrategy="

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Landroidx/compose/ui/text/font/ResourceFont;->getLoadingStrategy-PKNRLFQ()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-static {v1}, Landroidx/compose/ui/text/font/FontLoadingStrategy;->toString-impl(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const/16 v1, 0x29

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    return-object v0
.end method
