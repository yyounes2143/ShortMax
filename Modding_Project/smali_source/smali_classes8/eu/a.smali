.class public Leu/a;
.super Ljava/lang/Object;
.source "EventRecodingLogger.java"

# interfaces
.implements Ldu/a;


# instance fields
.field a:Ljava/lang/String;

.field b:Lorg/slf4j/helpers/b;

.field c:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Leu/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/slf4j/helpers/b;Ljava/util/Queue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/slf4j/helpers/b;",
            "Ljava/util/Queue<",
            "Leu/c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Leu/a;->b:Lorg/slf4j/helpers/b;

    .line 5
    .line 6
    invoke-virtual {p1}, Lorg/slf4j/helpers/b;->getName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    iput-object p1, p0, Leu/a;->a:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p2, p0, Leu/a;->c:Ljava/util/Queue;

    .line 13
    .line 14
    return-void
.end method

.method private a(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    new-instance v0, Leu/c;

    .line 2
    .line 3
    invoke-direct {v0}, Leu/c;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v1

    .line 10
    invoke-virtual {v0, v1, v2}, Leu/c;->j(J)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p1}, Leu/c;->c(Lorg/slf4j/event/Level;)V

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Leu/a;->b:Lorg/slf4j/helpers/b;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Leu/c;->d(Lorg/slf4j/helpers/b;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Leu/a;->a:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Leu/c;->e(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, p2}, Leu/c;->f(Lorg/slf4j/Marker;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, p3}, Leu/c;->g(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v0, p1}, Leu/c;->h(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, p4}, Leu/c;->b([Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p5}, Leu/c;->i(Ljava/lang/Throwable;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Leu/a;->c:Ljava/util/Queue;

    .line 50
    .line 51
    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method private c(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    const/4 v4, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move-object v5, p4

    .line 7
    invoke-direct/range {v0 .. v5}, Leu/a;->a(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/slf4j/event/Level;->TRACE:Lorg/slf4j/event/Level;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1, p1, v1}, Leu/a;->c(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/slf4j/event/Level;->WARN:Lorg/slf4j/event/Level;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1, p1, v1}, Leu/a;->c(Lorg/slf4j/event/Level;Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Leu/a;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
