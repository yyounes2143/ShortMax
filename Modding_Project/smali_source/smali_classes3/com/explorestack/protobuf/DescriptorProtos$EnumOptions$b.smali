.class public final Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$d;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$d<",
        "Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;",
        "Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;",
        ">;",
        "Lcom/explorestack/protobuf/MessageOrBuilder;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:Z

.field private d:Z

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/explorestack/protobuf/p1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/p1<",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$d;-><init>()V

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->e:Ljava/util/List;

    .line 5
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$d;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->e:Ljava/util/List;

    .line 8
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lcom/explorestack/protobuf/DescriptorProtos$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    return-void
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
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->y()Lcom/explorestack/protobuf/p1;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private u()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->b:I

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
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->e:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->e:Ljava/util/List;

    .line 15
    .line 16
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->b:I

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x4

    .line 19
    .line 20
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->b:I

    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private y()Lcom/explorestack/protobuf/p1;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/p1<",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption$b;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->f:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/p1;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->e:Ljava/util/List;

    .line 8
    .line 9
    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->b:I

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
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->f:Lcom/explorestack/protobuf/p1;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->e:Ljava/util/List;

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->f:Lcom/explorestack/protobuf/p1;

    .line 35
    .line 36
    return-object v0
.end method


# virtual methods
.method public A(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;
    .locals 2

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->s()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

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
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->A()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->r()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->D(Z)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->B()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->u()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->E(Z)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    .line 32
    .line 33
    .line 34
    :cond_2
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->f:Lcom/explorestack/protobuf/p1;

    .line 35
    .line 36
    if-nez v0, :cond_4

    .line 37
    .line 38
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->k(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;)Ljava/util/List;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    if-nez v0, :cond_7

    .line 47
    .line 48
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->e:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->k(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;)Ljava/util/List;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->e:Ljava/util/List;

    .line 61
    .line 62
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->b:I

    .line 63
    .line 64
    and-int/lit8 v0, v0, -0x5

    .line 65
    .line 66
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->b:I

    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_3
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->u()V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->e:Ljava/util/List;

    .line 73
    .line 74
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->k(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;)Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 79
    .line 80
    .line 81
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_4
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->k(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;)Ljava/util/List;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-nez v0, :cond_7

    .line 94
    .line 95
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->f:Lcom/explorestack/protobuf/p1;

    .line 96
    .line 97
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->t()Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_6

    .line 102
    .line 103
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->f:Lcom/explorestack/protobuf/p1;

    .line 104
    .line 105
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->h()V

    .line 106
    .line 107
    .line 108
    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->f:Lcom/explorestack/protobuf/p1;

    .line 110
    .line 111
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->k(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;)Ljava/util/List;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->e:Ljava/util/List;

    .line 116
    .line 117
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->b:I

    .line 118
    .line 119
    and-int/lit8 v1, v1, -0x5

    .line 120
    .line 121
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->b:I

    .line 122
    .line 123
    sget-boolean v1, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 124
    .line 125
    if-eqz v1, :cond_5

    .line 126
    .line 127
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->y()Lcom/explorestack/protobuf/p1;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    :cond_5
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->f:Lcom/explorestack/protobuf/p1;

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :cond_6
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->f:Lcom/explorestack/protobuf/p1;

    .line 135
    .line 136
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->k(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;)Ljava/util/List;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/p1;->a(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/p1;

    .line 141
    .line 142
    .line 143
    :cond_7
    :goto_1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$d;->j(Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 147
    .line 148
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->C(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 152
    .line 153
    .line 154
    return-object p0
.end method

.method public B(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->A(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

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

.method public final C(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public D(Z)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->b:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->b:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->c:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public E(Z)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->b:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->b:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->d:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public F(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$d;->k(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public G(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$d;->l(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public final H(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->n(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->n(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->n(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->o()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->o()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->p()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->p()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->q()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->q()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->q()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->q()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->r(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->r(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->s(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->s(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->s(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->t()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->t()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->t()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->t()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/a$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->t()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->t()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e()Lcom/explorestack/protobuf/GeneratedMessageV3$d;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->q()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic f(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->r(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->v()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->v()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->o()Lcom/explorestack/protobuf/Descriptors$Descriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$e;
    .locals 3

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->p()Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    .line 6
    .line 7
    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->x()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->w(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2}, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;->isInitialized()Z

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$d;->i()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    return v0

    .line 30
    :cond_2
    const/4 v0, 0x1

    .line 31
    return v0
.end method

.method public bridge synthetic k(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->F(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic l(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->G(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->B(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->z(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->B(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->z(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->z(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->z(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->C(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->C(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->C(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public n(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$d;->b(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public o()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->p()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->isInitialized()Z

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

.method public p()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;
    .locals 3

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$d;Lcom/explorestack/protobuf/DescriptorProtos$a;)V

    .line 5
    .line 6
    .line 7
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->b:I

    .line 8
    .line 9
    and-int/lit8 v2, v1, 0x1

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    iget-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->c:Z

    .line 14
    .line 15
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->i(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;Z)Z

    .line 16
    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 v2, 0x0

    .line 21
    :goto_0
    and-int/lit8 v1, v1, 0x2

    .line 22
    .line 23
    if-eqz v1, :cond_1

    .line 24
    .line 25
    iget-boolean v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->d:Z

    .line 26
    .line 27
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->j(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;Z)Z

    .line 28
    .line 29
    .line 30
    or-int/lit8 v2, v2, 0x2

    .line 31
    .line 32
    :cond_1
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->f:Lcom/explorestack/protobuf/p1;

    .line 33
    .line 34
    if-nez v1, :cond_3

    .line 35
    .line 36
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->b:I

    .line 37
    .line 38
    and-int/lit8 v1, v1, 0x4

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->e:Ljava/util/List;

    .line 43
    .line 44
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->e:Ljava/util/List;

    .line 49
    .line 50
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->b:I

    .line 51
    .line 52
    and-int/lit8 v1, v1, -0x5

    .line 53
    .line 54
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->b:I

    .line 55
    .line 56
    :cond_2
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->e:Ljava/util/List;

    .line 57
    .line 58
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->n(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;Ljava/util/List;)Ljava/util/List;

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
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->n(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;Ljava/util/List;)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    :goto_1
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->q(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;I)I

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onBuilt()V

    .line 73
    .line 74
    .line 75
    return-object v0
.end method

.method public q()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$d;->e()Lcom/explorestack/protobuf/GeneratedMessageV3$d;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->c:Z

    .line 6
    .line 7
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->b:I

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->d:Z

    .line 10
    .line 11
    and-int/lit8 v0, v1, -0x4

    .line 12
    .line 13
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->b:I

    .line 14
    .line 15
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->f:Lcom/explorestack/protobuf/p1;

    .line 16
    .line 17
    if-nez v0, :cond_0

    .line 18
    .line 19
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->e:Ljava/util/List;

    .line 24
    .line 25
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->b:I

    .line 26
    .line 27
    and-int/lit8 v0, v0, -0x5

    .line 28
    .line 29
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->b:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->g()V

    .line 33
    .line 34
    .line 35
    :goto_0
    return-object p0
.end method

.method public r(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$d;->f(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public s(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->F(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->F(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->G(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->G(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->H(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->H(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public t()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    .line 6
    .line 7
    return-object v0
.end method

.method public v()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->s()Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public w(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->f:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->e:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

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
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

    .line 19
    .line 20
    return-object p1
.end method

.method public x()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->f:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->e:Ljava/util/List;

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

.method public z(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;
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
    sget-object v1, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;->h:Lcom/explorestack/protobuf/j1;

    .line 3
    .line 4
    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/j1;->parsePartialFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->A(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

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
    check-cast p2, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;
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
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;->A(Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions;)Lcom/explorestack/protobuf/DescriptorProtos$EnumOptions$b;

    .line 35
    .line 36
    .line 37
    :cond_1
    throw p1
.end method
