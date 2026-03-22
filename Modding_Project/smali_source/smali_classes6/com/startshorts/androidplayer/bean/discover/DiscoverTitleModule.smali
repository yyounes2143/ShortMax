.class public final Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;
.super Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
.source "DiscoverTitleModule.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private backgroundRes:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private bannerId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final contentModuleStyle:I

.field private iconRes:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isShowMore:Z

.field private title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Integer;Ljava/lang/Integer;)V
    .locals 26
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    move-object/from16 v15, p2

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    const-string/jumbo v1, "title"

    invoke-static {v15, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const v24, 0x7ffffc

    const/16 v25, 0x0

    const/16 v1, -0xb

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v15, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    .line 2
    invoke-direct/range {v0 .. v25}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ZILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Long;Ljava/lang/Long;ILjava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object/from16 v1, p1

    .line 3
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;->bannerId:Ljava/lang/String;

    move-object/from16 v1, p2

    .line 4
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;->title:Ljava/lang/String;

    move/from16 v1, p3

    .line 5
    iput-boolean v1, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;->isShowMore:Z

    move/from16 v1, p4

    .line 6
    iput v1, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;->contentModuleStyle:I

    move-object/from16 v1, p5

    .line 7
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;->iconRes:Ljava/lang/Integer;

    move-object/from16 v1, p6

    .line 8
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;->backgroundRes:Ljava/lang/Integer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object v7, p5

    :goto_0
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_1

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object v8, p6

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 1
    invoke-direct/range {v2 .. v8}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;-><init>(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public final getBackgroundRes()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;->backgroundRes:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBannerId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;->bannerId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getContentModuleStyle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;->contentModuleStyle:I

    .line 2
    .line 3
    return v0
.end method

.method public final getIconRes()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;->iconRes:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isShowMore()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;->isShowMore:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setBackgroundRes(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;->backgroundRes:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setBannerId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;->bannerId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setIconRes(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;->iconRes:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public setShowMore(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;->isShowMore:Z

    .line 2
    .line 3
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverTitleModule;->title:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
