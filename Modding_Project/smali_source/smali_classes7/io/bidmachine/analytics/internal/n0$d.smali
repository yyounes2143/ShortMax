.class final Lio/bidmachine/analytics/internal/n0$d;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/n0;->a(Ljava/util/List;Lrs/c;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lio/bidmachine/analytics/internal/n0;

.field final synthetic c:Ljava/util/List;


# direct methods
.method constructor <init>(Lio/bidmachine/analytics/internal/n0;Ljava/util/List;Lrs/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/n0$d;->b:Lio/bidmachine/analytics/internal/n0;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/analytics/internal/n0$d;->c:Ljava/util/List;

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final a(Lgt/g0;Lrs/c;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/n0$d;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lio/bidmachine/analytics/internal/n0$d;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lio/bidmachine/analytics/internal/n0$d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 2

    .line 1
    new-instance p1, Lio/bidmachine/analytics/internal/n0$d;

    .line 2
    .line 3
    iget-object v0, p0, Lio/bidmachine/analytics/internal/n0$d;->b:Lio/bidmachine/analytics/internal/n0;

    .line 4
    .line 5
    iget-object v1, p0, Lio/bidmachine/analytics/internal/n0$d;->c:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {p1, v0, v1, p2}, Lio/bidmachine/analytics/internal/n0$d;-><init>(Lio/bidmachine/analytics/internal/n0;Ljava/util/List;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lgt/g0;

    .line 2
    .line 3
    check-cast p2, Lrs/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/n0$d;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lio/bidmachine/analytics/internal/n0$d;->a:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    check-cast p1, Lkotlin/Result;

    .line 16
    .line 17
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 23
    .line 24
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 25
    .line 26
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    throw p1

    .line 30
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    new-instance p1, Lio/bidmachine/analytics/internal/g0;

    .line 34
    .line 35
    iget-object v1, p0, Lio/bidmachine/analytics/internal/n0$d;->b:Lio/bidmachine/analytics/internal/n0;

    .line 36
    .line 37
    invoke-static {v1}, Lio/bidmachine/analytics/internal/n0;->a(Lio/bidmachine/analytics/internal/n0;)Lio/bidmachine/analytics/internal/n0$a;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/n0$a;->c()Lio/bidmachine/analytics/ReaderConfig;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lio/bidmachine/analytics/ReaderConfig;->getUrl()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    iget-object v1, p0, Lio/bidmachine/analytics/internal/n0$d;->b:Lio/bidmachine/analytics/internal/n0;

    .line 50
    .line 51
    invoke-static {v1}, Lio/bidmachine/analytics/internal/n0;->a(Lio/bidmachine/analytics/internal/n0;)Lio/bidmachine/analytics/internal/n0$a;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/n0$a;->c()Lio/bidmachine/analytics/ReaderConfig;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-virtual {v1}, Lio/bidmachine/analytics/ReaderConfig;->getName()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v5

    .line 63
    iget-object v1, p0, Lio/bidmachine/analytics/internal/n0$d;->b:Lio/bidmachine/analytics/internal/n0;

    .line 64
    .line 65
    invoke-static {v1}, Lio/bidmachine/analytics/internal/n0;->a(Lio/bidmachine/analytics/internal/n0;)Lio/bidmachine/analytics/internal/n0$a;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/n0$a;->b()Lcom/explorestack/protobuf/Struct;

    .line 70
    .line 71
    .line 72
    move-result-object v6

    .line 73
    iget-object v7, p0, Lio/bidmachine/analytics/internal/n0$d;->c:Ljava/util/List;

    .line 74
    .line 75
    iget-object v1, p0, Lio/bidmachine/analytics/internal/n0$d;->b:Lio/bidmachine/analytics/internal/n0;

    .line 76
    .line 77
    invoke-static {v1}, Lio/bidmachine/analytics/internal/n0;->a(Lio/bidmachine/analytics/internal/n0;)Lio/bidmachine/analytics/internal/n0$a;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/n0$a;->a()Lio/bidmachine/analytics/internal/g0$a;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    const/16 v10, 0x20

    .line 86
    .line 87
    const/4 v11, 0x0

    .line 88
    const/4 v9, 0x0

    .line 89
    move-object v3, p1

    .line 90
    invoke-direct/range {v3 .. v11}, Lio/bidmachine/analytics/internal/g0;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/explorestack/protobuf/Struct;Ljava/util/List;Lio/bidmachine/analytics/internal/g0$a;Lio/bidmachine/analytics/internal/p0;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 91
    .line 92
    .line 93
    iput v2, p0, Lio/bidmachine/analytics/internal/n0$d;->a:I

    .line 94
    .line 95
    invoke-virtual {p1, p0}, Lio/bidmachine/analytics/internal/Y;->a(Lrs/c;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    if-ne p1, v0, :cond_2

    .line 100
    .line 101
    return-object v0

    .line 102
    :cond_2
    :goto_0
    iget-object v0, p0, Lio/bidmachine/analytics/internal/n0$d;->b:Lio/bidmachine/analytics/internal/n0;

    .line 103
    .line 104
    iget-object v1, p0, Lio/bidmachine/analytics/internal/n0$d;->c:Ljava/util/List;

    .line 105
    .line 106
    invoke-static {p1}, Lkotlin/Result;->j(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-eqz v2, :cond_7

    .line 111
    .line 112
    move-object v2, p1

    .line 113
    check-cast v2, Lio/bidmachine/analytics/internal/g0;

    .line 114
    .line 115
    invoke-static {v0}, Lio/bidmachine/analytics/internal/n0;->b(Lio/bidmachine/analytics/internal/n0;)Lio/bidmachine/analytics/internal/l0;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    new-instance v3, Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    if-eqz v5, :cond_4

    .line 133
    .line 134
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v5

    .line 138
    move-object v6, v5

    .line 139
    check-cast v6, Lio/bidmachine/analytics/internal/h0;

    .line 140
    .line 141
    invoke-virtual {v6}, Lio/bidmachine/analytics/internal/h0;->b()Lio/bidmachine/analytics/internal/q0;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    if-eqz v6, :cond_3

    .line 146
    .line 147
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 148
    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_4
    invoke-interface {v2, v3}, Lio/bidmachine/analytics/internal/l0;->b(Ljava/util/List;)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    new-instance v2, Ljava/util/ArrayList;

    .line 155
    .line 156
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    if-eqz v3, :cond_6

    .line 168
    .line 169
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v3

    .line 173
    move-object v4, v3

    .line 174
    check-cast v4, Lio/bidmachine/analytics/internal/h0;

    .line 175
    .line 176
    invoke-virtual {v4}, Lio/bidmachine/analytics/internal/h0;->b()Lio/bidmachine/analytics/internal/q0;

    .line 177
    .line 178
    .line 179
    move-result-object v4

    .line 180
    if-nez v4, :cond_5

    .line 181
    .line 182
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 183
    .line 184
    .line 185
    goto :goto_2

    .line 186
    :cond_6
    invoke-static {v0}, Lio/bidmachine/analytics/internal/n0;->b(Lio/bidmachine/analytics/internal/n0;)Lio/bidmachine/analytics/internal/l0;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    invoke-interface {v1, v2}, Lio/bidmachine/analytics/internal/l0;->c(Ljava/util/List;)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    if-eqz v2, :cond_7

    .line 202
    .line 203
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    check-cast v2, Lio/bidmachine/analytics/internal/h0;

    .line 208
    .line 209
    invoke-static {v0, v2}, Lio/bidmachine/analytics/internal/n0;->a(Lio/bidmachine/analytics/internal/n0;Lio/bidmachine/analytics/internal/h0;)Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    goto :goto_3

    .line 213
    :cond_7
    iget-object v0, p0, Lio/bidmachine/analytics/internal/n0$d;->b:Lio/bidmachine/analytics/internal/n0;

    .line 214
    .line 215
    iget-object v1, p0, Lio/bidmachine/analytics/internal/n0$d;->c:Ljava/util/List;

    .line 216
    .line 217
    invoke-static {p1}, Lkotlin/Result;->g(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    if-eqz v2, :cond_8

    .line 222
    .line 223
    invoke-static {v0}, Lio/bidmachine/analytics/internal/n0;->b(Lio/bidmachine/analytics/internal/n0;)Lio/bidmachine/analytics/internal/l0;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    invoke-interface {v0, v1}, Lio/bidmachine/analytics/internal/l0;->c(Ljava/util/List;)Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    :cond_8
    invoke-static {p1}, Lkotlin/Result;->b(Ljava/lang/Object;)Lkotlin/Result;

    .line 231
    .line 232
    .line 233
    move-result-object p1

    .line 234
    return-object p1
.end method
