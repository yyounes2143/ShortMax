.class public final Lao/m;
.super Ljava/lang/Object;
.source "DiscardingTrackOutput.java"

# interfaces
.implements Lao/o0;


# instance fields
.field private final a:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x1000

    .line 5
    .line 6
    new-array v0, v0, [B

    .line 7
    .line 8
    iput-object v0, p0, Lao/m;->a:[B

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public c(JIIILao/o0$a;)V
    .locals 0
    .param p6    # Lao/o0$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    return-void
.end method

.method public e(Lzm/h;IZI)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p4, p0, Lao/m;->a:[B

    .line 2
    .line 3
    array-length p4, p4

    .line 4
    invoke-static {p4, p2}, Ljava/lang/Math;->min(II)I

    .line 5
    .line 6
    .line 7
    move-result p2

    .line 8
    iget-object p4, p0, Lao/m;->a:[B

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-interface {p1, p4, v0, p2}, Lzm/h;->read([BII)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    const/4 p2, -0x1

    .line 16
    if-ne p1, p2, :cond_1

    .line 17
    .line 18
    if-eqz p3, :cond_0

    .line 19
    .line 20
    return p2

    .line 21
    :cond_0
    new-instance p1, Ljava/io/EOFException;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    return p1
.end method

.method public f(Lcn/b0;II)V
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lcn/b0;->X(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public g(Lio/bidmachine/media3/common/a;)V
    .locals 0

    .line 1
    return-void
.end method
