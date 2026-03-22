.class public final Landroidx/webkit/BackForwardCacheSettings$Builder;
.super Ljava/lang/Object;
.source "BackForwardCacheSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/webkit/BackForwardCacheSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mMaxPagesInCache:I

.field private mTimeoutInSeconds:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x258

    .line 5
    .line 6
    iput-wide v0, p0, Landroidx/webkit/BackForwardCacheSettings$Builder;->mTimeoutInSeconds:J

    .line 7
    .line 8
    const/4 v0, 0x6

    .line 9
    iput v0, p0, Landroidx/webkit/BackForwardCacheSettings$Builder;->mMaxPagesInCache:I

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public build()Landroidx/webkit/BackForwardCacheSettings;
    .locals 5

    .line 1
    new-instance v0, Landroidx/webkit/BackForwardCacheSettings;

    .line 2
    .line 3
    iget-wide v1, p0, Landroidx/webkit/BackForwardCacheSettings$Builder;->mTimeoutInSeconds:J

    .line 4
    .line 5
    iget v3, p0, Landroidx/webkit/BackForwardCacheSettings$Builder;->mMaxPagesInCache:I

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/webkit/BackForwardCacheSettings;-><init>(JILandroidx/webkit/BackForwardCacheSettings$1;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method

.method public setMaxPagesInCache(I)Landroidx/webkit/BackForwardCacheSettings$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroidx/webkit/BackForwardCacheSettings$Builder;->mMaxPagesInCache:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setTimeoutSeconds(J)Landroidx/webkit/BackForwardCacheSettings$Builder;
    .locals 0

    .line 1
    iput-wide p1, p0, Landroidx/webkit/BackForwardCacheSettings$Builder;->mTimeoutInSeconds:J

    .line 2
    .line 3
    return-object p0
.end method
