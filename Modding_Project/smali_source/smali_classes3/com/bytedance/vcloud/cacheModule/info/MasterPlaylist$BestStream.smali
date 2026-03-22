.class public Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$BestStream;
.super Ljava/lang/Object;
.source "MasterPlaylist.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BestStream"
.end annotation


# instance fields
.field public rendIndex:I

.field public varIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$BestStream;->varIndex:I

    .line 6
    .line 7
    iput v0, p0, Lcom/bytedance/vcloud/cacheModule/info/MasterPlaylist$BestStream;->rendIndex:I

    .line 8
    .line 9
    return-void
.end method
