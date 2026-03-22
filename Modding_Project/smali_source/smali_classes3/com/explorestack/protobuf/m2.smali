.class Lcom/explorestack/protobuf/m2;
.super Lcom/explorestack/protobuf/i2;
.source "UnknownFieldSetSchema.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/i2<",
        "Lcom/explorestack/protobuf/j2;",
        "Lcom/explorestack/protobuf/j2$b;",
        ">;"
    }
.end annotation


# virtual methods
.method A(Ljava/lang/Object;)Lcom/explorestack/protobuf/j2;
    .locals 0

    .line 1
    check-cast p1, Lcom/explorestack/protobuf/GeneratedMessageV3;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 4
    .line 5
    return-object p1
.end method

.method B(Lcom/explorestack/protobuf/j2;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/j2;->getSerializedSize()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method C(Lcom/explorestack/protobuf/j2;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/j2;->f()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method D(Lcom/explorestack/protobuf/j2;Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/j2;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/j2;->k()Lcom/explorestack/protobuf/j2$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/j2$b;->t(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/j2$b;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method E()Lcom/explorestack/protobuf/j2$b;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/j2;->g()Lcom/explorestack/protobuf/j2$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method F(Ljava/lang/Object;Lcom/explorestack/protobuf/j2$b;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/explorestack/protobuf/GeneratedMessageV3;

    .line 2
    .line 3
    invoke-virtual {p2}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    iput-object p2, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 8
    .line 9
    return-void
.end method

.method G(Ljava/lang/Object;Lcom/explorestack/protobuf/j2;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/explorestack/protobuf/GeneratedMessageV3;

    .line 2
    .line 3
    iput-object p2, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 4
    .line 5
    return-void
.end method

.method H(Lcom/explorestack/protobuf/j2$b;)Lcom/explorestack/protobuf/j2;
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/j2$b;->c()Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method I(Lcom/explorestack/protobuf/j2;Lcom/explorestack/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/j2;->m(Lcom/explorestack/protobuf/Writer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method J(Lcom/explorestack/protobuf/j2;Lcom/explorestack/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Lcom/explorestack/protobuf/j2;->n(Lcom/explorestack/protobuf/Writer;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method bridge synthetic a(Ljava/lang/Object;II)V
    .locals 0

    .line 1
    check-cast p1, Lcom/explorestack/protobuf/j2$b;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/m2;->u(Lcom/explorestack/protobuf/j2$b;II)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method bridge synthetic b(Ljava/lang/Object;IJ)V
    .locals 0

    .line 1
    check-cast p1, Lcom/explorestack/protobuf/j2$b;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/m2;->v(Lcom/explorestack/protobuf/j2$b;IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method bridge synthetic c(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/explorestack/protobuf/j2$b;

    .line 2
    .line 3
    check-cast p3, Lcom/explorestack/protobuf/j2;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/m2;->w(Lcom/explorestack/protobuf/j2$b;ILcom/explorestack/protobuf/j2;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method bridge synthetic d(Ljava/lang/Object;ILcom/explorestack/protobuf/ByteString;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/explorestack/protobuf/j2$b;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/m2;->x(Lcom/explorestack/protobuf/j2$b;ILcom/explorestack/protobuf/ByteString;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method bridge synthetic e(Ljava/lang/Object;IJ)V
    .locals 0

    .line 1
    check-cast p1, Lcom/explorestack/protobuf/j2$b;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/m2;->y(Lcom/explorestack/protobuf/j2$b;IJ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method bridge synthetic f(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/m2;->z(Ljava/lang/Object;)Lcom/explorestack/protobuf/j2$b;

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
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/m2;->A(Ljava/lang/Object;)Lcom/explorestack/protobuf/j2;

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
    check-cast p1, Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/m2;->B(Lcom/explorestack/protobuf/j2;)I

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
    check-cast p1, Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/m2;->C(Lcom/explorestack/protobuf/j2;)I

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
    return-void
.end method

.method bridge synthetic k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    check-cast p2, Lcom/explorestack/protobuf/j2;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/m2;->D(Lcom/explorestack/protobuf/j2;Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/j2;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/m2;->E()Lcom/explorestack/protobuf/j2$b;

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
    check-cast p2, Lcom/explorestack/protobuf/j2$b;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/m2;->F(Ljava/lang/Object;Lcom/explorestack/protobuf/j2$b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method bridge synthetic p(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/m2;->G(Ljava/lang/Object;Lcom/explorestack/protobuf/j2;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method q(Lcom/explorestack/protobuf/o1;)Z
    .locals 0

    .line 1
    invoke-interface {p1}, Lcom/explorestack/protobuf/o1;->shouldDiscardUnknownFields()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method bridge synthetic r(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/explorestack/protobuf/j2$b;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/m2;->H(Lcom/explorestack/protobuf/j2$b;)Lcom/explorestack/protobuf/j2;

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
    check-cast p1, Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/m2;->I(Lcom/explorestack/protobuf/j2;Lcom/explorestack/protobuf/Writer;)V

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
    check-cast p1, Lcom/explorestack/protobuf/j2;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/m2;->J(Lcom/explorestack/protobuf/j2;Lcom/explorestack/protobuf/Writer;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method u(Lcom/explorestack/protobuf/j2$b;II)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/j2$c;->t()Lcom/explorestack/protobuf/j2$c$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p3}, Lcom/explorestack/protobuf/j2$c$a;->b(I)Lcom/explorestack/protobuf/j2$c$a;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    invoke-virtual {p3}, Lcom/explorestack/protobuf/j2$c$a;->g()Lcom/explorestack/protobuf/j2$c;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-virtual {p1, p2, p3}, Lcom/explorestack/protobuf/j2$b;->m(ILcom/explorestack/protobuf/j2$c;)Lcom/explorestack/protobuf/j2$b;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method v(Lcom/explorestack/protobuf/j2$b;IJ)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/j2$c;->t()Lcom/explorestack/protobuf/j2$c$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p3, p4}, Lcom/explorestack/protobuf/j2$c$a;->c(J)Lcom/explorestack/protobuf/j2$c$a;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    invoke-virtual {p3}, Lcom/explorestack/protobuf/j2$c$a;->g()Lcom/explorestack/protobuf/j2$c;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-virtual {p1, p2, p3}, Lcom/explorestack/protobuf/j2$b;->m(ILcom/explorestack/protobuf/j2$c;)Lcom/explorestack/protobuf/j2$b;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method w(Lcom/explorestack/protobuf/j2$b;ILcom/explorestack/protobuf/j2;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/j2$c;->t()Lcom/explorestack/protobuf/j2$c$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p3}, Lcom/explorestack/protobuf/j2$c$a;->d(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/j2$c$a;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    invoke-virtual {p3}, Lcom/explorestack/protobuf/j2$c$a;->g()Lcom/explorestack/protobuf/j2$c;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-virtual {p1, p2, p3}, Lcom/explorestack/protobuf/j2$b;->m(ILcom/explorestack/protobuf/j2$c;)Lcom/explorestack/protobuf/j2$b;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method x(Lcom/explorestack/protobuf/j2$b;ILcom/explorestack/protobuf/ByteString;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/j2$c;->t()Lcom/explorestack/protobuf/j2$c$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p3}, Lcom/explorestack/protobuf/j2$c$a;->e(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/j2$c$a;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    invoke-virtual {p3}, Lcom/explorestack/protobuf/j2$c$a;->g()Lcom/explorestack/protobuf/j2$c;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-virtual {p1, p2, p3}, Lcom/explorestack/protobuf/j2$b;->m(ILcom/explorestack/protobuf/j2$c;)Lcom/explorestack/protobuf/j2$b;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method y(Lcom/explorestack/protobuf/j2$b;IJ)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/j2$c;->t()Lcom/explorestack/protobuf/j2$c$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p3, p4}, Lcom/explorestack/protobuf/j2$c$a;->f(J)Lcom/explorestack/protobuf/j2$c$a;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    invoke-virtual {p3}, Lcom/explorestack/protobuf/j2$c$a;->g()Lcom/explorestack/protobuf/j2$c;

    .line 10
    .line 11
    .line 12
    move-result-object p3

    .line 13
    invoke-virtual {p1, p2, p3}, Lcom/explorestack/protobuf/j2$b;->m(ILcom/explorestack/protobuf/j2$c;)Lcom/explorestack/protobuf/j2$b;

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method z(Ljava/lang/Object;)Lcom/explorestack/protobuf/j2$b;
    .locals 0

    .line 1
    check-cast p1, Lcom/explorestack/protobuf/GeneratedMessageV3;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/j2;->k()Lcom/explorestack/protobuf/j2$b;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
