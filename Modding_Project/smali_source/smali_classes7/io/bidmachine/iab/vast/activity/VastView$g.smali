.class Lio/bidmachine/iab/vast/activity/VastView$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/bidmachine/iab/vast/activity/VastView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/iab/vast/activity/VastView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/bidmachine/iab/vast/activity/VastView;


# direct methods
.method constructor <init>(Lio/bidmachine/iab/vast/activity/VastView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$g;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(IIF)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$g;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->F0(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/util/LinkedList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x2

    .line 12
    if-ne v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$g;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 15
    .line 16
    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->F0(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/util/LinkedList;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    iget-object v1, p0, Lio/bidmachine/iab/vast/activity/VastView$g;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 31
    .line 32
    invoke-static {v1}, Lio/bidmachine/iab/vast/activity/VastView;->F0(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/util/LinkedList;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    check-cast v1, Ljava/lang/Integer;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-le v0, v1, :cond_0

    .line 47
    .line 48
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$g;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 49
    .line 50
    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->k0(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const/4 v1, 0x0

    .line 55
    new-array v1, v1, [Ljava/lang/Object;

    .line 56
    .line 57
    const-string v2, "Playing progressing error: seek"

    .line 58
    .line 59
    invoke-static {v0, v2, v1}, Ltm/d;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$g;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 63
    .line 64
    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->F0(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/util/LinkedList;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    :cond_0
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$g;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 72
    .line 73
    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->F0(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/util/LinkedList;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    const/16 v1, 0x13

    .line 82
    .line 83
    if-ne v0, v1, :cond_2

    .line 84
    .line 85
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$g;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 86
    .line 87
    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->F0(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/util/LinkedList;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Ljava/lang/Integer;

    .line 96
    .line 97
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    iget-object v2, p0, Lio/bidmachine/iab/vast/activity/VastView$g;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 102
    .line 103
    invoke-static {v2}, Lio/bidmachine/iab/vast/activity/VastView;->F0(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/util/LinkedList;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    check-cast v2, Ljava/lang/Integer;

    .line 112
    .line 113
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result v3

    .line 117
    iget-object v4, p0, Lio/bidmachine/iab/vast/activity/VastView$g;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 118
    .line 119
    invoke-static {v4}, Lio/bidmachine/iab/vast/activity/VastView;->k0(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    filled-new-array {v2, v0}, [Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    const-string v2, "Playing progressing position: last=%d, first=%d)"

    .line 128
    .line 129
    invoke-static {v4, v2, v0}, Ltm/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    if-le v3, v1, :cond_1

    .line 133
    .line 134
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$g;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 135
    .line 136
    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->F0(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/util/LinkedList;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_1
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$g;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 145
    .line 146
    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->J0(Lio/bidmachine/iab/vast/activity/VastView;)I

    .line 147
    .line 148
    .line 149
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$g;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 150
    .line 151
    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->H0(Lio/bidmachine/iab/vast/activity/VastView;)I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    const/4 v1, 0x3

    .line 156
    if-lt v0, v1, :cond_2

    .line 157
    .line 158
    iget-object p1, p0, Lio/bidmachine/iab/vast/activity/VastView$g;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 159
    .line 160
    const-string p2, "Playing progressing error: video hang detected"

    .line 161
    .line 162
    invoke-static {p2}, Lqm/a;->f(Ljava/lang/String;)Lqm/a;

    .line 163
    .line 164
    .line 165
    move-result-object p2

    .line 166
    invoke-static {p1, p2}, Lio/bidmachine/iab/vast/activity/VastView;->s(Lio/bidmachine/iab/vast/activity/VastView;Lqm/a;)V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :cond_2
    :goto_0
    :try_start_0
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$g;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 171
    .line 172
    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->F0(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/util/LinkedList;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 181
    .line 182
    .line 183
    if-eqz p1, :cond_3

    .line 184
    .line 185
    if-lez p2, :cond_3

    .line 186
    .line 187
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$g;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 188
    .line 189
    iget-object v1, v0, Lio/bidmachine/iab/vast/activity/VastView;->l:Lsm/l;

    .line 190
    .line 191
    if-eqz v1, :cond_3

    .line 192
    .line 193
    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->k0(Lio/bidmachine/iab/vast/activity/VastView;)Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    const-string v1, "Playing progressing percent: %s"

    .line 198
    .line 199
    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-static {v0, v1, v2}, Ltm/d;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$g;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 211
    .line 212
    invoke-static {v0}, Lio/bidmachine/iab/vast/activity/VastView;->L0(Lio/bidmachine/iab/vast/activity/VastView;)F

    .line 213
    .line 214
    .line 215
    move-result v0

    .line 216
    cmpg-float v0, v0, p3

    .line 217
    .line 218
    if-gez v0, :cond_3

    .line 219
    .line 220
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$g;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 221
    .line 222
    invoke-static {v0, p3}, Lio/bidmachine/iab/vast/activity/VastView;->g(Lio/bidmachine/iab/vast/activity/VastView;F)F

    .line 223
    .line 224
    .line 225
    div-int/lit16 p1, p1, 0x3e8

    .line 226
    .line 227
    int-to-float p2, p2

    .line 228
    const/high16 v0, 0x447a0000    # 1000.0f

    .line 229
    .line 230
    div-float/2addr p2, v0

    .line 231
    float-to-double v0, p2

    .line 232
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    .line 233
    .line 234
    .line 235
    move-result-wide v0

    .line 236
    double-to-int p2, v0

    .line 237
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 238
    .line 239
    .line 240
    move-result p2

    .line 241
    iget-object v0, p0, Lio/bidmachine/iab/vast/activity/VastView$g;->a:Lio/bidmachine/iab/vast/activity/VastView;

    .line 242
    .line 243
    iget-object v0, v0, Lio/bidmachine/iab/vast/activity/VastView;->l:Lsm/l;

    .line 244
    .line 245
    invoke-virtual {v0, p3, p2, p1}, Lsm/l;->r(FII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    .line 247
    .line 248
    :catch_0
    :cond_3
    return-void
.end method
