.class public final Lcom/startshorts/androidplayer/manager/dialog/home/CheckInDialogProcessor;
.super Ljava/lang/Object;
.source "CheckInDialogProcessor.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/manager/dialog/home/c;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nCheckInDialogProcessor.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CheckInDialogProcessor.kt\ncom/startshorts/androidplayer/manager/dialog/home/CheckInDialogProcessor\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,64:1\n1#2:65\n295#3,2:66\n*S KotlinDebug\n*F\n+ 1 CheckInDialogProcessor.kt\ncom/startshorts/androidplayer/manager/dialog/home/CheckInDialogProcessor\n*L\n27#1:66,2\n*E\n"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/startshorts/androidplayer/manager/dialog/home/c$a;->b(Lcom/startshorts/androidplayer/manager/dialog/home/c;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method public b(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lkotlin/jvm/functions/Function0;Lrs/c;)Ljava/lang/Object;
    .locals 9
    .param p1    # Lcom/startshorts/androidplayer/ui/activity/MainActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/ui/activity/MainActivity;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;",
            "Lrs/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p3, Lcom/startshorts/androidplayer/manager/dialog/home/CheckInDialogProcessor$process$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p3

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/manager/dialog/home/CheckInDialogProcessor$process$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/manager/dialog/home/CheckInDialogProcessor$process$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/manager/dialog/home/CheckInDialogProcessor$process$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/manager/dialog/home/CheckInDialogProcessor$process$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p3}, Lcom/startshorts/androidplayer/manager/dialog/home/CheckInDialogProcessor$process$1;-><init>(Lcom/startshorts/androidplayer/manager/dialog/home/CheckInDialogProcessor;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p3, v0, Lcom/startshorts/androidplayer/manager/dialog/home/CheckInDialogProcessor$process$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/manager/dialog/home/CheckInDialogProcessor$process$1;->j:I

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    if-eqz v2, :cond_2

    .line 35
    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_4

    .line 42
    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 44
    .line 45
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 46
    .line 47
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_2
    invoke-static {p3}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, p1}, Lcom/startshorts/androidplayer/manager/dialog/home/CheckInDialogProcessor;->c(Lcom/startshorts/androidplayer/ui/activity/MainActivity;)Z

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    const/4 v2, 0x0

    .line 59
    if-nez p3, :cond_3

    .line 60
    .line 61
    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 62
    .line 63
    .line 64
    move-result-object p1

    .line 65
    return-object p1

    .line 66
    :cond_3
    new-instance p3, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 67
    .line 68
    invoke-direct {p3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v4, ""

    .line 72
    .line 73
    iput-object v4, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 74
    .line 75
    sget-object v4, Lud/b;->a:Lud/b;

    .line 76
    .line 77
    invoke-virtual {v4}, Lud/b;->e2()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    if-eqz v4, :cond_4

    .line 82
    .line 83
    iput-object v4, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 84
    .line 85
    :cond_4
    sget-object v4, Lcom/startshorts/androidplayer/utils/TimeUtil;->a:Lcom/startshorts/androidplayer/utils/TimeUtil;

    .line 86
    .line 87
    new-instance v5, Ljava/util/Date;

    .line 88
    .line 89
    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-static {v5}, Ljk/f;->a(Ljava/util/Date;)Ljava/util/Date;

    .line 93
    .line 94
    .line 95
    move-result-object v5

    .line 96
    iget-object p3, p3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast p3, Ljava/lang/String;

    .line 99
    .line 100
    sget-object v6, Lcom/startshorts/androidplayer/utils/TimeUtil$Template;->YEAR_MONTH_DAY:Lcom/startshorts/androidplayer/utils/TimeUtil$Template;

    .line 101
    .line 102
    invoke-virtual {v4, v5, p3, v6}, Lcom/startshorts/androidplayer/utils/TimeUtil;->h(Ljava/util/Date;Ljava/lang/String;Lcom/startshorts/androidplayer/utils/TimeUtil$Template;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p3

    .line 106
    sget-object v4, Lcom/startshorts/androidplayer/manager/configure/ad/AdSignInfoManager;->a:Lcom/startshorts/androidplayer/manager/configure/ad/AdSignInfoManager;

    .line 107
    .line 108
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/manager/configure/ad/AdSignInfoManager;->a()Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    const/4 v5, 0x0

    .line 113
    if-eqz v4, :cond_7

    .line 114
    .line 115
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfoResult;->getSignRecords()Ljava/util/List;

    .line 116
    .line 117
    .line 118
    move-result-object v6

    .line 119
    if-eqz v6, :cond_7

    .line 120
    .line 121
    check-cast v6, Ljava/lang/Iterable;

    .line 122
    .line 123
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v7

    .line 131
    if-eqz v7, :cond_6

    .line 132
    .line 133
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v7

    .line 137
    move-object v8, v7

    .line 138
    check-cast v8, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;

    .line 139
    .line 140
    invoke-virtual {v8}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;->getDay()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v8

    .line 144
    invoke-static {v8, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v8

    .line 148
    if-eqz v8, :cond_5

    .line 149
    .line 150
    goto :goto_1

    .line 151
    :cond_6
    move-object v7, v5

    .line 152
    :goto_1
    check-cast v7, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;

    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_7
    move-object v7, v5

    .line 156
    :goto_2
    if-eqz v7, :cond_8

    .line 157
    .line 158
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/checkin/CheckInInfo;->isSign()Z

    .line 159
    .line 160
    .line 161
    move-result v6

    .line 162
    goto :goto_3

    .line 163
    :cond_8
    move v6, v2

    .line 164
    :goto_3
    sget-object v7, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 165
    .line 166
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->n1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 167
    .line 168
    .line 169
    move-result-object v7

    .line 170
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 171
    .line 172
    .line 173
    move-result-object v7

    .line 174
    invoke-interface {v7}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    check-cast v7, Ljava/lang/Boolean;

    .line 179
    .line 180
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    .line 181
    .line 182
    .line 183
    move-result v7

    .line 184
    if-eqz v7, :cond_9

    .line 185
    .line 186
    sget-object v7, Lud/b;->a:Lud/b;

    .line 187
    .line 188
    invoke-virtual {v7, p3}, Lud/b;->G1(Ljava/lang/String;)Z

    .line 189
    .line 190
    .line 191
    move-result v8

    .line 192
    if-eqz v8, :cond_9

    .line 193
    .line 194
    if-eqz v4, :cond_9

    .line 195
    .line 196
    if-nez v6, :cond_9

    .line 197
    .line 198
    invoke-virtual {v7, p3, v2}, Lud/b;->T4(Ljava/lang/String;Z)V

    .line 199
    .line 200
    .line 201
    invoke-static {}, Lgt/q0;->c()Lgt/j1;

    .line 202
    .line 203
    .line 204
    move-result-object p3

    .line 205
    new-instance v2, Lcom/startshorts/androidplayer/manager/dialog/home/CheckInDialogProcessor$process$3;

    .line 206
    .line 207
    invoke-direct {v2, p1, p2, v5}, Lcom/startshorts/androidplayer/manager/dialog/home/CheckInDialogProcessor$process$3;-><init>(Lcom/startshorts/androidplayer/ui/activity/MainActivity;Lkotlin/jvm/functions/Function0;Lrs/c;)V

    .line 208
    .line 209
    .line 210
    iput v3, v0, Lcom/startshorts/androidplayer/manager/dialog/home/CheckInDialogProcessor$process$1;->j:I

    .line 211
    .line 212
    invoke-static {p3, v2, v0}, Lgt/e;->g(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lrs/c;)Ljava/lang/Object;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    if-ne p1, v1, :cond_a

    .line 217
    .line 218
    return-object v1

    .line 219
    :cond_9
    move v3, v2

    .line 220
    :cond_a
    :goto_4
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    return-object p1
.end method

.method public c(Lcom/startshorts/androidplayer/ui/activity/MainActivity;)Z
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/ui/activity/MainActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "activity"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->p0()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    return p1
.end method

.method public name()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "CheckInDialogProcessor"

    .line 2
    .line 3
    return-object v0
.end method

.method public priority()Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogPriority;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogPriority;->DIALOG_CHECK_IN:Lcom/startshorts/androidplayer/manager/dialog/home/HomeDialogPriority;

    .line 2
    .line 3
    return-object v0
.end method
