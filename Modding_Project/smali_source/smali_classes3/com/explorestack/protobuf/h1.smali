.class final Lcom/explorestack/protobuf/h1;
.super Ljava/lang/Object;
.source "NewInstanceSchemas.java"


# static fields
.field private static final a:Lcom/explorestack/protobuf/e1;

.field private static final b:Lcom/explorestack/protobuf/e1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/h1;->c()Lcom/explorestack/protobuf/e1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/explorestack/protobuf/h1;->a:Lcom/explorestack/protobuf/e1;

    .line 6
    .line 7
    new-instance v0, Lcom/explorestack/protobuf/g1;

    .line 8
    .line 9
    invoke-direct {v0}, Lcom/explorestack/protobuf/g1;-><init>()V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/explorestack/protobuf/h1;->b:Lcom/explorestack/protobuf/e1;

    .line 13
    .line 14
    return-void
.end method

.method static a()Lcom/explorestack/protobuf/e1;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/h1;->a:Lcom/explorestack/protobuf/e1;

    .line 2
    .line 3
    return-object v0
.end method

.method static b()Lcom/explorestack/protobuf/e1;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/h1;->b:Lcom/explorestack/protobuf/e1;

    .line 2
    .line 3
    return-object v0
.end method

.method private static c()Lcom/explorestack/protobuf/e1;
    .locals 3

    .line 1
    :try_start_0
    const-class v0, Lcom/explorestack/protobuf/f1;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Class;

    .line 5
    .line 6
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-array v1, v1, [Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    check-cast v0, Lcom/explorestack/protobuf/e1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    return-object v0

    .line 19
    :catch_0
    const/4 v0, 0x0

    .line 20
    return-object v0
.end method
