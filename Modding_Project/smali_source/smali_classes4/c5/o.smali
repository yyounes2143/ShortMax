.class abstract Lc5/o;
.super Ljava/lang/Object;
.source "SendRequest.java"


# annotations
.annotation build Lcom/google/auto/value/AutoValue;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lc5/o$a;
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

.method public static a()Lc5/o$a;
    .locals 1

    .line 1
    new-instance v0, Lc5/c$b;

    .line 2
    .line 3
    invoke-direct {v0}, Lc5/c$b;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public abstract b()La5/c;
.end method

.method abstract c()La5/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La5/d<",
            "*>;"
        }
    .end annotation
.end method

.method public d()[B
    .locals 2

    .line 1
    invoke-virtual {p0}, Lc5/o;->e()La5/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Lc5/o;->c()La5/d;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, La5/d;->c()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, La5/g;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, [B

    .line 18
    .line 19
    return-object v0
.end method

.method abstract e()La5/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "La5/g<",
            "*[B>;"
        }
    .end annotation
.end method

.method public abstract f()Lc5/p;
.end method

.method public abstract g()Ljava/lang/String;
.end method
