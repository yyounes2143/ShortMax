.class public Lcom/ss/ttm/player/HLSChooseStreamInterface$Playlist;
.super Ljava/lang/Object;
.source "HLSChooseStreamInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttm/player/HLSChooseStreamInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Playlist"
.end annotation


# instance fields
.field public mIndex:I

.field public mRenditions:[Lcom/ss/ttm/player/HLSChooseStreamInterface$Rendition;


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
    iput v0, p0, Lcom/ss/ttm/player/HLSChooseStreamInterface$Playlist;->mIndex:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/ss/ttm/player/HLSChooseStreamInterface$Playlist;->mRenditions:[Lcom/ss/ttm/player/HLSChooseStreamInterface$Rendition;

    .line 9
    .line 10
    return-void
.end method
