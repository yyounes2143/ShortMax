.class public Le9/h;
.super Ljava/lang/Object;
.source "LibraryVersionComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le9/h$a;
    }
.end annotation


# direct methods
.method public static synthetic a(Ljava/lang/String;Le9/h$a;Lw7/d;)Le9/f;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Le9/h;->d(Ljava/lang/String;Le9/h$a;Lw7/d;)Le9/f;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)Lw7/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lw7/c<",
            "*>;"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Le9/f;->a(Ljava/lang/String;Ljava/lang/String;)Le9/f;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-class p1, Le9/f;

    .line 6
    .line 7
    invoke-static {p0, p1}, Lw7/c;->l(Ljava/lang/Object;Ljava/lang/Class;)Lw7/c;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method public static c(Ljava/lang/String;Le9/h$a;)Lw7/c;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le9/h$a<",
            "Landroid/content/Context;",
            ">;)",
            "Lw7/c<",
            "*>;"
        }
    .end annotation

    .line 1
    const-class v0, Le9/f;

    .line 2
    .line 3
    invoke-static {v0}, Lw7/c;->m(Ljava/lang/Class;)Lw7/c$b;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-class v1, Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v1}, Lw7/q;->k(Ljava/lang/Class;)Lw7/q;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lw7/c$b;->b(Lw7/q;)Lw7/c$b;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    new-instance v1, Le9/g;

    .line 18
    .line 19
    invoke-direct {v1, p0, p1}, Le9/g;-><init>(Ljava/lang/String;Le9/h$a;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Lw7/c$b;->f(Lw7/g;)Lw7/c$b;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Lw7/c$b;->d()Lw7/c;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    return-object p0
.end method

.method private static synthetic d(Ljava/lang/String;Le9/h$a;Lw7/d;)Le9/f;
    .locals 1

    .line 1
    const-class v0, Landroid/content/Context;

    .line 2
    .line 3
    invoke-interface {p2, v0}, Lw7/d;->a(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    check-cast p2, Landroid/content/Context;

    .line 8
    .line 9
    invoke-interface {p1, p2}, Le9/h$a;->a(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p0, p1}, Le9/f;->a(Ljava/lang/String;Ljava/lang/String;)Le9/f;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    return-object p0
.end method
