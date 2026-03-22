.class public Lcom/explorestack/protobuf/w;
.super Lcom/explorestack/protobuf/y;
.source "ExtensionRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/protobuf/w$a;,
        Lcom/explorestack/protobuf/w$b;
    }
.end annotation


# static fields
.field static final j:Lcom/explorestack/protobuf/w;


# instance fields
.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/explorestack/protobuf/w$b;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/explorestack/protobuf/w$b;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/explorestack/protobuf/w$a;",
            "Lcom/explorestack/protobuf/w$b;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/explorestack/protobuf/w$a;",
            "Lcom/explorestack/protobuf/w$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/w;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/w;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/explorestack/protobuf/w;->j:Lcom/explorestack/protobuf/w;

    .line 8
    .line 9
    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/explorestack/protobuf/y;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/explorestack/protobuf/w;->f:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/explorestack/protobuf/w;->g:Ljava/util/Map;

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/explorestack/protobuf/w;->h:Ljava/util/Map;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/explorestack/protobuf/w;->i:Ljava/util/Map;

    return-void
.end method

.method constructor <init>(Z)V
    .locals 0

    .line 6
    sget-object p1, Lcom/explorestack/protobuf/y;->e:Lcom/explorestack/protobuf/y;

    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/y;-><init>(Lcom/explorestack/protobuf/y;)V

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/w;->f:Ljava/util/Map;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/w;->g:Ljava/util/Map;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/w;->h:Ljava/util/Map;

    .line 10
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/w;->i:Ljava/util/Map;

    return-void
.end method

.method public static g()Lcom/explorestack/protobuf/w;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/w;->j:Lcom/explorestack/protobuf/w;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public d(Lcom/explorestack/protobuf/Descriptors$Descriptor;I)Lcom/explorestack/protobuf/w$b;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/w;->f(Lcom/explorestack/protobuf/Descriptors$Descriptor;I)Lcom/explorestack/protobuf/w$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public e(Ljava/lang/String;)Lcom/explorestack/protobuf/w$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/w;->f:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/explorestack/protobuf/w$b;

    .line 8
    .line 9
    return-object p1
.end method

.method public f(Lcom/explorestack/protobuf/Descriptors$Descriptor;I)Lcom/explorestack/protobuf/w$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/w;->h:Ljava/util/Map;

    .line 2
    .line 3
    new-instance v1, Lcom/explorestack/protobuf/w$a;

    .line 4
    .line 5
    invoke-direct {v1, p1, p2}, Lcom/explorestack/protobuf/w$a;-><init>(Lcom/explorestack/protobuf/Descriptors$Descriptor;I)V

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Lcom/explorestack/protobuf/w$b;

    .line 13
    .line 14
    return-object p1
.end method
