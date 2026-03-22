.class public final Lad-manager/e/o;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public h:I

.field public final synthetic i:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic j:Lf/n;

.field public final synthetic k:Lca/e;

.field public final synthetic l:J


# direct methods
.method public constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lf/n;Lca/e;JLrs/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lad-manager/e/o;->i:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 2
    .line 3
    iput-object p2, p0, Lad-manager/e/o;->j:Lf/n;

    .line 4
    .line 5
    iput-object p3, p0, Lad-manager/e/o;->k:Lca/e;

    .line 6
    .line 7
    iput-wide p4, p0, Lad-manager/e/o;->l:J

    .line 8
    .line 9
    const/4 p1, 0x2

    .line 10
    invoke-direct {p0, p1, p6}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILrs/c;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lrs/c;)Lrs/c;
    .locals 7

    .line 1
    new-instance p1, Lad-manager/e/o;

    .line 2
    .line 3
    iget-object v1, p0, Lad-manager/e/o;->i:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 4
    .line 5
    iget-object v2, p0, Lad-manager/e/o;->j:Lf/n;

    .line 6
    .line 7
    iget-object v3, p0, Lad-manager/e/o;->k:Lca/e;

    .line 8
    .line 9
    iget-wide v4, p0, Lad-manager/e/o;->l:J

    .line 10
    .line 11
    move-object v0, p1

    .line 12
    move-object v6, p2

    .line 13
    invoke-direct/range {v0 .. v6}, Lad-manager/e/o;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lf/n;Lca/e;JLrs/c;)V

    .line 14
    .line 15
    .line 16
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
    invoke-virtual {p0, p1, p2}, Lad-manager/e/o;->create(Ljava/lang/Object;Lrs/c;)Lrs/c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lad-manager/e/o;

    .line 10
    .line 11
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Lad-manager/e/o;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
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
    iget v1, p0, Lad-manager/e/o;->h:I

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
    goto/16 :goto_1

    .line 16
    .line 17
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 18
    .line 19
    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 20
    .line 21
    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p1

    .line 25
    :cond_1
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lad-manager/e/o;->i:Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 29
    .line 30
    iget-object v1, p0, Lad-manager/e/o;->j:Lf/n;

    .line 31
    .line 32
    iget-object v10, p0, Lad-manager/e/o;->k:Lca/e;

    .line 33
    .line 34
    iget-wide v3, p0, Lad-manager/e/o;->l:J

    .line 35
    .line 36
    iput v2, p0, Lad-manager/e/o;->h:I

    .line 37
    .line 38
    new-instance v11, Lkotlinx/coroutines/e;

    .line 39
    .line 40
    invoke-static {p0}, Lkotlin/coroutines/intrinsics/a;->c(Lrs/c;)Lrs/c;

    .line 41
    .line 42
    .line 43
    move-result-object v5

    .line 44
    invoke-direct {v11, v5, v2}, Lkotlinx/coroutines/e;-><init>(Lrs/c;I)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v11}, Lkotlinx/coroutines/e;->H()V

    .line 48
    .line 49
    .line 50
    iget-object v2, v1, Lf/n;->a:Lfa/c;

    .line 51
    .line 52
    invoke-virtual {v10}, Lca/e;->f()Lcom/hades/aar/admanager/core/AdFormat;

    .line 53
    .line 54
    .line 55
    move-result-object v5

    .line 56
    filled-new-array {v5}, [Lcom/hades/aar/admanager/core/AdFormat;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-static {v5}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    new-instance v6, Lca/f;

    .line 65
    .line 66
    invoke-direct {v6}, Lca/f;-><init>()V

    .line 67
    .line 68
    .line 69
    filled-new-array {v10}, [Lca/e;

    .line 70
    .line 71
    .line 72
    move-result-object v7

    .line 73
    invoke-static {v7}, Lkotlin/collections/CollectionsKt;->t([Ljava/lang/Object;)Ljava/util/List;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    invoke-virtual {v6, v7}, Lca/f;->v(Ljava/util/List;)V

    .line 78
    .line 79
    .line 80
    sget-object v7, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 81
    .line 82
    new-instance v7, Lf/i;

    .line 83
    .line 84
    invoke-direct {v7, v11, v1, p1}, Lf/i;-><init>(Lkotlinx/coroutines/e;Lf/n;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v5, v6, v7}, Lda/f;->o(Ljava/util/List;Lca/f;Lda/b$a;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    iput-object v2, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 92
    .line 93
    iget-object v2, v1, Lf/n;->a:Lfa/c;

    .line 94
    .line 95
    invoke-virtual {v2, v10}, Lda/f;->z(Lca/e;)Z

    .line 96
    .line 97
    .line 98
    move-result v2

    .line 99
    if-eqz v2, :cond_2

    .line 100
    .line 101
    sget-object p1, Lca/k;->a:Lca/k;

    .line 102
    .line 103
    invoke-static {v3, v4}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    .line 104
    .line 105
    .line 106
    move-result-object v7

    .line 107
    const/4 v8, 0x2

    .line 108
    const/4 v9, 0x0

    .line 109
    const-string v4, "requestAd start"

    .line 110
    .line 111
    const/4 v5, 0x0

    .line 112
    move-object v3, p1

    .line 113
    move-object v6, v10

    .line 114
    invoke-static/range {v3 .. v9}, Lca/k;->p(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    iget-object p1, v1, Lf/n;->a:Lfa/c;

    .line 118
    .line 119
    invoke-virtual {p1, v10}, Lda/f;->K(Lca/e;)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_2
    sget-object v2, Lca/k;->a:Lca/k;

    .line 124
    .line 125
    invoke-static {v3, v4}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    .line 126
    .line 127
    .line 128
    move-result-object v7

    .line 129
    const/4 v8, 0x2

    .line 130
    const/4 v9, 0x0

    .line 131
    const-string v4, "requestAd failed -> filled up"

    .line 132
    .line 133
    const/4 v5, 0x0

    .line 134
    move-object v3, v2

    .line 135
    move-object v6, v10

    .line 136
    invoke-static/range {v3 .. v9}, Lca/k;->m(Lca/k;Ljava/lang/String;Lca/f;Lca/e;Ljava/lang/Long;ILjava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    iget-object p1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 140
    .line 141
    check-cast p1, Ljava/lang/String;

    .line 142
    .line 143
    invoke-virtual {v1, p1}, Lf/n;->k(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-virtual {v11}, Lkotlinx/coroutines/e;->isCompleted()Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-nez p1, :cond_3

    .line 151
    .line 152
    sget-object p1, Lkotlin/Result;->b:Lkotlin/Result$a;

    .line 153
    .line 154
    const/4 p1, 0x0

    .line 155
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-static {p1}, Lkotlin/Result;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {v11, p1}, Lkotlinx/coroutines/e;->resumeWith(Ljava/lang/Object;)V

    .line 164
    .line 165
    .line 166
    :cond_3
    :goto_0
    invoke-virtual {v11}, Lkotlinx/coroutines/e;->B()Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object p1

    .line 170
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    if-ne p1, v1, :cond_4

    .line 175
    .line 176
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/f;->c(Lrs/c;)V

    .line 177
    .line 178
    .line 179
    :cond_4
    if-ne p1, v0, :cond_5

    .line 180
    .line 181
    return-object v0

    .line 182
    :cond_5
    :goto_1
    return-object p1
.end method
