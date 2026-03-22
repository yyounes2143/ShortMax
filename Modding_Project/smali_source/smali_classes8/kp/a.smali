.class public final Lkp/a;
.super Ljava/lang/Object;
.source "WebpExtractor.java"

# interfaces
.implements Lao/p;


# instance fields
.field private final a:Lcn/b0;

.field private final b:Lao/l0;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcn/b0;

    .line 5
    .line 6
    const/4 v1, 0x4

    .line 7
    invoke-direct {v0, v1}, Lcn/b0;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lkp/a;->a:Lcn/b0;

    .line 11
    .line 12
    new-instance v0, Lao/l0;

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    const-string v2, "image/webp"

    .line 16
    .line 17
    invoke-direct {v0, v1, v1, v2}, Lao/l0;-><init>(IILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lkp/a;->b:Lao/l0;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public b(Lao/r;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkp/a;->b:Lao/l0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lao/l0;->b(Lao/r;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Lao/q;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkp/a;->a:Lcn/b0;

    .line 2
    .line 3
    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Lcn/b0;->S(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lkp/a;->a:Lcn/b0;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcn/b0;->e()[B

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-interface {p1, v0, v2, v1}, Lao/q;->peekFully([BII)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lkp/a;->a:Lcn/b0;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcn/b0;->J()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    const-wide/32 v5, 0x52494646

    .line 24
    .line 25
    .line 26
    cmp-long v0, v3, v5

    .line 27
    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    return v2

    .line 31
    :cond_0
    invoke-interface {p1, v1}, Lao/q;->advancePeekPosition(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lkp/a;->a:Lcn/b0;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcn/b0;->S(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lkp/a;->a:Lcn/b0;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcn/b0;->e()[B

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-interface {p1, v0, v2, v1}, Lao/q;->peekFully([BII)V

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lkp/a;->a:Lcn/b0;

    .line 49
    .line 50
    invoke-virtual {p1}, Lcn/b0;->J()J

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    const-wide/32 v3, 0x57454250

    .line 55
    .line 56
    .line 57
    cmp-long p1, v0, v3

    .line 58
    .line 59
    if-nez p1, :cond_1

    .line 60
    .line 61
    const/4 v2, 0x1

    .line 62
    :cond_1
    return v2
.end method

.method public f(Lao/q;Lao/i0;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkp/a;->b:Lao/l0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Lao/l0;->f(Lao/q;Lao/i0;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public release()V
    .locals 0

    .line 1
    return-void
.end method

.method public seek(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkp/a;->b:Lao/l0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lao/l0;->seek(JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
