.class public final Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$d;
.source "DescriptorProtos.java"

# interfaces
.implements Lcom/explorestack/protobuf/MessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$d<",
        "Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;",
        "Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;",
        ">;",
        "Lcom/explorestack/protobuf/MessageOrBuilder;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Ljava/lang/Object;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Ljava/lang/Object;

.field private q:Ljava/lang/Object;

.field private r:Ljava/lang/Object;

.field private s:Ljava/lang/Object;

.field private t:Ljava/lang/Object;

.field private u:Ljava/lang/Object;

.field private v:Ljava/lang/Object;

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;",
            ">;"
        }
    .end annotation
.end field

.field private x:Lcom/explorestack/protobuf/p1;
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
    .locals 2

    .line 3
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$d;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->c:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->d:Ljava/lang/Object;

    const/4 v1, 0x1

    .line 6
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->h:I

    .line 7
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->i:Ljava/lang/Object;

    .line 8
    iput-boolean v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->o:Z

    .line 9
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->p:Ljava/lang/Object;

    .line 10
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->q:Ljava/lang/Object;

    .line 11
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->r:Ljava/lang/Object;

    .line 12
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->s:Ljava/lang/Object;

    .line 13
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->t:Ljava/lang/Object;

    .line 14
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->u:Ljava/lang/Object;

    .line 15
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->v:Ljava/lang/Object;

    .line 16
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->w:Ljava/util/List;

    .line 17
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V
    .locals 1

    .line 18
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$d;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

    .line 19
    const-string p1, ""

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->c:Ljava/lang/Object;

    .line 20
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->d:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 21
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->h:I

    .line 22
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->i:Ljava/lang/Object;

    .line 23
    iput-boolean v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->o:Z

    .line 24
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->p:Ljava/lang/Object;

    .line 25
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->q:Ljava/lang/Object;

    .line 26
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->r:Ljava/lang/Object;

    .line 27
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->s:Ljava/lang/Object;

    .line 28
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->t:Ljava/lang/Object;

    .line 29
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->u:Ljava/lang/Object;

    .line 30
    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->v:Ljava/lang/Object;

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->w:Ljava/util/List;

    .line 32
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;Lcom/explorestack/protobuf/DescriptorProtos$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$c;)V

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
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->y()Lcom/explorestack/protobuf/p1;

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method private u()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 2
    .line 3
    const/high16 v1, 0x100000

    .line 4
    .line 5
    and-int/2addr v0, v1

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->w:Ljava/util/List;

    .line 11
    .line 12
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->w:Ljava/util/List;

    .line 16
    .line 17
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 18
    .line 19
    or-int/2addr v0, v1

    .line 20
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

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
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->x:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Lcom/explorestack/protobuf/p1;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->w:Ljava/util/List;

    .line 8
    .line 9
    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 10
    .line 11
    const/high16 v3, 0x100000

    .line 12
    .line 13
    and-int/2addr v2, v3

    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$c;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->isClean()Z

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/p1;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->x:Lcom/explorestack/protobuf/p1;

    .line 31
    .line 32
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->w:Ljava/util/List;

    .line 34
    .line 35
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->x:Lcom/explorestack/protobuf/p1;

    .line 36
    .line 37
    return-object v0
.end method


# virtual methods
.method public A(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;
    .locals 3

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->a0()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

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
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->Y0()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 15
    .line 16
    or-int/lit8 v0, v0, 0x1

    .line 17
    .line 18
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 19
    .line 20
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->i(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->c:Ljava/lang/Object;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->X0()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 36
    .line 37
    or-int/lit8 v0, v0, 0x2

    .line 38
    .line 39
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 40
    .line 41
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->k(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->d:Ljava/lang/Object;

    .line 46
    .line 47
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 48
    .line 49
    .line 50
    :cond_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->W0()Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->r0()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->J(Z)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    .line 61
    .line 62
    .line 63
    :cond_3
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->U0()Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_4

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->p0()Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->H(Z)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    .line 74
    .line 75
    .line 76
    :cond_4
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->Z0()Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_5

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->v0()Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->K(Z)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    .line 87
    .line 88
    .line 89
    :cond_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->b1()Z

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-eqz v0, :cond_6

    .line 94
    .line 95
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->y0()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$OptimizeMode;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->L(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$OptimizeMode;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    .line 100
    .line 101
    .line 102
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->T0()Z

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_7

    .line 107
    .line 108
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 109
    .line 110
    or-int/lit8 v0, v0, 0x40

    .line 111
    .line 112
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 113
    .line 114
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->u(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->i:Ljava/lang/Object;

    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 121
    .line 122
    .line 123
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->Q0()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_8

    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->Y()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->E(Z)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    .line 134
    .line 135
    .line 136
    :cond_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->V0()Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    if-eqz v0, :cond_9

    .line 141
    .line 142
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->q0()Z

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->I(Z)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    .line 147
    .line 148
    .line 149
    :cond_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->g1()Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_a

    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->J0()Z

    .line 156
    .line 157
    .line 158
    move-result v0

    .line 159
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->N(Z)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    .line 160
    .line 161
    .line 162
    :cond_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->d1()Z

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-eqz v0, :cond_b

    .line 167
    .line 168
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->G0()Z

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->M(Z)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    .line 173
    .line 174
    .line 175
    :cond_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->S0()Z

    .line 176
    .line 177
    .line 178
    move-result v0

    .line 179
    if-eqz v0, :cond_c

    .line 180
    .line 181
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->l0()Z

    .line 182
    .line 183
    .line 184
    move-result v0

    .line 185
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->F(Z)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    .line 186
    .line 187
    .line 188
    :cond_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->P0()Z

    .line 189
    .line 190
    .line 191
    move-result v0

    .line 192
    if-eqz v0, :cond_d

    .line 193
    .line 194
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->X()Z

    .line 195
    .line 196
    .line 197
    move-result v0

    .line 198
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->D(Z)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    .line 199
    .line 200
    .line 201
    :cond_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->a1()Z

    .line 202
    .line 203
    .line 204
    move-result v0

    .line 205
    if-eqz v0, :cond_e

    .line 206
    .line 207
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 208
    .line 209
    or-int/lit16 v0, v0, 0x2000

    .line 210
    .line 211
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 212
    .line 213
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->E(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->p:Ljava/lang/Object;

    .line 218
    .line 219
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 220
    .line 221
    .line 222
    :cond_e
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->R0()Z

    .line 223
    .line 224
    .line 225
    move-result v0

    .line 226
    if-eqz v0, :cond_f

    .line 227
    .line 228
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 229
    .line 230
    or-int/lit16 v0, v0, 0x4000

    .line 231
    .line 232
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 233
    .line 234
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->G(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v0

    .line 238
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->q:Ljava/lang/Object;

    .line 239
    .line 240
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 241
    .line 242
    .line 243
    :cond_f
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->i1()Z

    .line 244
    .line 245
    .line 246
    move-result v0

    .line 247
    if-eqz v0, :cond_10

    .line 248
    .line 249
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 250
    .line 251
    const v1, 0x8000

    .line 252
    .line 253
    .line 254
    or-int/2addr v0, v1

    .line 255
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 256
    .line 257
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->I(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v0

    .line 261
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->r:Ljava/lang/Object;

    .line 262
    .line 263
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 264
    .line 265
    .line 266
    :cond_10
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->c1()Z

    .line 267
    .line 268
    .line 269
    move-result v0

    .line 270
    if-eqz v0, :cond_11

    .line 271
    .line 272
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 273
    .line 274
    const/high16 v1, 0x10000

    .line 275
    .line 276
    or-int/2addr v0, v1

    .line 277
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 278
    .line 279
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->K(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->s:Ljava/lang/Object;

    .line 284
    .line 285
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 286
    .line 287
    .line 288
    :cond_11
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->f1()Z

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    if-eqz v0, :cond_12

    .line 293
    .line 294
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 295
    .line 296
    const/high16 v1, 0x20000

    .line 297
    .line 298
    or-int/2addr v0, v1

    .line 299
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 300
    .line 301
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->M(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->t:Ljava/lang/Object;

    .line 306
    .line 307
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 308
    .line 309
    .line 310
    :cond_12
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->e1()Z

    .line 311
    .line 312
    .line 313
    move-result v0

    .line 314
    if-eqz v0, :cond_13

    .line 315
    .line 316
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 317
    .line 318
    const/high16 v1, 0x40000

    .line 319
    .line 320
    or-int/2addr v0, v1

    .line 321
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 322
    .line 323
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->O(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    .line 324
    .line 325
    .line 326
    move-result-object v0

    .line 327
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->u:Ljava/lang/Object;

    .line 328
    .line 329
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 330
    .line 331
    .line 332
    :cond_13
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->h1()Z

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    if-eqz v0, :cond_14

    .line 337
    .line 338
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 339
    .line 340
    const/high16 v1, 0x80000

    .line 341
    .line 342
    or-int/2addr v0, v1

    .line 343
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 344
    .line 345
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->Q(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->v:Ljava/lang/Object;

    .line 350
    .line 351
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 352
    .line 353
    .line 354
    :cond_14
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->x:Lcom/explorestack/protobuf/p1;

    .line 355
    .line 356
    const v1, -0x100001

    .line 357
    .line 358
    .line 359
    if-nez v0, :cond_16

    .line 360
    .line 361
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->U(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    .line 362
    .line 363
    .line 364
    move-result-object v0

    .line 365
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 366
    .line 367
    .line 368
    move-result v0

    .line 369
    if-nez v0, :cond_19

    .line 370
    .line 371
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->w:Ljava/util/List;

    .line 372
    .line 373
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 374
    .line 375
    .line 376
    move-result v0

    .line 377
    if-eqz v0, :cond_15

    .line 378
    .line 379
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->U(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    .line 380
    .line 381
    .line 382
    move-result-object v0

    .line 383
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->w:Ljava/util/List;

    .line 384
    .line 385
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 386
    .line 387
    and-int/2addr v0, v1

    .line 388
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 389
    .line 390
    goto :goto_0

    .line 391
    :cond_15
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->u()V

    .line 392
    .line 393
    .line 394
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->w:Ljava/util/List;

    .line 395
    .line 396
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->U(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    .line 397
    .line 398
    .line 399
    move-result-object v1

    .line 400
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 401
    .line 402
    .line 403
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 404
    .line 405
    .line 406
    goto :goto_1

    .line 407
    :cond_16
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->U(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    .line 408
    .line 409
    .line 410
    move-result-object v0

    .line 411
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 412
    .line 413
    .line 414
    move-result v0

    .line 415
    if-nez v0, :cond_19

    .line 416
    .line 417
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->x:Lcom/explorestack/protobuf/p1;

    .line 418
    .line 419
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->t()Z

    .line 420
    .line 421
    .line 422
    move-result v0

    .line 423
    if-eqz v0, :cond_18

    .line 424
    .line 425
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->x:Lcom/explorestack/protobuf/p1;

    .line 426
    .line 427
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->h()V

    .line 428
    .line 429
    .line 430
    const/4 v0, 0x0

    .line 431
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->x:Lcom/explorestack/protobuf/p1;

    .line 432
    .line 433
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->U(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    iput-object v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->w:Ljava/util/List;

    .line 438
    .line 439
    iget v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 440
    .line 441
    and-int/2addr v1, v2

    .line 442
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 443
    .line 444
    sget-boolean v1, Lcom/explorestack/protobuf/GeneratedMessageV3;->alwaysUseFieldBuilders:Z

    .line 445
    .line 446
    if-eqz v1, :cond_17

    .line 447
    .line 448
    invoke-direct {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->y()Lcom/explorestack/protobuf/p1;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    :cond_17
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->x:Lcom/explorestack/protobuf/p1;

    .line 453
    .line 454
    goto :goto_1

    .line 455
    :cond_18
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->x:Lcom/explorestack/protobuf/p1;

    .line 456
    .line 457
    invoke-static {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->U(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Ljava/util/List;

    .line 458
    .line 459
    .line 460
    move-result-object v1

    .line 461
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/p1;->a(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/p1;

    .line 462
    .line 463
    .line 464
    :cond_19
    :goto_1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$d;->j(Lcom/explorestack/protobuf/GeneratedMessageV3$ExtendableMessage;)V

    .line 465
    .line 466
    .line 467
    iget-object p1, p1, Lcom/explorestack/protobuf/GeneratedMessageV3;->unknownFields:Lcom/explorestack/protobuf/j2;

    .line 468
    .line 469
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->C(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    .line 470
    .line 471
    .line 472
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 473
    .line 474
    .line 475
    return-object p0
.end method

.method public B(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->A(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

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

.method public final C(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public D(Z)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x1000

    .line 4
    .line 5
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->o:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public E(Z)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x80

    .line 4
    .line 5
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->j:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public F(Z)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x800

    .line 4
    .line 5
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->n:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public G(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$d;->k(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public H(Z)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x8

    .line 4
    .line 5
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->f:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public I(Z)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x100

    .line 4
    .line 5
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->k:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public J(Z)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->e:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public K(Z)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 2
    .line 3
    or-int/lit8 v0, v0, 0x10

    .line 4
    .line 5
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->g:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public L(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$OptimizeMode;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 5
    .line 6
    or-int/lit8 v0, v0, 0x20

    .line 7
    .line 8
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$OptimizeMode;->getNumber()I

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->h:I

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 17
    .line 18
    .line 19
    return-object p0
.end method

.method public M(Z)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x400

    .line 4
    .line 5
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->m:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public N(Z)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;
    .locals 1

    .line 1
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 2
    .line 3
    or-int/lit16 v0, v0, 0x200

    .line 4
    .line 5
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 6
    .line 7
    iput-boolean p1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->l:Z

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onChanged()V

    .line 10
    .line 11
    .line 12
    return-object p0
.end method

.method public O(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$d;->l(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public final P(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->n(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->n(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$d;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->n(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->o()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->o()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->p()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->p()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->q()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->q()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->q()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->q()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->r(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->r(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->s(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->s(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->s(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->t()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 1

    .line 3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->t()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->t()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->t()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/a$a;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->t()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->t()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e()Lcom/explorestack/protobuf/GeneratedMessageV3$d;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->q()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

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
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->r(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->v()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->v()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->g()Lcom/explorestack/protobuf/Descriptors$Descriptor;

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
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos;->h()Lcom/explorestack/protobuf/GeneratedMessageV3$e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    .line 6
    .line 7
    const-class v2, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

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
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->x()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    if-ge v1, v2, :cond_1

    .line 8
    .line 9
    invoke-virtual {p0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->w(I)Lcom/explorestack/protobuf/DescriptorProtos$UninterpretedOption;

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
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->G(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

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
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->O(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

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
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->B(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->z(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->B(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->z(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->z(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

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
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->z(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->C(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->C(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->C(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public n(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$d;->b(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public o()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->p()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->isInitialized()Z

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

.method public p()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;
    .locals 5

    .line 1
    new-instance v0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$d;Lcom/explorestack/protobuf/DescriptorProtos$a;)V

    .line 5
    .line 6
    .line 7
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

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
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->c:Ljava/lang/Object;

    .line 17
    .line 18
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->j(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    and-int/lit8 v3, v1, 0x2

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    or-int/lit8 v2, v2, 0x2

    .line 26
    .line 27
    :cond_1
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->d:Ljava/lang/Object;

    .line 28
    .line 29
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->n(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    and-int/lit8 v3, v1, 0x4

    .line 33
    .line 34
    if-eqz v3, :cond_2

    .line 35
    .line 36
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->e:Z

    .line 37
    .line 38
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->q(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 39
    .line 40
    .line 41
    or-int/lit8 v2, v2, 0x4

    .line 42
    .line 43
    :cond_2
    and-int/lit8 v3, v1, 0x8

    .line 44
    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->f:Z

    .line 48
    .line 49
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->r(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Z)Z

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
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->g:Z

    .line 59
    .line 60
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->s(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 61
    .line 62
    .line 63
    or-int/lit8 v2, v2, 0x10

    .line 64
    .line 65
    :cond_4
    and-int/lit8 v3, v1, 0x20

    .line 66
    .line 67
    if-eqz v3, :cond_5

    .line 68
    .line 69
    or-int/lit8 v2, v2, 0x20

    .line 70
    .line 71
    :cond_5
    iget v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->h:I

    .line 72
    .line 73
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->t(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;I)I

    .line 74
    .line 75
    .line 76
    and-int/lit8 v3, v1, 0x40

    .line 77
    .line 78
    if-eqz v3, :cond_6

    .line 79
    .line 80
    or-int/lit8 v2, v2, 0x40

    .line 81
    .line 82
    :cond_6
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->i:Ljava/lang/Object;

    .line 83
    .line 84
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->v(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    and-int/lit16 v3, v1, 0x80

    .line 88
    .line 89
    if-eqz v3, :cond_7

    .line 90
    .line 91
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->j:Z

    .line 92
    .line 93
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->y(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 94
    .line 95
    .line 96
    or-int/lit16 v2, v2, 0x80

    .line 97
    .line 98
    :cond_7
    and-int/lit16 v3, v1, 0x100

    .line 99
    .line 100
    if-eqz v3, :cond_8

    .line 101
    .line 102
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->k:Z

    .line 103
    .line 104
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->z(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 105
    .line 106
    .line 107
    or-int/lit16 v2, v2, 0x100

    .line 108
    .line 109
    :cond_8
    and-int/lit16 v3, v1, 0x200

    .line 110
    .line 111
    if-eqz v3, :cond_9

    .line 112
    .line 113
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->l:Z

    .line 114
    .line 115
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->A(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 116
    .line 117
    .line 118
    or-int/lit16 v2, v2, 0x200

    .line 119
    .line 120
    :cond_9
    and-int/lit16 v3, v1, 0x400

    .line 121
    .line 122
    if-eqz v3, :cond_a

    .line 123
    .line 124
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->m:Z

    .line 125
    .line 126
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->B(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 127
    .line 128
    .line 129
    or-int/lit16 v2, v2, 0x400

    .line 130
    .line 131
    :cond_a
    and-int/lit16 v3, v1, 0x800

    .line 132
    .line 133
    if-eqz v3, :cond_b

    .line 134
    .line 135
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->n:Z

    .line 136
    .line 137
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->C(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 138
    .line 139
    .line 140
    or-int/lit16 v2, v2, 0x800

    .line 141
    .line 142
    :cond_b
    and-int/lit16 v3, v1, 0x1000

    .line 143
    .line 144
    if-eqz v3, :cond_c

    .line 145
    .line 146
    or-int/lit16 v2, v2, 0x1000

    .line 147
    .line 148
    :cond_c
    iget-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->o:Z

    .line 149
    .line 150
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->D(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Z)Z

    .line 151
    .line 152
    .line 153
    and-int/lit16 v3, v1, 0x2000

    .line 154
    .line 155
    if-eqz v3, :cond_d

    .line 156
    .line 157
    or-int/lit16 v2, v2, 0x2000

    .line 158
    .line 159
    :cond_d
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->p:Ljava/lang/Object;

    .line 160
    .line 161
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->F(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    and-int/lit16 v3, v1, 0x4000

    .line 165
    .line 166
    if-eqz v3, :cond_e

    .line 167
    .line 168
    or-int/lit16 v2, v2, 0x4000

    .line 169
    .line 170
    :cond_e
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->q:Ljava/lang/Object;

    .line 171
    .line 172
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->H(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    .line 174
    .line 175
    const v3, 0x8000

    .line 176
    .line 177
    .line 178
    and-int v4, v1, v3

    .line 179
    .line 180
    if-eqz v4, :cond_f

    .line 181
    .line 182
    or-int/2addr v2, v3

    .line 183
    :cond_f
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->r:Ljava/lang/Object;

    .line 184
    .line 185
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->J(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    const/high16 v3, 0x10000

    .line 189
    .line 190
    and-int v4, v1, v3

    .line 191
    .line 192
    if-eqz v4, :cond_10

    .line 193
    .line 194
    or-int/2addr v2, v3

    .line 195
    :cond_10
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->s:Ljava/lang/Object;

    .line 196
    .line 197
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->L(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    const/high16 v3, 0x20000

    .line 201
    .line 202
    and-int v4, v1, v3

    .line 203
    .line 204
    if-eqz v4, :cond_11

    .line 205
    .line 206
    or-int/2addr v2, v3

    .line 207
    :cond_11
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->t:Ljava/lang/Object;

    .line 208
    .line 209
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->N(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    const/high16 v3, 0x40000

    .line 213
    .line 214
    and-int v4, v1, v3

    .line 215
    .line 216
    if-eqz v4, :cond_12

    .line 217
    .line 218
    or-int/2addr v2, v3

    .line 219
    :cond_12
    iget-object v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->u:Ljava/lang/Object;

    .line 220
    .line 221
    invoke-static {v0, v3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->P(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    const/high16 v3, 0x80000

    .line 225
    .line 226
    and-int/2addr v1, v3

    .line 227
    if-eqz v1, :cond_13

    .line 228
    .line 229
    or-int/2addr v2, v3

    .line 230
    :cond_13
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->v:Ljava/lang/Object;

    .line 231
    .line 232
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->S(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->x:Lcom/explorestack/protobuf/p1;

    .line 236
    .line 237
    if-nez v1, :cond_15

    .line 238
    .line 239
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 240
    .line 241
    const/high16 v3, 0x100000

    .line 242
    .line 243
    and-int/2addr v1, v3

    .line 244
    if-eqz v1, :cond_14

    .line 245
    .line 246
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->w:Ljava/util/List;

    .line 247
    .line 248
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    iput-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->w:Ljava/util/List;

    .line 253
    .line 254
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 255
    .line 256
    const v3, -0x100001

    .line 257
    .line 258
    .line 259
    and-int/2addr v1, v3

    .line 260
    iput v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 261
    .line 262
    :cond_14
    iget-object v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->w:Ljava/util/List;

    .line 263
    .line 264
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->V(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;

    .line 265
    .line 266
    .line 267
    goto :goto_1

    .line 268
    :cond_15
    invoke-virtual {v1}, Lcom/explorestack/protobuf/p1;->f()Ljava/util/List;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    invoke-static {v0, v1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->V(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;Ljava/util/List;)Ljava/util/List;

    .line 273
    .line 274
    .line 275
    :goto_1
    invoke-static {v0, v2}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->W(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;I)I

    .line 276
    .line 277
    .line 278
    invoke-virtual {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->onBuilt()V

    .line 279
    .line 280
    .line 281
    return-object v0
.end method

.method public q()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$d;->e()Lcom/explorestack/protobuf/GeneratedMessageV3$d;

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->c:Ljava/lang/Object;

    .line 7
    .line 8
    iget v1, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 9
    .line 10
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->d:Ljava/lang/Object;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    iput-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->e:Z

    .line 14
    .line 15
    iput-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->f:Z

    .line 16
    .line 17
    iput-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->g:Z

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    iput v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->h:I

    .line 21
    .line 22
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->i:Ljava/lang/Object;

    .line 23
    .line 24
    iput-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->j:Z

    .line 25
    .line 26
    iput-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->k:Z

    .line 27
    .line 28
    iput-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->l:Z

    .line 29
    .line 30
    iput-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->m:Z

    .line 31
    .line 32
    iput-boolean v2, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->n:Z

    .line 33
    .line 34
    iput-boolean v3, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->o:Z

    .line 35
    .line 36
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->p:Ljava/lang/Object;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->q:Ljava/lang/Object;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->r:Ljava/lang/Object;

    .line 41
    .line 42
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->s:Ljava/lang/Object;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->t:Ljava/lang/Object;

    .line 45
    .line 46
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->u:Ljava/lang/Object;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->v:Ljava/lang/Object;

    .line 49
    .line 50
    const/high16 v0, -0x100000

    .line 51
    .line 52
    and-int/2addr v0, v1

    .line 53
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 54
    .line 55
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->x:Lcom/explorestack/protobuf/p1;

    .line 56
    .line 57
    if-nez v0, :cond_0

    .line 58
    .line 59
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->w:Ljava/util/List;

    .line 64
    .line 65
    iget v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 66
    .line 67
    const v1, -0x100001

    .line 68
    .line 69
    .line 70
    and-int/2addr v0, v1

    .line 71
    iput v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->b:I

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/p1;->g()V

    .line 75
    .line 76
    .line 77
    :goto_0
    return-object p0
.end method

.method public r(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$d;->f(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$d;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public s(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    .line 6
    .line 7
    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->G(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->G(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->O(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->O(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/GeneratedMessageV3$b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->P(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->P(Lcom/explorestack/protobuf/j2;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    move-result-object p1

    return-object p1
.end method

.method public t()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$b;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    .line 6
    .line 7
    return-object v0
.end method

.method public v()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;
    .locals 1

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->a0()Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->x:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->w:Ljava/util/List;

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
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->x:Lcom/explorestack/protobuf/p1;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->w:Ljava/util/List;

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

.method public z(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;
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
    sget-object v1, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;->z:Lcom/explorestack/protobuf/j1;

    .line 3
    .line 4
    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/j1;->parsePartialFrom(Lcom/explorestack/protobuf/n;Lcom/explorestack/protobuf/y;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->A(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

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
    check-cast p2, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;
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
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;->A(Lcom/explorestack/protobuf/DescriptorProtos$FileOptions;)Lcom/explorestack/protobuf/DescriptorProtos$FileOptions$b;

    .line 35
    .line 36
    .line 37
    :cond_1
    throw p1
.end method
