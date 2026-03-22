.class Lop/c$c;
.super Lop/c$b;
.source "NoSSLv3SocketFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lop/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method private constructor <init>(Ljavax/net/ssl/SSLSocket;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lop/c$b;-><init>(Ljavax/net/ssl/SSLSocket;)V

    return-void
.end method

.method synthetic constructor <init>(Ljavax/net/ssl/SSLSocket;Lop/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lop/c$c;-><init>(Ljavax/net/ssl/SSLSocket;)V

    return-void
.end method


# virtual methods
.method public setEnabledProtocols([Ljava/lang/String;)V
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    const/4 v1, 0x1

    .line 5
    if-ne v0, v1, :cond_1

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    aget-object v2, p1, v0

    .line 9
    .line 10
    const-string v3, "SSLv3"

    .line 11
    .line 12
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    new-instance p1, Ljava/util/ArrayList;

    .line 19
    .line 20
    iget-object v2, p0, Lop/c$b;->a:Ljavax/net/ssl/SSLSocket;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-direct {p1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-le v2, v1, :cond_0

    .line 38
    .line 39
    invoke-interface {p1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 43
    .line 44
    const-string v2, "Removed SSLv3 from enabled protocols"

    .line 45
    .line 46
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 51
    .line 52
    new-instance v2, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v3, "SSL stuck with protocol available for "

    .line 58
    .line 59
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    new-array v0, v0, [Ljava/lang/String;

    .line 73
    .line 74
    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    check-cast p1, [Ljava/lang/String;

    .line 79
    .line 80
    :cond_1
    invoke-super {p0, p1}, Lop/c$b;->setEnabledProtocols([Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method
