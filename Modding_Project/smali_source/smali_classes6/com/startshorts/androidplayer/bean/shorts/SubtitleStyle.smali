.class public final Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;
.super Ljava/lang/Object;
.source "SubtitleData.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private color:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private fontSize:I

.field private letterSpacing:I

.field private shadowColor:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private shadowDx:I

.field private shadowDy:I

.field private shadowRadius:I

.field private topPercentage:F


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 1
    const/16 v9, 0xff

    const/4 v10, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v10}, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;-><init>(Ljava/lang/String;IILjava/lang/String;IIIFILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;IIIF)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "color"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shadowColor"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->color:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->shadowRadius:I

    .line 5
    iput p3, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->fontSize:I

    .line 6
    iput-object p4, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->shadowColor:Ljava/lang/String;

    .line 7
    iput p5, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->shadowDy:I

    .line 8
    iput p6, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->shadowDx:I

    .line 9
    iput p7, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->letterSpacing:I

    .line 10
    iput p8, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->topPercentage:F

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IILjava/lang/String;IIIFILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 8

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    .line 11
    const-string v1, "#ffffff"

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const/16 v4, 0xe

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    .line 12
    const-string v5, "#000000"

    goto :goto_3

    :cond_3
    move-object v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    move v6, v3

    goto :goto_4

    :cond_4
    move v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    goto :goto_5

    :cond_5
    move v3, p6

    :goto_5
    and-int/lit8 v7, v0, 0x40

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    goto :goto_6

    :cond_6
    move v7, p7

    :goto_6
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    const v0, 0x3ea8f5c3    # 0.33f

    goto :goto_7

    :cond_7
    move/from16 v0, p8

    :goto_7
    move-object p1, p0

    move-object p2, v1

    move p3, v2

    move p4, v4

    move-object p5, v5

    move p6, v6

    move p7, v3

    move/from16 p8, v7

    move/from16 p9, v0

    .line 13
    invoke-direct/range {p1 .. p9}, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;-><init>(Ljava/lang/String;IILjava/lang/String;IIIF)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;Ljava/lang/String;IILjava/lang/String;IIIFILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;
    .locals 9

    .line 1
    move-object v0, p0

    .line 2
    move/from16 v1, p9

    .line 3
    .line 4
    and-int/lit8 v2, v1, 0x1

    .line 5
    .line 6
    if-eqz v2, :cond_0

    .line 7
    .line 8
    iget-object v2, v0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->color:Ljava/lang/String;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move-object v2, p1

    .line 12
    :goto_0
    and-int/lit8 v3, v1, 0x2

    .line 13
    .line 14
    if-eqz v3, :cond_1

    .line 15
    .line 16
    iget v3, v0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->shadowRadius:I

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_1
    move v3, p2

    .line 20
    :goto_1
    and-int/lit8 v4, v1, 0x4

    .line 21
    .line 22
    if-eqz v4, :cond_2

    .line 23
    .line 24
    iget v4, v0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->fontSize:I

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move v4, p3

    .line 28
    :goto_2
    and-int/lit8 v5, v1, 0x8

    .line 29
    .line 30
    if-eqz v5, :cond_3

    .line 31
    .line 32
    iget-object v5, v0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->shadowColor:Ljava/lang/String;

    .line 33
    .line 34
    goto :goto_3

    .line 35
    :cond_3
    move-object v5, p4

    .line 36
    :goto_3
    and-int/lit8 v6, v1, 0x10

    .line 37
    .line 38
    if-eqz v6, :cond_4

    .line 39
    .line 40
    iget v6, v0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->shadowDy:I

    .line 41
    .line 42
    goto :goto_4

    .line 43
    :cond_4
    move v6, p5

    .line 44
    :goto_4
    and-int/lit8 v7, v1, 0x20

    .line 45
    .line 46
    if-eqz v7, :cond_5

    .line 47
    .line 48
    iget v7, v0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->shadowDx:I

    .line 49
    .line 50
    goto :goto_5

    .line 51
    :cond_5
    move v7, p6

    .line 52
    :goto_5
    and-int/lit8 v8, v1, 0x40

    .line 53
    .line 54
    if-eqz v8, :cond_6

    .line 55
    .line 56
    iget v8, v0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->letterSpacing:I

    .line 57
    .line 58
    goto :goto_6

    .line 59
    :cond_6
    move/from16 v8, p7

    .line 60
    .line 61
    :goto_6
    and-int/lit16 v1, v1, 0x80

    .line 62
    .line 63
    if-eqz v1, :cond_7

    .line 64
    .line 65
    iget v1, v0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->topPercentage:F

    .line 66
    .line 67
    goto :goto_7

    .line 68
    :cond_7
    move/from16 v1, p8

    .line 69
    .line 70
    :goto_7
    move-object p1, v2

    .line 71
    move p2, v3

    .line 72
    move p3, v4

    .line 73
    move-object p4, v5

    .line 74
    move p5, v6

    .line 75
    move p6, v7

    .line 76
    move/from16 p7, v8

    .line 77
    .line 78
    move/from16 p8, v1

    .line 79
    .line 80
    invoke-virtual/range {p0 .. p8}, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->copy(Ljava/lang/String;IILjava/lang/String;IIIF)Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    return-object v0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->color:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->shadowRadius:I

    .line 2
    .line 3
    return v0
.end method

.method public final component3()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->fontSize:I

    .line 2
    .line 3
    return v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->shadowColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->shadowDy:I

    .line 2
    .line 3
    return v0
.end method

.method public final component6()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->shadowDx:I

    .line 2
    .line 3
    return v0
.end method

.method public final component7()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->letterSpacing:I

    .line 2
    .line 3
    return v0
.end method

.method public final component8()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->topPercentage:F

    .line 2
    .line 3
    return v0
.end method

.method public final copy(Ljava/lang/String;IILjava/lang/String;IIIF)Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "color"

    .line 2
    .line 3
    move-object v2, p1

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "shadowColor"

    .line 8
    .line 9
    .line 10
    move-object v5, p4

    .line 11
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;

    .line 15
    .line 16
    move-object v1, v0

    .line 17
    move v3, p2

    .line 18
    move v4, p3

    .line 19
    move v6, p5

    .line 20
    move/from16 v7, p6

    .line 21
    .line 22
    move/from16 v8, p7

    .line 23
    .line 24
    move/from16 v9, p8

    .line 25
    .line 26
    invoke-direct/range {v1 .. v9}, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;-><init>(Ljava/lang/String;IILjava/lang/String;IIIF)V

    .line 27
    .line 28
    .line 29
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
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;

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
    check-cast p1, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->color:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->color:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->shadowRadius:I

    .line 25
    .line 26
    iget v3, p1, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->shadowRadius:I

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->fontSize:I

    .line 32
    .line 33
    iget v3, p1, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->fontSize:I

    .line 34
    .line 35
    if-eq v1, v3, :cond_4

    .line 36
    .line 37
    return v2

    .line 38
    :cond_4
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->shadowColor:Ljava/lang/String;

    .line 39
    .line 40
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->shadowColor:Ljava/lang/String;

    .line 41
    .line 42
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-nez v1, :cond_5

    .line 47
    .line 48
    return v2

    .line 49
    :cond_5
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->shadowDy:I

    .line 50
    .line 51
    iget v3, p1, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->shadowDy:I

    .line 52
    .line 53
    if-eq v1, v3, :cond_6

    .line 54
    .line 55
    return v2

    .line 56
    :cond_6
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->shadowDx:I

    .line 57
    .line 58
    iget v3, p1, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->shadowDx:I

    .line 59
    .line 60
    if-eq v1, v3, :cond_7

    .line 61
    .line 62
    return v2

    .line 63
    :cond_7
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->letterSpacing:I

    .line 64
    .line 65
    iget v3, p1, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->letterSpacing:I

    .line 66
    .line 67
    if-eq v1, v3, :cond_8

    .line 68
    .line 69
    return v2

    .line 70
    :cond_8
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->topPercentage:F

    .line 71
    .line 72
    iget p1, p1, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->topPercentage:F

    .line 73
    .line 74
    invoke-static {v1, p1}, Ljava/lang/Float;->compare(FF)I

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_9

    .line 79
    .line 80
    return v2

    .line 81
    :cond_9
    return v0
.end method

.method public final getColor()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->color:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFontSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->fontSize:I

    .line 2
    .line 3
    return v0
.end method

.method public final getLetterSpacing()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->letterSpacing:I

    .line 2
    .line 3
    return v0
.end method

.method public final getShadowColor()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->shadowColor:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShadowDx()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->shadowDx:I

    .line 2
    .line 3
    return v0
.end method

.method public final getShadowDy()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->shadowDy:I

    .line 2
    .line 3
    return v0
.end method

.method public final getShadowRadius()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->shadowRadius:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTopPercentage()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->topPercentage:F

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->color:Ljava/lang/String;

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
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->shadowRadius:I

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

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
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->fontSize:I

    .line 19
    .line 20
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->shadowColor:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

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
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->shadowDy:I

    .line 37
    .line 38
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

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
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->shadowDx:I

    .line 46
    .line 47
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    add-int/2addr v0, v1

    .line 52
    mul-int/lit8 v0, v0, 0x1f

    .line 53
    .line 54
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->letterSpacing:I

    .line 55
    .line 56
    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    add-int/2addr v0, v1

    .line 61
    mul-int/lit8 v0, v0, 0x1f

    .line 62
    .line 63
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->topPercentage:F

    .line 64
    .line 65
    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    add-int/2addr v0, v1

    .line 70
    return v0
.end method

.method public final setColor(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->color:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setFontSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->fontSize:I

    .line 2
    .line 3
    return-void
.end method

.method public final setLetterSpacing(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->letterSpacing:I

    .line 2
    .line 3
    return-void
.end method

.method public final setShadowColor(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->shadowColor:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setShadowDx(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->shadowDx:I

    .line 2
    .line 3
    return-void
.end method

.method public final setShadowDy(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->shadowDy:I

    .line 2
    .line 3
    return-void
.end method

.method public final setShadowRadius(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->shadowRadius:I

    .line 2
    .line 3
    return-void
.end method

.method public final setTopPercentage(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->topPercentage:F

    .line 2
    .line 3
    return-void
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
    const-string v1, "SubtitleStyle(color="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->color:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", shadowRadius="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->shadowRadius:I

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", fontSize="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->fontSize:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", shadowColor="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->shadowColor:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", shadowDy="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->shadowDy:I

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", shadowDx="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->shadowDx:I

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", letterSpacing="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->letterSpacing:I

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", topPercentage="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget v1, p0, Lcom/startshorts/androidplayer/bean/shorts/SubtitleStyle;->topPercentage:F

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const/16 v1, 0x29

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    return-object v0
.end method
