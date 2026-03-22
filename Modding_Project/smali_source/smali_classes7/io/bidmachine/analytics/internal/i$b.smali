.class final Lio/bidmachine/analytics/internal/i$b;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/bidmachine/analytics/internal/i;->f(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/Object;

.field c:Ljava/lang/Object;

.field d:I

.field private synthetic e:Ljava/lang/Object;

.field final synthetic f:Lio/bidmachine/analytics/internal/i$a;

.field final synthetic g:Lio/bidmachine/analytics/internal/i;


# direct methods
.method constructor <init>(Lio/bidmachine/analytics/internal/i$a;Lio/bidmachine/analytics/internal/i;Lrs/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/analytics/internal/i$b;->f:Lio/bidmachine/analytics/internal/i$a;

    .line 2
    .line 3
    iput-object p2, p0, Lio/bidmachine/analytics/internal/i$b;->g:Lio/bidmachine/analytics/internal/i;

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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/i$b;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lio/bidmachine/analytics/internal/i$b;

    .line 6
    .line 7
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 8
    .line 9
    invoke-virtual {p1, p2}, Lio/bidmachine/analytics/internal/i$b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 3

    .line 1
    new-instance v0, Lio/bidmachine/analytics/internal/i$b;

    .line 2
    .line 3
    iget-object v1, p0, Lio/bidmachine/analytics/internal/i$b;->f:Lio/bidmachine/analytics/internal/i$a;

    .line 4
    .line 5
    iget-object v2, p0, Lio/bidmachine/analytics/internal/i$b;->g:Lio/bidmachine/analytics/internal/i;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2, p2}, Lio/bidmachine/analytics/internal/i$b;-><init>(Lio/bidmachine/analytics/internal/i$a;Lio/bidmachine/analytics/internal/i;Lrs/c;)V

    .line 8
    .line 9
    .line 10
    iput-object p1, v0, Lio/bidmachine/analytics/internal/i$b;->e:Ljava/lang/Object;

    .line 11
    .line 12
    return-object v0
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
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/analytics/internal/i$b;->a(Lgt/g0;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    .line 1
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget v1, p0, Lio/bidmachine/analytics/internal/i$b;->d:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v1, :cond_2

    .line 11
    .line 12
    if-eq v1, v3, :cond_1

    .line 13
    .line 14
    if-ne v1, v2, :cond_0

    .line 15
    .line 16
    iget-object v1, p0, Lio/bidmachine/analytics/internal/i$b;->e:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast v1, Lgt/g0;

    .line 19
    .line 20
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 25
    .line 26
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 27
    .line 28
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    throw p1

    .line 32
    :cond_1
    iget-object v1, p0, Lio/bidmachine/analytics/internal/i$b;->c:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Ljava/util/Iterator;

    .line 35
    .line 36
    iget-object v5, p0, Lio/bidmachine/analytics/internal/i$b;->b:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v5, Ljava/util/Collection;

    .line 39
    .line 40
    iget-object v6, p0, Lio/bidmachine/analytics/internal/i$b;->a:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast v6, Lio/bidmachine/analytics/internal/i;

    .line 43
    .line 44
    iget-object v7, p0, Lio/bidmachine/analytics/internal/i$b;->e:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast v7, Lgt/g0;

    .line 47
    .line 48
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 49
    .line 50
    .line 51
    check-cast p1, Lkotlin/Result;

    .line 52
    .line 53
    invoke-virtual {p1}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lio/bidmachine/analytics/internal/i$b;->e:Ljava/lang/Object;

    .line 62
    .line 63
    move-object v1, p1

    .line 64
    check-cast v1, Lgt/g0;

    .line 65
    .line 66
    :goto_0
    invoke-static {v1}, Lkotlinx/coroutines/i;->h(Lgt/g0;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_8

    .line 71
    .line 72
    iget-object p1, p0, Lio/bidmachine/analytics/internal/i$b;->f:Lio/bidmachine/analytics/internal/i$a;

    .line 73
    .line 74
    invoke-virtual {p1}, Lio/bidmachine/analytics/internal/i$a;->c()Ljava/util/List;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    iget-object v5, p0, Lio/bidmachine/analytics/internal/i$b;->g:Lio/bidmachine/analytics/internal/i;

    .line 79
    .line 80
    new-instance v6, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    move-object v9, v1

    .line 90
    move-object v1, p1

    .line 91
    move-object p1, v9

    .line 92
    move-object v10, v6

    .line 93
    move-object v6, v5

    .line 94
    move-object v5, v10

    .line 95
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 96
    .line 97
    .line 98
    move-result v7

    .line 99
    if-eqz v7, :cond_6

    .line 100
    .line 101
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v7

    .line 105
    check-cast v7, Lio/bidmachine/analytics/ReaderConfig$Rule;

    .line 106
    .line 107
    iput-object p1, p0, Lio/bidmachine/analytics/internal/i$b;->e:Ljava/lang/Object;

    .line 108
    .line 109
    iput-object v6, p0, Lio/bidmachine/analytics/internal/i$b;->a:Ljava/lang/Object;

    .line 110
    .line 111
    iput-object v5, p0, Lio/bidmachine/analytics/internal/i$b;->b:Ljava/lang/Object;

    .line 112
    .line 113
    iput-object v1, p0, Lio/bidmachine/analytics/internal/i$b;->c:Ljava/lang/Object;

    .line 114
    .line 115
    iput v3, p0, Lio/bidmachine/analytics/internal/i$b;->d:I

    .line 116
    .line 117
    invoke-static {v6, v7, p0}, Lio/bidmachine/analytics/internal/i;->a(Lio/bidmachine/analytics/internal/i;Lio/bidmachine/analytics/ReaderConfig$Rule;Lrs/c;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v7

    .line 121
    if-ne v7, v0, :cond_3

    .line 122
    .line 123
    return-object v0

    .line 124
    :cond_3
    move-object v9, v7

    .line 125
    move-object v7, p1

    .line 126
    move-object p1, v9

    .line 127
    :goto_2
    invoke-static {p1}, Lkotlin/Result;->i(Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v8

    .line 131
    if-eqz v8, :cond_4

    .line 132
    .line 133
    move-object p1, v4

    .line 134
    :cond_4
    check-cast p1, Lio/bidmachine/analytics/internal/h$a;

    .line 135
    .line 136
    if-eqz p1, :cond_5

    .line 137
    .line 138
    invoke-interface {v5, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 139
    .line 140
    .line 141
    :cond_5
    move-object p1, v7

    .line 142
    goto :goto_1

    .line 143
    :cond_6
    check-cast v5, Ljava/util/List;

    .line 144
    .line 145
    iget-object v1, p0, Lio/bidmachine/analytics/internal/i$b;->f:Lio/bidmachine/analytics/internal/i$a;

    .line 146
    .line 147
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/i$a;->a()Lio/bidmachine/analytics/internal/h;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-interface {v1, v5}, Lio/bidmachine/analytics/internal/h;->a(Ljava/util/List;)V

    .line 152
    .line 153
    .line 154
    iget-object v1, p0, Lio/bidmachine/analytics/internal/i$b;->f:Lio/bidmachine/analytics/internal/i$a;

    .line 155
    .line 156
    invoke-virtual {v1}, Lio/bidmachine/analytics/internal/i$a;->b()J

    .line 157
    .line 158
    .line 159
    move-result-wide v5

    .line 160
    iput-object p1, p0, Lio/bidmachine/analytics/internal/i$b;->e:Ljava/lang/Object;

    .line 161
    .line 162
    iput-object v4, p0, Lio/bidmachine/analytics/internal/i$b;->a:Ljava/lang/Object;

    .line 163
    .line 164
    iput-object v4, p0, Lio/bidmachine/analytics/internal/i$b;->b:Ljava/lang/Object;

    .line 165
    .line 166
    iput-object v4, p0, Lio/bidmachine/analytics/internal/i$b;->c:Ljava/lang/Object;

    .line 167
    .line 168
    iput v2, p0, Lio/bidmachine/analytics/internal/i$b;->d:I

    .line 169
    .line 170
    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/DelayKt;->b(JLrs/c;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    if-ne v1, v0, :cond_7

    .line 175
    .line 176
    return-object v0

    .line 177
    :cond_7
    move-object v1, p1

    .line 178
    goto :goto_0

    .line 179
    :cond_8
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 180
    .line 181
    return-object p1
.end method
