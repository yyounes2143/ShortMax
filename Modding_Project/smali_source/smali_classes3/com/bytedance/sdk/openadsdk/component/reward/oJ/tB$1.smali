.class Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/common/awB$oJ;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public ZYk(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->dLZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11
    .line 12
    .line 13
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 20
    .line 21
    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Pfn:Z

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    .line 33
    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    .line 43
    .line 44
    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->oJ(IZ)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void

    .line 48
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 55
    .line 56
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 57
    .line 58
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->jFA()Z

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    .line 76
    .line 77
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->QSm()V

    .line 84
    .line 85
    .line 86
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    .line 87
    .line 88
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 93
    .line 94
    instance-of p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    .line 95
    .line 96
    if-eqz p1, :cond_3

    .line 97
    .line 98
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    .line 99
    .line 100
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->ofl()Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-nez p1, :cond_3

    .line 111
    .line 112
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    .line 113
    .line 114
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 119
    .line 120
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->wd()Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    .line 125
    .line 126
    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 127
    .line 128
    .line 129
    move-result-object v2

    .line 130
    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    .line 131
    .line 132
    invoke-virtual {p1, v2, v1}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->ZYk(Lcom/bytedance/sdk/openadsdk/activity/so;I)V

    .line 133
    .line 134
    .line 135
    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    .line 136
    .line 137
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 142
    .line 143
    const/4 v1, 0x4

    .line 144
    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/jr/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;I)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    .line 148
    .line 149
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    .line 154
    .line 155
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->Pfn(I)V

    .line 156
    .line 157
    .line 158
    return-void
.end method

.method public oJ(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->dLZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    const-string v0, "landing_page"

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->ex(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    .line 3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->Pfn(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->kkU:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->ZYk(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    const-string v0, "playable"

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->eXp()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    const-string v0, "endcard"

    goto :goto_0

    .line 9
    :cond_3
    const-string v0, "video_player"

    .line 10
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->ZYk(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)Lcom/bytedance/sdk/openadsdk/common/awB;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/common/awB;->setDislikeSource(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->Pfn:Z

    const/16 v0, 0x8

    if-eqz p1, :cond_6

    .line 12
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    if-eqz p1, :cond_5

    .line 13
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->oJ(IZ)V

    :cond_5
    return-void

    .line 14
    :cond_6
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->oJ:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->eZI()V

    .line 15
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ba()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 16
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->oq()V

    .line 17
    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    instance-of p1, p1, Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->ofl()Z

    move-result p1

    if-nez p1, :cond_8

    .line 18
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->wd()Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object v1

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->ZYk(Lcom/bytedance/sdk/openadsdk/activity/so;I)V

    .line 19
    :cond_8
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/jr/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/core/model/cY;I)V

    .line 20
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->WcQ()V

    return-void
.end method

.method public oJ(Lcom/bytedance/sdk/openadsdk/FilterWord;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object v0

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->BTZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/FilterWord;->hasSecondOptions()Z

    move-result p1

    if-nez p1, :cond_1

    .line 22
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->BTZ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 23
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    if-eqz p1, :cond_0

    .line 24
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    move-result-object p1

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->oCU:Lcom/bytedance/sdk/openadsdk/activity/so;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->wd()Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->ZYk(Z)V

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB$1;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;->tB(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/tB;)V

    :cond_1
    return-void
.end method
