.class public Lorg/slf4j/helpers/b;
.super Ljava/lang/Object;
.source "SubstituteLogger.java"

# interfaces
.implements Ldu/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private volatile b:Ldu/a;

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/lang/reflect/Method;

.field private e:Leu/a;

.field private f:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Leu/c;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Queue;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Queue<",
            "Leu/c;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/slf4j/helpers/b;->a:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/slf4j/helpers/b;->f:Ljava/util/Queue;

    .line 7
    .line 8
    iput-boolean p3, p0, Lorg/slf4j/helpers/b;->g:Z

    .line 9
    .line 10
    return-void
.end method

.method private c()Ldu/a;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/slf4j/helpers/b;->e:Leu/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Leu/a;

    .line 6
    .line 7
    iget-object v1, p0, Lorg/slf4j/helpers/b;->f:Ljava/util/Queue;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Leu/a;-><init>(Lorg/slf4j/helpers/b;Ljava/util/Queue;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lorg/slf4j/helpers/b;->e:Leu/a;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lorg/slf4j/helpers/b;->e:Leu/a;

    .line 15
    .line 16
    return-object v0
.end method


# virtual methods
.method a()Ldu/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/helpers/b;->b:Ldu/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lorg/slf4j/helpers/b;->b:Ldu/a;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-boolean v0, p0, Lorg/slf4j/helpers/b;->g:Z

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    sget-object v0, Lorg/slf4j/helpers/NOPLogger;->b:Lorg/slf4j/helpers/NOPLogger;

    .line 13
    .line 14
    return-object v0

    .line 15
    :cond_1
    invoke-direct {p0}, Lorg/slf4j/helpers/b;->c()Ldu/a;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/slf4j/helpers/b;->a()Ldu/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ldu/a;->b(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/slf4j/helpers/b;->a()Ldu/a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0, p1}, Ldu/a;->d(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public e()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/slf4j/helpers/b;->c:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    :try_start_0
    iget-object v0, p0, Lorg/slf4j/helpers/b;->b:Ldu/a;

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "log"

    .line 17
    .line 18
    const-class v2, Leu/b;

    .line 19
    .line 20
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iput-object v0, p0, Lorg/slf4j/helpers/b;->d:Ljava/lang/reflect/Method;

    .line 29
    .line 30
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 31
    .line 32
    iput-object v0, p0, Lorg/slf4j/helpers/b;->c:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 36
    .line 37
    iput-object v0, p0, Lorg/slf4j/helpers/b;->c:Ljava/lang/Boolean;

    .line 38
    .line 39
    :goto_0
    iget-object v0, p0, Lorg/slf4j/helpers/b;->c:Ljava/lang/Boolean;

    .line 40
    .line 41
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    if-eq v2, v3, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    check-cast p1, Lorg/slf4j/helpers/b;

    .line 20
    .line 21
    iget-object v2, p0, Lorg/slf4j/helpers/b;->a:Ljava/lang/String;

    .line 22
    .line 23
    iget-object p1, p1, Lorg/slf4j/helpers/b;->a:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    return v1

    .line 32
    :cond_2
    return v0

    .line 33
    :cond_3
    :goto_0
    return v1
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/helpers/b;->b:Ldu/a;

    .line 2
    .line 3
    instance-of v0, v0, Lorg/slf4j/helpers/NOPLogger;

    .line 4
    .line 5
    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/helpers/b;->b:Ldu/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/helpers/b;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public h(Leu/b;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/slf4j/helpers/b;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lorg/slf4j/helpers/b;->d:Ljava/lang/reflect/Method;

    .line 8
    .line 9
    iget-object v1, p0, Lorg/slf4j/helpers/b;->b:Ldu/a;

    .line 10
    .line 11
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    :catch_0
    :cond_0
    return-void
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/slf4j/helpers/b;->a:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public i(Ldu/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/slf4j/helpers/b;->b:Ldu/a;

    .line 2
    .line 3
    return-void
.end method
