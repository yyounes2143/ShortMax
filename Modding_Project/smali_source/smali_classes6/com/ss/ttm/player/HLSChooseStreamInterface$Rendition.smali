.class public Lcom/ss/ttm/player/HLSChooseStreamInterface$Rendition;
.super Ljava/lang/Object;
.source "HLSChooseStreamInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttm/player/HLSChooseStreamInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rendition"
.end annotation


# instance fields
.field public mGroupId:Ljava/lang/String;

.field public mInfoId:I

.field public mLanguage:Ljava/lang/String;

.field public mMediaTrackType:I

.field public mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/ss/ttm/player/HLSChooseStreamInterface$Rendition;->mMediaTrackType:I

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/ss/ttm/player/HLSChooseStreamInterface$Rendition;->mInfoId:I

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/ss/ttm/player/HLSChooseStreamInterface$Rendition;->mGroupId:Ljava/lang/String;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/ss/ttm/player/HLSChooseStreamInterface$Rendition;->mLanguage:Ljava/lang/String;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/ss/ttm/player/HLSChooseStreamInterface$Rendition;->mName:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method
