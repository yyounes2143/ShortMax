.class public interface abstract Lao/o0;
.super Ljava/lang/Object;
.source "TrackOutput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lao/o0$a;
    }
.end annotation


# virtual methods
.method public a(Lcn/b0;I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, p1, p2, v0}, Lao/o0;->f(Lcn/b0;II)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public b(Lzm/h;IZ)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-interface {p0, p1, p2, p3, v0}, Lao/o0;->e(Lzm/h;IZI)I

    .line 3
    .line 4
    .line 5
    move-result p1

    .line 6
    return p1
.end method

.method public abstract c(JIIILao/o0$a;)V
    .param p6    # Lao/o0$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
.end method

.method public d(J)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract e(Lzm/h;IZI)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract f(Lcn/b0;II)V
.end method

.method public abstract g(Lio/bidmachine/media3/common/a;)V
.end method
