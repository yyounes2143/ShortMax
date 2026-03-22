.class public abstract Lcom/startshorts/androidplayer/bean/search/SearchModule;
.super Ljava/lang/Object;
.source "SearchModule.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/startshorts/androidplayer/bean/search/SearchModule$ActBannerModule;,
        Lcom/startshorts/androidplayer/bean/search/SearchModule$BottomPaddingModule;,
        Lcom/startshorts/androidplayer/bean/search/SearchModule$Companion;,
        Lcom/startshorts/androidplayer/bean/search/SearchModule$EmptyModule;,
        Lcom/startshorts/androidplayer/bean/search/SearchModule$ExactlyEpisodeModule;,
        Lcom/startshorts/androidplayer/bean/search/SearchModule$FuzzyEpisodeModule;,
        Lcom/startshorts/androidplayer/bean/search/SearchModule$NetworkErrorModule;,
        Lcom/startshorts/androidplayer/bean/search/SearchModule$NoMoreResultModule;,
        Lcom/startshorts/androidplayer/bean/search/SearchModule$NoResultModule;,
        Lcom/startshorts/androidplayer/bean/search/SearchModule$PopularEpisodeModule;,
        Lcom/startshorts/androidplayer/bean/search/SearchModule$PopularTitleModule;,
        Lcom/startshorts/androidplayer/bean/search/SearchModule$SearchHistoryModule;,
        Lcom/startshorts/androidplayer/bean/search/SearchModule$YouMightLikeModule;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/startshorts/androidplayer/bean/search/SearchModule$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final STYLE_EMPTY_SPACE:I = 0xc

.field public static final STYLE_SEARCH_ACT_BANNER:I = 0xa

.field public static final STYLE_SEARCH_BOTTOM_PADDING:I = 0x9

.field public static final STYLE_SEARCH_EXACTLY:I = 0x4

.field public static final STYLE_SEARCH_FUZZY:I = 0x3

.field public static final STYLE_SEARCH_HISTORY:I = 0x1

.field public static final STYLE_SEARCH_NO_MORE_RESULT:I = 0x7

.field public static final STYLE_SEARCH_NO_NETWORK:I = 0x8

.field public static final STYLE_SEARCH_NO_RESULT:I = 0x6

.field public static final STYLE_SEARCH_POPULAR:I = 0x2

.field public static final STYLE_SEARCH_POPULAR_TITLE:I = 0x5

.field public static final STYLE_YOUR_MIGHT_LIKE:I = 0xd


# instance fields
.field private bottomMargin:I

.field private topMargin:I

.field private final viewType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/bean/search/SearchModule$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/startshorts/androidplayer/bean/search/SearchModule$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/startshorts/androidplayer/bean/search/SearchModule;->Companion:Lcom/startshorts/androidplayer/bean/search/SearchModule$Companion;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/startshorts/androidplayer/bean/search/SearchModule;->viewType:I

    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/startshorts/androidplayer/bean/search/SearchModule;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final getBottomMargin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/search/SearchModule;->bottomMargin:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTopMargin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/search/SearchModule;->topMargin:I

    .line 2
    .line 3
    return v0
.end method

.method public final getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/startshorts/androidplayer/bean/search/SearchModule;->viewType:I

    .line 2
    .line 3
    return v0
.end method

.method public final setBottomMargin(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/search/SearchModule;->bottomMargin:I

    .line 2
    .line 3
    return-void
.end method

.method public final setTopMargin(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/startshorts/androidplayer/bean/search/SearchModule;->topMargin:I

    .line 2
    .line 3
    return-void
.end method
