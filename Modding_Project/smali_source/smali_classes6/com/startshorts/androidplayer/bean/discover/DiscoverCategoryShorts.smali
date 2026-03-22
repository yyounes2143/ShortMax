.class public Lcom/startshorts/androidplayer/bean/discover/DiscoverCategoryShorts;
.super Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;
.source "DiscoverCategoryShorts.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private categoryID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private categoryName:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/bean/discover/DiscoverShorts;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getCategoryID()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverCategoryShorts;->categoryID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCategoryName()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverCategoryShorts;->categoryName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setCategoryID(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverCategoryShorts;->categoryID:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setCategoryName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/bean/discover/DiscoverCategoryShorts;->categoryName:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
