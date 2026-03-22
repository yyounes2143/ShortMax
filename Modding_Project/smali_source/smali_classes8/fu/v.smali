.class abstract Lfu/v;
.super Ljava/lang/Object;
.source "ParameterHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfu/v$q;,
        Lfu/v$c;,
        Lfu/v$j;,
        Lfu/v$o;,
        Lfu/v$i;,
        Lfu/v$e;,
        Lfu/v$d;,
        Lfu/v$h;,
        Lfu/v$g;,
        Lfu/v$m;,
        Lfu/v$n;,
        Lfu/v$l;,
        Lfu/v$k;,
        Lfu/v$f;,
        Lfu/v$p;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method abstract a(Lfu/a0;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfu/a0;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method final b()Lfu/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfu/v<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lfu/v$b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lfu/v$b;-><init>(Lfu/v;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method final c()Lfu/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lfu/v<",
            "Ljava/lang/Iterable<",
            "TT;>;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lfu/v$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lfu/v$a;-><init>(Lfu/v;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
