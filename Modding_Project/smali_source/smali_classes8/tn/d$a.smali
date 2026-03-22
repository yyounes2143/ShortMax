.class final Ltn/d$a;
.super Ljava/lang/Object;
.source "BundledChunkExtractor.java"

# interfaces
.implements Lao/o0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltn/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Lio/bidmachine/media3/common/a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final d:Lao/m;

.field public e:Lio/bidmachine/media3/common/a;

.field private f:Lao/o0;

.field private g:J


# direct methods
.method public constructor <init>(IILio/bidmachine/media3/common/a;)V
    .locals 0
    .param p3    # Lio/bidmachine/media3/common/a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Ltn/d$a;->a:I

    .line 5
    .line 6
    iput p2, p0, Ltn/d$a;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Ltn/d$a;->c:Lio/bidmachine/media3/common/a;

    .line 9
    .line 10
    new-instance p1, Lao/m;

    .line 11
    .line 12
    invoke-direct {p1}, Lao/m;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Ltn/d$a;->d:Lao/m;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public c(JIIILao/o0$a;)V
    .locals 8
    .param p6    # Lao/o0$a;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-wide v0, p0, Ltn/d$a;->g:J

    .line 2
    .line 3
    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 4
    .line 5
    .line 6
    .line 7
    .line 8
    cmp-long v2, v0, v2

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    cmp-long v0, p1, v0

    .line 13
    .line 14
    if-ltz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Ltn/d$a;->d:Lao/m;

    .line 17
    .line 18
    iput-object v0, p0, Ltn/d$a;->f:Lao/o0;

    .line 19
    .line 20
    :cond_0
    iget-object v0, p0, Ltn/d$a;->f:Lao/o0;

    .line 21
    .line 22
    invoke-static {v0}, Lcn/m0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    move-object v1, v0

    .line 27
    check-cast v1, Lao/o0;

    .line 28
    .line 29
    move-wide v2, p1

    .line 30
    move v4, p3

    .line 31
    move v5, p4

    .line 32
    move v6, p5

    .line 33
    move-object v7, p6

    .line 34
    invoke-interface/range {v1 .. v7}, Lao/o0;->c(JIIILao/o0$a;)V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method public e(Lzm/h;IZI)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p4, p0, Ltn/d$a;->f:Lao/o0;

    .line 2
    .line 3
    invoke-static {p4}, Lcn/m0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p4

    .line 7
    check-cast p4, Lao/o0;

    .line 8
    .line 9
    invoke-interface {p4, p1, p2, p3}, Lao/o0;->b(Lzm/h;IZ)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public f(Lcn/b0;II)V
    .locals 0

    .line 1
    iget-object p3, p0, Ltn/d$a;->f:Lao/o0;

    .line 2
    .line 3
    invoke-static {p3}, Lcn/m0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lao/o0;

    .line 8
    .line 9
    invoke-interface {p3, p1, p2}, Lao/o0;->a(Lcn/b0;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public g(Lio/bidmachine/media3/common/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ltn/d$a;->c:Lio/bidmachine/media3/common/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Lio/bidmachine/media3/common/a;->j(Lio/bidmachine/media3/common/a;)Lio/bidmachine/media3/common/a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    :cond_0
    iput-object p1, p0, Ltn/d$a;->e:Lio/bidmachine/media3/common/a;

    .line 10
    .line 11
    iget-object p1, p0, Ltn/d$a;->f:Lao/o0;

    .line 12
    .line 13
    invoke-static {p1}, Lcn/m0;->i(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lao/o0;

    .line 18
    .line 19
    iget-object v0, p0, Ltn/d$a;->e:Lio/bidmachine/media3/common/a;

    .line 20
    .line 21
    invoke-interface {p1, v0}, Lao/o0;->g(Lio/bidmachine/media3/common/a;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public h(Ltn/f$b;J)V
    .locals 0
    .param p1    # Ltn/f$b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Ltn/d$a;->d:Lao/m;

    .line 4
    .line 5
    iput-object p1, p0, Ltn/d$a;->f:Lao/o0;

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput-wide p2, p0, Ltn/d$a;->g:J

    .line 9
    .line 10
    iget p2, p0, Ltn/d$a;->a:I

    .line 11
    .line 12
    iget p3, p0, Ltn/d$a;->b:I

    .line 13
    .line 14
    invoke-interface {p1, p2, p3}, Ltn/f$b;->track(II)Lao/o0;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iput-object p1, p0, Ltn/d$a;->f:Lao/o0;

    .line 19
    .line 20
    iget-object p2, p0, Ltn/d$a;->e:Lio/bidmachine/media3/common/a;

    .line 21
    .line 22
    if-eqz p2, :cond_1

    .line 23
    .line 24
    invoke-interface {p1, p2}, Lao/o0;->g(Lio/bidmachine/media3/common/a;)V

    .line 25
    .line 26
    .line 27
    :cond_1
    return-void
.end method
