.class public final Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$b;
.source "PluginProtos.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$b<",
        "Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;",
        ">;",
        "Lcom/explorestack/protobuf/MessageOrBuilder;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/Object;

.field private c:J

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;",
            ">;"
        }
    .end annotation
.end field

.field private e:Lcom/explorestack/protobuf/p1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/p1<",
            "Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;",
            "Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;",
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

    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->b:Ljava/lang/Object;

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->d:Ljava/util/List;

    .line 6
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    .line 8
    const-string p1, ""

    iput-object p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->b:Ljava/lang/Object;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->d:Ljava/util/List;

    .line 10
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lcom/explorestack/protobuf/compiler/PluginProtos$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/compiler/PluginProtos$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;-><init>()V

    return-void
.end method

.method private j()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->a:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->d:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->d:Ljava/util/List;

    .line 15
    .line 16
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->a:I

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x4

    .line 19
    .line 20
    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->a:I

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
            "Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File;",
            "Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$File$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->e:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/p1;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->d:Ljava/util/List;

    .line 8
    .line 9
    iget v2, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->a:I

    .line 10
    .line 11
    and-int/lit8 v2, v2, 0x4

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
    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->e:Lcom/explorestack/protobuf/p1;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->d:Ljava/util/List;

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->e:Lcom/explorestack/protobuf/p1;

    .line 35
    .line 36
    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->l()Lcom/explorestack/protobuf/p1;

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->a(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->a(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->c()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->b()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->b()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->c()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->c()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;
    .locals 5

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lcom/explorestack/protobuf/compiler/PluginProtos$a;)V

    .line 5
    .line 6
    .line 7
    iget v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->a:I

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
    iget-object v3, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->b:Ljava/lang/Object;

    .line 17
    .line 18
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->e(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    and-int/lit8 v1, v1, 0x2

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-wide v3, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->c:J

    .line 26
    .line 27
    invoke-static {v0, v3, v4}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->f(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;J)J

    .line 28
    .line 29
    .line 30
    or-int/lit8 v2, v2, 0x2

    .line 31
    .line 32
    :cond_1
    iget-object v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->e:Lcom/explorestack/protobuf/p1;

    .line 33
    .line 34
    if-nez v1, :cond_3

    .line 35
    .line 36
    iget v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->a:I

    .line 37
    .line 38
    and-int/lit8 v1, v1, 0x4

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    iget-object v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->d:Ljava/util/List;

    .line 43
    .line 44
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iput-object v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->d:Ljava/util/List;

    .line 49
    .line 50
    iget v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->a:I

    .line 51
    .line 52
    and-int/lit8 v1, v1, -0x5

    .line 53
    .line 54
    iput v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->a:I

    .line 55
    .line 56
    :cond_2
    iget-object v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->d:Ljava/util/List;

    .line 57
    .line 58
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->h(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;Ljava/util/List;)Ljava/util/List;

    .line 59
    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_3
    invoke-virtual {v1}, Lcom/explorestack/protobuf/p1;->f()Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->h(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;Ljava/util/List;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    :goto_1
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->i(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;I)I

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onBuilt()V

    .line 73
    .line 74
    .line 75
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->e()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->e()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->e()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->e()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->f(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->f(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->g(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->g(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->g(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->i()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->i()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->i()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->i()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/a$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->i()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->i()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->b:Ljava/lang/Object;

    .line 7
    .line 8
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->a:I

    .line 9
    .line 10
    const-wide/16 v1, 0x0

    .line 11
    .line 12
    iput-wide v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->c:J

    .line 13
    .line 14
    and-int/lit8 v0, v0, -0x4

    .line 15
    .line 16
    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->a:I

    .line 17
    .line 18
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->e:Lcom/explorestack/protobuf/p1;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->d:Ljava/util/List;

    .line 27
    .line 28
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->a:I

    .line 29
    .line 30
    and-int/lit8 v0, v0, -0x5

    .line 31
    .line 32
    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->a:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->g()V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-object p0
.end method

.method public f(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public g(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->k()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->k()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos;->a()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public i()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    .line 6
    .line 7
    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos;->b()Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    .line 6
    .line 7
    const-class v2, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

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
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public k()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->k()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public m(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;
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
    sget-object v1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->g:Lcom/explorestack/protobuf/j1;

    .line 3
    .line 4
    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/j1;->parsePartialFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->o(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

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
    check-cast p2, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;
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
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->o(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    .line 35
    .line 36
    .line 37
    :cond_1
    throw p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->n(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->m(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->n(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->m(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->m(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->m(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->p(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->p(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->p(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    move-result-object p1

    return-object p1
.end method

.method public n(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->o(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

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

.method public o(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;
    .locals 2

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->k()Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;

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
    invoke-virtual {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->hasError()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->a:I

    .line 15
    .line 16
    or-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->a:I

    .line 19
    .line 20
    invoke-static {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->d(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->b:Ljava/lang/Object;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->u()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->t()J

    .line 36
    .line 37
    .line 38
    move-result-wide v0

    .line 39
    invoke-virtual {p0, v0, v1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->s(J)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    .line 40
    .line 41
    .line 42
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->e:Lcom/explorestack/protobuf/p1;

    .line 43
    .line 44
    if-nez v0, :cond_4

    .line 45
    .line 46
    invoke-static {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->g(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;)Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-nez v0, :cond_7

    .line 55
    .line 56
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->d:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_3

    .line 63
    .line 64
    invoke-static {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->g(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->d:Ljava/util/List;

    .line 69
    .line 70
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->a:I

    .line 71
    .line 72
    and-int/lit8 v0, v0, -0x5

    .line 73
    .line 74
    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->a:I

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_3
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->j()V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->d:Ljava/util/List;

    .line 81
    .line 82
    invoke-static {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->g(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;)Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 87
    .line 88
    .line 89
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_4
    invoke-static {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->g(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-nez v0, :cond_7

    .line 102
    .line 103
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->e:Lcom/explorestack/protobuf/p1;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->t()Z

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_6

    .line 110
    .line 111
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->e:Lcom/explorestack/protobuf/p1;

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->h()V

    .line 114
    .line 115
    .line 116
    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->e:Lcom/explorestack/protobuf/p1;

    .line 118
    .line 119
    invoke-static {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->g(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;)Ljava/util/List;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iput-object v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->d:Ljava/util/List;

    .line 124
    .line 125
    iget v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->a:I

    .line 126
    .line 127
    and-int/lit8 v1, v1, -0x5

    .line 128
    .line 129
    iput v1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->a:I

    .line 130
    .line 131
    invoke-static {}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->access$5000()Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_5

    .line 136
    .line 137
    invoke-direct {p0}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->l()Lcom/explorestack/protobuf/p1;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    :cond_5
    iput-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->e:Lcom/explorestack/protobuf/p1;

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_6
    iget-object v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->e:Lcom/explorestack/protobuf/p1;

    .line 145
    .line 146
    invoke-static {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->g(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;)Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/p1;->a(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/p1;

    .line 151
    .line 152
    .line 153
    :cond_7
    :goto_1
    invoke-static {p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;->j(Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse;)Lcom/explorestack/protobuf/j2;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->p(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 161
    .line 162
    .line 163
    return-object p0
.end method

.method public final p(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public q(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public r(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public s(J)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->a:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->a:I

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->c:J

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->q(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->q(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->r(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->r(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->t(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;->t(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    move-result-object p1

    return-object p1
.end method

.method public final t(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/compiler/PluginProtos$CodeGeneratorResponse$b;

    .line 6
    .line 7
    return-object p1
.end method
