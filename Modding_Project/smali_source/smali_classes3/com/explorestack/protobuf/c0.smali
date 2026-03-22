.class final Lcom/explorestack/protobuf/c0;
.super Ljava/lang/Object;
.source "ExtensionSchemas.java"


# static fields
.field private static final a:Lcom/explorestack/protobuf/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/z<",
            "*>;"
        }
    .end annotation
.end field

.field private static final b:Lcom/explorestack/protobuf/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/z<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/b0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/explorestack/protobuf/b0;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/explorestack/protobuf/c0;->a:Lcom/explorestack/protobuf/z;

    .line 7
    .line 8
    invoke-static {}, Lcom/explorestack/protobuf/c0;->c()Lcom/explorestack/protobuf/z;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sput-object v0, Lcom/explorestack/protobuf/c0;->b:Lcom/explorestack/protobuf/z;

    .line 13
    .line 14
    return-void
.end method

.method static a()Lcom/explorestack/protobuf/z;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/z<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/c0;->b:Lcom/explorestack/protobuf/z;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    const-string v1, "Protobuf runtime is not correctly loaded."

    .line 9
    .line 10
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    throw v0
.end method

.method static b()Lcom/explorestack/protobuf/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/z<",
            "*>;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/c0;->a:Lcom/explorestack/protobuf/z;

    .line 2
    .line 3
    return-object v0
.end method

.method private static c()Lcom/explorestack/protobuf/z;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/z<",
            "*>;"
        }
    .end annotation

    .line 1
    :try_start_0
    const-class v0, Lcom/explorestack/protobuf/a0;

    .line 2
    .line 3
    sget v1, Lcom/explorestack/protobuf/a0;->b:I

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    new-array v2, v1, [Ljava/lang/Class;

    .line 7
    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/explorestack/protobuf/z;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    .line 20
    return-object v0

    .line 21
    :catch_0
    const/4 v0, 0x0

    .line 22
    return-object v0
.end method
