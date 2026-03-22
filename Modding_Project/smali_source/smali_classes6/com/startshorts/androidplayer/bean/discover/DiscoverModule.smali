.class public Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
.super Ljava/lang/Object;
.source "DiscoverModule.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/bean/discover/DiscoverModule$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final PROPAGANDA_PATTERN_1:I = 0x1

.field public static final PROPAGANDA_PATTERN_2:I = 0x2

.field public static final PROPAGANDA_PATTERN_3:I = 0x3

.field public static final PROPAGANDA_PATTERN_4:I = 0x4

.field public static final STATUS_CLOSE:I = 0x2

.field public static final STATUS_OPEN:I = 0x1

.field public static final STYLE_ACT_BANNER:I = 0xd

.field public static final STYLE_BANNER:I = 0x4

.field private static final STYLE_BANNER_GROUP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STYLE_BANNER_MIDDLE:I = -0x21

.field public static final STYLE_BANNER_RECT:I = -0x1f

.field public static final STYLE_BANNER_SMALL:I = -0x1e

.field public static final STYLE_CATEGORY_FILTER:I = 0xb

.field public static final STYLE_CIRCLE_PICTURE:I = 0x3

.field public static final STYLE_COLUMN_2_WATERFALL:I = 0x8

.field public static final STYLE_COLUMN_2_WATERFALL_RANK:I = -0x8

.field public static final STYLE_COLUMN_2_WATERFALL_RELATED_SHORTS:I = -0x9

.field public static final STYLE_COLUMN_2_WATERFALL_TAG_LIST:I = -0xa

.field public static final STYLE_COLUMN_3_WATERFALL:I = 0x9

.field public static final STYLE_COMING_SOON:I = 0x7

.field public static final STYLE_EMPTY_SPACE:I = -0x64

.field public static final STYLE_HORIZONTAL_IMAGE_ICON:I = 0x5

.field public static final STYLE_HORIZONTAL_IMAGE_VIDEO_PREVIEW:I = 0xe

.field public static final STYLE_HORIZONTAL_IMAGE_VIDEO_PREVIEW_ITEM:I = -0x20

.field public static final STYLE_LIMITED_TIME_DISCOUNT:I = 0xc

.field public static final STYLE_LOW_SKU_TEMPLATE_NOTIFICATION:I = -0x16

.field public static final STYLE_MAIN_1_ROW_2_COLUMN_X:I = 0xa

.field public static final STYLE_MAIN_1_ROW_2_COLUMN_X_MAIN_PART:I = -0x17

.field public static final STYLE_MAIN_1_ROW_2_COLUMN_X_ROW_PART:I = -0x18

.field public static final STYLE_PICTURE_TEXT:I = 0x2

.field public static final STYLE_PICTURE_TEXT_ITEM:I = -0x14

.field public static final STYLE_RANKING_LIST_HORIZONTAL_IMAGE:I = 0x6

.field public static final STYLE_RANKING_MUL_TAG:I = 0xf

.field public static final STYLE_RECTANGLE_PICTURE:I = 0x1

.field public static final STYLE_TIME_COUNT_TITLE_MORE:I = -0xd

.field public static final STYLE_TITLE_MORE:I = -0xb

.field public static final STYLE_TITLE_MORE_WITH_ICON:I = -0xc


# instance fields
.field private bannerId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private bottomMargin:I

.field private categoryConfigItemVOList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverCategory;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private categoryTabPosMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private categoryTabSelectedPos:I

.field private categoryVOList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final contentResponseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private disableBannerTitle:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isShowMore:Z

.field private labelRankingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/TagListInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private labelRelatedShortPlayRankingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private moduleEndPosition:I

.field private moduleStartPosition:I

.field private position:I

.field private propagandaPattern:I

.field private rankingNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private rankingResponseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverRanking;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private recommendId:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private ruleCode:I

.field private shortPlayResponseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private shorts:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private showNum:I

.field private sort:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private status:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private style:I

.field private subTagId:I

.field private title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private topMargin:I

.field private upack:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private validEndTime:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private validStartTime:Ljava/lang/Long;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->Companion:Lcom/startshorts/androidplayer/bean/discover/DiscoverModule$Companion;

    .line 8
    .line 9
    const/16 v0, -0x1f

    .line 10
    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/16 v1, -0x1e

    .line 16
    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v2, 0x4

    .line 22
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const/16 v3, -0x21

    .line 27
    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v3

    .line 32
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Integer;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->q([Ljava/lang/Object;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    sput-object v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->STYLE_BANNER_GROUP:Ljava/util/List;

    .line 41
    .line 42
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ZILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Long;Ljava/lang/Long;ILjava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Boolean;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p12    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p14    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p15    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p17    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p18    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p19    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p20    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p21    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p23    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;ZI",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;",
            ">;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverCategory;",
            ">;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;",
            ">;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverRanking;",
            ">;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/TagListInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;",
            ">;I",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "I",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;",
            ">;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    const-string/jumbo v2, "title"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v2, p1

    .line 2
    iput v2, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->style:I

    .line 3
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->title:Ljava/lang/String;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->bannerId:Ljava/lang/String;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->shortPlayResponseList:Ljava/util/List;

    move v1, p5

    .line 6
    iput-boolean v1, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->isShowMore:Z

    move v1, p6

    .line 7
    iput v1, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->ruleCode:I

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->categoryVOList:Ljava/util/List;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->categoryConfigItemVOList:Ljava/util/List;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->rankingNameList:Ljava/util/List;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->rankingResponseList:Ljava/util/List;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->labelRankingList:Ljava/util/List;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->labelRelatedShortPlayRankingList:Ljava/util/List;

    move/from16 v1, p13

    .line 14
    iput v1, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->propagandaPattern:I

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->validStartTime:Ljava/lang/Long;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->validEndTime:Ljava/lang/Long;

    move/from16 v1, p16

    .line 17
    iput v1, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->showNum:I

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->recommendId:Ljava/lang/Integer;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->contentResponseList:Ljava/util/List;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->status:Ljava/lang/Integer;

    move-object/from16 v1, p20

    .line 21
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->sort:Ljava/lang/Integer;

    move-object/from16 v1, p21

    .line 22
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->upack:Ljava/lang/String;

    move/from16 v1, p22

    .line 23
    iput v1, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->subTagId:I

    move-object/from16 v1, p23

    .line 24
    iput-object v1, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->disableBannerTitle:Ljava/lang/Boolean;

    const/4 v1, -0x1

    .line 25
    iput v1, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->position:I

    .line 26
    iput v1, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->moduleStartPosition:I

    .line 27
    iput v1, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->moduleEndPosition:I

    .line 28
    sget-object v1, Lfk/z;->a:Lfk/z;

    invoke-virtual {v1}, Lfk/z;->b()I

    move-result v1

    iput v1, v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->bottomMargin:I

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ZILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Long;Ljava/lang/Long;ILjava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Boolean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 27

    move/from16 v0, p24

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v6, v2

    goto :goto_0

    :cond_0
    move-object/from16 v6, p3

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    move-object v7, v2

    goto :goto_1

    :cond_1
    move-object/from16 v7, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    move v8, v3

    goto :goto_2

    :cond_2
    move/from16 v8, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    const/4 v4, -0x1

    if-eqz v1, :cond_3

    move v9, v4

    goto :goto_3

    :cond_3
    move/from16 v9, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    move-object v10, v2

    goto :goto_4

    :cond_4
    move-object/from16 v10, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    move-object v11, v2

    goto :goto_5

    :cond_5
    move-object/from16 v11, p8

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    move-object v12, v2

    goto :goto_6

    :cond_6
    move-object/from16 v12, p9

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    move-object v13, v2

    goto :goto_7

    :cond_7
    move-object/from16 v13, p10

    :goto_7
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    move-object v14, v2

    goto :goto_8

    :cond_8
    move-object/from16 v14, p11

    :goto_8
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_9

    move-object v15, v2

    goto :goto_9

    :cond_9
    move-object/from16 v15, p12

    :goto_9
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    move/from16 v16, v1

    goto :goto_a

    :cond_a
    move/from16 v16, p13

    :goto_a
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_b

    move-object/from16 v17, v2

    goto :goto_b

    :cond_b
    move-object/from16 v17, p14

    :goto_b
    and-int/lit16 v1, v0, 0x4000

    if-eqz v1, :cond_c

    move-object/from16 v18, v2

    goto :goto_c

    :cond_c
    move-object/from16 v18, p15

    :goto_c
    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_d

    move/from16 v19, v3

    goto :goto_d

    :cond_d
    move/from16 v19, p16

    :goto_d
    const/high16 v1, 0x10000

    and-int/2addr v1, v0

    if-eqz v1, :cond_e

    move-object/from16 v20, v2

    goto :goto_e

    :cond_e
    move-object/from16 v20, p17

    :goto_e
    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    if-eqz v1, :cond_f

    move-object/from16 v21, v2

    goto :goto_f

    :cond_f
    move-object/from16 v21, p18

    :goto_f
    const/high16 v1, 0x40000

    and-int/2addr v1, v0

    if-eqz v1, :cond_10

    move-object/from16 v22, v2

    goto :goto_10

    :cond_10
    move-object/from16 v22, p19

    :goto_10
    const/high16 v1, 0x80000

    and-int/2addr v1, v0

    if-eqz v1, :cond_11

    move-object/from16 v23, v2

    goto :goto_11

    :cond_11
    move-object/from16 v23, p20

    :goto_11
    const/high16 v1, 0x100000

    and-int/2addr v1, v0

    if-eqz v1, :cond_12

    move-object/from16 v24, v2

    goto :goto_12

    :cond_12
    move-object/from16 v24, p21

    :goto_12
    const/high16 v1, 0x200000

    and-int/2addr v1, v0

    if-eqz v1, :cond_13

    move/from16 v25, v4

    goto :goto_13

    :cond_13
    move/from16 v25, p22

    :goto_13
    const/high16 v1, 0x400000

    and-int/2addr v0, v1

    if-eqz v0, :cond_14

    move-object/from16 v26, v2

    goto :goto_14

    :cond_14
    move-object/from16 v26, p23

    :goto_14
    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    .line 29
    invoke-direct/range {v3 .. v26}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;ZILjava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;ILjava/lang/Long;Ljava/lang/Long;ILjava/lang/Integer;Ljava/util/List;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;ILjava/lang/Boolean;)V

    return-void
.end method

.method public static final synthetic access$getSTYLE_BANNER_GROUP$cp()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->STYLE_BANNER_GROUP:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final formatTitleForEvent()Ljava/lang/String;
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
    const-string v1, "discover_"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getBannerId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const/16 v1, 0x5f

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getTitle()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method

.method public getBannerId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->bannerId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBottomMargin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->bottomMargin:I

    .line 2
    .line 3
    return v0
.end method

.method public final getCategoryConfigItemVOList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverCategory;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->categoryConfigItemVOList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCategoryTabPosMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->categoryTabPosMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCategoryTabSelectedPos()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->categoryTabSelectedPos:I

    .line 2
    .line 3
    return v0
.end method

.method public final getCategoryVOList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->categoryVOList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getContentResponseList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverResource;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->contentResponseList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDisableBannerTitle()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->disableBannerTitle:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLabelRankingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/TagListInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->labelRankingList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLabelRelatedShortPlayRankingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->labelRelatedShortPlayRankingList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getModuleEndPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->moduleEndPosition:I

    .line 2
    .line 3
    return v0
.end method

.method public final getModuleStartPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->moduleStartPosition:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPosition()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->position:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPropagandaPattern()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->propagandaPattern:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRankingNameList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->rankingNameList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRankingResponseList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverRanking;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->rankingResponseList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRecommendId()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->recommendId:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRuleCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->ruleCode:I

    .line 2
    .line 3
    return v0
.end method

.method public final getShortPlayResponseList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->shortPlayResponseList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShorts()Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->shorts:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShowNum()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->showNum:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSort()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->sort:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStatus()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->status:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStyle()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->style:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSubTagId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->subTagId:I

    .line 2
    .line 3
    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTopMargin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->topMargin:I

    .line 2
    .line 3
    return v0
.end method

.method public final getUpack()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->upack:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getValidEndTime()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->validEndTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getValidStartTime()Ljava/lang/Long;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->validStartTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-object v0
.end method

.method public isShowMore()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->isShowMore:Z

    .line 2
    .line 3
    return v0
.end method

.method public setBannerId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->bannerId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setBottomMargin(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->bottomMargin:I

    .line 2
    .line 3
    return-void
.end method

.method public final setCategoryConfigItemVOList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverCategory;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->categoryConfigItemVOList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setCategoryTabPosMap(Ljava/util/HashMap;)V
    .locals 0
    .param p1    # Ljava/util/HashMap;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->categoryTabPosMap:Ljava/util/HashMap;

    .line 2
    .line 3
    return-void
.end method

.method public final setCategoryTabSelectedPos(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->categoryTabSelectedPos:I

    .line 2
    .line 3
    return-void
.end method

.method public final setCategoryVOList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverCategory;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->categoryVOList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setDisableBannerTitle(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->disableBannerTitle:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setLabelRankingList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/TagListInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->labelRankingList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setLabelRelatedShortPlayRankingList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/TagRelatedShorts;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->labelRelatedShortPlayRankingList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setModuleEndPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->moduleEndPosition:I

    .line 2
    .line 3
    return-void
.end method

.method public final setModuleStartPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->moduleStartPosition:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPosition(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->position:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPropagandaPattern(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->propagandaPattern:I

    .line 2
    .line 3
    return-void
.end method

.method public final setRankingNameList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverRanking;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->rankingNameList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setRankingResponseList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/PlayListDiscoverRanking;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->rankingResponseList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setRecommendId(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->recommendId:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setRuleCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->ruleCode:I

    .line 2
    .line 3
    return-void
.end method

.method public final setShortPlayResponseList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->shortPlayResponseList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public final setShorts(Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->shorts:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 2
    .line 3
    return-void
.end method

.method public setShowMore(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->isShowMore:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setShowNum(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->showNum:I

    .line 2
    .line 3
    return-void
.end method

.method public final setSort(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->sort:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setStatus(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->status:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setStyle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->style:I

    .line 2
    .line 3
    return-void
.end method

.method public final setSubTagId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->subTagId:I

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
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->title:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setTopMargin(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->topMargin:I

    .line 2
    .line 3
    return-void
.end method

.method public final setUpack(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->upack:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setValidEndTime(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->validEndTime:Ljava/lang/Long;

    .line 2
    .line 3
    return-void
.end method

.method public final setValidStartTime(Ljava/lang/Long;)V
    .locals 0
    .param p1    # Ljava/lang/Long;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->validStartTime:Ljava/lang/Long;

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
    const-string v1, "DiscoverModule(style="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->style:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", title=\'"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getTitle()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, "\', bannerId="

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getBannerId()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, ", shortPlayResponseList="

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->shortPlayResponseList:Ljava/util/List;

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, ", isShowMore="

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->isShowMore()Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v1, ", ruleCode="

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget v1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->ruleCode:I

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v1, ", categoryVOList="

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->categoryVOList:Ljava/util/List;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v1, ", categoryConfigItemVOList="

    .line 83
    .line 84
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->categoryConfigItemVOList:Ljava/util/List;

    .line 88
    .line 89
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    const-string v1, ", validStartTime="

    .line 93
    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->validStartTime:Ljava/lang/Long;

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    const-string v1, ", validEndTime="

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->validEndTime:Ljava/lang/Long;

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v1, ", propagandaPattern="

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    iget v1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->propagandaPattern:I

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    const-string v1, ", showNum="

    .line 123
    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget v1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->showNum:I

    .line 128
    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v1, ", recommendId="

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->recommendId:Ljava/lang/Integer;

    .line 138
    .line 139
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v1, ", contentResponseList="

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->contentResponseList:Ljava/util/List;

    .line 148
    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    const-string v1, ", position="

    .line 153
    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    iget v1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->position:I

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    const-string v1, ", moduleStartPosition="

    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    iget v1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->moduleStartPosition:I

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v1, ", moduleEndPosition="

    .line 173
    .line 174
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    iget v1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->moduleEndPosition:I

    .line 178
    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 180
    .line 181
    .line 182
    const-string v1, ", shorts="

    .line 183
    .line 184
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    iget-object v1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->shorts:Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;

    .line 188
    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    const-string v1, ", topMargin="

    .line 193
    .line 194
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    iget v1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->topMargin:I

    .line 198
    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const-string v1, ", bottomMargin="

    .line 203
    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    iget v1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->bottomMargin:I

    .line 208
    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    const-string v1, ", categoryTabSelectedPos="

    .line 213
    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    iget v1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->categoryTabSelectedPos:I

    .line 218
    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 220
    .line 221
    .line 222
    const/16 v1, 0x29

    .line 223
    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    return-object v0
.end method

.method public final update(Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;)V
    .locals 2
    .param p1    # Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "module"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget v0, p1, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->style:I

    .line 7
    .line 8
    iput v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->style:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getTitle()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->setTitle(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->getBannerId()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->setBannerId(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->shortPlayResponseList:Ljava/util/List;

    .line 25
    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 29
    .line 30
    .line 31
    iget-object v1, p1, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->shortPlayResponseList:Ljava/util/List;

    .line 32
    .line 33
    if-eqz v1, :cond_0

    .line 34
    .line 35
    check-cast v1, Ljava/util/Collection;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 39
    .line 40
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->isShowMore()Z

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    invoke-virtual {p0, v0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->setShowMore(Z)V

    .line 51
    .line 52
    .line 53
    iget v0, p1, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->ruleCode:I

    .line 54
    .line 55
    iput v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->ruleCode:I

    .line 56
    .line 57
    iget-object v0, p1, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->categoryVOList:Ljava/util/List;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->categoryVOList:Ljava/util/List;

    .line 60
    .line 61
    iget-object v0, p1, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->categoryConfigItemVOList:Ljava/util/List;

    .line 62
    .line 63
    iput-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->categoryConfigItemVOList:Ljava/util/List;

    .line 64
    .line 65
    iget-object v0, p1, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->validStartTime:Ljava/lang/Long;

    .line 66
    .line 67
    iput-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->validStartTime:Ljava/lang/Long;

    .line 68
    .line 69
    iget-object v0, p1, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->validEndTime:Ljava/lang/Long;

    .line 70
    .line 71
    iput-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->validEndTime:Ljava/lang/Long;

    .line 72
    .line 73
    iget v0, p1, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->propagandaPattern:I

    .line 74
    .line 75
    iput v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->propagandaPattern:I

    .line 76
    .line 77
    iget v0, p1, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->showNum:I

    .line 78
    .line 79
    iput v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->showNum:I

    .line 80
    .line 81
    iget-object v0, p1, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->recommendId:Ljava/lang/Integer;

    .line 82
    .line 83
    iput-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->recommendId:Ljava/lang/Integer;

    .line 84
    .line 85
    iget-object v0, p1, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->upack:Ljava/lang/String;

    .line 86
    .line 87
    iput-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->upack:Ljava/lang/String;

    .line 88
    .line 89
    iget-object p1, p1, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->disableBannerTitle:Ljava/lang/Boolean;

    .line 90
    .line 91
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverModule;->disableBannerTitle:Ljava/lang/Boolean;

    .line 92
    .line 93
    return-void
.end method
