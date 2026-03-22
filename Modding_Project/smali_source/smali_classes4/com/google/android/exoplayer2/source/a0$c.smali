.class final Lcom/google/android/exoplayer2/source/a0$c;
.super Ljava/lang/Object;
.source "SampleQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/v0;

.field public final b:Lcom/google/android/exoplayer2/drm/i$b;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/v0;Lcom/google/android/exoplayer2/drm/i$b;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/a0$c;->a:Lcom/google/android/exoplayer2/v0;

    .line 4
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/a0$c;->b:Lcom/google/android/exoplayer2/drm/i$b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/v0;Lcom/google/android/exoplayer2/drm/i$b;Lcom/google/android/exoplayer2/source/a0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/a0$c;-><init>(Lcom/google/android/exoplayer2/v0;Lcom/google/android/exoplayer2/drm/i$b;)V

    return-void
.end method
