.class public final Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;
.super Ljava/lang/Object;
.source "VideoPreviewInfo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final discoverModule:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final displayMode:I

.field private final isAuto:Z

.field private final isShowDefaultBg:Z

.field private final needDecrypt:Z

.field private final shorts:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final url:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final videoPreview:Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;ZLjava/lang/String;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;ZIZ)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "videoPreview"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "url"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "discoverModule"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shorts"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->videoPreview:Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 3
    iput-boolean p2, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->needDecrypt:Z

    .line 4
    iput-object p3, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->url:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->discoverModule:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 6
    iput-object p5, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->shorts:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 7
    iput-boolean p6, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->isAuto:Z

    .line 8
    iput p7, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->displayMode:I

    .line 9
    iput-boolean p8, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->isShowDefaultBg:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;ZLjava/lang/String;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;ZIZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    move v9, v1

    goto :goto_0

    :cond_0
    move/from16 v9, p7

    :goto_0
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    move v10, v0

    goto :goto_1

    :cond_1
    move/from16 v10, p8

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    .line 10
    invoke-direct/range {v2 .. v10}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;-><init>(Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;ZLjava/lang/String;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;ZIZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;ZLjava/lang/String;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;ZIZILjava/lang/Object;)Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;
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
    iget-object v2, v0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->videoPreview:Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

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
    iget-boolean v3, v0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->needDecrypt:Z

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
    iget-object v4, v0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->url:Ljava/lang/String;

    .line 25
    .line 26
    goto :goto_2

    .line 27
    :cond_2
    move-object v4, p3

    .line 28
    :goto_2
    and-int/lit8 v5, v1, 0x8

    .line 29
    .line 30
    if-eqz v5, :cond_3

    .line 31
    .line 32
    iget-object v5, v0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->discoverModule:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

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
    iget-object v6, v0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->shorts:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 41
    .line 42
    goto :goto_4

    .line 43
    :cond_4
    move-object v6, p5

    .line 44
    :goto_4
    and-int/lit8 v7, v1, 0x20

    .line 45
    .line 46
    if-eqz v7, :cond_5

    .line 47
    .line 48
    iget-boolean v7, v0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->isAuto:Z

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
    iget v8, v0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->displayMode:I

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
    iget-boolean v1, v0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->isShowDefaultBg:Z

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
    move-object p3, v4

    .line 73
    move-object p4, v5

    .line 74
    move-object p5, v6

    .line 75
    move p6, v7

    .line 76
    move/from16 p7, v8

    .line 77
    .line 78
    move/from16 p8, v1

    .line 79
    .line 80
    invoke-virtual/range {p0 .. p8}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->copy(Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;ZLjava/lang/String;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;ZIZ)Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    return-object v0
.end method


# virtual methods
.method public final component1()Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->videoPreview:Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component2()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->needDecrypt:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component4()Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->discoverModule:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component5()Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->shorts:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 2
    .line 3
    return-object v0
.end method

.method public final component6()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->isAuto:Z

    .line 2
    .line 3
    return v0
.end method

.method public final component7()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->displayMode:I

    .line 2
    .line 3
    return v0
.end method

.method public final component8()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->isShowDefaultBg:Z

    .line 2
    .line 3
    return v0
.end method

.method public final copy(Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;ZLjava/lang/String;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;ZIZ)Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;
    .locals 10
    .param p1    # Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string/jumbo v0, "videoPreview"

    .line 2
    .line 3
    .line 4
    move-object v2, p1

    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string/jumbo v0, "url"

    .line 9
    .line 10
    .line 11
    move-object v4, p3

    .line 12
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "discoverModule"

    .line 16
    .line 17
    move-object v5, p4

    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string/jumbo v0, "shorts"

    .line 22
    .line 23
    .line 24
    move-object v6, p5

    .line 25
    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;

    .line 29
    .line 30
    move-object v1, v0

    .line 31
    move v3, p2

    .line 32
    move/from16 v7, p6

    .line 33
    .line 34
    move/from16 v8, p7

    .line 35
    .line 36
    move/from16 v9, p8

    .line 37
    .line 38
    invoke-direct/range {v1 .. v9}, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;-><init>(Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;ZLjava/lang/String;Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;ZIZ)V

    .line 39
    .line 40
    .line 41
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
    instance-of v1, p1, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;

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
    check-cast p1, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->videoPreview:Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->videoPreview:Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

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
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->needDecrypt:Z

    .line 25
    .line 26
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->needDecrypt:Z

    .line 27
    .line 28
    if-eq v1, v3, :cond_3

    .line 29
    .line 30
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->url:Ljava/lang/String;

    .line 32
    .line 33
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->url:Ljava/lang/String;

    .line 34
    .line 35
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->discoverModule:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 43
    .line 44
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->discoverModule:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 45
    .line 46
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->shorts:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 54
    .line 55
    iget-object v3, p1, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->shorts:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 56
    .line 57
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-nez v1, :cond_6

    .line 62
    .line 63
    return v2

    .line 64
    :cond_6
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->isAuto:Z

    .line 65
    .line 66
    iget-boolean v3, p1, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->isAuto:Z

    .line 67
    .line 68
    if-eq v1, v3, :cond_7

    .line 69
    .line 70
    return v2

    .line 71
    :cond_7
    iget v1, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->displayMode:I

    .line 72
    .line 73
    iget v3, p1, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->displayMode:I

    .line 74
    .line 75
    if-eq v1, v3, :cond_8

    .line 76
    .line 77
    return v2

    .line 78
    :cond_8
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->isShowDefaultBg:Z

    .line 79
    .line 80
    iget-boolean p1, p1, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->isShowDefaultBg:Z

    .line 81
    .line 82
    if-eq v1, p1, :cond_9

    .line 83
    .line 84
    return v2

    .line 85
    :cond_9
    return v0
.end method

.method public final getDiscoverModule()Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->discoverModule:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDisplayMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->displayMode:I

    .line 2
    .line 3
    return v0
.end method

.method public final getNeedDecrypt()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->needDecrypt:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getShorts()Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->shorts:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getVideoPreview()Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->videoPreview:Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->videoPreview:Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    .line 9
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->needDecrypt:Z

    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->url:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->discoverModule:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

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
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->shorts:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

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
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->isAuto:Z

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
    mul-int/lit8 v0, v0, 0x1f

    .line 53
    .line 54
    iget v1, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->displayMode:I

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
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->isShowDefaultBg:Z

    .line 64
    .line 65
    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    add-int/2addr v0, v1

    .line 70
    return v0
.end method

.method public final isAuto()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->isAuto:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isShowDefaultBg()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->isShowDefaultBg:Z

    .line 2
    .line 3
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
    const-string v1, "VideoPreviewInfo(videoPreview="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->videoPreview:Lcom/startshorts/androidplayer/ui/view/discover/VideoPreview;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", needDecrypt="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->needDecrypt:Z

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", url="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->url:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", discoverModule="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->discoverModule:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ", shorts="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->shorts:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 52
    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ", isAuto="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->isAuto:Z

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ", displayMode="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget v1, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->displayMode:I

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ", isShowDefaultBg="

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-boolean v1, p0, Lcom/startshorts/androidplayer/bean/discover/VideoPreviewInfo;->isShowDefaultBg:Z

    .line 82
    .line 83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

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
