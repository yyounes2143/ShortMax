.class public Lcom/bytedance/sdk/openadsdk/activity/cFZ;
.super Lcom/bytedance/sdk/openadsdk/activity/oJ;
.source "SourceFile"


# static fields
.field private static Id:Ljava/lang/String;

.field private static Xe:Ljava/lang/String;

.field private static cY:Ljava/lang/String;

.field private static jr:Ljava/lang/String;

.field private static oq:Ljava/lang/String;


# instance fields
.field private HL:Z

.field protected ba:I

.field protected cFZ:I

.field so:I

.field private tb:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;IIZ)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/openadsdk/activity/oJ;-><init>(Lcom/bytedance/sdk/openadsdk/activity/ZYk;Lcom/bytedance/sdk/openadsdk/core/model/cY;IIZ)V

    .line 2
    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->tb:I

    .line 6
    .line 7
    return-void
.end method

.method static synthetic ZYk(Lcom/bytedance/sdk/openadsdk/activity/cFZ;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->mwH()V

    return-void
.end method

.method private mwH()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->LpP()V

    .line 6
    .line 7
    .line 8
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;

    .line 9
    .line 10
    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;-><init>()V

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 14
    .line 15
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->BTZ()J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ZYk(J)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 25
    .line 26
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Xe()J

    .line 29
    .line 30
    .line 31
    move-result-wide v1

    .line 32
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ex(J)V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 36
    .line 37
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->eZI()J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->tB(J)V

    .line 44
    .line 45
    .line 46
    const/4 v1, 0x3

    .line 47
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->tB(I)V

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 51
    .line 52
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->jr()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->ex(I)V

    .line 59
    .line 60
    .line 61
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 62
    .line 63
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ZYk()J

    .line 66
    .line 67
    .line 68
    move-result-wide v1

    .line 69
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;->oJ(J)V

    .line 70
    .line 71
    .line 72
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 73
    .line 74
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->so()Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 81
    .line 82
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 83
    .line 84
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Pfn()Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-static {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/ex/Pfn/oJ/oJ;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ZYk/oJ;Lcom/bytedance/sdk/openadsdk/ex/Pfn/ZYk/awB$oJ;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 92
    .line 93
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ba:I

    .line 94
    .line 95
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/HL;->tB(I)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 99
    .line 100
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 101
    .line 102
    const-string v1, "skip"

    .line 103
    .line 104
    const/4 v2, 0x0

    .line 105
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(Ljava/lang/String;Z)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 109
    .line 110
    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tB:Z

    .line 111
    .line 112
    if-eqz v0, :cond_0

    .line 113
    .line 114
    const/4 v0, 0x1

    .line 115
    const/4 v1, 0x4

    .line 116
    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oJ(ZI)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 120
    .line 121
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 122
    .line 123
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_1

    .line 128
    .line 129
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 130
    .line 131
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->eZI:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 132
    .line 133
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    if-nez v0, :cond_1

    .line 138
    .line 139
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->cdg()V

    .line 140
    .line 141
    .line 142
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 143
    .line 144
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 145
    .line 146
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->NTC()Lcom/bytedance/sdk/openadsdk/core/model/ex;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    if-eqz v0, :cond_2

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/ex;->oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    if-eqz v0, :cond_2

    .line 157
    .line 158
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 159
    .line 160
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 161
    .line 162
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->BTZ()J

    .line 163
    .line 164
    .line 165
    move-result-wide v1

    .line 166
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->ba(J)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->Pfn(J)V

    .line 170
    .line 171
    .line 172
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 173
    .line 174
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 175
    .line 176
    const/4 v1, 0x5

    .line 177
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/jr/ZYk/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;I)V

    .line 178
    .line 179
    .line 180
    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/cFZ;Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 0

    .line 2
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/cFZ;)Z
    .locals 0

    .line 3
    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->HL:Z

    return p0
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/cFZ;Z)Z
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->HL:Z

    return p1
.end method

.method static synthetic oJ(Lcom/bytedance/sdk/openadsdk/activity/cFZ;ZZLjava/lang/Runnable;)Z
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->oJ(ZZLjava/lang/Runnable;)Z

    move-result p0

    return p0
.end method

.method private oJ(ZZLjava/lang/Runnable;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_2

    .line 73
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 74
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->jFA()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "user_has_give_up_reward"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 75
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->so(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p2

    if-nez p2, :cond_0

    if-eqz p3, :cond_2

    :cond_0
    if-nez p3, :cond_1

    .line 76
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->mwH()V

    :cond_1
    return v0

    .line 77
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object p2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ba:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->cFZ(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5

    if-nez p3, :cond_4

    if-eqz p1, :cond_3

    .line 78
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->cdg()V

    return v0

    .line 79
    :cond_3
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->mwH()V

    :cond_4
    return v0

    .line 80
    :cond_5
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->jFA()Landroid/os/Bundle;

    move-result-object p2

    const-string v1, "reward_verify"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_9

    if-nez p3, :cond_8

    .line 81
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->so(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 82
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->mwH()V

    return v0

    :cond_6
    if-eqz p1, :cond_7

    .line 83
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->cdg()V

    return v0

    .line 84
    :cond_7
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->mwH()V

    :cond_8
    return v0

    .line 85
    :cond_9
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->QSm:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 86
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oq()V

    if-eqz p1, :cond_a

    .line 87
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->WcQ()V

    .line 88
    :cond_a
    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->HyG()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;-><init>(Landroid/content/Context;)V

    .line 89
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    iput-object p2, v1, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->PiB:Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;

    if-eqz p1, :cond_b

    .line 90
    sget-object v1, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->oq:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;

    move-result-object v1

    sget-object v2, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->Id:Ljava/lang/String;

    .line 91
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;->ZYk(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;

    move-result-object v1

    sget-object v2, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->cY:Ljava/lang/String;

    .line 92
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;->tB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;

    goto :goto_0

    .line 93
    :cond_b
    sget-object v1, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->jr:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;->oJ(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;

    move-result-object v1

    sget-object v2, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->Xe:Ljava/lang/String;

    .line 94
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;->ZYk(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;

    move-result-object v1

    sget-object v2, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->cY:Ljava/lang/String;

    .line 95
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;->tB(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;

    .line 96
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->PiB:Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/cFZ$5;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/cFZ$5;-><init>(Lcom/bytedance/sdk/openadsdk/activity/cFZ;ZLcom/bytedance/sdk/openadsdk/core/widget/ZYk;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;->oJ(Lcom/bytedance/sdk/openadsdk/core/widget/ZYk$ZYk;)Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;

    move-result-object p1

    .line 97
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;->show()V

    return v0
.end method


# virtual methods
.method protected Pfn()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->kkU()Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/cFZ$1;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/activity/cFZ$1;-><init>(Lcom/bytedance/sdk/openadsdk/activity/cFZ;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Landroid/view/View;->getId()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 27
    .line 28
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    .line 29
    .line 30
    new-instance v2, Lcom/bytedance/sdk/openadsdk/activity/cFZ$2;

    .line 31
    .line 32
    invoke-direct {v2, p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/cFZ$2;-><init>(Lcom/bytedance/sdk/openadsdk/activity/cFZ;Landroid/view/View;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/top/ZYk;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public RZ()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->kO()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 15
    .line 16
    iget v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ba:I

    .line 17
    .line 18
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->Xe(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->ba:I

    .line 27
    .line 28
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 29
    .line 30
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 31
    .line 32
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->Ry(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    const/4 v2, 0x0

    .line 37
    const/4 v3, 0x1

    .line 38
    if-eqz v1, :cond_1

    .line 39
    .line 40
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 41
    .line 42
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->XAo()D

    .line 45
    .line 46
    .line 47
    move-result-wide v4

    .line 48
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->so:I

    .line 49
    .line 50
    int-to-double v6, v1

    .line 51
    div-double/2addr v6, v4

    .line 52
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 53
    .line 54
    sub-double/2addr v4, v6

    .line 55
    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    .line 56
    .line 57
    mul-double/2addr v4, v6

    .line 58
    int-to-double v0, v0

    .line 59
    cmpl-double v0, v4, v0

    .line 60
    .line 61
    if-ltz v0, :cond_5

    .line 62
    .line 63
    :goto_0
    move v2, v3

    .line 64
    goto :goto_2

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 66
    .line 67
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->zUb()I

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 74
    .line 75
    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    .line 76
    .line 77
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ZYk()F

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    int-to-float v1, v1

    .line 82
    div-float/2addr v4, v1

    .line 83
    const/high16 v1, 0x3f800000    # 1.0f

    .line 84
    .line 85
    sub-float/2addr v1, v4

    .line 86
    const/high16 v4, 0x42c80000    # 100.0f

    .line 87
    .line 88
    mul-float/2addr v1, v4

    .line 89
    int-to-float v0, v0

    .line 90
    cmpl-float v0, v1, v0

    .line 91
    .line 92
    if-ltz v0, :cond_2

    .line 93
    .line 94
    move v0, v3

    .line 95
    goto :goto_1

    .line 96
    :cond_2
    move v0, v2

    .line 97
    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 102
    .line 103
    iget v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ba:I

    .line 104
    .line 105
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-interface {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->oJ(Ljava/lang/String;)I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-nez v1, :cond_4

    .line 114
    .line 115
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 116
    .line 117
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 118
    .line 119
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->BTZ()Lcom/bytedance/sdk/openadsdk/core/UN;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/UN;->ba()Z

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 128
    .line 129
    iget-object v4, v4, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    .line 130
    .line 131
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->tB()Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-eqz v4, :cond_3

    .line 136
    .line 137
    move v1, v3

    .line 138
    :cond_3
    if-eqz v0, :cond_5

    .line 139
    .line 140
    if-eqz v1, :cond_5

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_4
    if-ne v1, v3, :cond_5

    .line 144
    .line 145
    move v2, v0

    .line 146
    :cond_5
    :goto_2
    if-eqz v2, :cond_6

    .line 147
    .line 148
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->nQI()V

    .line 149
    .line 150
    .line 151
    :cond_6
    return-void
.end method

.method public XAo()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->XAo()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->HL:Z

    .line 6
    .line 7
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 8
    .line 9
    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    .line 10
    .line 11
    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->ZYk(Z)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Rl()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method protected ZYk()V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    const/4 v1, 0x0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/common/TTAdDislikeToast;->getSkipText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->oJ(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mu:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/PiB;->Pfn(Z)V

    return-void
.end method

.method protected ZYk(JJ)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->tb:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->MoK()I

    move-result v0

    const/16 v1, 0x64

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->tb:I

    :cond_1
    long-to-float p1, p1

    const/high16 p2, 0x447a0000    # 1000.0f

    div-float/2addr p1, p2

    long-to-float p2, p3

    div-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float/2addr p1, p2

    .line 7
    iget p2, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->tb:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_2

    .line 8
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->nQI()V

    :cond_2
    return-void
.end method

.method public ZYk(Z)V
    .locals 0

    .line 1
    return-void
.end method

.method protected a_()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public b_()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "rewarded_video"

    .line 2
    .line 3
    return-object v0
.end method

.method public c_()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->LpP:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public d_()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 2
    .line 3
    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    .line 4
    .line 5
    return v0
.end method

.method public e_()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->Qu()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public f_()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->ex(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method protected kkU()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->Jm()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->BTZ()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public oJ(I)V
    .locals 1

    const/16 v0, 0x2710

    if-ne p1, v0, :cond_0

    .line 35
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->nQI()V

    :cond_0
    return-void
.end method

.method public oJ(JJ)V
    .locals 4

    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->uvK:Z

    if-eqz v0, :cond_0

    return-void

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->MoK()I

    move-result v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uWF()I

    move-result v0

    if-ltz v0, :cond_1

    .line 65
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->uWF()I

    move-result p3

    int-to-long p3, p3

    .line 66
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->ZYk(JJ)V

    return-void

    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-gtz v0, :cond_2

    return-void

    .line 67
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->lY:I

    int-to-long v0, v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    add-long/2addr p1, v0

    .line 68
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->tb:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 69
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/si;->ex()Lcom/bytedance/sdk/openadsdk/core/settings/ba;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ba:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ba;->Xe(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;

    move-result-object v0

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/core/settings/ZYk;->ba:I

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->tb:I

    :cond_3
    const-wide/16 v0, 0x7530

    cmp-long v0, p3, v0

    if-ltz v0, :cond_4

    const-wide/16 v0, 0x6978

    cmp-long v0, p1, v0

    if-ltz v0, :cond_4

    .line 70
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->nQI()V

    return-void

    :cond_4
    const-wide/16 v0, 0x64

    mul-long/2addr p1, v0

    long-to-float p1, p1

    long-to-float p2, p3

    div-float/2addr p1, p2

    .line 71
    iget p2, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->tb:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_5

    .line 72
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->nQI()V

    :cond_5
    return-void
.end method

.method public oJ(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V
    .locals 0

    .line 6
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oJ(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/activity/ZYk$Pfn;)V

    .line 7
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/ZYk;->oJ(Landroid/app/Activity;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 9
    const-string p2, "media_extra"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->eZI:Ljava/lang/String;

    .line 10
    const-string p2, "user_id"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->awB:Ljava/lang/String;

    .line 11
    :try_start_0
    sget-object p1, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->jr:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Rl:Landroid/content/Context;

    const-string p2, "tt_reward_msg"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->jr:Ljava/lang/String;

    .line 13
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Rl:Landroid/content/Context;

    const-string p2, "tt_msgPlayable"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->oq:Ljava/lang/String;

    .line 14
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Rl:Landroid/content/Context;

    const-string p2, "tt_negtiveBtnBtnText"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->cY:Ljava/lang/String;

    .line 15
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Rl:Landroid/content/Context;

    const-string p2, "tt_postiveBtnText"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->Xe:Ljava/lang/String;

    .line 16
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Rl:Landroid/content/Context;

    const-string p2, "tt_postiveBtnTextPlayable"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/cY;->oJ(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->Id:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 17
    const-string p2, "TTAD.RewardAdScene"

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/QSm;->tB(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    if-eqz p2, :cond_2

    .line 19
    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/dLZ;

    iput-object p2, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->EP:Lcom/bytedance/sdk/openadsdk/component/reward/dLZ;

    :cond_2
    return-void
.end method

.method public oJ(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    return-void
.end method

.method public oJ(Ljava/lang/String;)V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->ex()Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk$oJ;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->ex()Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk$oJ;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk$oJ;->oJ(Z)V

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    .line 23
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->oJ()Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->oJ()Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;->setSoundMute(Z)V

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "will set is Mute "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mLastVolume="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->nke:Lcom/bytedance/sdk/openadsdk/BTZ/jFA;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/BTZ/jFA;->oJ()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    invoke-virtual {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(ZLjava/lang/String;)V

    .line 27
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->Ry(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->kkU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 28
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Pfn(Z)V

    .line 29
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    if-eqz p1, :cond_4

    .line 30
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->NTC()Lcom/bytedance/sdk/openadsdk/core/model/ex;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 31
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/ex;->oJ()Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 32
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->bgF:Z

    if-eqz v1, :cond_3

    .line 33
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->BTZ()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->so(J)V

    return-void

    .line 34
    :cond_3
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->BTZ()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dLZ/ex;->jFA(J)V

    :cond_4
    return-void
.end method

.method public oJ(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .line 98
    const-string v0, "skipToNextAd"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->QSm()Lcom/bytedance/sdk/openadsdk/activity/so;

    move-result-object v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/activity/cFZ$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/cFZ$6;-><init>(Lcom/bytedance/sdk/openadsdk/activity/cFZ;Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->oJ(ZZLjava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/oJ;->oJ(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public oJ(JZ)Z
    .locals 11

    .line 36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->ZYk(Z)V

    .line 37
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->HL:Z

    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/so;->jFA:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->Pfn()Z

    move-result v0

    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_3

    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->oJ()Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->oJ()Lcom/bytedance/sdk/openadsdk/component/reward/view/ex;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/so/QSm;->getAdShowTime()Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    move-result-object v0

    goto :goto_0

    .line 41
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/ex/cFZ;-><init>()V

    .line 42
    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v4, v3, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->ZYk()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v4, v3, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    .line 43
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    if-eqz v0, :cond_1

    .line 45
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->kkU()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "dynamic_show_type"

    invoke-interface {v9, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->oJ(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 48
    :catch_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 49
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 50
    :try_start_0
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v9, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/activity/cFZ$3;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/activity/cFZ$3;-><init>(Lcom/bytedance/sdk/openadsdk/activity/cFZ;)V

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;)V

    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    move-wide v6, p1

    move v8, p3

    invoke-virtual/range {v5 .. v10}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(JZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)Z

    move-result p1

    if-eqz p1, :cond_2

    if-nez p3, :cond_2

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    div-long/2addr p2, v1

    long-to-int p2, p2

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->cFZ:I

    :cond_2
    return p1

    .line 54
    :cond_3
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ex/cFZ;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/ex/cFZ;-><init>()V

    .line 55
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/ex/cFZ;->oJ(JF)V

    .line 56
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v4, v3, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ba()Landroid/widget/FrameLayout;

    move-result-object v3

    invoke-virtual {v4, v3, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(Landroid/widget/FrameLayout;Lcom/bytedance/sdk/openadsdk/ex/cFZ;)V

    .line 57
    new-instance v0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/activity/cFZ$4;-><init>(Lcom/bytedance/sdk/openadsdk/activity/cFZ;)V

    .line 58
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;)V

    .line 59
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->awB:Lcom/bytedance/sdk/openadsdk/core/model/QSm;

    if-eqz v3, :cond_4

    .line 60
    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->oJ(Lcom/bykv/vk/openvk/oJ/oJ/oJ/ex/tB$oJ;)V

    .line 61
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    move-wide v4, p1

    move v6, p3

    invoke-virtual/range {v3 .. v8}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(JZLjava/util/Map;Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)Z

    move-result p1

    if-eqz p1, :cond_5

    if-nez p3, :cond_5

    .line 62
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    div-long/2addr p2, v1

    long-to-int p2, p2

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->cFZ:I

    :cond_5
    return p1
.end method

.method public si()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/activity/so;->nQI()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
