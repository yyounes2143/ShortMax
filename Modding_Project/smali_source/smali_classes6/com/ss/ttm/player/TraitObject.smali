.class public Lcom/ss/ttm/player/TraitObject;
.super Ljava/lang/Object;
.source "TraitObject.java"


# annotations
.annotation build Lcom/ss/ttm/player/JNINamespace;
    value = "PLAYER"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttm/player/TraitObject$ReleaseNativeTrait;
    }
.end annotation


# static fields
.field public static final BufferProcessProto:I = 0x8

.field public static final ExtVoice:I = 0x1

.field public static final HLSChooseStream:I = 0x7

.field public static final Illegal:I


# instance fields
.field private mNativeObj:J

.field private mReleaseFunc:Lcom/ss/ttm/player/TraitObject$ReleaseNativeTrait;

.field private final mType:I

.field private final mVersion:I


# direct methods
.method public constructor <init>(IIJ)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput p1, p0, Lcom/ss/ttm/player/TraitObject;->mType:I

    .line 7
    iput p2, p0, Lcom/ss/ttm/player/TraitObject;->mVersion:I

    const-wide/16 p1, 0x0

    .line 8
    iput-wide p1, p0, Lcom/ss/ttm/player/TraitObject;->mNativeObj:J

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/ss/ttm/player/TraitObject;->mType:I

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcom/ss/ttm/player/TraitObject;->mVersion:I

    .line 4
    iput-wide p2, p0, Lcom/ss/ttm/player/TraitObject;->mNativeObj:J

    return-void
.end method

.method private native nativeRelease(J)V
.end method

.method private takeNativeObj()J
    .locals 4
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/ss/ttm/player/TraitObject;->mNativeObj:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    iput-wide v2, p0, Lcom/ss/ttm/player/TraitObject;->mNativeObj:J

    .line 6
    .line 7
    return-wide v0
.end method


# virtual methods
.method public final release()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/ss/ttm/player/TraitObject;->takeNativeObj()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v2, v0, v2

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/ss/ttm/player/TraitObject;->nativeRelease(J)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :catch_0
    iget-object v2, p0, Lcom/ss/ttm/player/TraitObject;->mReleaseFunc:Lcom/ss/ttm/player/TraitObject$ReleaseNativeTrait;

    .line 16
    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    iget-object v2, p0, Lcom/ss/ttm/player/TraitObject;->mReleaseFunc:Lcom/ss/ttm/player/TraitObject$ReleaseNativeTrait;

    .line 20
    .line 21
    invoke-interface {v2, v0, v1}, Lcom/ss/ttm/player/TraitObject$ReleaseNativeTrait;->releaseNativeTrait(J)V

    .line 22
    .line 23
    .line 24
    :cond_0
    :goto_0
    return-void
.end method

.method public sameAs(Lcom/ss/ttm/player/TraitObject;)Z
    .locals 0
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final setReleaseFunc(Lcom/ss/ttm/player/TraitObject$ReleaseNativeTrait;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/ttm/player/TraitObject;->mReleaseFunc:Lcom/ss/ttm/player/TraitObject$ReleaseNativeTrait;

    .line 2
    .line 3
    return-void
.end method

.method public final type()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttm/player/TraitObject;->mType:I

    .line 2
    .line 3
    return v0
.end method

.method public final version()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ss/ttm/player/TraitObject;->mVersion:I

    .line 2
    .line 3
    return v0
.end method
