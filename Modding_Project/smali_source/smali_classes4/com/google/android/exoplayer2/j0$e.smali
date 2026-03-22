.class final Lcom/google/android/exoplayer2/j0$e;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lcom/google/android/exoplayer2/e1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/j0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "e"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private b:Lcom/google/android/exoplayer2/u1;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/google/android/exoplayer2/u1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/j0$e;->a:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/exoplayer2/j0$e;->b:Lcom/google/android/exoplayer2/u1;

    .line 7
    .line 8
    return-void
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/j0$e;Lcom/google/android/exoplayer2/u1;)Lcom/google/android/exoplayer2/u1;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/exoplayer2/j0$e;->b:Lcom/google/android/exoplayer2/u1;

    .line 2
    .line 3
    return-object p1
.end method


# virtual methods
.method public a()Lcom/google/android/exoplayer2/u1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$e;->b:Lcom/google/android/exoplayer2/u1;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUid()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/j0$e;->a:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method
