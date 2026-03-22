.class final Lfu/v$g;
.super Lfu/v;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfu/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lfu/v<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/reflect/Method;

.field private final b:I

.field private final c:Lfu/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfu/h<",
            "TT;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Z


# direct methods
.method constructor <init>(Ljava/lang/reflect/Method;ILfu/h;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "I",
            "Lfu/h<",
            "TT;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lfu/v;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lfu/v$g;->a:Ljava/lang/reflect/Method;

    .line 5
    .line 6
    iput p2, p0, Lfu/v$g;->b:I

    .line 7
    .line 8
    iput-object p3, p0, Lfu/v$g;->c:Lfu/h;

    .line 9
    .line 10
    iput-boolean p4, p0, Lfu/v$g;->d:Z

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method bridge synthetic a(Lfu/a0;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p2, Ljava/util/Map;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lfu/v$g;->d(Lfu/a0;Ljava/util/Map;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method d(Lfu/a0;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfu/a0;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_3

    .line 3
    .line 4
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p2

    .line 12
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_2

    .line 17
    .line 18
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Ljava/util/Map$Entry;

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Ljava/lang/String;

    .line 29
    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    iget-object v3, p0, Lfu/v$g;->c:Lfu/h;

    .line 39
    .line 40
    invoke-interface {v3, v1}, Lfu/h;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    check-cast v1, Ljava/lang/String;

    .line 45
    .line 46
    iget-boolean v3, p0, Lfu/v$g;->d:Z

    .line 47
    .line 48
    invoke-virtual {p1, v2, v1, v3}, Lfu/a0;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object p1, p0, Lfu/v$g;->a:Ljava/lang/reflect/Method;

    .line 53
    .line 54
    iget p2, p0, Lfu/v$g;->b:I

    .line 55
    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v3, "Header map contained null value for key \'"

    .line 62
    .line 63
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string v2, "\'."

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    new-array v0, v0, [Ljava/lang/Object;

    .line 79
    .line 80
    invoke-static {p1, p2, v1, v0}, Lfu/h0;->p(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    throw p1

    .line 85
    :cond_1
    iget-object p1, p0, Lfu/v$g;->a:Ljava/lang/reflect/Method;

    .line 86
    .line 87
    iget p2, p0, Lfu/v$g;->b:I

    .line 88
    .line 89
    const-string v1, "Header map contained null key."

    .line 90
    .line 91
    new-array v0, v0, [Ljava/lang/Object;

    .line 92
    .line 93
    invoke-static {p1, p2, v1, v0}, Lfu/h0;->p(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    throw p1

    .line 98
    :cond_2
    return-void

    .line 99
    :cond_3
    iget-object p1, p0, Lfu/v$g;->a:Ljava/lang/reflect/Method;

    .line 100
    .line 101
    iget p2, p0, Lfu/v$g;->b:I

    .line 102
    .line 103
    const-string v1, "Header map was null."

    .line 104
    .line 105
    new-array v0, v0, [Ljava/lang/Object;

    .line 106
    .line 107
    invoke-static {p1, p2, v1, v0}, Lfu/h0;->p(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    throw p1
.end method
