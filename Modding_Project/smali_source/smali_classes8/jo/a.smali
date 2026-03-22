.class public final Ljo/a;
.super Ljava/lang/Object;
.source "JpegExtractor.java"

# interfaces
.implements Lao/p;


# instance fields
.field private final a:Lao/p;


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    and-int/lit8 p1, p1, 0x1

    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    new-instance p1, Lao/l0;

    .line 9
    .line 10
    const/4 v0, 0x2

    .line 11
    const-string v1, "image/jpeg"

    .line 12
    .line 13
    const v2, 0xffd8

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, v2, v0, v1}, Lao/l0;-><init>(IILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iput-object p1, p0, Ljo/a;->a:Lao/p;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljo/b;

    .line 23
    .line 24
    invoke-direct {p1}, Ljo/b;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Ljo/a;->a:Lao/p;

    .line 28
    .line 29
    :goto_0
    return-void
.end method


# virtual methods
.method public b(Lao/r;)V
    .locals 1

    .line 1
    iget-object v0, p0, Ljo/a;->a:Lao/p;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lao/p;->b(Lao/r;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public e(Lao/q;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljo/a;->a:Lao/p;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Lao/p;->e(Lao/q;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public f(Lao/q;Lao/i0;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ljo/a;->a:Lao/p;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Lao/p;->f(Lao/q;Lao/i0;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public release()V
    .locals 1

    .line 1
    iget-object v0, p0, Ljo/a;->a:Lao/p;

    .line 2
    .line 3
    invoke-interface {v0}, Lao/p;->release()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public seek(JJ)V
    .locals 1

    .line 1
    iget-object v0, p0, Ljo/a;->a:Lao/p;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Lao/p;->seek(JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
