.class final Lcom/google/android/exoplayer2/source/q$a;
.super Ljava/lang/Object;
.source "MergingMediaPeriod.java"

# interfaces
.implements Lz6/y;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:Lz6/y;

.field private final b:Ln6/u;


# direct methods
.method public constructor <init>(Lz6/y;Ln6/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/q$a;->a:Lz6/y;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/q$a;->b:Ln6/u;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$a;->a:Lz6/y;

    .line 2
    .line 3
    invoke-interface {v0}, Lz6/y;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$a;->a:Lz6/y;

    .line 2
    .line 3
    invoke-interface {v0}, Lz6/y;->b()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public c(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$a;->a:Lz6/y;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lz6/y;->c(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public disable()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$a;->a:Lz6/y;

    .line 2
    .line 3
    invoke-interface {v0}, Lz6/y;->disable()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public enable()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$a;->a:Lz6/y;

    .line 2
    .line 3
    invoke-interface {v0}, Lz6/y;->enable()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/source/q$a;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/source/q$a;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/q$a;->a:Lz6/y;

    .line 14
    .line 15
    iget-object v3, p1, Lcom/google/android/exoplayer2/source/q$a;->a:Lz6/y;

    .line 16
    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/q$a;->b:Ln6/u;

    .line 24
    .line 25
    iget-object p1, p1, Lcom/google/android/exoplayer2/source/q$a;->b:Ln6/u;

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ln6/u;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_2
    move v0, v2

    .line 35
    :goto_0
    return v0
.end method

.method public getFormat(I)Lcom/google/android/exoplayer2/v0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$a;->a:Lz6/y;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lz6/b0;->getFormat(I)Lcom/google/android/exoplayer2/v0;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public getIndexInTrackGroup(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$a;->a:Lz6/y;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lz6/b0;->getIndexInTrackGroup(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public getSelectedFormat()Lcom/google/android/exoplayer2/v0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$a;->a:Lz6/y;

    .line 2
    .line 3
    invoke-interface {v0}, Lz6/y;->getSelectedFormat()Lcom/google/android/exoplayer2/v0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getTrackGroup()Ln6/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$a;->b:Ln6/u;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$a;->b:Ln6/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Ln6/u;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/16 v1, 0x20f

    .line 8
    .line 9
    add-int/2addr v1, v0

    .line 10
    mul-int/lit8 v1, v1, 0x1f

    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$a;->a:Lz6/y;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    add-int/2addr v1, v0

    .line 19
    return v1
.end method

.method public indexOf(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$a;->a:Lz6/y;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lz6/b0;->indexOf(I)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public length()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$a;->a:Lz6/y;

    .line 2
    .line 3
    invoke-interface {v0}, Lz6/b0;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public onPlaybackSpeed(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/q$a;->a:Lz6/y;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lz6/y;->onPlaybackSpeed(F)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
