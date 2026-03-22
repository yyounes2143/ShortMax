.class public abstract Lcom/pgl/ssdk/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pgl/ssdk/c$a;
    }
.end annotation


# direct methods
.method public static a(Lcom/pgl/ssdk/q;)Lcom/pgl/ssdk/c$a;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/pgl/ssdk/s;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/pgl/ssdk/d;->a(Lcom/pgl/ssdk/q;)Lcom/pgl/ssdk/t;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    new-instance v9, Lcom/pgl/ssdk/c$a;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/pgl/ssdk/t;->a()J

    .line 8
    .line 9
    .line 10
    move-result-wide v1

    .line 11
    invoke-virtual {p0}, Lcom/pgl/ssdk/t;->c()J

    .line 12
    .line 13
    .line 14
    move-result-wide v3

    .line 15
    invoke-virtual {p0}, Lcom/pgl/ssdk/t;->b()I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    invoke-virtual {p0}, Lcom/pgl/ssdk/t;->e()J

    .line 20
    .line 21
    .line 22
    move-result-wide v6

    .line 23
    invoke-virtual {p0}, Lcom/pgl/ssdk/t;->d()Ljava/nio/ByteBuffer;

    .line 24
    .line 25
    .line 26
    move-result-object v8

    .line 27
    move-object v0, v9

    .line 28
    invoke-direct/range {v0 .. v8}, Lcom/pgl/ssdk/c$a;-><init>(JJIJLjava/nio/ByteBuffer;)V

    .line 29
    .line 30
    .line 31
    return-object v9
.end method
