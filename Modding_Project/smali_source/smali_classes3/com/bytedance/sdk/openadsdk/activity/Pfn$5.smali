.class Lcom/bytedance/sdk/openadsdk/activity/Pfn$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/widget/ZYk$ZYk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/Pfn;->oJ(ZZLjava/lang/Runnable;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;

.field final synthetic ex:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

.field final synthetic oJ:Z

.field final synthetic tB:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/Pfn;ZLcom/bytedance/sdk/openadsdk/core/widget/ZYk;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$5;->ex:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$5;->oJ:Z

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$5;->ZYk:Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$5;->tB:Ljava/lang/Runnable;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public ZYk()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$5;->ZYk:Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;->dismiss()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$5;->ex:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    .line 7
    .line 8
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/so;->kkU:Lcom/bytedance/sdk/openadsdk/activity/ZYk;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/ZYk;->jFA()Landroid/os/Bundle;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    const-string v1, "user_has_give_up_reward"

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$5;->ex:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->QSm:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$5;->ex:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    .line 35
    .line 36
    const v1, 0x7fffffff

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->ba(I)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$5;->tB:Ljava/lang/Runnable;

    .line 43
    .line 44
    if-eqz v0, :cond_0

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$5;->oJ:Z

    .line 51
    .line 52
    if-eqz v0, :cond_4

    .line 53
    .line 54
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$5;->ex:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    .line 55
    .line 56
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 59
    .line 60
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->so(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    .line 66
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$5;->ex:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    .line 67
    .line 68
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 69
    .line 70
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->oJ()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_1

    .line 77
    .line 78
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$5;->ex:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    .line 79
    .line 80
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 81
    .line 82
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    .line 83
    .line 84
    const/4 v1, 0x5

    .line 85
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->oJ(I)V

    .line 86
    .line 87
    .line 88
    return-void

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$5;->ex:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    .line 90
    .line 91
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 92
    .line 93
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->so()V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$5;->ex:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    .line 99
    .line 100
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/activity/Pfn;)Z

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$5;->ex:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    .line 105
    .line 106
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 107
    .line 108
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->IUZ:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;

    .line 109
    .line 110
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/dLZ;->ba()V

    .line 111
    .line 112
    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$5;->ex:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    .line 114
    .line 115
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 116
    .line 117
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    .line 118
    .line 119
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->oJ()Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    if-eqz v0, :cond_3

    .line 124
    .line 125
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$5;->ex:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    .line 126
    .line 127
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 128
    .line 129
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    .line 130
    .line 131
    const/4 v1, 0x4

    .line 132
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->oJ(I)V

    .line 133
    .line 134
    .line 135
    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$5;->ex:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/activity/so;->cdg()V

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$5;->ex:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    .line 142
    .line 143
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->oJ(Lcom/bytedance/sdk/openadsdk/activity/Pfn;)Z

    .line 144
    .line 145
    .line 146
    return-void
.end method

.method public oJ()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$5;->oJ:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$5;->ex:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Xe:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;

    .line 10
    .line 11
    const/16 v1, 0x3e8

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/so;->Pfn(I)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$5;->ZYk:Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/widget/ZYk;->dismiss()V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/Pfn$5;->ex:Lcom/bytedance/sdk/openadsdk/activity/Pfn;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/activity/Pfn;->ex:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 24
    .line 25
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->QSm:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
