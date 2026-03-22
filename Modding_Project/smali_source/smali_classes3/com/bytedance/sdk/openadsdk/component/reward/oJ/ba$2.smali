.class Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/PAGExpressAdWrapperListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ([FLcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

.field final synthetic oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

.field final synthetic tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$2;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$2;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$2;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$2;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$2;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$2;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->jA()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$2;->oJ:Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;

    .line 34
    .line 35
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/BTZ/ex/ZYk;->e_()V

    .line 36
    .line 37
    .line 38
    :cond_0
    return-void
.end method

.method public onAdDismissed()V
    .locals 0

    .line 1
    return-void
.end method

.method public onAdShow(Landroid/view/View;I)V
    .locals 0

    .line 1
    return-void
.end method

.method public onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$2;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->RQ()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$2;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 22
    .line 23
    const/4 p2, 0x1

    .line 24
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Z)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$2;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Pfn()V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$2;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->Pfn()Landroid/os/Handler;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    new-instance p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$2$1;

    .line 51
    .line 52
    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$2$1;-><init>(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$2;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$2;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->PiB()V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;FF)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$2;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 8
    .line 9
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/Ln;->si(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$2;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->RQ()Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_3

    .line 29
    .line 30
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$2;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->jFA()Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const/4 p2, 0x1

    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$2;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 46
    .line 47
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ(Z)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$2;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 57
    .line 58
    const/4 p3, 0x0

    .line 59
    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ex(Z)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$2;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->cY:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;

    .line 70
    .line 71
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/eZI;->ex(Z)V

    .line 72
    .line 73
    .line 74
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$2;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    .line 81
    .line 82
    const/16 p3, 0x8

    .line 83
    .line 84
    invoke-virtual {p1, p3}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->oJ(I)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$2;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;

    .line 88
    .line 89
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 94
    .line 95
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->oJ(Z)V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$2;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;

    .line 99
    .line 100
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->Jc:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/si;->Pfn()V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$2;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;

    .line 110
    .line 111
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->jFA()Z

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-eqz p1, :cond_2

    .line 122
    .line 123
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$2;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;

    .line 124
    .line 125
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->tb:Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;

    .line 130
    .line 131
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/kkU;->ZYk()Landroid/widget/FrameLayout;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    const/high16 p2, -0x1000000

    .line 136
    .line 137
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 138
    .line 139
    .line 140
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$2;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 141
    .line 142
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$2;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;

    .line 143
    .line 144
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    .line 149
    .line 150
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->ba()Landroid/widget/FrameLayout;

    .line 151
    .line 152
    .line 153
    move-result-object p2

    .line 154
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->oJ(Landroid/widget/FrameLayout;)V

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$2;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;

    .line 159
    .line 160
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 165
    .line 166
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/cY;->ib()Lcom/bykv/vk/openvk/oJ/oJ/oJ/tB/ZYk;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    if-eqz p1, :cond_3

    .line 171
    .line 172
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$2;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 173
    .line 174
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/oJ;->oJ()Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-eqz p1, :cond_3

    .line 179
    .line 180
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$2;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;

    .line 181
    .line 182
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    iput-boolean p2, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->mwH:Z

    .line 187
    .line 188
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$2;->ZYk:Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;

    .line 189
    .line 190
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/ZYk/ZYk;->tb()V

    .line 191
    .line 192
    .line 193
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$2;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;

    .line 194
    .line 195
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 196
    .line 197
    .line 198
    move-result-object p1

    .line 199
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ZYk:Lcom/bytedance/sdk/openadsdk/core/model/cY;

    .line 200
    .line 201
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->tB(Lcom/bytedance/sdk/openadsdk/core/model/cY;)Z

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    if-eqz p1, :cond_4

    .line 206
    .line 207
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$2;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;

    .line 208
    .line 209
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    .line 214
    .line 215
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->awB:Lcom/bytedance/sdk/openadsdk/core/model/QSm;

    .line 216
    .line 217
    if-eqz p1, :cond_4

    .line 218
    .line 219
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/model/QSm;->tB()V

    .line 220
    .line 221
    .line 222
    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba$2;->tB:Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;

    .line 223
    .line 224
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;->oJ(Lcom/bytedance/sdk/openadsdk/component/reward/oJ/ba;)Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;

    .line 225
    .line 226
    .line 227
    move-result-object p1

    .line 228
    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/component/reward/oJ/oJ;->ofl:Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;

    .line 229
    .line 230
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/component/reward/view/BTZ;->PiB()V

    .line 231
    .line 232
    .line 233
    return-void
.end method
