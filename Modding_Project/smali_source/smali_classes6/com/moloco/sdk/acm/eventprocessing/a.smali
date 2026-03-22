.class public final Lcom/moloco/sdk/acm/eventprocessing/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/acm/eventprocessing/a$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDBEventToRequestTransformer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DBEventToRequestTransformer.kt\ncom/moloco/sdk/acm/eventprocessing/DBEventToRequestTransformerImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,62:1\n1#2:63\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/moloco/sdk/acm/eventprocessing/e;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/acm/eventprocessing/e;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/acm/eventprocessing/e;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "dataAgeChecker"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/moloco/sdk/acm/eventprocessing/a;->a:Lcom/moloco/sdk/acm/eventprocessing/e;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Lcom/moloco/sdk/acm/http/i;
    .locals 8
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/moloco/sdk/acm/db/b;",
            ">;)",
            "Lcom/moloco/sdk/acm/http/i;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "events"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_5

    .line 25
    .line 26
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Lcom/moloco/sdk/acm/db/b;

    .line 31
    .line 32
    iget-object v3, p0, Lcom/moloco/sdk/acm/eventprocessing/a;->a:Lcom/moloco/sdk/acm/eventprocessing/e;

    .line 33
    .line 34
    invoke-virtual {v3, v2}, Lcom/moloco/sdk/acm/eventprocessing/e;->a(Lcom/moloco/sdk/acm/db/b;)Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-nez v3, :cond_0

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/moloco/sdk/acm/db/b;->b()Lcom/moloco/sdk/acm/db/c;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    sget-object v4, Lcom/moloco/sdk/acm/eventprocessing/a$a;->a:[I

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    aget v3, v4, v3

    .line 51
    .line 52
    const/4 v4, 0x1

    .line 53
    const-string v5, "build(...)"

    .line 54
    .line 55
    if-eq v3, v4, :cond_3

    .line 56
    .line 57
    const/4 v4, 0x2

    .line 58
    if-ne v3, v4, :cond_2

    .line 59
    .line 60
    invoke-static {}, Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$TimerEvent;->newBuilder()Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$TimerEvent$a;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v2}, Lcom/moloco/sdk/acm/db/b;->d()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v4

    .line 68
    invoke-virtual {v3, v4}, Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$TimerEvent$a;->c(Ljava/lang/String;)Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$TimerEvent$a;

    .line 69
    .line 70
    .line 71
    move-result-object v3

    .line 72
    invoke-virtual {v2}, Lcom/moloco/sdk/acm/db/b;->e()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v4

    .line 76
    invoke-virtual {v3, v4}, Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$TimerEvent$a;->a(Ljava/lang/Iterable;)Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$TimerEvent$a;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    invoke-virtual {v2}, Lcom/moloco/sdk/acm/db/b;->a()Ljava/lang/Long;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    if-eqz v2, :cond_1

    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 87
    .line 88
    .line 89
    move-result-wide v6

    .line 90
    invoke-virtual {v3, v6, v7}, Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$TimerEvent$a;->b(J)Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$TimerEvent$a;

    .line 91
    .line 92
    .line 93
    :cond_1
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    .line 105
    .line 106
    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 107
    .line 108
    .line 109
    throw p1

    .line 110
    :cond_3
    invoke-static {}, Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$CountEvent;->newBuilder()Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$CountEvent$a;

    .line 111
    .line 112
    .line 113
    move-result-object v3

    .line 114
    invoke-virtual {v2}, Lcom/moloco/sdk/acm/db/b;->d()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    invoke-virtual {v3, v4}, Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$CountEvent$a;->c(Ljava/lang/String;)Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$CountEvent$a;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    invoke-virtual {v2}, Lcom/moloco/sdk/acm/db/b;->e()Ljava/util/List;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {v3, v4}, Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$CountEvent$a;->a(Ljava/lang/Iterable;)Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$CountEvent$a;

    .line 127
    .line 128
    .line 129
    move-result-object v3

    .line 130
    invoke-virtual {v2}, Lcom/moloco/sdk/acm/db/b;->a()Ljava/lang/Long;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    if-eqz v2, :cond_4

    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 137
    .line 138
    .line 139
    move-result-wide v6

    .line 140
    long-to-int v2, v6

    .line 141
    invoke-virtual {v3, v2}, Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$CountEvent$a;->b(I)Lcom/moloco/sdk/MetricsRequest$PostMetricsRequest$CountEvent$a;

    .line 142
    .line 143
    .line 144
    :cond_4
    invoke-virtual {v3}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    goto/16 :goto_0

    .line 155
    .line 156
    :cond_5
    new-instance p1, Lcom/moloco/sdk/acm/http/i;

    .line 157
    .line 158
    invoke-direct {p1, v1, v0}, Lcom/moloco/sdk/acm/http/i;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 159
    .line 160
    .line 161
    return-object p1
.end method
