.class public Lcom/ss/ttvideoengine/DirectUrlItem;
.super Ljava/lang/Object;
.source "DirectUrlItem.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DirectUrlItem"


# instance fields
.field private mCDNUrlExpiredTime:J

.field private mExpireTimes:[Ljava/lang/String;

.field private final mFileKey:Ljava/lang/String;

.field private mUrls:[Ljava/lang/String;

.field private mVideoId:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/ss/ttvideoengine/DirectUrlItem;->mExpireTimes:[Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/ss/ttvideoengine/DirectUrlItem;->mVideoId:Ljava/lang/String;

    .line 4
    iput-object p1, p0, Lcom/ss/ttvideoengine/DirectUrlItem;->mUrls:[Ljava/lang/String;

    .line 5
    iput-wide p4, p0, Lcom/ss/ttvideoengine/DirectUrlItem;->mCDNUrlExpiredTime:J

    .line 6
    iput-object p2, p0, Lcom/ss/ttvideoengine/DirectUrlItem;->mFileKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J[Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p3, p0, Lcom/ss/ttvideoengine/DirectUrlItem;->mVideoId:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/ss/ttvideoengine/DirectUrlItem;->mUrls:[Ljava/lang/String;

    .line 10
    iput-wide p4, p0, Lcom/ss/ttvideoengine/DirectUrlItem;->mCDNUrlExpiredTime:J

    .line 11
    iput-object p2, p0, Lcom/ss/ttvideoengine/DirectUrlItem;->mFileKey:Ljava/lang/String;

    .line 12
    iput-object p6, p0, Lcom/ss/ttvideoengine/DirectUrlItem;->mExpireTimes:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public allUrls()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DirectUrlItem;->mUrls:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public cdnExpiredTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/ss/ttvideoengine/DirectUrlItem;->mCDNUrlExpiredTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public fileKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DirectUrlItem;->mFileKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public urlExpireTimes()[Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DirectUrlItem;->mExpireTimes:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public vid()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/ss/ttvideoengine/DirectUrlItem;->mVideoId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
