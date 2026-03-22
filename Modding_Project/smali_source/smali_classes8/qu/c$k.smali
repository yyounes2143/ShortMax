.class final Lqu/c$k;
.super Ljava/lang/Object;
.source "RxJavaHooks.java"

# interfaces
.implements Lmu/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqu/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lmu/d<",
        "Lku/g;",
        "Lku/g$a;",
        "Lku/g$a;",
        ">;"
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
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lku/g;

    .line 2
    .line 3
    check-cast p2, Lku/g$a;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lqu/c$k;->b(Lku/g;Lku/g$a;)Lku/g$a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public b(Lku/g;Lku/g$a;)Lku/g$a;
    .locals 3

    .line 1
    invoke-static {}, Lqu/f;->c()Lqu/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lqu/f;->g()Lqu/h;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Lqu/i;->f()Lqu/h;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    .line 15
    return-object p2

    .line 16
    :cond_0
    new-instance v1, Lnu/c;

    .line 17
    .line 18
    new-instance v2, Lnu/e;

    .line 19
    .line 20
    invoke-direct {v2, p2}, Lnu/e;-><init>(Lku/g$a;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p1, v2}, Lqu/h;->e(Lku/g;Lku/c$a;)Lku/c$a;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-direct {v1, p1}, Lnu/c;-><init>(Lku/c$a;)V

    .line 28
    .line 29
    .line 30
    return-object v1
.end method
