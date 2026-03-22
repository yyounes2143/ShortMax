.class public Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;
    }
.end annotation


# instance fields
.field private BTZ:I

.field private HL:Lorg/json/JSONObject;

.field private IUZ:Lorg/json/JSONObject;

.field private Id:I

.field private Jc:I

.field private Ln:Lorg/json/JSONObject;

.field private LpP:Z

.field private Pfn:I

.field private PiB:Ljava/lang/String;

.field private QSm:I

.field private RZ:I

.field private Ry:I

.field private final UN:Z

.field private WcQ:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final XAo:Ljava/lang/String;

.field private Xe:I

.field private ZYk:Lcom/bytedance/sdk/component/adexpress/ZYk/Pfn;

.field private awB:I

.field private ba:Ljava/lang/String;

.field private cFZ:Ljava/lang/String;

.field private cY:Ljava/lang/String;

.field private dLZ:J

.field private eZI:Z

.field private ex:Lcom/bytedance/sdk/component/adexpress/ZYk/jFA;

.field private jFA:Z

.field private jr:D

.field private kkU:I

.field private final mu:Ljava/lang/String;

.field private nke:Ljava/lang/String;

.field private oJ:Lorg/json/JSONObject;

.field private oq:I

.field private si:Ljava/lang/String;

.field private so:Ljava/lang/String;

.field private tB:Ljava/lang/String;

.field private tb:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->oJ(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)Lorg/json/JSONObject;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->oJ:Lorg/json/JSONObject;

    .line 9
    .line 10
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->ZYk(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)Lcom/bytedance/sdk/component/adexpress/ZYk/Pfn;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->ZYk:Lcom/bytedance/sdk/component/adexpress/ZYk/Pfn;

    .line 15
    .line 16
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->tB(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->tB:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->ex(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)Lcom/bytedance/sdk/component/adexpress/ZYk/jFA;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->ex:Lcom/bytedance/sdk/component/adexpress/ZYk/jFA;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->Pfn(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->Pfn:I

    .line 33
    .line 34
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->ba(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->ba:Ljava/lang/String;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->cFZ(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->cFZ:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->so(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->so:Ljava/lang/String;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->jFA(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->jFA:Z

    .line 57
    .line 58
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->kkU(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->kkU:I

    .line 63
    .line 64
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->dLZ(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)J

    .line 65
    .line 66
    .line 67
    move-result-wide v0

    .line 68
    iput-wide v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->dLZ:J

    .line 69
    .line 70
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->BTZ(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)I

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->BTZ:I

    .line 75
    .line 76
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->PiB(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->PiB:Ljava/lang/String;

    .line 81
    .line 82
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->WcQ(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)Ljava/util/Map;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->WcQ:Ljava/util/Map;

    .line 87
    .line 88
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->awB(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->awB:I

    .line 93
    .line 94
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->eZI(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->eZI:Z

    .line 99
    .line 100
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->si(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->si:Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->Ry(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->Ry:I

    .line 111
    .line 112
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->RZ(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)I

    .line 113
    .line 114
    .line 115
    move-result v0

    .line 116
    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->RZ:I

    .line 117
    .line 118
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->QSm(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->QSm:I

    .line 123
    .line 124
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->oq(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)I

    .line 125
    .line 126
    .line 127
    move-result v0

    .line 128
    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->oq:I

    .line 129
    .line 130
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->Id(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->Id:I

    .line 135
    .line 136
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->cY(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->cY:Ljava/lang/String;

    .line 141
    .line 142
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->jr(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)D

    .line 143
    .line 144
    .line 145
    move-result-wide v0

    .line 146
    iput-wide v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->jr:D

    .line 147
    .line 148
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->Xe(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)I

    .line 149
    .line 150
    .line 151
    move-result v0

    .line 152
    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->Xe:I

    .line 153
    .line 154
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->tb(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)Z

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->tb:Z

    .line 159
    .line 160
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->HL(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)Lorg/json/JSONObject;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->HL:Lorg/json/JSONObject;

    .line 165
    .line 166
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->IUZ(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)Lorg/json/JSONObject;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->IUZ:Lorg/json/JSONObject;

    .line 171
    .line 172
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->Ln(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)Lorg/json/JSONObject;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->Ln:Lorg/json/JSONObject;

    .line 177
    .line 178
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->LpP(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)Z

    .line 179
    .line 180
    .line 181
    move-result v0

    .line 182
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->LpP:Z

    .line 183
    .line 184
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->nke(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->nke:Ljava/lang/String;

    .line 189
    .line 190
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->Jc(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    iput v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->Jc:I

    .line 195
    .line 196
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->UN(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)Z

    .line 197
    .line 198
    .line 199
    move-result v0

    .line 200
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->UN:Z

    .line 201
    .line 202
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->mu(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)Ljava/lang/String;

    .line 203
    .line 204
    .line 205
    move-result-object v0

    .line 206
    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->mu:Ljava/lang/String;

    .line 207
    .line 208
    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;->XAo(Lcom/bytedance/sdk/component/adexpress/ZYk/PiB$oJ;)Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->XAo:Ljava/lang/String;

    .line 213
    .line 214
    return-void
.end method


# virtual methods
.method public BTZ()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->awB:I

    .line 2
    .line 3
    return v0
.end method

.method public HL()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->mu:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public IUZ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->XAo:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public Id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->Id:I

    .line 2
    .line 3
    return v0
.end method

.method public Pfn()Lcom/bytedance/sdk/component/adexpress/ZYk/jFA;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->ex:Lcom/bytedance/sdk/component/adexpress/ZYk/jFA;

    .line 2
    .line 3
    return-object v0
.end method

.method public PiB()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->eZI:Z

    .line 2
    .line 3
    return v0
.end method

.method public QSm()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->Ln:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public RZ()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->IUZ:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public Ry()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->HL:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public WcQ()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->si:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public Xe()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->Jc:I

    .line 2
    .line 3
    return v0
.end method

.method public ZYk()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->jr:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public awB()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->Ry:I

    .line 2
    .line 3
    return v0
.end method

.method public ba()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->Pfn:I

    .line 2
    .line 3
    return v0
.end method

.method public cFZ()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->Xe:I

    .line 2
    .line 3
    return v0
.end method

.method public cY()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->LpP:Z

    .line 2
    .line 3
    return v0
.end method

.method public dLZ()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->WcQ:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public eZI()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->RZ:I

    .line 2
    .line 3
    return v0
.end method

.method public ex()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->tB:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public jFA()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->dLZ:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public jr()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->nke:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public kkU()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->BTZ:I

    .line 2
    .line 3
    return v0
.end method

.method public oJ()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->tb:Z

    .line 2
    .line 3
    return v0
.end method

.method public oq()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->oq:I

    .line 2
    .line 3
    return v0
.end method

.method public si()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->QSm:I

    .line 2
    .line 3
    return v0
.end method

.method public so()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->jFA:Z

    .line 2
    .line 3
    return v0
.end method

.method public tB()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->oJ:Lorg/json/JSONObject;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->ZYk:Lcom/bytedance/sdk/component/adexpress/ZYk/Pfn;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/bytedance/sdk/component/adexpress/ZYk/Pfn;->oJ()Lorg/json/JSONObject;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->oJ:Lorg/json/JSONObject;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->oJ:Lorg/json/JSONObject;

    .line 16
    .line 17
    return-object v0
.end method

.method public tb()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/adexpress/ZYk/PiB;->UN:Z

    .line 2
    .line 3
    return v0
.end method
