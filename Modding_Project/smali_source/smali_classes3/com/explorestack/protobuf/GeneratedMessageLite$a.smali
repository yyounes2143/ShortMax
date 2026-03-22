.class public abstract Lcom/explorestack/protobuf/GeneratedMessageLite$a;
.super Lcom/explorestack/protobuf/a$a;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/explorestack/protobuf/GeneratedMessageLite<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/explorestack/protobuf/GeneratedMessageLite$a<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/explorestack/protobuf/a$a<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/explorestack/protobuf/GeneratedMessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected b:Lcom/explorestack/protobuf/GeneratedMessageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TMessageType;"
        }
    .end annotation
.end field

.field protected c:Z


# direct methods
.method private o(Lcom/explorestack/protobuf/GeneratedMessageLite;Lcom/explorestack/protobuf/GeneratedMessageLite;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;TMessageType;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/l1;->a()Lcom/explorestack/protobuf/l1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/l1;->e(Ljava/lang/Object;)Lcom/explorestack/protobuf/q1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/q1;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Lcom/explorestack/protobuf/GeneratedMessageLite;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->b()Lcom/explorestack/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/GeneratedMessageLite;->isInitialized()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/a$a;->newUninitializedMessageException(Lcom/explorestack/protobuf/MessageLite;)Lcom/explorestack/protobuf/UninitializedMessageException;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    throw v0
.end method

.method public b()Lcom/explorestack/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->b:Lcom/explorestack/protobuf/GeneratedMessageLite;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->b:Lcom/explorestack/protobuf/GeneratedMessageLite;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/explorestack/protobuf/GeneratedMessageLite;->j()V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->c:Z

    .line 15
    .line 16
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->b:Lcom/explorestack/protobuf/GeneratedMessageLite;

    .line 17
    .line 18
    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->a()Lcom/explorestack/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->b()Lcom/explorestack/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final c()Lcom/explorestack/protobuf/GeneratedMessageLite$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->b:Lcom/explorestack/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    sget-object v1, Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageLite;->d(Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/explorestack/protobuf/GeneratedMessageLite;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->b:Lcom/explorestack/protobuf/GeneratedMessageLite;

    .line 12
    .line 13
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->c()Lcom/explorestack/protobuf/GeneratedMessageLite$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->e()Lcom/explorestack/protobuf/GeneratedMessageLite$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/a$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->e()Lcom/explorestack/protobuf/GeneratedMessageLite$a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->e()Lcom/explorestack/protobuf/GeneratedMessageLite$a;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/explorestack/protobuf/GeneratedMessageLite$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->i()Lcom/explorestack/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/GeneratedMessageLite;->k()Lcom/explorestack/protobuf/GeneratedMessageLite$a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->b()Lcom/explorestack/protobuf/GeneratedMessageLite;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->l(Lcom/explorestack/protobuf/GeneratedMessageLite;)Lcom/explorestack/protobuf/GeneratedMessageLite$a;

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method protected final f()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->g()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->c:Z

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method protected g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->b:Lcom/explorestack/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    sget-object v1, Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_MUTABLE_INSTANCE:Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageLite;->d(Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/explorestack/protobuf/GeneratedMessageLite;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->b:Lcom/explorestack/protobuf/GeneratedMessageLite;

    .line 12
    .line 13
    invoke-direct {p0, v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->o(Lcom/explorestack/protobuf/GeneratedMessageLite;Lcom/explorestack/protobuf/GeneratedMessageLite;)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->b:Lcom/explorestack/protobuf/GeneratedMessageLite;

    .line 17
    .line 18
    return-void
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->i()Lcom/explorestack/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public i()Lcom/explorestack/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->a:Lcom/explorestack/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    return-object v0
.end method

.method protected bridge synthetic internalMergeFrom(Lcom/explorestack/protobuf/a;)Lcom/explorestack/protobuf/a$a;
    .locals 0

    .line 1
    check-cast p1, Lcom/explorestack/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->j(Lcom/explorestack/protobuf/GeneratedMessageLite;)Lcom/explorestack/protobuf/GeneratedMessageLite$a;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final isInitialized()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->b:Lcom/explorestack/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/GeneratedMessageLite;->i(Lcom/explorestack/protobuf/GeneratedMessageLite;Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    return v0
.end method

.method protected j(Lcom/explorestack/protobuf/GeneratedMessageLite;)Lcom/explorestack/protobuf/GeneratedMessageLite$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->l(Lcom/explorestack/protobuf/GeneratedMessageLite;)Lcom/explorestack/protobuf/GeneratedMessageLite$a;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public k(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/GeneratedMessageLite$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/n;",
            "Lcom/explorestack/protobuf/y;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->f()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/l1;->a()Lcom/explorestack/protobuf/l1;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->b:Lcom/explorestack/protobuf/GeneratedMessageLite;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/l1;->e(Ljava/lang/Object;)Lcom/explorestack/protobuf/q1;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->b:Lcom/explorestack/protobuf/GeneratedMessageLite;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/explorestack/protobuf/o;->h(Lcom/explorestack/protobuf/n;)Lcom/explorestack/protobuf/o;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-interface {v0, v1, p1, p2}, Lcom/explorestack/protobuf/q1;->c(Ljava/lang/Object;Lcom/explorestack/protobuf/o1;Lcom/explorestack/protobuf/y;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    return-object p0

    .line 24
    :catch_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    instance-of p2, p2, Ljava/io/IOException;

    .line 30
    .line 31
    if-eqz p2, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Ljava/io/IOException;

    .line 38
    .line 39
    throw p1

    .line 40
    :cond_0
    throw p1
.end method

.method public l(Lcom/explorestack/protobuf/GeneratedMessageLite;)Lcom/explorestack/protobuf/GeneratedMessageLite$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)TBuilderType;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->f()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->b:Lcom/explorestack/protobuf/GeneratedMessageLite;

    .line 5
    .line 6
    invoke-direct {p0, v0, p1}, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->o(Lcom/explorestack/protobuf/GeneratedMessageLite;Lcom/explorestack/protobuf/GeneratedMessageLite;)V

    .line 7
    .line 8
    .line 9
    return-object p0
.end method

.method public m([BII)Lcom/explorestack/protobuf/GeneratedMessageLite$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII)TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/y;->b()Lcom/explorestack/protobuf/y;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->n([BIILcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/GeneratedMessageLite$a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->k(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/GeneratedMessageLite$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->m([BII)Lcom/explorestack/protobuf/GeneratedMessageLite$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->n([BIILcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/GeneratedMessageLite$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->k(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/GeneratedMessageLite$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BII)Lcom/explorestack/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->m([BII)Lcom/explorestack/protobuf/GeneratedMessageLite$a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom([BIILcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->n([BIILcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/GeneratedMessageLite$a;

    move-result-object p1

    return-object p1
.end method

.method public n([BIILcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/GeneratedMessageLite$a;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII",
            "Lcom/explorestack/protobuf/y;",
            ")TBuilderType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->f()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/l1;->a()Lcom/explorestack/protobuf/l1;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->b:Lcom/explorestack/protobuf/GeneratedMessageLite;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/l1;->e(Ljava/lang/Object;)Lcom/explorestack/protobuf/q1;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    iget-object v3, p0, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->b:Lcom/explorestack/protobuf/GeneratedMessageLite;

    .line 15
    .line 16
    add-int v6, p2, p3

    .line 17
    .line 18
    new-instance v7, Lcom/explorestack/protobuf/g$b;

    .line 19
    .line 20
    invoke-direct {v7, p4}, Lcom/explorestack/protobuf/g$b;-><init>(Lcom/explorestack/protobuf/y;)V

    .line 21
    .line 22
    .line 23
    move-object v4, p1

    .line 24
    move v5, p2

    .line 25
    invoke-interface/range {v2 .. v7}, Lcom/explorestack/protobuf/q1;->a(Ljava/lang/Object;[BIILcom/explorestack/protobuf/g$b;)V
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    return-object p0

    .line 29
    :catch_0
    move-exception p1

    .line 30
    goto :goto_0

    .line 31
    :catch_1
    move-exception p1

    .line 32
    goto :goto_1

    .line 33
    :goto_0
    new-instance p2, Ljava/lang/RuntimeException;

    .line 34
    .line 35
    const-string p3, "Reading from byte array should not throw IOException."

    .line 36
    .line 37
    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    throw p2

    .line 41
    :catch_2
    invoke-static {}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/explorestack/protobuf/InvalidProtocolBufferException;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    throw p1

    .line 46
    :goto_1
    throw p1
.end method
