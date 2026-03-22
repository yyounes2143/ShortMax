.class Lcom/explorestack/protobuf/l2;
.super Lcom/explorestack/protobuf/i2;
.source "UnknownFieldSetLiteSchema.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/i2<",
        "Lcom/explorestack/protobuf/k2;",
        "Lcom/explorestack/protobuf/k2;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/explorestack/protobuf/i2;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method A(Ljava/lang/Object;)Lcom/explorestack/protobuf/k2;
    .locals 0

    .line 1
    check-cast p1, Lcom/explorestack/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageLite;->a:Lcom/explorestack/protobuf/k2;

    .line 4
    .line 5
    return-object p1
.end method

.method B(Lcom/explorestack/protobuf/k2;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/k2;->d()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method C(Lcom/explorestack/protobuf/k2;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/k2;->e()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method D(Lcom/explorestack/protobuf/k2;Lcom/explorestack/protobuf/k2;)Lcom/explorestack/protobuf/k2;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/k2;->c()Lcom/explorestack/protobuf/k2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p2, v0}, Lcom/explorestack/protobuf/k2;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p1, p2}, Lcom/explorestack/protobuf/k2;->i(Lcom/explorestack/protobuf/k2;Lcom/explorestack/protobuf/k2;)Lcom/explorestack/protobuf/k2;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    return-object p1
.end method

.method E()Lcom/explorestack/protobuf/k2;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/k2;->j()Lcom/explorestack/protobuf/k2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method F(Ljava/lang/Object;Lcom/explorestack/protobuf/k2;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/l2;->G(Ljava/lang/Object;Lcom/explorestack/protobuf/k2;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method G(Ljava/lang/Object;Lcom/explorestack/protobuf/k2;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/explorestack/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    iput-object p2, p1, Lcom/explorestack/protobuf/GeneratedMessageLite;->a:Lcom/explorestack/protobuf/k2;

    .line 4
    .line 5
    return-void
.end method

.method H(Lcom/explorestack/protobuf/k2;)Lcom/explorestack/protobuf/k2;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/k2;->h()V

    .line 2
    .line 3
    .line 4
    return-object p1
.end method

.method I(Lcom/explorestack/protobuf/k2;Lcom/explorestack/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/k2;->o(Lcom/explorestack/protobuf/Writer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method J(Lcom/explorestack/protobuf/k2;Lcom/explorestack/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/k2;->q(Lcom/explorestack/protobuf/Writer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method bridge synthetic a(Ljava/lang/Object;II)V
    .locals 0

    .line 1
    check-cast p1, Lcom/explorestack/protobuf/k2;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/l2;->u(Lcom/explorestack/protobuf/k2;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method bridge synthetic b(Ljava/lang/Object;IJ)V
    .locals 0

    .line 1
    check-cast p1, Lcom/explorestack/protobuf/k2;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/l2;->v(Lcom/explorestack/protobuf/k2;IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method bridge synthetic c(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/explorestack/protobuf/k2;

    .line 2
    .line 3
    check-cast p3, Lcom/explorestack/protobuf/k2;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/l2;->w(Lcom/explorestack/protobuf/k2;ILcom/explorestack/protobuf/k2;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method bridge synthetic d(Ljava/lang/Object;ILcom/explorestack/protobuf/ByteString;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/explorestack/protobuf/k2;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/l2;->x(Lcom/explorestack/protobuf/k2;ILcom/explorestack/protobuf/ByteString;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method bridge synthetic e(Ljava/lang/Object;IJ)V
    .locals 0

    .line 1
    check-cast p1, Lcom/explorestack/protobuf/k2;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/l2;->y(Lcom/explorestack/protobuf/k2;IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method bridge synthetic f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/l2;->z(Ljava/lang/Object;)Lcom/explorestack/protobuf/k2;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method bridge synthetic g(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/l2;->A(Ljava/lang/Object;)Lcom/explorestack/protobuf/k2;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method bridge synthetic h(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/explorestack/protobuf/k2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/l2;->B(Lcom/explorestack/protobuf/k2;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method bridge synthetic i(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/explorestack/protobuf/k2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/l2;->C(Lcom/explorestack/protobuf/k2;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method j(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/l2;->A(Ljava/lang/Object;)Lcom/explorestack/protobuf/k2;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/k2;->h()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method bridge synthetic k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/explorestack/protobuf/k2;

    .line 2
    .line 3
    check-cast p2, Lcom/explorestack/protobuf/k2;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/l2;->D(Lcom/explorestack/protobuf/k2;Lcom/explorestack/protobuf/k2;)Lcom/explorestack/protobuf/k2;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method bridge synthetic n()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/l2;->E()Lcom/explorestack/protobuf/k2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method bridge synthetic o(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/explorestack/protobuf/k2;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/l2;->F(Ljava/lang/Object;Lcom/explorestack/protobuf/k2;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method bridge synthetic p(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/explorestack/protobuf/k2;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/l2;->G(Ljava/lang/Object;Lcom/explorestack/protobuf/k2;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method q(Lcom/explorestack/protobuf/o1;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    return p1
.end method

.method bridge synthetic r(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/explorestack/protobuf/k2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/l2;->H(Lcom/explorestack/protobuf/k2;)Lcom/explorestack/protobuf/k2;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method bridge synthetic s(Ljava/lang/Object;Lcom/explorestack/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/explorestack/protobuf/k2;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/l2;->I(Lcom/explorestack/protobuf/k2;Lcom/explorestack/protobuf/Writer;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method bridge synthetic t(Ljava/lang/Object;Lcom/explorestack/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/explorestack/protobuf/k2;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/l2;->J(Lcom/explorestack/protobuf/k2;Lcom/explorestack/protobuf/Writer;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method u(Lcom/explorestack/protobuf/k2;II)V
    .locals 1

    .line 1
    const/4 v0, 0x5

    .line 2
    invoke-static {p2, v0}, Lcom/explorestack/protobuf/WireFormat;->c(II)I

    .line 3
    .line 4
    .line 5
    move-result p2

    .line 6
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    invoke-virtual {p1, p2, p3}, Lcom/explorestack/protobuf/k2;->m(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method v(Lcom/explorestack/protobuf/k2;IJ)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p2, v0}, Lcom/explorestack/protobuf/WireFormat;->c(II)I

    .line 3
    .line 4
    .line 5
    move-result p2

    .line 6
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    invoke-virtual {p1, p2, p3}, Lcom/explorestack/protobuf/k2;->m(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method w(Lcom/explorestack/protobuf/k2;ILcom/explorestack/protobuf/k2;)V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    invoke-static {p2, v0}, Lcom/explorestack/protobuf/WireFormat;->c(II)I

    .line 3
    .line 4
    .line 5
    move-result p2

    .line 6
    invoke-virtual {p1, p2, p3}, Lcom/explorestack/protobuf/k2;->m(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method x(Lcom/explorestack/protobuf/k2;ILcom/explorestack/protobuf/ByteString;)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-static {p2, v0}, Lcom/explorestack/protobuf/WireFormat;->c(II)I

    .line 3
    .line 4
    .line 5
    move-result p2

    .line 6
    invoke-virtual {p1, p2, p3}, Lcom/explorestack/protobuf/k2;->m(ILjava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method y(Lcom/explorestack/protobuf/k2;IJ)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p2, v0}, Lcom/explorestack/protobuf/WireFormat;->c(II)I

    .line 3
    .line 4
    .line 5
    move-result p2

    .line 6
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 7
    .line 8
    .line 9
    move-result-object p3

    .line 10
    invoke-virtual {p1, p2, p3}, Lcom/explorestack/protobuf/k2;->m(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method z(Ljava/lang/Object;)Lcom/explorestack/protobuf/k2;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/l2;->A(Ljava/lang/Object;)Lcom/explorestack/protobuf/k2;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/explorestack/protobuf/k2;->c()Lcom/explorestack/protobuf/k2;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/explorestack/protobuf/k2;->j()Lcom/explorestack/protobuf/k2;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0, p1, v0}, Lcom/explorestack/protobuf/l2;->G(Ljava/lang/Object;Lcom/explorestack/protobuf/k2;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-object v0
.end method
