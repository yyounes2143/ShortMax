.class public final Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$d;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$d<",
        "Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;",
        "Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;",
        ">;",
        "Lcom/explorestack/protobuf/MessageOrBuilder;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:I

.field private d:Z

.field private e:I

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/explorestack/protobuf/p1;
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

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->c:I

    .line 5
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->e:I

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->i:Ljava/util/List;

    .line 7
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$d;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->c:I

    .line 10
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->e:I

    .line 11
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->i:Ljava/util/List;

    .line 12
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lcom/explorestack/protobuf/DescriptorProtos$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

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
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->y()Lcom/explorestack/protobuf/p1;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private u()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->b:I

    .line 2
    .line 3
    and-int/lit8 v0, v0, 0x40

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->i:Ljava/util/List;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->i:Ljava/util/List;

    .line 15
    .line 16
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->b:I

    .line 17
    .line 18
    or-int/lit8 v0, v0, 0x40

    .line 19
    .line 20
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->b:I

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
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->j:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/p1;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->i:Ljava/util/List;

    .line 8
    .line 9
    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->b:I

    .line 10
    .line 11
    and-int/lit8 v2, v2, 0x40

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
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->j:Lcom/explorestack/protobuf/p1;

    .line 30
    .line 31
    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->i:Ljava/util/List;

    .line 33
    .line 34
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->j:Lcom/explorestack/protobuf/p1;

    .line 35
    .line 36
    return-object v0
.end method


# virtual methods
.method public A(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;
    .locals 2

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->y()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

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
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->I()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->v()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->D(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    .line 19
    .line 20
    .line 21
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->M()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->D()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->I(Z)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    .line 32
    .line 33
    .line 34
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->K()Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_3

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->B()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->G(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    .line 45
    .line 46
    .line 47
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->L()Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_4

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->C()Z

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->H(Z)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    .line 58
    .line 59
    .line 60
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->J()Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_5

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->A()Z

    .line 67
    .line 68
    .line 69
    move-result v0

    .line 70
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->E(Z)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    .line 71
    .line 72
    .line 73
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->N()Z

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-eqz v0, :cond_6

    .line 78
    .line 79
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->H()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->L(Z)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    .line 84
    .line 85
    .line 86
    :cond_6
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->j:Lcom/explorestack/protobuf/p1;

    .line 87
    .line 88
    if-nez v0, :cond_8

    .line 89
    .line 90
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->s(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_b

    .line 99
    .line 100
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->i:Ljava/util/List;

    .line 101
    .line 102
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_7

    .line 107
    .line 108
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->s(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->i:Ljava/util/List;

    .line 113
    .line 114
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->b:I

    .line 115
    .line 116
    and-int/lit8 v0, v0, -0x41

    .line 117
    .line 118
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->b:I

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_7
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->u()V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->i:Ljava/util/List;

    .line 125
    .line 126
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->s(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 131
    .line 132
    .line 133
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_8
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->s(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-nez v0, :cond_b

    .line 146
    .line 147
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->j:Lcom/explorestack/protobuf/p1;

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->t()Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_a

    .line 154
    .line 155
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->j:Lcom/explorestack/protobuf/p1;

    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->h()V

    .line 158
    .line 159
    .line 160
    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->j:Lcom/explorestack/protobuf/p1;

    .line 162
    .line 163
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->s(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->i:Ljava/util/List;

    .line 168
    .line 169
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->b:I

    .line 170
    .line 171
    and-int/lit8 v1, v1, -0x41

    .line 172
    .line 173
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->b:I

    .line 174
    .line 175
    sget-boolean v1, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 176
    .line 177
    if-eqz v1, :cond_9

    .line 178
    .line 179
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->y()Lcom/explorestack/protobuf/p1;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    :cond_9
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->j:Lcom/explorestack/protobuf/p1;

    .line 184
    .line 185
    goto :goto_1

    .line 186
    :cond_a
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->j:Lcom/explorestack/protobuf/p1;

    .line 187
    .line 188
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->s(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;)Ljava/util/List;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/p1;->a(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/p1;

    .line 193
    .line 194
    .line 195
    :cond_b
    :goto_1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$d;->j(Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;)V

    .line 196
    .line 197
    .line 198
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 199
    .line 200
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->C(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 204
    .line 205
    .line 206
    return-object p0
.end method

.method public B(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->A(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

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

.method public final C(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public D(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->b:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x1

    .line 7
    .line 8
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->b:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$CType;->getNumber()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->c:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public E(Z)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->b:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->b:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->g:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public F(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$d;->k(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public G(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->b:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x4

    .line 7
    .line 8
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->b:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$JSType;->getNumber()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->e:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public H(Z)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->b:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->b:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->f:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public I(Z)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->b:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x2

    .line 4
    .line 5
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->b:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->d:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public J(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$d;->l(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public final K(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public L(Z)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->b:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x20

    .line 4
    .line 5
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->b:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->h:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->n(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->n(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->n(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->o()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->o()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->p()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->p()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->q()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->q()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->q()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->q()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->r(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->r(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->s(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->s(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->s(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->t()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->t()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->t()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->t()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/a$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->t()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->t()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e()Lcom/explorestack/protobuf/GeneratedMessageV3$d;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->q()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

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
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->r(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->v()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->v()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->k()Lcom/explorestack/protobuf/Descriptors$Descriptor;

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
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->l()Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    .line 6
    .line 7
    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->x()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->w(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

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
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->F(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->J(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

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
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->B(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->z(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->B(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->z(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->z(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->z(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->C(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->C(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->C(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public n(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$d;->b(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public o()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->p()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->isInitialized()Z

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

.method public p()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;
    .locals 4

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$d;Lcom/explorestack/protobuf/DescriptorProtos$a;)V

    .line 5
    .line 6
    .line 7
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->b:I

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
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->c:I

    .line 17
    .line 18
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->i(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;I)I

    .line 19
    .line 20
    .line 21
    and-int/lit8 v3, v1, 0x2

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->d:Z

    .line 26
    .line 27
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->j(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;Z)Z

    .line 28
    .line 29
    .line 30
    or-int/lit8 v2, v2, 0x2

    .line 31
    .line 32
    :cond_1
    and-int/lit8 v3, v1, 0x4

    .line 33
    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    or-int/lit8 v2, v2, 0x4

    .line 37
    .line 38
    :cond_2
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->e:I

    .line 39
    .line 40
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->k(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;I)I

    .line 41
    .line 42
    .line 43
    and-int/lit8 v3, v1, 0x8

    .line 44
    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->f:Z

    .line 48
    .line 49
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->n(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;Z)Z

    .line 50
    .line 51
    .line 52
    or-int/lit8 v2, v2, 0x8

    .line 53
    .line 54
    :cond_3
    and-int/lit8 v3, v1, 0x10

    .line 55
    .line 56
    if-eqz v3, :cond_4

    .line 57
    .line 58
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->g:Z

    .line 59
    .line 60
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->q(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;Z)Z

    .line 61
    .line 62
    .line 63
    or-int/lit8 v2, v2, 0x10

    .line 64
    .line 65
    :cond_4
    and-int/lit8 v1, v1, 0x20

    .line 66
    .line 67
    if-eqz v1, :cond_5

    .line 68
    .line 69
    iget-boolean v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->h:Z

    .line 70
    .line 71
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->r(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;Z)Z

    .line 72
    .line 73
    .line 74
    or-int/lit8 v2, v2, 0x20

    .line 75
    .line 76
    :cond_5
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->j:Lcom/explorestack/protobuf/p1;

    .line 77
    .line 78
    if-nez v1, :cond_7

    .line 79
    .line 80
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->b:I

    .line 81
    .line 82
    and-int/lit8 v1, v1, 0x40

    .line 83
    .line 84
    if-eqz v1, :cond_6

    .line 85
    .line 86
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->i:Ljava/util/List;

    .line 87
    .line 88
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->i:Ljava/util/List;

    .line 93
    .line 94
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->b:I

    .line 95
    .line 96
    and-int/lit8 v1, v1, -0x41

    .line 97
    .line 98
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->b:I

    .line 99
    .line 100
    :cond_6
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->i:Ljava/util/List;

    .line 101
    .line 102
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->t(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;Ljava/util/List;)Ljava/util/List;

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_7
    invoke-virtual {v1}, Lcom/explorestack/protobuf/p1;->f()Ljava/util/List;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->t(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;Ljava/util/List;)Ljava/util/List;

    .line 111
    .line 112
    .line 113
    :goto_1
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->u(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;I)I

    .line 114
    .line 115
    .line 116
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onBuilt()V

    .line 117
    .line 118
    .line 119
    return-object v0
.end method

.method public q()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$d;->e()Lcom/explorestack/protobuf/GeneratedMessageV3$d;

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->c:I

    .line 6
    .line 7
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->b:I

    .line 8
    .line 9
    iput-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->d:Z

    .line 10
    .line 11
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->e:I

    .line 12
    .line 13
    iput-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->f:Z

    .line 14
    .line 15
    iput-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->g:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->h:Z

    .line 18
    .line 19
    and-int/lit8 v0, v1, -0x40

    .line 20
    .line 21
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->b:I

    .line 22
    .line 23
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->j:Lcom/explorestack/protobuf/p1;

    .line 24
    .line 25
    if-nez v0, :cond_0

    .line 26
    .line 27
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->i:Ljava/util/List;

    .line 32
    .line 33
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->b:I

    .line 34
    .line 35
    and-int/lit8 v0, v0, -0x41

    .line 36
    .line 37
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->b:I

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->g()V

    .line 41
    .line 42
    .line 43
    :goto_0
    return-object p0
.end method

.method public r(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$d;->f(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public s(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->F(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->F(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->J(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->J(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->K(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->K(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public t()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    .line 6
    .line 7
    return-object v0
.end method

.method public v()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->y()Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->j:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->i:Ljava/util/List;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->j:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->i:Ljava/util/List;

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

.method public z(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;
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
    sget-object v1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;->l:Lcom/explorestack/protobuf/j1;

    .line 3
    .line 4
    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/j1;->parsePartialFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->A(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

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
    check-cast p2, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;
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
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;->A(Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FieldOptions$b;

    .line 35
    .line 36
    .line 37
    :cond_1
    throw p1
.end method
