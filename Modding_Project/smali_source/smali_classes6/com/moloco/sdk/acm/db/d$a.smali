.class public final Lcom/moloco/sdk/acm/db/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moloco/sdk/acm/db/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nMetricsDAO.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MetricsDAO.kt\ncom/moloco/sdk/acm/db/MetricsDAO$DefaultImpls\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,73:1\n1557#2:74\n1628#2,3:75\n*S KotlinDebug\n*F\n+ 1 MetricsDAO.kt\ncom/moloco/sdk/acm/db/MetricsDAO$DefaultImpls\n*L\n56#1:74\n56#1:75,3\n*E\n"
    }
.end annotation


# direct methods
.method public static a(Lcom/moloco/sdk/acm/db/d;Lrs/c;)Ljava/lang/Object;
    .locals 9
    .param p0    # Lcom/moloco/sdk/acm/db/d;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroidx/room/Transaction;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/acm/db/d;",
            "Lrs/c<",
            "-",
            "Ljava/util/List<",
            "Lcom/moloco/sdk/acm/db/b;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/moloco/sdk/acm/db/d$a$a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p1

    .line 6
    check-cast v0, Lcom/moloco/sdk/acm/db/d$a$a;

    .line 7
    .line 8
    iget v1, v0, Lcom/moloco/sdk/acm/db/d$a$a;->l:I

    .line 9
    .line 10
    const/high16 v2, -0x80000000

    .line 11
    .line 12
    and-int v3, v1, v2

    .line 13
    .line 14
    if-eqz v3, :cond_0

    .line 15
    .line 16
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/moloco/sdk/acm/db/d$a$a;->l:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/moloco/sdk/acm/db/d$a$a;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Lcom/moloco/sdk/acm/db/d$a$a;-><init>(Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p1, v0, Lcom/moloco/sdk/acm/db/d$a$a;->k:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/moloco/sdk/acm/db/d$a$a;->l:I

    .line 32
    .line 33
    const/4 v3, 0x2

    .line 34
    const/4 v4, 0x1

    .line 35
    if-eqz v2, :cond_3

    .line 36
    .line 37
    if-eq v2, v4, :cond_2

    .line 38
    .line 39
    if-ne v2, v3, :cond_1

    .line 40
    .line 41
    iget-object p0, v0, Lcom/moloco/sdk/acm/db/d$a$a;->h:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p0, Ljava/util/List;

    .line 44
    .line 45
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 46
    .line 47
    .line 48
    goto :goto_2

    .line 49
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 50
    .line 51
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 52
    .line 53
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p0

    .line 57
    :cond_2
    iget-object p0, v0, Lcom/moloco/sdk/acm/db/d$a$a;->j:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast p0, Ljava/util/List;

    .line 60
    .line 61
    iget-object v2, v0, Lcom/moloco/sdk/acm/db/d$a$a;->i:Ljava/lang/Object;

    .line 62
    .line 63
    check-cast v2, Ljava/util/List;

    .line 64
    .line 65
    iget-object v5, v0, Lcom/moloco/sdk/acm/db/d$a$a;->h:Ljava/lang/Object;

    .line 66
    .line 67
    check-cast v5, Lcom/moloco/sdk/acm/db/d;

    .line 68
    .line 69
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    move-object p1, v2

    .line 73
    goto :goto_4

    .line 74
    :cond_3
    invoke-static {p1}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    new-instance p1, Ljava/util/ArrayList;

    .line 78
    .line 79
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .line 81
    .line 82
    :goto_1
    invoke-interface {p0}, Lcom/moloco/sdk/acm/db/d;->b()Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    if-eqz v5, :cond_5

    .line 91
    .line 92
    iput-object p1, v0, Lcom/moloco/sdk/acm/db/d$a$a;->h:Ljava/lang/Object;

    .line 93
    .line 94
    const/4 v2, 0x0

    .line 95
    iput-object v2, v0, Lcom/moloco/sdk/acm/db/d$a$a;->i:Ljava/lang/Object;

    .line 96
    .line 97
    iput-object v2, v0, Lcom/moloco/sdk/acm/db/d$a$a;->j:Ljava/lang/Object;

    .line 98
    .line 99
    iput v3, v0, Lcom/moloco/sdk/acm/db/d$a$a;->l:I

    .line 100
    .line 101
    invoke-interface {p0, v0}, Lcom/moloco/sdk/acm/db/d;->d(Lrs/c;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object p0

    .line 105
    if-ne p0, v1, :cond_4

    .line 106
    .line 107
    return-object v1

    .line 108
    :cond_4
    move-object p0, p1

    .line 109
    :goto_2
    return-object p0

    .line 110
    :cond_5
    new-instance v5, Ljava/util/ArrayList;

    .line 111
    .line 112
    const/16 v6, 0xa

    .line 113
    .line 114
    invoke-static {v2, v6}, Lkotlin/collections/CollectionsKt;->z(Ljava/lang/Iterable;I)I

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 119
    .line 120
    .line 121
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    if-eqz v7, :cond_6

    .line 130
    .line 131
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v7

    .line 135
    check-cast v7, Lcom/moloco/sdk/acm/db/b;

    .line 136
    .line 137
    invoke-virtual {v7}, Lcom/moloco/sdk/acm/db/b;->c()J

    .line 138
    .line 139
    .line 140
    move-result-wide v7

    .line 141
    invoke-static {v7, v8}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    .line 142
    .line 143
    .line 144
    move-result-object v7

    .line 145
    invoke-interface {v5, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_6
    iput-object p0, v0, Lcom/moloco/sdk/acm/db/d$a$a;->h:Ljava/lang/Object;

    .line 150
    .line 151
    iput-object p1, v0, Lcom/moloco/sdk/acm/db/d$a$a;->i:Ljava/lang/Object;

    .line 152
    .line 153
    iput-object v2, v0, Lcom/moloco/sdk/acm/db/d$a$a;->j:Ljava/lang/Object;

    .line 154
    .line 155
    iput v4, v0, Lcom/moloco/sdk/acm/db/d$a$a;->l:I

    .line 156
    .line 157
    invoke-interface {p0, v5, v0}, Lcom/moloco/sdk/acm/db/d;->c(Ljava/util/List;Lrs/c;)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v5

    .line 161
    if-ne v5, v1, :cond_7

    .line 162
    .line 163
    return-object v1

    .line 164
    :cond_7
    move-object v5, p0

    .line 165
    move-object p0, v2

    .line 166
    :goto_4
    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 167
    .line 168
    .line 169
    move-object p0, v5

    .line 170
    goto :goto_1
.end method
