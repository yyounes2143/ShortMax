.class public Lcom/ss/ttvideoengine/cache/CopyCacheItem;
.super Ljava/lang/Object;
.source "CopyCacheItem.java"


# instance fields
.field public mCustomDir:Ljava/lang/String;

.field public mDestPath:Ljava/lang/String;

.field public mFileKey:Ljava/lang/String;

.field public mForceCopyUnfinished:Z

.field public final mListener:Lcom/ss/ttvideoengine/cache/CopyCacheListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public mWaitIfCaching:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/ss/ttvideoengine/cache/CopyCacheListener;)V
    .locals 0
    .param p3    # Lcom/ss/ttvideoengine/cache/CopyCacheListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ss/ttvideoengine/cache/CopyCacheItem;->mFileKey:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/ss/ttvideoengine/cache/CopyCacheItem;->mDestPath:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/ss/ttvideoengine/cache/CopyCacheItem;->mListener:Lcom/ss/ttvideoengine/cache/CopyCacheListener;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/ss/ttvideoengine/cache/CopyCacheItem;->mCustomDir:Ljava/lang/String;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/cache/CopyCacheItem;->mWaitIfCaching:Z

    .line 7
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/cache/CopyCacheItem;->mForceCopyUnfinished:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLcom/ss/ttvideoengine/cache/CopyCacheListener;)V
    .locals 0
    .param p4    # Lcom/ss/ttvideoengine/cache/CopyCacheListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/ss/ttvideoengine/cache/CopyCacheItem;->mFileKey:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lcom/ss/ttvideoengine/cache/CopyCacheItem;->mDestPath:Ljava/lang/String;

    .line 11
    iput-object p4, p0, Lcom/ss/ttvideoengine/cache/CopyCacheItem;->mListener:Lcom/ss/ttvideoengine/cache/CopyCacheListener;

    const/4 p1, 0x0

    .line 12
    iput-object p1, p0, Lcom/ss/ttvideoengine/cache/CopyCacheItem;->mCustomDir:Ljava/lang/String;

    .line 13
    iput-boolean p3, p0, Lcom/ss/ttvideoengine/cache/CopyCacheItem;->mWaitIfCaching:Z

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/cache/CopyCacheItem;->mForceCopyUnfinished:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZLcom/ss/ttvideoengine/cache/CopyCacheListener;)V
    .locals 0
    .param p5    # Lcom/ss/ttvideoengine/cache/CopyCacheListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/ss/ttvideoengine/cache/CopyCacheItem;->mFileKey:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/ss/ttvideoengine/cache/CopyCacheItem;->mDestPath:Ljava/lang/String;

    .line 18
    iput-object p5, p0, Lcom/ss/ttvideoengine/cache/CopyCacheItem;->mListener:Lcom/ss/ttvideoengine/cache/CopyCacheListener;

    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/ss/ttvideoengine/cache/CopyCacheItem;->mCustomDir:Ljava/lang/String;

    .line 20
    iput-boolean p3, p0, Lcom/ss/ttvideoengine/cache/CopyCacheItem;->mWaitIfCaching:Z

    .line 21
    iput-boolean p4, p0, Lcom/ss/ttvideoengine/cache/CopyCacheItem;->mForceCopyUnfinished:Z

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/ss/ttvideoengine/cache/CopyCacheItem;->mWaitIfCaching:Z

    :cond_0
    return-void
.end method
