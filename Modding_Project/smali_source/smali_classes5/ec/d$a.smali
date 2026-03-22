.class Lec/d$a;
.super Landroid/os/Handler;
.source "OverScrollDecorator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lec/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lec/d;


# direct methods
.method constructor <init>(Lec/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lec/d$a;->a:Lec/d;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lec/d$a;->a:Lec/d;

    .line 2
    .line 3
    iget-object v0, v0, Lec/b;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->w()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget p1, p1, Landroid/os/Message;->what:I

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    const/16 v2, 0x3c

    .line 13
    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    if-eq p1, v1, :cond_2

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    if-eq p1, v0, :cond_0

    .line 20
    .line 21
    goto/16 :goto_1

    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Lec/d$a;->a:Lec/d;

    .line 24
    .line 25
    invoke-static {p1, v2}, Lec/d;->h(Lec/d;I)I

    .line 26
    .line 27
    .line 28
    goto/16 :goto_1

    .line 29
    .line 30
    :cond_1
    iget-object p1, p0, Lec/d$a;->a:Lec/d;

    .line 31
    .line 32
    const/4 v3, -0x1

    .line 33
    invoke-static {p1, v3}, Lec/d;->h(Lec/d;I)I

    .line 34
    .line 35
    .line 36
    :cond_2
    iget-object p1, p0, Lec/d$a;->a:Lec/d;

    .line 37
    .line 38
    invoke-static {p1}, Lec/d;->i(Lec/d;)I

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lec/d$a;->a:Lec/d;

    .line 42
    .line 43
    iget-object p1, p1, Lec/b;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->v()Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iget-object v3, p0, Lec/d$a;->a:Lec/d;

    .line 50
    .line 51
    iget-object v3, v3, Lec/b;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->b()Z

    .line 54
    .line 55
    .line 56
    move-result v3

    .line 57
    if-eqz v3, :cond_4

    .line 58
    .line 59
    iget-object v3, p0, Lec/d$a;->a:Lec/d;

    .line 60
    .line 61
    invoke-static {v3}, Lec/d;->j(Lec/d;)F

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    const v4, 0x453b8000    # 3000.0f

    .line 66
    .line 67
    .line 68
    cmpl-float v3, v3, v4

    .line 69
    .line 70
    const/4 v4, 0x0

    .line 71
    if-ltz v3, :cond_3

    .line 72
    .line 73
    invoke-static {p1, v0}, Lfc/c;->h(Landroid/view/View;I)Z

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    if-eqz p1, :cond_4

    .line 78
    .line 79
    iget-object p1, p0, Lec/d$a;->a:Lec/d;

    .line 80
    .line 81
    iget-object p1, p1, Lec/b;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->m()Lec/a;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iget-object v0, p0, Lec/d$a;->a:Lec/d;

    .line 88
    .line 89
    invoke-static {v0}, Lec/d;->j(Lec/d;)F

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    iget-object v3, p0, Lec/d$a;->a:Lec/d;

    .line 94
    .line 95
    invoke-static {v3}, Lec/d;->g(Lec/d;)I

    .line 96
    .line 97
    .line 98
    move-result v3

    .line 99
    invoke-virtual {p1, v0, v3}, Lec/a;->F(FI)V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lec/d$a;->a:Lec/d;

    .line 103
    .line 104
    invoke-static {p1, v4}, Lec/d;->k(Lec/d;F)F

    .line 105
    .line 106
    .line 107
    iget-object p1, p0, Lec/d$a;->a:Lec/d;

    .line 108
    .line 109
    invoke-static {p1, v2}, Lec/d;->h(Lec/d;I)I

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_3
    iget-object v3, p0, Lec/d$a;->a:Lec/d;

    .line 114
    .line 115
    invoke-static {v3}, Lec/d;->j(Lec/d;)F

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    const v5, -0x3ac48000    # -3000.0f

    .line 120
    .line 121
    .line 122
    cmpg-float v3, v3, v5

    .line 123
    .line 124
    if-gtz v3, :cond_4

    .line 125
    .line 126
    invoke-static {p1, v0}, Lfc/c;->g(Landroid/view/View;I)Z

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    if-eqz p1, :cond_4

    .line 131
    .line 132
    iget-object p1, p0, Lec/d$a;->a:Lec/d;

    .line 133
    .line 134
    iget-object p1, p1, Lec/b;->b:Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;

    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/lcodecore/tkrefreshlayout/TwinklingRefreshLayout$d;->m()Lec/a;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    iget-object v0, p0, Lec/d$a;->a:Lec/d;

    .line 141
    .line 142
    invoke-static {v0}, Lec/d;->j(Lec/d;)F

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    iget-object v3, p0, Lec/d$a;->a:Lec/d;

    .line 147
    .line 148
    invoke-static {v3}, Lec/d;->g(Lec/d;)I

    .line 149
    .line 150
    .line 151
    move-result v3

    .line 152
    invoke-virtual {p1, v0, v3}, Lec/a;->E(FI)V

    .line 153
    .line 154
    .line 155
    iget-object p1, p0, Lec/d$a;->a:Lec/d;

    .line 156
    .line 157
    invoke-static {p1, v4}, Lec/d;->k(Lec/d;F)F

    .line 158
    .line 159
    .line 160
    iget-object p1, p0, Lec/d$a;->a:Lec/d;

    .line 161
    .line 162
    invoke-static {p1, v2}, Lec/d;->h(Lec/d;I)I

    .line 163
    .line 164
    .line 165
    :cond_4
    :goto_0
    iget-object p1, p0, Lec/d$a;->a:Lec/d;

    .line 166
    .line 167
    invoke-static {p1}, Lec/d;->g(Lec/d;)I

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-ge p1, v2, :cond_5

    .line 172
    .line 173
    iget-object p1, p0, Lec/d$a;->a:Lec/d;

    .line 174
    .line 175
    invoke-static {p1}, Lec/d;->l(Lec/d;)Landroid/os/Handler;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    const-wide/16 v2, 0xa

    .line 180
    .line 181
    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 182
    .line 183
    .line 184
    :cond_5
    :goto_1
    return-void
.end method
