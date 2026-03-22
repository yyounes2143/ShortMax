.class public final Lxo/a;
.super Ljava/lang/Object;
.source "PngExtractor.java"

# interfaces
.implements Lao/p;


# instance fields
.field private final a:Lao/l0;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lao/l0;

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    const-string v2, "image/png"

    .line 8
    .line 9
    const v3, 0x8950

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v3, v1, v2}, Lao/l0;-><init>(IILjava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lxo/a;->a:Lao/l0;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public b(Lao/r;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lxo/a;->a:Lao/l0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lao/l0;->b(Lao/r;)V

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
    iget-object v0, p0, Lxo/a;->a:Lao/l0;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lao/l0;->e(Lao/q;)Z

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
    iget-object v0, p0, Lxo/a;->a:Lao/l0;

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
    iget-object v0, p0, Lxo/a;->a:Lao/l0;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lao/l0;->seek(JJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
