.class public final Lad-manager/d/r;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public h:I

.field public i:Ljava/util/Iterator;

.field public j:I

.field public final synthetic k:Le/v;

.field public final synthetic l:Lca/f;

.field public final synthetic m:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic n:Le/k;

.field public final synthetic o:J


# direct methods
.method public constructor <init>(Le/v;Lca/f;Lkotlin/jvm/internal/Ref$ObjectRef;Le/k;JLrs/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lad-manager/d/r;->k:Le/v;

    .line 2
    .line 3
    iput-object p2, p0, Lad-manager/d/r;->l:Lca/f;

    .line 4
    .line 5
    iput-object p3, p0, Lad-manager/d/r;->m:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 6
    .line 7
    iput-object p4, p0, Lad-manager/d/r;->n:Le/k;

    .line 8
    .line 9
    iput-wide p5, p0, Lad-manager/d/r;->o:J

    .line 10
    .line 11
    const/4 p1, 0x2

    .line 12
    invoke-direct {p0, p1, p7}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 8

    .line 1
    new-instance p1, Lad-manager/d/r;

    .line 2
    .line 3
    iget-object v1, p0, Lad-manager/d/r;->k:Le/v;

    .line 4
    .line 5
    iget-object v2, p0, Lad-manager/d/r;->l:Lca/f;

    .line 6
    .line 7
    iget-object v3, p0, Lad-manager/d/r;->m:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 8
    .line 9
    iget-object v4, p0, Lad-manager/d/r;->n:Le/k;

    .line 10
    .line 11
    iget-wide v5, p0, Lad-manager/d/r;->o:J

    .line 12
    .line 13
    move-object v0, p1

    .line 14
    move-object v7, p2

    .line 15
    invoke-direct/range {v0 .. v7}, Lad-manager/d/r;-><init>(Le/v;Lca/f;Lkotlin/jvm/internal/Ref$ObjectRef;Le/k;JLrs/c;)V

    .line 16
    .line 17
    .line 18
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lgt/g0;

    .line 2
    .line 3
    check-cast p2, Lrs/c;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lad-manager/d/r;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lad-manager/d/r;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lad-manager/d/r;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
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
    iget v1, p0, Lad-manager/d/r;->j:I

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    if-eq v1, v3, :cond_1

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    iget v1, p0, Lad-manager/d/r;->h:I

    .line 16
    .line 17
    iget-object v4, p0, Lad-manager/d/r;->i:Ljava/util/Iterator;

    .line 18
    .line 19
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 24
    .line 25
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 26
    .line 27
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    throw p1

    .line 31
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    sget-object p1, Lca/i;->a:Lca/i;

    .line 39
    .line 40
    iput v3, p0, Lad-manager/d/r;->j:I

    .line 41
    .line 42
    const-string v1, "preloadAd"

    .line 43
    .line 44
    invoke-virtual {p1, v1, p0}, Lca/i;->j(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    if-ne p1, v0, :cond_3

    .line 49
    .line 50
    return-object v0

    .line 51
    :cond_3
    :goto_0
    sget-object v4, Lca/k;->a:Lca/k;

    .line 52
    .line 53
    new-instance p1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    const-string v1, "preloadAd start -> requestAd in sync mode.\n"

    .line 56
    .line 57
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v1, p0, Lad-manager/d/r;->k:Le/v;

    .line 61
    .line 62
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v5

    .line 69
    iget-object v6, p0, Lad-manager/d/r;->l:Lca/f;

    .line 70
    .line 71
    const/16 v9, 0xc

    .line 72
    .line 73
    const/4 v10, 0x0

    .line 74
    const/4 v7, 0x0

    .line 75
    const/4 v8, 0x0

    .line 76
    invoke-static/range {v4 .. v10}, Lca/k;->p(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lad-manager/d/r;->m:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 80
    .line 81
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 82
    .line 83
    check-cast p1, Ljava/util/List;

    .line 84
    .line 85
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    const/4 v1, 0x0

    .line 90
    move-object v4, p1

    .line 91
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_6

    .line 96
    .line 97
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Lca/e;

    .line 102
    .line 103
    iget-object v5, p0, Lad-manager/d/r;->n:Le/k;

    .line 104
    .line 105
    iget-wide v6, p0, Lad-manager/d/r;->o:J

    .line 106
    .line 107
    iput-object v4, p0, Lad-manager/d/r;->i:Ljava/util/Iterator;

    .line 108
    .line 109
    iput v1, p0, Lad-manager/d/r;->h:I

    .line 110
    .line 111
    iput v2, p0, Lad-manager/d/r;->j:I

    .line 112
    .line 113
    invoke-static {v5, p1, v6, v7, p0}, Le/k;->f(Le/k;Lca/e;JLkotlin/coroutines/jvm/internal/ContinuationImpl;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    if-ne p1, v0, :cond_5

    .line 118
    .line 119
    return-object v0

    .line 120
    :cond_5
    :goto_1
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 121
    .line 122
    .line 123
    move-result-object v5

    .line 124
    invoke-static {p1, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    if-eqz p1, :cond_4

    .line 129
    .line 130
    add-int/2addr v1, v3

    .line 131
    :cond_6
    sget-object v2, Lca/k;->a:Lca/k;

    .line 132
    .line 133
    new-instance p1, Ljava/lang/StringBuilder;

    .line 134
    .line 135
    const-string v0, "preloadAd end -> loadedCount="

    .line 136
    .line 137
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v0, " cached="

    .line 144
    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lad-manager/d/r;->n:Le/k;

    .line 149
    .line 150
    iget-object v1, p0, Lad-manager/d/r;->l:Lca/f;

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Le/k;->e(Lca/f;)Le/v;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iget-object v0, v0, Le/v;->a:Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v3

    .line 165
    const/16 v7, 0xe

    .line 166
    .line 167
    const/4 v8, 0x0

    .line 168
    const/4 v4, 0x0

    .line 169
    const/4 v5, 0x0

    .line 170
    const/4 v6, 0x0

    .line 171
    invoke-static/range {v2 .. v8}, Lca/k;->p(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 172
    .line 173
    .line 174
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 175
    .line 176
    return-object p1
.end method
