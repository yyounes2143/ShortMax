.class public Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/component/ba/oJ/oJ/ex;


# instance fields
.field private BTZ:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

.field private Pfn:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/ba;

.field private ZYk:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/oJ;

.field private ba:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/Pfn;

.field private cFZ:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

.field private dLZ:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

.field private ex:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/cFZ;

.field private jFA:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

.field private kkU:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

.field private oJ:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/ex;

.field private so:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

.field private tB:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/ZYk;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/so;->cFZ()Lcom/bytedance/sdk/component/ba/oJ/so;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ba/oJ/so;->ba()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ;->oJ()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/so;->cFZ()Lcom/bytedance/sdk/component/ba/oJ/so;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ba/oJ/so;->BTZ()Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    iput-object v1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->cFZ:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 27
    .line 28
    new-instance v1, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/ex;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->cFZ:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 31
    .line 32
    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/ex;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;)V

    .line 33
    .line 34
    .line 35
    iput-object v1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->oJ:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/ex;

    .line 36
    .line 37
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ;->Pfn()Z

    .line 38
    .line 39
    .line 40
    move-result v1

    .line 41
    if-eqz v1, :cond_2

    .line 42
    .line 43
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/so;->cFZ()Lcom/bytedance/sdk/component/ba/oJ/so;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ba/oJ/so;->kkU()Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/so;->cFZ()Lcom/bytedance/sdk/component/ba/oJ/so;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ba/oJ/so;->kkU()Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    iput-object v1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->jFA:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/so;->cFZ()Lcom/bytedance/sdk/component/ba/oJ/so;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ba/oJ/so;->PiB()Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iput-object v1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->jFA:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 73
    .line 74
    :goto_0
    new-instance v1, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/ZYk;

    .line 75
    .line 76
    iget-object v2, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->jFA:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 77
    .line 78
    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/ZYk;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;)V

    .line 79
    .line 80
    .line 81
    iput-object v1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->tB:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/ZYk;

    .line 82
    .line 83
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ;->ZYk()Z

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    if-eqz v1, :cond_3

    .line 88
    .line 89
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/so;->cFZ()Lcom/bytedance/sdk/component/ba/oJ/so;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ba/oJ/so;->PiB()Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    iput-object v1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->so:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 98
    .line 99
    new-instance v1, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/oJ;

    .line 100
    .line 101
    iget-object v2, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->so:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 102
    .line 103
    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/oJ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;)V

    .line 104
    .line 105
    .line 106
    iput-object v1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->ZYk:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/oJ;

    .line 107
    .line 108
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ;->tB()Z

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-eqz v1, :cond_4

    .line 113
    .line 114
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/so;->cFZ()Lcom/bytedance/sdk/component/ba/oJ/so;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ba/oJ/so;->PiB()Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    iput-object v1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->kkU:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 123
    .line 124
    new-instance v1, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/cFZ;

    .line 125
    .line 126
    iget-object v2, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->kkU:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 127
    .line 128
    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/cFZ;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;)V

    .line 129
    .line 130
    .line 131
    iput-object v1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->ex:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/cFZ;

    .line 132
    .line 133
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ;->ex()Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_5

    .line 138
    .line 139
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/so;->cFZ()Lcom/bytedance/sdk/component/ba/oJ/so;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ba/oJ/so;->WcQ()Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    iput-object v1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->dLZ:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 148
    .line 149
    new-instance v1, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/ba;

    .line 150
    .line 151
    iget-object v2, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->dLZ:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 152
    .line 153
    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/ba;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;)V

    .line 154
    .line 155
    .line 156
    iput-object v1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->Pfn:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/ba;

    .line 157
    .line 158
    :cond_5
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ;->ba()Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_6

    .line 163
    .line 164
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/so;->cFZ()Lcom/bytedance/sdk/component/ba/oJ/so;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ba/oJ/so;->awB()Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    iput-object v1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->BTZ:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 173
    .line 174
    new-instance v1, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/Pfn;

    .line 175
    .line 176
    iget-object v2, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->BTZ:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 177
    .line 178
    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/Pfn;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;)V

    .line 179
    .line 180
    .line 181
    iput-object v1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->ba:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/Pfn;

    .line 182
    .line 183
    :cond_6
    return-void
.end method

.method private oJ(Ljava/util/List;Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 71
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 72
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 73
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;

    if-eqz v1, :cond_0

    .line 75
    invoke-interface {v1}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->tB()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {p2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 78
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_1
    if-eqz p1, :cond_2

    .line 79
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public ZYk(Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;I)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;",
            "I)",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->ex()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "_id"

    .line 7
    .line 8
    const/4 v3, 0x1

    .line 9
    if-nez v0, :cond_2

    .line 10
    .line 11
    invoke-interface {p1}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->Pfn()B

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-ne v0, v3, :cond_2

    .line 16
    .line 17
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ;->oJ()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    iget-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->cFZ:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;->ZYk()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-le p1, p2, :cond_1

    .line 30
    .line 31
    iget-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->cFZ:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;->ZYk()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    sub-int/2addr p1, p2

    .line 38
    iget-object p2, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->oJ:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/ex;

    .line 39
    .line 40
    invoke-virtual {p2, p1, v2}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/oJ;->oJ(ILjava/lang/String;)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    if-eqz p2, :cond_0

    .line 51
    .line 52
    sget-object p2, Lcom/bytedance/sdk/component/ba/oJ/ZYk/ex;->ex:Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ/oJ;

    .line 53
    .line 54
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ/oJ;->HL()Ljava/util/concurrent/atomic/AtomicLong;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    invoke-static {p2, v3}, Lcom/bytedance/sdk/component/ba/oJ/tB/ZYk;->oJ(Ljava/util/concurrent/atomic/AtomicLong;I)V

    .line 59
    .line 60
    .line 61
    :cond_0
    return-object p1

    .line 62
    :cond_1
    return-object v1

    .line 63
    :cond_2
    invoke-interface {p1}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->ex()B

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    const/4 v4, 0x3

    .line 68
    const/4 v5, 0x2

    .line 69
    if-ne v0, v4, :cond_3

    .line 70
    .line 71
    invoke-interface {p1}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->Pfn()B

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-ne v0, v5, :cond_3

    .line 76
    .line 77
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ;->Pfn()Z

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-eqz v0, :cond_3

    .line 82
    .line 83
    iget-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->jFA:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 84
    .line 85
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;->ZYk()I

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-le p1, p2, :cond_a

    .line 90
    .line 91
    iget-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->jFA:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;->ZYk()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    sub-int/2addr p1, p2

    .line 98
    iget-object p2, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->tB:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/ZYk;

    .line 99
    .line 100
    invoke-virtual {p2, p1, v2}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/oJ;->oJ(ILjava/lang/String;)Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    return-object p1

    .line 105
    :cond_3
    invoke-interface {p1}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->ex()B

    .line 106
    .line 107
    .line 108
    move-result v0

    .line 109
    if-nez v0, :cond_5

    .line 110
    .line 111
    invoke-interface {p1}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->Pfn()B

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    if-ne v0, v5, :cond_5

    .line 116
    .line 117
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ;->ZYk()Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-eqz v0, :cond_5

    .line 122
    .line 123
    iget-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->so:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;->ZYk()I

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-le p1, p2, :cond_a

    .line 130
    .line 131
    iget-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->so:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 132
    .line 133
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;->ZYk()I

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    sub-int/2addr p1, p2

    .line 138
    iget-object p2, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->ZYk:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/oJ;

    .line 139
    .line 140
    invoke-virtual {p2, p1, v2}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/oJ;->oJ(ILjava/lang/String;)Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    if-eqz p1, :cond_4

    .line 145
    .line 146
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    if-eqz p2, :cond_4

    .line 151
    .line 152
    sget-object p2, Lcom/bytedance/sdk/component/ba/oJ/ZYk/ex;->ex:Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ/oJ;

    .line 153
    .line 154
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ/oJ;->IUZ()Ljava/util/concurrent/atomic/AtomicLong;

    .line 155
    .line 156
    .line 157
    move-result-object p2

    .line 158
    invoke-static {p2, v3}, Lcom/bytedance/sdk/component/ba/oJ/tB/ZYk;->oJ(Ljava/util/concurrent/atomic/AtomicLong;I)V

    .line 159
    .line 160
    .line 161
    :cond_4
    return-object p1

    .line 162
    :cond_5
    invoke-interface {p1}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->ex()B

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    if-ne v0, v3, :cond_7

    .line 167
    .line 168
    invoke-interface {p1}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->Pfn()B

    .line 169
    .line 170
    .line 171
    move-result v0

    .line 172
    if-ne v0, v5, :cond_7

    .line 173
    .line 174
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ;->tB()Z

    .line 175
    .line 176
    .line 177
    move-result v0

    .line 178
    if-eqz v0, :cond_7

    .line 179
    .line 180
    iget-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->kkU:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 181
    .line 182
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;->ZYk()I

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    if-le p1, p2, :cond_a

    .line 187
    .line 188
    iget-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->kkU:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 189
    .line 190
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;->ZYk()I

    .line 191
    .line 192
    .line 193
    move-result p1

    .line 194
    sub-int/2addr p1, p2

    .line 195
    iget-object p2, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->ex:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/cFZ;

    .line 196
    .line 197
    invoke-virtual {p2, p1, v2}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/cFZ;->oJ(ILjava/lang/String;)Ljava/util/List;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    if-eqz p1, :cond_6

    .line 202
    .line 203
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 204
    .line 205
    .line 206
    move-result p2

    .line 207
    if-eqz p2, :cond_6

    .line 208
    .line 209
    sget-object p2, Lcom/bytedance/sdk/component/ba/oJ/ZYk/ex;->ex:Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ/oJ;

    .line 210
    .line 211
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ/oJ;->Ln()Ljava/util/concurrent/atomic/AtomicLong;

    .line 212
    .line 213
    .line 214
    move-result-object p2

    .line 215
    invoke-static {p2, v3}, Lcom/bytedance/sdk/component/ba/oJ/tB/ZYk;->oJ(Ljava/util/concurrent/atomic/AtomicLong;I)V

    .line 216
    .line 217
    .line 218
    :cond_6
    return-object p1

    .line 219
    :cond_7
    invoke-interface {p1}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->ex()B

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-ne v0, v3, :cond_9

    .line 224
    .line 225
    invoke-interface {p1}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->Pfn()B

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    if-ne v0, v4, :cond_9

    .line 230
    .line 231
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ;->ex()Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-eqz v0, :cond_9

    .line 236
    .line 237
    iget-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->dLZ:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 238
    .line 239
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;->ZYk()I

    .line 240
    .line 241
    .line 242
    move-result p1

    .line 243
    if-le p1, p2, :cond_a

    .line 244
    .line 245
    iget-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->dLZ:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 246
    .line 247
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;->ZYk()I

    .line 248
    .line 249
    .line 250
    move-result p1

    .line 251
    sub-int/2addr p1, p2

    .line 252
    iget-object p2, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->Pfn:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/ba;

    .line 253
    .line 254
    invoke-virtual {p2, p1, v2}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/cFZ;->oJ(ILjava/lang/String;)Ljava/util/List;

    .line 255
    .line 256
    .line 257
    move-result-object p1

    .line 258
    if-eqz p1, :cond_8

    .line 259
    .line 260
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 261
    .line 262
    .line 263
    move-result p2

    .line 264
    if-eqz p2, :cond_8

    .line 265
    .line 266
    sget-object p2, Lcom/bytedance/sdk/component/ba/oJ/ZYk/ex;->ex:Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ/oJ;

    .line 267
    .line 268
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ/oJ;->LpP()Ljava/util/concurrent/atomic/AtomicLong;

    .line 269
    .line 270
    .line 271
    move-result-object p2

    .line 272
    invoke-static {p2, v3}, Lcom/bytedance/sdk/component/ba/oJ/tB/ZYk;->oJ(Ljava/util/concurrent/atomic/AtomicLong;I)V

    .line 273
    .line 274
    .line 275
    :cond_8
    return-object p1

    .line 276
    :cond_9
    invoke-interface {p1}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->ex()B

    .line 277
    .line 278
    .line 279
    move-result v0

    .line 280
    if-ne v0, v5, :cond_a

    .line 281
    .line 282
    invoke-interface {p1}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->Pfn()B

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    if-ne p1, v4, :cond_a

    .line 287
    .line 288
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ;->ba()Z

    .line 289
    .line 290
    .line 291
    move-result p1

    .line 292
    if-eqz p1, :cond_a

    .line 293
    .line 294
    iget-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->BTZ:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 295
    .line 296
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;->ZYk()I

    .line 297
    .line 298
    .line 299
    move-result p1

    .line 300
    if-le p1, p2, :cond_a

    .line 301
    .line 302
    iget-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->BTZ:Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;

    .line 303
    .line 304
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ba/oJ/ex/ZYk/oJ;->ZYk()I

    .line 305
    .line 306
    .line 307
    move-result p1

    .line 308
    sub-int/2addr p1, p2

    .line 309
    iget-object p2, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->ba:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/Pfn;

    .line 310
    .line 311
    invoke-virtual {p2, p1, v2}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/cFZ;->oJ(ILjava/lang/String;)Ljava/util/List;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    return-object p1

    .line 316
    :cond_a
    return-object v1
.end method

.method public oJ(IILjava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;",
            ">;"
        }
    .end annotation

    .line 43
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ;->oJ()Z

    move-result p1

    const/4 p2, 0x1

    const-string v0, "_id"

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->oJ:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/ex;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/oJ;->oJ(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 45
    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->oJ(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 47
    sget-object p3, Lcom/bytedance/sdk/component/ba/oJ/ZYk/ex;->ex:Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ/oJ;

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ/oJ;->cY()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/bytedance/sdk/component/ba/oJ/tB/ZYk;->oJ(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return-object p1

    .line 48
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ;->Pfn()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 49
    iget-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->tB:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/ZYk;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/oJ;->oJ(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 50
    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->oJ(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    invoke-interface {p1}, Ljava/util/List;->size()I

    return-object p1

    .line 52
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ;->ZYk()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 53
    iget-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->ZYk:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/oJ;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/oJ;->oJ(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 54
    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->oJ(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 56
    sget-object p3, Lcom/bytedance/sdk/component/ba/oJ/ZYk/ex;->ex:Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ/oJ;

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ/oJ;->jr()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/bytedance/sdk/component/ba/oJ/tB/ZYk;->oJ(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return-object p1

    .line 57
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ;->tB()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 58
    iget-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->ex:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/cFZ;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/cFZ;->ZYk(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 59
    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->oJ(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 60
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 61
    sget-object p3, Lcom/bytedance/sdk/component/ba/oJ/ZYk/ex;->ex:Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ/oJ;

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ/oJ;->Xe()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/bytedance/sdk/component/ba/oJ/tB/ZYk;->oJ(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return-object p1

    .line 62
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ;->ex()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 63
    iget-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->Pfn:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/ba;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/cFZ;->ZYk(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 64
    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->oJ(Ljava/util/List;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 65
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 66
    sget-object p3, Lcom/bytedance/sdk/component/ba/oJ/ZYk/ex;->ex:Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ/oJ;

    invoke-virtual {p3}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ/oJ;->tb()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p3

    invoke-static {p3, p2}, Lcom/bytedance/sdk/component/ba/oJ/tB/ZYk;->oJ(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return-object p1

    .line 67
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ;->ba()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 68
    iget-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->ba:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/Pfn;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/cFZ;->ZYk(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 69
    invoke-direct {p0, p1, p3}, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->oJ(Ljava/util/List;Ljava/util/List;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 70
    invoke-interface {p1}, Ljava/util/List;->size()I

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public oJ(IJ)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->oJ:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/ex;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/oJ;->oJ(IJ)V

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->tB:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/ZYk;

    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/oJ;->oJ(IJ)V

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->ZYk:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/oJ;

    if-eqz v0, :cond_2

    .line 101
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/oJ;->oJ(IJ)V

    .line 102
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->ex:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/cFZ;

    if-eqz v0, :cond_3

    .line 103
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/cFZ;->oJ(IJ)V

    .line 104
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->Pfn:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/ba;

    if-eqz v0, :cond_4

    .line 105
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/cFZ;->oJ(IJ)V

    .line 106
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->ba:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/Pfn;

    if-eqz v0, :cond_5

    .line 107
    invoke-virtual {v0, p1, p2, p3}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/cFZ;->oJ(IJ)V

    :cond_5
    return-void
.end method

.method public oJ(ILjava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_7

    .line 21
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 22
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;

    const/16 v1, 0xc8

    if-eq p1, v1, :cond_0

    const/4 v2, -0x1

    if-ne p1, v2, :cond_7

    .line 23
    :cond_0
    sget-object v2, Lcom/bytedance/sdk/component/ba/oJ/ZYk/ex;->ex:Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ/oJ;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ/oJ;->NO()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v3, v4}, Lcom/bytedance/sdk/component/ba/oJ/tB/ZYk;->oJ(Ljava/util/concurrent/atomic/AtomicLong;I)V

    if-eq p1, v1, :cond_1

    .line 24
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ/oJ;->yz()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {p1, v1}, Lcom/bytedance/sdk/component/ba/oJ/tB/ZYk;->oJ(Ljava/util/concurrent/atomic/AtomicLong;I)V

    .line 25
    :cond_1
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->ex()B

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_2

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->Pfn()B

    move-result p1

    if-ne p1, v1, :cond_2

    .line 26
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ;->oJ()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 27
    iget-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->oJ:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/ex;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/oJ;->ZYk(Ljava/util/List;)V

    return-void

    .line 28
    :cond_2
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->ex()B

    move-result p1

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-ne p1, v2, :cond_3

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->Pfn()B

    move-result p1

    if-ne p1, v3, :cond_3

    .line 29
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ;->Pfn()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 30
    iget-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->tB:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/ZYk;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/oJ;->ZYk(Ljava/util/List;)V

    return-void

    .line 31
    :cond_3
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->ex()B

    move-result p1

    if-nez p1, :cond_4

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->Pfn()B

    move-result p1

    if-ne p1, v3, :cond_4

    .line 32
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ;->ZYk()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 33
    iget-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->ZYk:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/oJ;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/oJ;->ZYk(Ljava/util/List;)V

    return-void

    .line 34
    :cond_4
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->ex()B

    move-result p1

    if-ne p1, v1, :cond_5

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->Pfn()B

    move-result p1

    if-ne p1, v3, :cond_5

    .line 35
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ;->tB()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 36
    iget-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->ex:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/cFZ;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/cFZ;->ZYk(Ljava/util/List;)V

    return-void

    .line 37
    :cond_5
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->ex()B

    move-result p1

    if-ne p1, v1, :cond_6

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->Pfn()B

    move-result p1

    if-ne p1, v2, :cond_6

    .line 38
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ;->ex()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 39
    iget-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->Pfn:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/ba;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/cFZ;->ZYk(Ljava/util/List;)V

    return-void

    .line 40
    :cond_6
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->ex()B

    move-result p1

    if-ne p1, v3, :cond_7

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->Pfn()B

    move-result p1

    if-ne p1, v2, :cond_7

    .line 41
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ;->ba()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 42
    iget-object p1, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->ba:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/Pfn;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/cFZ;->ZYk(Ljava/util/List;)V

    :cond_7
    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p2, 0x1

    .line 1
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->ZYk(J)V

    .line 2
    invoke-interface {p1}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->ex()B

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->Pfn()B

    move-result v0

    if-ne v0, p2, :cond_1

    .line 3
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ;->oJ()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->oJ:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/ex;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;->oJ(Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;)V

    return-void

    .line 5
    :cond_1
    invoke-interface {p1}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->ex()B

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->Pfn()B

    move-result v0

    if-ne v0, v2, :cond_2

    .line 6
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ;->Pfn()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7
    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->tB:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/ZYk;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;->oJ(Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;)V

    return-void

    .line 8
    :cond_2
    invoke-interface {p1}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->ex()B

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->Pfn()B

    move-result v0

    if-ne v0, v2, :cond_3

    .line 9
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ;->ZYk()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 10
    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->ZYk:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/oJ;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;->oJ(Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;)V

    return-void

    .line 11
    :cond_3
    invoke-interface {p1}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->ex()B

    move-result v0

    if-ne v0, p2, :cond_4

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->Pfn()B

    move-result v0

    if-ne v0, v2, :cond_4

    .line 12
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ;->tB()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 13
    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->ex:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/cFZ;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;->oJ(Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;)V

    return-void

    .line 14
    :cond_4
    invoke-interface {p1}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->ex()B

    move-result v0

    if-ne v0, p2, :cond_5

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->Pfn()B

    move-result v0

    if-ne v0, v1, :cond_5

    .line 15
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ;->ex()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->Pfn:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/ba;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;->oJ(Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;)V

    return-void

    .line 17
    :cond_5
    invoke-interface {p1}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->ex()B

    move-result v0

    if-ne v0, v2, :cond_6

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;->Pfn()B

    move-result v0

    if-ne v0, v1, :cond_6

    .line 18
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ;->ba()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->ba:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/Pfn;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/tB;->oJ(Lcom/bytedance/sdk/component/ba/oJ/ex/oJ;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    return-void

    .line 20
    :catchall_0
    sget-object p1, Lcom/bytedance/sdk/component/ba/oJ/ZYk/ex;->ex:Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ/oJ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ/oJ;->UN()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ba/oJ/tB/ZYk;->oJ(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return-void
.end method

.method public oJ(IZ)Z
    .locals 1

    .line 80
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ;->oJ()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 81
    iget-object p2, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->oJ:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/ex;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/oJ;->oJ(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 82
    sget-object p1, Lcom/bytedance/sdk/component/ba/oJ/ZYk/ex;->ex:Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ/oJ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ/oJ;->WcQ()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/ba/oJ/tB/ZYk;->oJ(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return v0

    .line 83
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ;->Pfn()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 84
    iget-object p2, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->tB:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/ZYk;

    if-eqz p2, :cond_1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/oJ;->oJ(I)Z

    move-result p2

    if-eqz p2, :cond_1

    return v0

    .line 85
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ;->ZYk()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 86
    iget-object p2, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->ZYk:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/oJ;

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/oJ;->oJ(I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 87
    sget-object p1, Lcom/bytedance/sdk/component/ba/oJ/ZYk/ex;->ex:Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ/oJ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ/oJ;->awB()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/ba/oJ/tB/ZYk;->oJ(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return v0

    .line 88
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ;->tB()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 89
    iget-object p2, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->ex:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/cFZ;

    if-eqz p2, :cond_3

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/cFZ;->oJ(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 90
    sget-object p1, Lcom/bytedance/sdk/component/ba/oJ/ZYk/ex;->ex:Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ/oJ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ/oJ;->eZI()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/ba/oJ/tB/ZYk;->oJ(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return v0

    .line 91
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ;->ex()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 92
    iget-object p2, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->Pfn:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/ba;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/cFZ;->oJ(I)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 93
    sget-object p1, Lcom/bytedance/sdk/component/ba/oJ/ZYk/ex;->ex:Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ/oJ;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ/oJ;->si()Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/ba/oJ/tB/ZYk;->oJ(Ljava/util/concurrent/atomic/AtomicLong;I)V

    return v0

    .line 94
    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/component/ba/oJ/ZYk/oJ;->ba()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 95
    iget-object p2, p0, Lcom/bytedance/sdk/component/ba/oJ/oJ/tB;->ba:Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/Pfn;

    if-eqz p2, :cond_5

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/ba/oJ/oJ/oJ/oJ/cFZ;->oJ(I)Z

    move-result p1

    if-eqz p1, :cond_5

    return v0

    :cond_5
    const/4 p1, 0x0

    return p1
.end method
