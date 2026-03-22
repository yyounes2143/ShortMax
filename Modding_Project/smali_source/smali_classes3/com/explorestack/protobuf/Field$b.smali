.class public final Lcom/explorestack/protobuf/Field$b;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$b;
.source "Field.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$b<",
        "Lcom/explorestack/protobuf/Field$b;",
        ">;",
        "Lcom/explorestack/protobuf/MessageOrBuilder;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:Ljava/lang/Object;

.field private f:Ljava/lang/Object;

.field private g:I

.field private h:Z

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Option;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/explorestack/protobuf/p1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/p1<",
            "Lcom/explorestack/protobuf/Option;",
            "Lcom/explorestack/protobuf/Option$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/lang/Object;

.field private l:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/explorestack/protobuf/Field$b;->b:I

    .line 5
    iput v0, p0, Lcom/explorestack/protobuf/Field$b;->c:I

    .line 6
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/Field$b;->e:Ljava/lang/Object;

    .line 7
    iput-object v0, p0, Lcom/explorestack/protobuf/Field$b;->f:Ljava/lang/Object;

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/Field$b;->i:Ljava/util/List;

    .line 9
    iput-object v0, p0, Lcom/explorestack/protobuf/Field$b;->k:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/explorestack/protobuf/Field$b;->l:Ljava/lang/Object;

    .line 11
    invoke-direct {p0}, Lcom/explorestack/protobuf/Field$b;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/Field$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/explorestack/protobuf/Field$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V
    .locals 1

    .line 12
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/explorestack/protobuf/Field$b;->b:I

    .line 14
    iput p1, p0, Lcom/explorestack/protobuf/Field$b;->c:I

    .line 15
    const-string p1, ""

    iput-object p1, p0, Lcom/explorestack/protobuf/Field$b;->e:Ljava/lang/Object;

    .line 16
    iput-object p1, p0, Lcom/explorestack/protobuf/Field$b;->f:Ljava/lang/Object;

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/Field$b;->i:Ljava/util/List;

    .line 18
    iput-object p1, p0, Lcom/explorestack/protobuf/Field$b;->k:Ljava/lang/Object;

    .line 19
    iput-object p1, p0, Lcom/explorestack/protobuf/Field$b;->l:Ljava/lang/Object;

    .line 20
    invoke-direct {p0}, Lcom/explorestack/protobuf/Field$b;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lcom/explorestack/protobuf/Field$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Field$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    return-void
.end method

.method private j()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/Field$b;->a:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/explorestack/protobuf/Field$b;->i:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/explorestack/protobuf/Field$b;->i:Ljava/util/List;

    .line 15
    .line 16
    iget v0, p0, Lcom/explorestack/protobuf/Field$b;->a:I

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    iput v0, p0, Lcom/explorestack/protobuf/Field$b;->a:I

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
            "Lcom/explorestack/protobuf/Option;",
            "Lcom/explorestack/protobuf/Option$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$b;->j:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/p1;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/explorestack/protobuf/Field$b;->i:Ljava/util/List;

    .line 8
    .line 9
    iget v2, p0, Lcom/explorestack/protobuf/Field$b;->a:I

    .line 10
    .line 11
    const/4 v3, 0x1

    .line 12
    and-int/2addr v2, v3

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v3, 0x0

    .line 17
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$c;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->isClean()Z

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    invoke-direct {v0, v1, v3, v2, v4}, Lcom/explorestack/protobuf/p1;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/explorestack/protobuf/Field$b;->j:Lcom/explorestack/protobuf/p1;

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/explorestack/protobuf/Field$b;->i:Ljava/util/List;

    .line 32
    .line 33
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$b;->j:Lcom/explorestack/protobuf/p1;

    .line 34
    .line 35
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
    invoke-direct {p0}, Lcom/explorestack/protobuf/Field$b;->l()Lcom/explorestack/protobuf/p1;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Field$b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/Field$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Field$b;->a(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Field$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Field$b;->a(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Field$b;

    move-result-object p1

    return-object p1
.end method

.method public b()Lcom/explorestack/protobuf/Field;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$b;->c()Lcom/explorestack/protobuf/Field;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Field;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$b;->b()Lcom/explorestack/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$b;->b()Lcom/explorestack/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$b;->c()Lcom/explorestack/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$b;->c()Lcom/explorestack/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/explorestack/protobuf/Field;
    .locals 2

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/Field;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/Field;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$b;Lcom/explorestack/protobuf/Field$a;)V

    .line 5
    .line 6
    .line 7
    iget v1, p0, Lcom/explorestack/protobuf/Field$b;->b:I

    .line 8
    .line 9
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Field;->j(Lcom/explorestack/protobuf/Field;I)I

    .line 10
    .line 11
    .line 12
    iget v1, p0, Lcom/explorestack/protobuf/Field$b;->c:I

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Field;->n(Lcom/explorestack/protobuf/Field;I)I

    .line 15
    .line 16
    .line 17
    iget v1, p0, Lcom/explorestack/protobuf/Field$b;->d:I

    .line 18
    .line 19
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Field;->q(Lcom/explorestack/protobuf/Field;I)I

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Lcom/explorestack/protobuf/Field$b;->e:Ljava/lang/Object;

    .line 23
    .line 24
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Field;->s(Lcom/explorestack/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/explorestack/protobuf/Field$b;->f:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Field;->u(Lcom/explorestack/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    iget v1, p0, Lcom/explorestack/protobuf/Field$b;->g:I

    .line 33
    .line 34
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Field;->v(Lcom/explorestack/protobuf/Field;I)I

    .line 35
    .line 36
    .line 37
    iget-boolean v1, p0, Lcom/explorestack/protobuf/Field$b;->h:Z

    .line 38
    .line 39
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Field;->y(Lcom/explorestack/protobuf/Field;Z)Z

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/explorestack/protobuf/Field$b;->j:Lcom/explorestack/protobuf/p1;

    .line 43
    .line 44
    if-nez v1, :cond_1

    .line 45
    .line 46
    iget v1, p0, Lcom/explorestack/protobuf/Field$b;->a:I

    .line 47
    .line 48
    and-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    if-eqz v1, :cond_0

    .line 51
    .line 52
    iget-object v1, p0, Lcom/explorestack/protobuf/Field$b;->i:Ljava/util/List;

    .line 53
    .line 54
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iput-object v1, p0, Lcom/explorestack/protobuf/Field$b;->i:Ljava/util/List;

    .line 59
    .line 60
    iget v1, p0, Lcom/explorestack/protobuf/Field$b;->a:I

    .line 61
    .line 62
    and-int/lit8 v1, v1, -0x2

    .line 63
    .line 64
    iput v1, p0, Lcom/explorestack/protobuf/Field$b;->a:I

    .line 65
    .line 66
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/Field$b;->i:Ljava/util/List;

    .line 67
    .line 68
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Field;->d(Lcom/explorestack/protobuf/Field;Ljava/util/List;)Ljava/util/List;

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/p1;->f()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Field;->d(Lcom/explorestack/protobuf/Field;Ljava/util/List;)Ljava/util/List;

    .line 77
    .line 78
    .line 79
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/Field$b;->k:Ljava/lang/Object;

    .line 80
    .line 81
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Field;->f(Lcom/explorestack/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    iget-object v1, p0, Lcom/explorestack/protobuf/Field$b;->l:Ljava/lang/Object;

    .line 85
    .line 86
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/Field;->h(Lcom/explorestack/protobuf/Field;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onBuilt()V

    .line 90
    .line 91
    .line 92
    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$b;->e()Lcom/explorestack/protobuf/Field$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$b;->e()Lcom/explorestack/protobuf/Field$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$b;->e()Lcom/explorestack/protobuf/Field$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$b;->e()Lcom/explorestack/protobuf/Field$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$b;->f(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Field$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$b;->f(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Field$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$b;->g(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Field$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$b;->g(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Field$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$b;->g(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Field$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$b;->i()Lcom/explorestack/protobuf/Field$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$b;->i()Lcom/explorestack/protobuf/Field$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$b;->i()Lcom/explorestack/protobuf/Field$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$b;->i()Lcom/explorestack/protobuf/Field$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/a$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$b;->i()Lcom/explorestack/protobuf/Field$b;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$b;->i()Lcom/explorestack/protobuf/Field$b;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/explorestack/protobuf/Field$b;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/explorestack/protobuf/Field$b;->b:I

    .line 6
    .line 7
    iput v0, p0, Lcom/explorestack/protobuf/Field$b;->c:I

    .line 8
    .line 9
    iput v0, p0, Lcom/explorestack/protobuf/Field$b;->d:I

    .line 10
    .line 11
    const-string v1, ""

    .line 12
    .line 13
    iput-object v1, p0, Lcom/explorestack/protobuf/Field$b;->e:Ljava/lang/Object;

    .line 14
    .line 15
    iput-object v1, p0, Lcom/explorestack/protobuf/Field$b;->f:Ljava/lang/Object;

    .line 16
    .line 17
    iput v0, p0, Lcom/explorestack/protobuf/Field$b;->g:I

    .line 18
    .line 19
    iput-boolean v0, p0, Lcom/explorestack/protobuf/Field$b;->h:Z

    .line 20
    .line 21
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$b;->j:Lcom/explorestack/protobuf/p1;

    .line 22
    .line 23
    if-nez v0, :cond_0

    .line 24
    .line 25
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/explorestack/protobuf/Field$b;->i:Ljava/util/List;

    .line 30
    .line 31
    iget v0, p0, Lcom/explorestack/protobuf/Field$b;->a:I

    .line 32
    .line 33
    and-int/lit8 v0, v0, -0x2

    .line 34
    .line 35
    iput v0, p0, Lcom/explorestack/protobuf/Field$b;->a:I

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->g()V

    .line 39
    .line 40
    .line 41
    :goto_0
    iput-object v1, p0, Lcom/explorestack/protobuf/Field$b;->k:Ljava/lang/Object;

    .line 42
    .line 43
    iput-object v1, p0, Lcom/explorestack/protobuf/Field$b;->l:Ljava/lang/Object;

    .line 44
    .line 45
    return-object p0
.end method

.method public f(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Field$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/Field$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public g(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Field$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/Field$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$b;->k()Lcom/explorestack/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Field$b;->k()Lcom/explorestack/protobuf/Field;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/e2;->c:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Lcom/explorestack/protobuf/Field$b;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/explorestack/protobuf/Field$b;

    .line 6
    .line 7
    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    sget-object v0, Lcom/explorestack/protobuf/e2;->d:Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    const-class v1, Lcom/explorestack/protobuf/Field;

    .line 4
    .line 5
    const-class v2, Lcom/explorestack/protobuf/Field$b;

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$e;->d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public k()Lcom/explorestack/protobuf/Field;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/Field;->A()Lcom/explorestack/protobuf/Field;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public m(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Field$b;
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
    invoke-static {}, Lcom/explorestack/protobuf/Field;->access$1300()Lcom/explorestack/protobuf/j1;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/j1;->parsePartialFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/explorestack/protobuf/Field;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$b;->n(Lcom/explorestack/protobuf/Field;)Lcom/explorestack/protobuf/Field$b;

    .line 15
    .line 16
    .line 17
    :cond_0
    return-object p0

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p1

    .line 21
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    check-cast p2, Lcom/explorestack/protobuf/Field;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 26
    .line 27
    :try_start_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 32
    :catchall_1
    move-exception p1

    .line 33
    move-object v0, p2

    .line 34
    :goto_0
    if-eqz v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Field$b;->n(Lcom/explorestack/protobuf/Field;)Lcom/explorestack/protobuf/Field$b;

    .line 37
    .line 38
    .line 39
    :cond_1
    throw p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$b;->o(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Field$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Field$b;->m(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Field$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$b;->o(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Field$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Field$b;->m(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Field$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Field$b;->m(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Field$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Field$b;->m(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/Field$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$b;->p(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Field$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$b;->p(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Field$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$b;->p(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Field$b;

    move-result-object p1

    return-object p1
.end method

.method public n(Lcom/explorestack/protobuf/Field;)Lcom/explorestack/protobuf/Field$b;
    .locals 2

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/Field;->A()Lcom/explorestack/protobuf/Field;

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
    invoke-static {p1}, Lcom/explorestack/protobuf/Field;->i(Lcom/explorestack/protobuf/Field;)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->G()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Field$b;->s(I)Lcom/explorestack/protobuf/Field$b;

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-static {p1}, Lcom/explorestack/protobuf/Field;->k(Lcom/explorestack/protobuf/Field;)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->z()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Field$b;->q(I)Lcom/explorestack/protobuf/Field$b;

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->H()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->H()I

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Field$b;->t(I)Lcom/explorestack/protobuf/Field$b;

    .line 45
    .line 46
    .line 47
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_4

    .line 56
    .line 57
    invoke-static {p1}, Lcom/explorestack/protobuf/Field;->r(Lcom/explorestack/protobuf/Field;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/explorestack/protobuf/Field$b;->e:Ljava/lang/Object;

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 64
    .line 65
    .line 66
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->getTypeUrl()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-nez v0, :cond_5

    .line 75
    .line 76
    invoke-static {p1}, Lcom/explorestack/protobuf/Field;->t(Lcom/explorestack/protobuf/Field;)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/explorestack/protobuf/Field$b;->f:Ljava/lang/Object;

    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 83
    .line 84
    .line 85
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->I()I

    .line 86
    .line 87
    .line 88
    move-result v0

    .line 89
    if-eqz v0, :cond_6

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->I()I

    .line 92
    .line 93
    .line 94
    move-result v0

    .line 95
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Field$b;->u(I)Lcom/explorestack/protobuf/Field$b;

    .line 96
    .line 97
    .line 98
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->L()Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eqz v0, :cond_7

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->L()Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/Field$b;->v(Z)Lcom/explorestack/protobuf/Field$b;

    .line 109
    .line 110
    .line 111
    :cond_7
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$b;->j:Lcom/explorestack/protobuf/p1;

    .line 112
    .line 113
    if-nez v0, :cond_9

    .line 114
    .line 115
    invoke-static {p1}, Lcom/explorestack/protobuf/Field;->b(Lcom/explorestack/protobuf/Field;)Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-nez v0, :cond_c

    .line 124
    .line 125
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$b;->i:Ljava/util/List;

    .line 126
    .line 127
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-eqz v0, :cond_8

    .line 132
    .line 133
    invoke-static {p1}, Lcom/explorestack/protobuf/Field;->b(Lcom/explorestack/protobuf/Field;)Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    iput-object v0, p0, Lcom/explorestack/protobuf/Field$b;->i:Ljava/util/List;

    .line 138
    .line 139
    iget v0, p0, Lcom/explorestack/protobuf/Field$b;->a:I

    .line 140
    .line 141
    and-int/lit8 v0, v0, -0x2

    .line 142
    .line 143
    iput v0, p0, Lcom/explorestack/protobuf/Field$b;->a:I

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_8
    invoke-direct {p0}, Lcom/explorestack/protobuf/Field$b;->j()V

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$b;->i:Ljava/util/List;

    .line 150
    .line 151
    invoke-static {p1}, Lcom/explorestack/protobuf/Field;->b(Lcom/explorestack/protobuf/Field;)Ljava/util/List;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 156
    .line 157
    .line 158
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_9
    invoke-static {p1}, Lcom/explorestack/protobuf/Field;->b(Lcom/explorestack/protobuf/Field;)Ljava/util/List;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-nez v0, :cond_c

    .line 171
    .line 172
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$b;->j:Lcom/explorestack/protobuf/p1;

    .line 173
    .line 174
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->t()Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_b

    .line 179
    .line 180
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$b;->j:Lcom/explorestack/protobuf/p1;

    .line 181
    .line 182
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->h()V

    .line 183
    .line 184
    .line 185
    const/4 v0, 0x0

    .line 186
    iput-object v0, p0, Lcom/explorestack/protobuf/Field$b;->j:Lcom/explorestack/protobuf/p1;

    .line 187
    .line 188
    invoke-static {p1}, Lcom/explorestack/protobuf/Field;->b(Lcom/explorestack/protobuf/Field;)Ljava/util/List;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    iput-object v1, p0, Lcom/explorestack/protobuf/Field$b;->i:Ljava/util/List;

    .line 193
    .line 194
    iget v1, p0, Lcom/explorestack/protobuf/Field$b;->a:I

    .line 195
    .line 196
    and-int/lit8 v1, v1, -0x2

    .line 197
    .line 198
    iput v1, p0, Lcom/explorestack/protobuf/Field$b;->a:I

    .line 199
    .line 200
    sget-boolean v1, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 201
    .line 202
    if-eqz v1, :cond_a

    .line 203
    .line 204
    invoke-direct {p0}, Lcom/explorestack/protobuf/Field$b;->l()Lcom/explorestack/protobuf/p1;

    .line 205
    .line 206
    .line 207
    move-result-object v0

    .line 208
    :cond_a
    iput-object v0, p0, Lcom/explorestack/protobuf/Field$b;->j:Lcom/explorestack/protobuf/p1;

    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_b
    iget-object v0, p0, Lcom/explorestack/protobuf/Field$b;->j:Lcom/explorestack/protobuf/p1;

    .line 212
    .line 213
    invoke-static {p1}, Lcom/explorestack/protobuf/Field;->b(Lcom/explorestack/protobuf/Field;)Ljava/util/List;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/p1;->a(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/p1;

    .line 218
    .line 219
    .line 220
    :cond_c
    :goto_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->E()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 225
    .line 226
    .line 227
    move-result v0

    .line 228
    if-nez v0, :cond_d

    .line 229
    .line 230
    invoke-static {p1}, Lcom/explorestack/protobuf/Field;->e(Lcom/explorestack/protobuf/Field;)Ljava/lang/Object;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    iput-object v0, p0, Lcom/explorestack/protobuf/Field$b;->k:Ljava/lang/Object;

    .line 235
    .line 236
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 237
    .line 238
    .line 239
    :cond_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Field;->C()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v0

    .line 243
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    if-nez v0, :cond_e

    .line 248
    .line 249
    invoke-static {p1}, Lcom/explorestack/protobuf/Field;->g(Lcom/explorestack/protobuf/Field;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v0

    .line 253
    iput-object v0, p0, Lcom/explorestack/protobuf/Field$b;->l:Ljava/lang/Object;

    .line 254
    .line 255
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 256
    .line 257
    .line 258
    :cond_e
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 259
    .line 260
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$b;->p(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Field$b;

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 264
    .line 265
    .line 266
    return-object p0
.end method

.method public o(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Field$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/explorestack/protobuf/Field;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/explorestack/protobuf/Field;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$b;->n(Lcom/explorestack/protobuf/Field;)Lcom/explorestack/protobuf/Field$b;

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

.method public final p(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Field$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/Field$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public q(I)Lcom/explorestack/protobuf/Field$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/Field$b;->c:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public r(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Field$b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/Field$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public s(I)Lcom/explorestack/protobuf/Field$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/Field$b;->b:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Field$b;->r(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Field$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/Field$b;->r(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Field$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Field$b;->w(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Field$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/Field$b;->w(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Field$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$b;->x(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Field$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/Field$b;->x(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Field$b;

    move-result-object p1

    return-object p1
.end method

.method public t(I)Lcom/explorestack/protobuf/Field$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/Field$b;->d:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public u(I)Lcom/explorestack/protobuf/Field$b;
    .locals 0

    .line 1
    iput p1, p0, Lcom/explorestack/protobuf/Field$b;->g:I

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public v(Z)Lcom/explorestack/protobuf/Field$b;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/explorestack/protobuf/Field$b;->h:Z

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public w(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Field$b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/Field$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public final x(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Field$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/Field$b;

    .line 6
    .line 7
    return-object p1
.end method
