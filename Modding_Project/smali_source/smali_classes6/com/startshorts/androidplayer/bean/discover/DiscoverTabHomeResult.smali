.class public final Lcom/startshorts/androidplayer/bean/discover/DiscoverTabHomeResult;
.super Ljava/lang/Object;
.source "DiscoverTabHomeResult.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private autoPlay:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private dramaRepositoryStyle:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tabPageResponse:Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private tabResponseList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabHomeResult;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;",
            ">;",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabHomeResult;->dramaRepositoryStyle:Ljava/lang/Integer;

    .line 4
    iput-object p2, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabHomeResult;->autoPlay:Ljava/lang/Integer;

    .line 5
    iput-object p3, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabHomeResult;->tabResponseList:Ljava/util/List;

    .line 6
    iput-object p4, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabHomeResult;->tabPageResponse:Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move-object p4, v0

    .line 7
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabHomeResult;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/List;Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;)V

    return-void
.end method


# virtual methods
.method public final getAutoPlay()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabHomeResult;->autoPlay:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getDramaRepositoryStyle()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabHomeResult;->dramaRepositoryStyle:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTabPageResponse()Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabHomeResult;->tabPageResponse:Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTabResponseList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabHomeResult;->tabResponseList:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setAutoPlay(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabHomeResult;->autoPlay:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setDramaRepositoryStyle(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabHomeResult;->dramaRepositoryStyle:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setTabPageResponse(Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;)V
    .locals 0
    .param p1    # Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabHomeResult;->tabPageResponse:Lcom/startshorts/androidplayer/bean/discover/DiscoverTabPage;

    .line 2
    .line 3
    return-void
.end method

.method public final setTabResponseList(Ljava/util/List;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/discover/DiscoverTab;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverTabHomeResult;->tabResponseList:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method
