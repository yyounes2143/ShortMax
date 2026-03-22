.class final Lfu/b;
.super Lfu/h$a;
.source "BuiltInConverters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfu/b$d;,
        Lfu/b$a;,
        Lfu/b$c;,
        Lfu/b$b;,
        Lfu/b$e;,
        Lfu/b$f;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lfu/h$a;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lfu/d0;)Lfu/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lfu/d0;",
            ")",
            "Lfu/h<",
            "*",
            "Lokhttp3/RequestBody;",
            ">;"
        }
    .end annotation

    .line 1
    const-class p2, Lokhttp3/RequestBody;

    .line 2
    .line 3
    invoke-static {p1}, Lfu/h0;->h(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    sget-object p1, Lfu/b$b;->a:Lfu/b$b;

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return-object p1
.end method

.method public d(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lfu/d0;)Lfu/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lfu/d0;",
            ")",
            "Lfu/h<",
            "Lokhttp3/ResponseBody;",
            "*>;"
        }
    .end annotation

    .line 1
    const-class p3, Lokhttp3/ResponseBody;

    .line 2
    .line 3
    if-ne p1, p3, :cond_1

    .line 4
    .line 5
    const-class p1, Lju/w;

    .line 6
    .line 7
    invoke-static {p2, p1}, Lfu/h0;->l([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    sget-object p1, Lfu/b$c;->a:Lfu/b$c;

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object p1, Lfu/b$a;->a:Lfu/b$a;

    .line 17
    .line 18
    :goto_0
    return-object p1

    .line 19
    :cond_1
    const-class p2, Ljava/lang/Void;

    .line 20
    .line 21
    if-ne p1, p2, :cond_2

    .line 22
    .line 23
    sget-object p1, Lfu/b$f;->a:Lfu/b$f;

    .line 24
    .line 25
    return-object p1

    .line 26
    :cond_2
    invoke-static {p1}, Lfu/h0;->m(Ljava/lang/reflect/Type;)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-eqz p1, :cond_3

    .line 31
    .line 32
    sget-object p1, Lfu/b$e;->a:Lfu/b$e;

    .line 33
    .line 34
    return-object p1

    .line 35
    :cond_3
    const/4 p1, 0x0

    .line 36
    return-object p1
.end method
