.class final Lcom/explorestack/protobuf/x;
.super Ljava/lang/Object;
.source "ExtensionRegistryFactory.java"


# static fields
.field static final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/x;->c()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/explorestack/protobuf/x;->a:Ljava/lang/Class;

    .line 6
    .line 7
    return-void
.end method

.method public static a()Lcom/explorestack/protobuf/y;
    .locals 1

    .line 1
    const-string v0, "getEmptyRegistry"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/explorestack/protobuf/x;->b(Ljava/lang/String;)Lcom/explorestack/protobuf/y;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    sget-object v0, Lcom/explorestack/protobuf/y;->e:Lcom/explorestack/protobuf/y;

    .line 11
    .line 12
    :goto_0
    return-object v0
.end method

.method private static final b(Ljava/lang/String;)Lcom/explorestack/protobuf/y;
    .locals 4

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/x;->a:Ljava/lang/Class;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    const/4 v2, 0x0

    .line 8
    :try_start_0
    new-array v3, v2, [Ljava/lang/Class;

    .line 9
    .line 10
    invoke-virtual {v0, p0, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    new-array v0, v2, [Ljava/lang/Object;

    .line 15
    .line 16
    invoke-virtual {p0, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Lcom/explorestack/protobuf/y;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    .line 22
    return-object p0

    .line 23
    :catch_0
    return-object v1
.end method

.method static c()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1
    :try_start_0
    const-class v0, Lcom/explorestack/protobuf/w;

    .line 2
    .line 3
    sget-object v1, Lcom/explorestack/protobuf/w;->j:Lcom/explorestack/protobuf/w;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :catch_0
    const/4 v0, 0x0

    .line 7
    return-object v0
.end method
