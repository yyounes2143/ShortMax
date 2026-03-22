.class public Lcom/explorestack/protobuf/y;
.super Ljava/lang/Object;
.source "ExtensionRegistryLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/y$a;
    }
.end annotation


# static fields
.field private static volatile b:Z = false

.field private static c:Z = true

.field private static volatile d:Lcom/explorestack/protobuf/y;

.field static final e:Lcom/explorestack/protobuf/y;


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/explorestack/protobuf/y$a;",
            "Lcom/explorestack/protobuf/GeneratedMessageLite$d<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/y;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/y;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/explorestack/protobuf/y;->e:Lcom/explorestack/protobuf/y;

    .line 8
    .line 9
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/explorestack/protobuf/y;->a:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Lcom/explorestack/protobuf/y;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    sget-object v0, Lcom/explorestack/protobuf/y;->e:Lcom/explorestack/protobuf/y;

    if-ne p1, v0, :cond_0

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/y;->a:Ljava/util/Map;

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p1, Lcom/explorestack/protobuf/y;->a:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/y;->a:Ljava/util/Map;

    :goto_0
    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/y;->a:Ljava/util/Map;

    return-void
.end method

.method public static b()Lcom/explorestack/protobuf/y;
    .locals 2

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/y;->d:Lcom/explorestack/protobuf/y;

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    const-class v1, Lcom/explorestack/protobuf/y;

    .line 6
    .line 7
    monitor-enter v1

    .line 8
    :try_start_0
    sget-object v0, Lcom/explorestack/protobuf/y;->d:Lcom/explorestack/protobuf/y;

    .line 9
    .line 10
    if-nez v0, :cond_1

    .line 11
    .line 12
    sget-boolean v0, Lcom/explorestack/protobuf/y;->c:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-static {}, Lcom/explorestack/protobuf/x;->a()Lcom/explorestack/protobuf/y;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    sget-object v0, Lcom/explorestack/protobuf/y;->e:Lcom/explorestack/protobuf/y;

    .line 24
    .line 25
    :goto_0
    sput-object v0, Lcom/explorestack/protobuf/y;->d:Lcom/explorestack/protobuf/y;

    .line 26
    .line 27
    :cond_1
    monitor-exit v1

    .line 28
    goto :goto_2

    .line 29
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    throw v0

    .line 31
    :cond_2
    :goto_2
    return-object v0
.end method

.method public static c()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/y;->b:Z

    .line 2
    .line 3
    return v0
.end method


# virtual methods
.method public a(Lcom/explorestack/protobuf/MessageLite;I)Lcom/explorestack/protobuf/GeneratedMessageLite$d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/explorestack/protobuf/MessageLite;",
            ">(TContainingType;I)",
            "Lcom/explorestack/protobuf/GeneratedMessageLite$d<",
            "TContainingType;*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/y;->a:Ljava/util/Map;

    .line 2
    .line 3
    new-instance v1, Lcom/explorestack/protobuf/y$a;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2}, Lcom/explorestack/protobuf/y$a;-><init>(Ljava/lang/Object;I)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/explorestack/protobuf/GeneratedMessageLite$d;

    .line 13
    .line 14
    return-object p1
.end method
