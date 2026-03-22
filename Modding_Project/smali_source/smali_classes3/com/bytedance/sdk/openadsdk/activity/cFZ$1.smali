.class Lcom/bytedance/sdk/openadsdk/activity/cFZ$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/cFZ;->Pfn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/cFZ;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->tb()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    .line 14
    .line 15
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->kkU:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_1

    .line 24
    .line 25
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UN:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->PiB()Z

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 38
    .line 39
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->ba(Z)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    .line 45
    .line 46
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 47
    .line 48
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    .line 49
    .line 50
    const/16 v1, 0x8

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ba(I)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 58
    .line 59
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jm:Lcom/bytedance/sdk/component/utils/IUZ;

    .line 60
    .line 61
    const/16 v1, 0x258

    .line 62
    .line 63
    const-wide/16 v2, 0x1388

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 73
    .line 74
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-eqz v0, :cond_0

    .line 79
    .line 80
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    .line 81
    .line 82
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 83
    .line 84
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 85
    .line 86
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-eqz v0, :cond_1

    .line 91
    .line 92
    if-eqz p1, :cond_1

    .line 93
    .line 94
    :cond_0
    return-void

    .line 95
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    .line 96
    .line 97
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 98
    .line 99
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->HL()V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    .line 105
    .line 106
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 107
    .line 108
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->UN:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/WcQ;->dLZ()V

    .line 111
    .line 112
    .line 113
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    .line 114
    .line 115
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 116
    .line 117
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->IUZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;

    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->ba()V

    .line 120
    .line 121
    .line 122
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    .line 123
    .line 124
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/activity/oJ;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 125
    .line 126
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 127
    .line 128
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->ex(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    if-eqz p1, :cond_2

    .line 133
    .line 134
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    .line 135
    .line 136
    const/4 v0, 0x0

    .line 137
    const/4 v1, 0x1

    .line 138
    invoke-static {p1, v1, v1, v0}, Lcom/bytedance/sdk/openadsdk/activity/cFZ;->oJ(Lcom/bytedance/sdk/openadsdk/activity/cFZ;ZZLjava/lang/Runnable;)Z

    .line 139
    .line 140
    .line 141
    return-void

    .line 142
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/cFZ$1;->oJ:Lcom/bytedance/sdk/openadsdk/activity/cFZ;

    .line 143
    .line 144
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/activity/so;->cdg()V

    .line 145
    .line 146
    .line 147
    return-void
.end method
