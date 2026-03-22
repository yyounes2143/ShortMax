.class public interface abstract Lt5/b0;
.super Ljava/lang/Object;
.source "TrackOutput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt5/b0$a;
    }
.end annotation


# virtual methods
.method public a(Lb7/g0;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, p1, p2, v0}, Lt5/b0;->c(Lb7/g0;II)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public abstract b(Lcom/google/android/exoplayer2/v0;)V
.end method

.method public abstract c(Lb7/g0;II)V
.end method

.method public abstract d(La7/f;IZI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract e(JIIILt5/b0$a;)V
    .param p6    # Lt5/b0$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public f(La7/f;IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, p1, p2, p3, v0}, Lt5/b0;->d(La7/f;IZI)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method
