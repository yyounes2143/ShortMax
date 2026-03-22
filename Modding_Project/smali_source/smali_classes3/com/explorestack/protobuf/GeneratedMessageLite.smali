.class public abstract Lcom/explorestack/protobuf/GeneratedMessageLite;
.super Lcom/explorestack/protobuf/a;
.source "GeneratedMessageLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/GeneratedMessageLite$SerializedForm;,
        Lcom/explorestack/protobuf/GeneratedMessageLite$d;,
        Lcom/explorestack/protobuf/GeneratedMessageLite$c;,
        Lcom/explorestack/protobuf/GeneratedMessageLite$b;,
        Lcom/explorestack/protobuf/GeneratedMessageLite$a;,
        Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/explorestack/protobuf/GeneratedMessageLite<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/explorestack/protobuf/GeneratedMessageLite$a<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/explorestack/protobuf/a<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# static fields
.field private static c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lcom/explorestack/protobuf/GeneratedMessageLite<",
            "**>;>;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Lcom/explorestack/protobuf/k2;

.field protected b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/explorestack/protobuf/GeneratedMessageLite;->c:Ljava/util/Map;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/explorestack/protobuf/a;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/explorestack/protobuf/k2;->c()Lcom/explorestack/protobuf/k2;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite;->a:Lcom/explorestack/protobuf/k2;

    .line 9
    .line 10
    const/4 v0, -0x1

    .line 11
    iput v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite;->b:I

    .line 12
    .line 13
    return-void
.end method

.method static g(Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageLite;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/explorestack/protobuf/GeneratedMessageLite<",
            "**>;>(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/GeneratedMessageLite;->c:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/explorestack/protobuf/GeneratedMessageLite;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const/4 v2, 0x1

    .line 20
    invoke-static {v0, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    .line 23
    sget-object v0, Lcom/explorestack/protobuf/GeneratedMessageLite;->c:Ljava/util/Map;

    .line 24
    .line 25
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/explorestack/protobuf/GeneratedMessageLite;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :catch_0
    move-exception p0

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 34
    .line 35
    const-string v1, "Class initialization cannot fail."

    .line 36
    .line 37
    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 38
    .line 39
    .line 40
    throw v0

    .line 41
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 42
    .line 43
    invoke-static {p0}, Lcom/explorestack/protobuf/o2;->l(Ljava/lang/Class;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/explorestack/protobuf/GeneratedMessageLite;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/explorestack/protobuf/GeneratedMessageLite;->h()Lcom/explorestack/protobuf/GeneratedMessageLite;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    sget-object v1, Lcom/explorestack/protobuf/GeneratedMessageLite;->c:Ljava/util/Map;

    .line 56
    .line 57
    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 62
    .line 63
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    .line 64
    .line 65
    .line 66
    throw p0

    .line 67
    :cond_2
    :goto_1
    return-object v0
.end method

.method protected static final i(Lcom/explorestack/protobuf/GeneratedMessageLite;Z)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/explorestack/protobuf/GeneratedMessageLite<",
            "TT;*>;>(TT;Z)Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_MEMOIZED_IS_INITIALIZED:Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/GeneratedMessageLite;->d(Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Byte;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    return v1

    .line 17
    :cond_0
    if-nez v0, :cond_1

    .line 18
    .line 19
    const/4 p0, 0x0

    .line 20
    return p0

    .line 21
    :cond_1
    invoke-static {}, Lcom/explorestack/protobuf/l1;->a()Lcom/explorestack/protobuf/l1;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/l1;->e(Ljava/lang/Object;)Lcom/explorestack/protobuf/q1;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/q1;->isInitialized(Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz p1, :cond_3

    .line 34
    .line 35
    sget-object p1, Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;->SET_MEMOIZED_IS_INITIALIZED:Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    move-object v1, p0

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 v1, 0x0

    .line 42
    :goto_0
    invoke-virtual {p0, p1, v1}, Lcom/explorestack/protobuf/GeneratedMessageLite;->e(Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    :cond_3
    return v0
.end method

.method static varargs invokeOrDie(Ljava/lang/reflect/Method;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    move-exception p0

    .line 7
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    instance-of p1, p0, Ljava/lang/RuntimeException;

    .line 12
    .line 13
    if-nez p1, :cond_1

    .line 14
    .line 15
    instance-of p1, p0, Ljava/lang/Error;

    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    check-cast p0, Ljava/lang/Error;

    .line 20
    .line 21
    throw p0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 23
    .line 24
    const-string p2, "Unexpected exception thrown by generated accessor method."

    .line 25
    .line 26
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    check-cast p0, Ljava/lang/RuntimeException;

    .line 31
    .line 32
    throw p0

    .line 33
    :catch_1
    move-exception p0

    .line 34
    new-instance p1, Ljava/lang/RuntimeException;

    .line 35
    .line 36
    const-string p2, "Couldn\'t use Java reflection to implement protocol message reflection."

    .line 37
    .line 38
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    .line 40
    .line 41
    throw p1
.end method


# virtual methods
.method b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;->BUILD_MESSAGE_INFO:Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/GeneratedMessageLite;->d(Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method protected d(Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Lcom/explorestack/protobuf/GeneratedMessageLite;->f(Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method protected e(Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Lcom/explorestack/protobuf/GeneratedMessageLite;->f(Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    move-result-object p1

    .line 6
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    if-ne p0, p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    return p1

    .line 5
    :cond_0
    const/4 v0, 0x0

    .line 6
    if-nez p1, :cond_1

    .line 7
    .line 8
    return v0

    .line 9
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-eq v1, v2, :cond_2

    .line 18
    .line 19
    return v0

    .line 20
    :cond_2
    invoke-static {}, Lcom/explorestack/protobuf/l1;->a()Lcom/explorestack/protobuf/l1;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/l1;->e(Ljava/lang/Object;)Lcom/explorestack/protobuf/q1;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    check-cast p1, Lcom/explorestack/protobuf/GeneratedMessageLite;

    .line 29
    .line 30
    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/q1;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    return p1
.end method

.method protected abstract f(Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite;->h()Lcom/explorestack/protobuf/GeneratedMessageLite;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method getMemoizedSerializedSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public final getParserForType()Lcom/explorestack/protobuf/j1;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/j1<",
            "TMessageType;>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_PARSER:Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/GeneratedMessageLite;->d(Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/explorestack/protobuf/j1;

    .line 8
    .line 9
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite;->b:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-static {}, Lcom/explorestack/protobuf/l1;->a()Lcom/explorestack/protobuf/l1;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/l1;->e(Ljava/lang/Object;)Lcom/explorestack/protobuf/q1;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/q1;->getSerializedSize(Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite;->b:I

    .line 19
    .line 20
    :cond_0
    iget v0, p0, Lcom/explorestack/protobuf/GeneratedMessageLite;->b:I

    .line 21
    .line 22
    return v0
.end method

.method public final h()Lcom/explorestack/protobuf/GeneratedMessageLite;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;->GET_DEFAULT_INSTANCE:Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/GeneratedMessageLite;->d(Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/explorestack/protobuf/GeneratedMessageLite;

    .line 8
    .line 9
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/a;->memoizedHashCode:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return v0

    .line 6
    :cond_0
    invoke-static {}, Lcom/explorestack/protobuf/l1;->a()Lcom/explorestack/protobuf/l1;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/l1;->e(Ljava/lang/Object;)Lcom/explorestack/protobuf/q1;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/q1;->hashCode(Ljava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iput v0, p0, Lcom/explorestack/protobuf/a;->memoizedHashCode:I

    .line 19
    .line 20
    return v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-static {p0, v0}, Lcom/explorestack/protobuf/GeneratedMessageLite;->i(Lcom/explorestack/protobuf/GeneratedMessageLite;Z)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method protected j()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/l1;->a()Lcom/explorestack/protobuf/l1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/l1;->e(Ljava/lang/Object;)Lcom/explorestack/protobuf/q1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0, p0}, Lcom/explorestack/protobuf/q1;->makeImmutable(Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public final k()Lcom/explorestack/protobuf/GeneratedMessageLite$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/GeneratedMessageLite;->d(Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/explorestack/protobuf/GeneratedMessageLite$a;

    .line 8
    .line 9
    return-object v0
.end method

.method public final n()Lcom/explorestack/protobuf/GeneratedMessageLite$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;->NEW_BUILDER:Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/GeneratedMessageLite;->d(Lcom/explorestack/protobuf/GeneratedMessageLite$MethodToInvoke;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/explorestack/protobuf/GeneratedMessageLite$a;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/GeneratedMessageLite$a;->l(Lcom/explorestack/protobuf/GeneratedMessageLite;)Lcom/explorestack/protobuf/GeneratedMessageLite$a;

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public bridge synthetic newBuilderForType()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite;->k()Lcom/explorestack/protobuf/GeneratedMessageLite$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method setMemoizedSerializedSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/GeneratedMessageLite;->b:I

    .line 2
    .line 3
    return-void
.end method

.method public bridge synthetic toBuilder()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageLite;->n()Lcom/explorestack/protobuf/GeneratedMessageLite$a;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p0, v0}, Lcom/explorestack/protobuf/a1;->e(Lcom/explorestack/protobuf/MessageLite;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public writeTo(Lcom/explorestack/protobuf/CodedOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/l1;->a()Lcom/explorestack/protobuf/l1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/explorestack/protobuf/l1;->e(Ljava/lang/Object;)Lcom/explorestack/protobuf/q1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1}, Lcom/explorestack/protobuf/p;->g(Lcom/explorestack/protobuf/CodedOutputStream;)Lcom/explorestack/protobuf/p;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {v0, p0, p1}, Lcom/explorestack/protobuf/q1;->b(Ljava/lang/Object;Lcom/explorestack/protobuf/Writer;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
