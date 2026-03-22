.class public abstract Lcom/ss/ttm/player/VoiceTrait;
.super Lcom/ss/ttm/player/TraitObject;
.source "VoiceTrait.java"


# annotations
.annotation build Lcom/ss/ttm/player/JNINamespace;
    value = "PLAYER"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttm/player/VoiceTrait$AudioFrameInfo;,
        Lcom/ss/ttm/player/VoiceTrait$AudioMediaInfo;
    }
.end annotation


# static fields
.field public static final AV_PCM_FMT_DBL:I = 0x4

.field public static final AV_PCM_FMT_DBLP:I = 0x9

.field public static final AV_PCM_FMT_FLT:I = 0x3

.field public static final AV_PCM_FMT_FLTP:I = 0x8

.field public static final AV_PCM_FMT_NONE:I = -0x1

.field public static final AV_PCM_FMT_S16:I = 0x1

.field public static final AV_PCM_FMT_S16P:I = 0x6

.field public static final AV_PCM_FMT_S32:I = 0x2

.field public static final AV_PCM_FMT_S32P:I = 0x7

.field public static final AV_PCM_FMT_U8:I = 0x0

.field public static final AV_PCM_FMT_U8P:I = 0x5

.field public static final Version0:I


# direct methods
.method public constructor <init>(IIJ)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ss/ttm/player/TraitObject;-><init>(IIJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/ss/ttm/player/TraitObject;-><init>(IJ)V

    return-void
.end method


# virtual methods
.method public abstract audioClose()V
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation
.end method

.method public abstract audioFlush()V
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation
.end method

.method public abstract audioOpen(Lcom/ss/ttm/player/VoiceTrait$AudioMediaInfo;)I
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation
.end method

.method public abstract audioPause()V
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation
.end method

.method public abstract audioResume()V
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation
.end method

.method public abstract audioWrite(Lcom/ss/ttm/player/VoiceTrait$AudioFrameInfo;)I
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation
.end method

.method public abstract getLatency()I
    .annotation build Lcom/ss/ttm/player/CalledByNative;
    .end annotation
.end method
