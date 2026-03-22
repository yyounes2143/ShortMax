.class public final Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$b;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$b<",
        "Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;",
        ">;",
        "Lcom/explorestack/protobuf/MessageOrBuilder;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/explorestack/protobuf/p1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/p1<",
            "Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;",
            "Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

.field private f:Lcom/explorestack/protobuf/t1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/t1<",
            "Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;",
            "Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->b:Ljava/lang/Object;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->c:Ljava/util/List;

    .line 6
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    .line 8
    const-string p1, ""

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->b:Ljava/lang/Object;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->c:Ljava/util/List;

    .line 10
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lcom/explorestack/protobuf/DescriptorProtos$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method private ensureMethodIsMutable()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->a:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->c:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->c:Ljava/util/List;

    .line 15
    .line 16
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->a:I

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x2

    .line 19
    .line 20
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->a:I

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private l()Lcom/explorestack/protobuf/p1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/p1<",
            "Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;",
            "Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->d:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/p1;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->c:Ljava/util/List;

    .line 8
    .line 9
    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->a:I

    .line 10
    .line 11
    and-int/lit8 v2, v2, 0x2

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v2, 0x0

    .line 18
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$c;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->isClean()Z

    .line 23
    .line 24
    .line 25
    move-result v4

    .line 26
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/p1;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->d:Lcom/explorestack/protobuf/p1;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->c:Ljava/util/List;

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->d:Lcom/explorestack/protobuf/p1;

    .line 35
    .line 36
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->l()Lcom/explorestack/protobuf/p1;

    .line 6
    .line 7
    .line 8
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->n()Lcom/explorestack/protobuf/t1;

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private n()Lcom/explorestack/protobuf/t1;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/t1<",
            "Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;",
            "Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->f:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/t1;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->m()Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$c;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->isClean()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/t1;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->f:Lcom/explorestack/protobuf/t1;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->e:Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->f:Lcom/explorestack/protobuf/t1;

    .line 28
    .line 29
    return-object v0
.end method


# virtual methods
.method public a(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->a(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->a(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->c()Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->isInitialized()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    throw v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->b()Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->b()Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->c()Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->c()Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 4

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lcom/explorestack/protobuf/DescriptorProtos$a;)V

    .line 5
    .line 6
    .line 7
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->a:I

    .line 8
    .line 9
    and-int/lit8 v2, v1, 0x1

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v2, 0x0

    .line 16
    :goto_0
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->b:Ljava/lang/Object;

    .line 17
    .line 18
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->d(Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->d:Lcom/explorestack/protobuf/p1;

    .line 22
    .line 23
    if-nez v3, :cond_2

    .line 24
    .line 25
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->a:I

    .line 26
    .line 27
    and-int/lit8 v3, v3, 0x2

    .line 28
    .line 29
    if-eqz v3, :cond_1

    .line 30
    .line 31
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->c:Ljava/util/List;

    .line 32
    .line 33
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iput-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->c:Ljava/util/List;

    .line 38
    .line 39
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->a:I

    .line 40
    .line 41
    and-int/lit8 v3, v3, -0x3

    .line 42
    .line 43
    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->a:I

    .line 44
    .line 45
    :cond_1
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->c:Ljava/util/List;

    .line 46
    .line 47
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->f(Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    invoke-virtual {v3}, Lcom/explorestack/protobuf/p1;->f()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->f(Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;Ljava/util/List;)Ljava/util/List;

    .line 56
    .line 57
    .line 58
    :goto_1
    and-int/lit8 v1, v1, 0x4

    .line 59
    .line 60
    if-eqz v1, :cond_4

    .line 61
    .line 62
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->f:Lcom/explorestack/protobuf/t1;

    .line 63
    .line 64
    if-nez v1, :cond_3

    .line 65
    .line 66
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->e:Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    .line 67
    .line 68
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->g(Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_3
    invoke-virtual {v1}, Lcom/explorestack/protobuf/t1;->a()Lcom/explorestack/protobuf/AbstractMessage;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    check-cast v1, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    .line 77
    .line 78
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->g(Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    .line 79
    .line 80
    .line 81
    :goto_2
    or-int/lit8 v2, v2, 0x2

    .line 82
    .line 83
    :cond_4
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->h(Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;I)I

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onBuilt()V

    .line 87
    .line 88
    .line 89
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->e()Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->e()Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->e()Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->e()Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->f(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->f(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->g(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->g(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->g(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->i()Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->i()Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->i()Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->i()Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/a$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->i()Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->i()Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->a:I

    .line 9
    .line 10
    and-int/lit8 v0, v0, -0x2

    .line 11
    .line 12
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->a:I

    .line 13
    .line 14
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->d:Lcom/explorestack/protobuf/p1;

    .line 15
    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->c:Ljava/util/List;

    .line 23
    .line 24
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->a:I

    .line 25
    .line 26
    and-int/lit8 v0, v0, -0x3

    .line 27
    .line 28
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->a:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->g()V

    .line 32
    .line 33
    .line 34
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->f:Lcom/explorestack/protobuf/t1;

    .line 35
    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->e:Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->b()Lcom/explorestack/protobuf/t1;

    .line 43
    .line 44
    .line 45
    :goto_1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->a:I

    .line 46
    .line 47
    and-int/lit8 v0, v0, -0x5

    .line 48
    .line 49
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->a:I

    .line 50
    .line 51
    return-object p0
.end method

.method public f(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public g(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->j()Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->j()Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->c()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public getMethodCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->d:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->c:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->m()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    return v0
.end method

.method public i()Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    .line 6
    .line 7
    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->d()Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    .line 6
    .line 7
    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final isInitialized()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->getMethodCount()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->k(I)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;->isInitialized()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    return v0

    .line 20
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->o()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->m()Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->isInitialized()Z

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    return v0

    .line 40
    :cond_2
    const/4 v0, 0x1

    .line 41
    return v0
.end method

.method public j()Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->i()Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public k(I)Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->d:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->c:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 12
    .line 13
    return-object p1

    .line 14
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/p1;->n(I)Lcom/explorestack/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$MethodDescriptorProto;

    .line 19
    .line 20
    return-object p1
.end method

.method public m()Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->f:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->e:Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->q()Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    return-object v0

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/t1;->e()Lcom/explorestack/protobuf/AbstractMessage;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    .line 19
    .line 20
    return-object v0
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->r(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->p(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->r(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->p(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->p(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/a$a;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->p(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->t(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->t(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->t(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public o()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->a:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public p(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->g:Lcom/explorestack/protobuf/j1;

    .line 3
    .line 4
    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/j1;->parsePartialFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->q(Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    .line 13
    .line 14
    .line 15
    :cond_0
    return-object p0

    .line 16
    :catchall_0
    move-exception p1

    .line 17
    goto :goto_0

    .line 18
    :catch_0
    move-exception p1

    .line 19
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    check-cast p2, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    :try_start_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 30
    :catchall_1
    move-exception p1

    .line 31
    move-object v0, p2

    .line 32
    :goto_0
    if-eqz v0, :cond_1

    .line 33
    .line 34
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->q(Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    .line 35
    .line 36
    .line 37
    :cond_1
    throw p1
.end method

.method public q(Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;
    .locals 2

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->i()Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->hasName()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->a:I

    .line 15
    .line 16
    or-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->a:I

    .line 19
    .line 20
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->b(Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->b:Ljava/lang/Object;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->d:Lcom/explorestack/protobuf/p1;

    .line 30
    .line 31
    if-nez v0, :cond_3

    .line 32
    .line 33
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->e(Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;)Ljava/util/List;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_6

    .line 42
    .line 43
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->c:Ljava/util/List;

    .line 44
    .line 45
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    .line 51
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->e(Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->c:Ljava/util/List;

    .line 56
    .line 57
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->a:I

    .line 58
    .line 59
    and-int/lit8 v0, v0, -0x3

    .line 60
    .line 61
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->a:I

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->ensureMethodIsMutable()V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->c:Ljava/util/List;

    .line 68
    .line 69
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->e(Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;)Ljava/util/List;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    .line 75
    .line 76
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->e(Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;)Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-nez v0, :cond_6

    .line 89
    .line 90
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->d:Lcom/explorestack/protobuf/p1;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->t()Z

    .line 93
    .line 94
    .line 95
    move-result v0

    .line 96
    if-eqz v0, :cond_5

    .line 97
    .line 98
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->d:Lcom/explorestack/protobuf/p1;

    .line 99
    .line 100
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->h()V

    .line 101
    .line 102
    .line 103
    const/4 v0, 0x0

    .line 104
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->d:Lcom/explorestack/protobuf/p1;

    .line 105
    .line 106
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->e(Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;)Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->c:Ljava/util/List;

    .line 111
    .line 112
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->a:I

    .line 113
    .line 114
    and-int/lit8 v1, v1, -0x3

    .line 115
    .line 116
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->a:I

    .line 117
    .line 118
    sget-boolean v1, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 119
    .line 120
    if-eqz v1, :cond_4

    .line 121
    .line 122
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->l()Lcom/explorestack/protobuf/p1;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    :cond_4
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->d:Lcom/explorestack/protobuf/p1;

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_5
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->d:Lcom/explorestack/protobuf/p1;

    .line 130
    .line 131
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->e(Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;)Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/p1;->a(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/p1;

    .line 136
    .line 137
    .line 138
    :cond_6
    :goto_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->q()Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    if-eqz v0, :cond_7

    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;->n()Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->s(Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    .line 149
    .line 150
    .line 151
    :cond_7
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 152
    .line 153
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->t(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 157
    .line 158
    .line 159
    return-object p0
.end method

.method public r(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->q(Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1

    .line 12
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/AbstractMessage$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    .line 13
    .line 14
    .line 15
    return-object p0
.end method

.method public s(Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->f:Lcom/explorestack/protobuf/t1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->a:I

    .line 6
    .line 7
    and-int/lit8 v0, v0, 0x4

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->e:Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->q()Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->e:Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;->A(Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions$b;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions$b;->A(Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions$b;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions$b;->p()Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->e:Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->e:Lcom/explorestack/protobuf/DescriptorProtos$ServiceOptions;

    .line 39
    .line 40
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/t1;->g(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/t1;

    .line 45
    .line 46
    .line 47
    :goto_1
    iget p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->a:I

    .line 48
    .line 49
    or-int/lit8 p1, p1, 0x4

    .line 50
    .line 51
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->a:I

    .line 52
    .line 53
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->u(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->u(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->v(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->v(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->w(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;->w(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    move-result-object p1

    return-object p1
.end method

.method public final t(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public u(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public v(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public final w(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$ServiceDescriptorProto$b;

    .line 6
    .line 7
    return-object p1
.end method
