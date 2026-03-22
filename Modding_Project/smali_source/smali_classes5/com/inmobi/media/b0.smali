.class public final Lcom/inmobi/media/b0;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/d0;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/d0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/b0;->a:Lcom/inmobi/media/d0;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/b0;->a:Lcom/inmobi/media/d0;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    const-string v1, "AdQualityBeaconExecutor"

    .line 7
    .line 8
    const-string v2, "tag"

    .line 9
    .line 10
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v3, "beacon handler execute"

    .line 14
    .line 15
    const-string v4, "message"

    .line 16
    .line 17
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object v1, v0, Lcom/inmobi/media/d0;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 27
    .line 28
    .line 29
    sget-object v1, Lcom/inmobi/media/f0;->a:Ljava/util/concurrent/ScheduledExecutorService;

    .line 30
    .line 31
    sget-object v1, Lcom/inmobi/media/Nc;->a:Lms/i;

    .line 32
    .line 33
    invoke-interface {v1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    check-cast v5, Lcom/inmobi/media/g0;

    .line 38
    .line 39
    const/4 v6, 0x0

    .line 40
    const/16 v7, 0x3f

    .line 41
    .line 42
    invoke-static {v5, v6, v6, v7}, Lcom/inmobi/media/T1;->a(Lcom/inmobi/media/T1;Ljava/lang/String;[Ljava/lang/String;I)I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    invoke-interface {v1}, Lms/i;->getValue()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    move-object v6, v1

    .line 51
    check-cast v6, Lcom/inmobi/media/g0;

    .line 52
    .line 53
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    .line 55
    .line 56
    const-string v1, "AdQualityDao"

    .line 57
    .line 58
    const-string v7, "peek"

    .line 59
    .line 60
    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object v12

    .line 67
    const/4 v11, 0x0

    .line 68
    const/16 v13, 0x1f

    .line 69
    .line 70
    const/4 v7, 0x0

    .line 71
    const/4 v8, 0x0

    .line 72
    const/4 v9, 0x0

    .line 73
    const/4 v10, 0x0

    .line 74
    invoke-static/range {v6 .. v13}, Lcom/inmobi/media/T1;->a(Lcom/inmobi/media/T1;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;I)Ljava/util/ArrayList;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    .line 79
    .line 80
    .line 81
    move-result v5

    .line 82
    if-eqz v5, :cond_0

    .line 83
    .line 84
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-eqz v5, :cond_2

    .line 97
    .line 98
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v5

    .line 102
    check-cast v5, Lcom/inmobi/adquality/models/AdQualityResult;

    .line 103
    .line 104
    if-eqz v5, :cond_1

    .line 105
    .line 106
    iget-object v6, v0, Lcom/inmobi/media/d0;->a:Lcom/inmobi/commons/core/configs/AdConfig;

    .line 107
    .line 108
    new-instance v7, Lcom/inmobi/media/y6;

    .line 109
    .line 110
    new-instance v8, Lcom/inmobi/media/ue;

    .line 111
    .line 112
    invoke-virtual {v6}, Lcom/inmobi/commons/core/configs/Config;->getIncludeIdParams()Lcom/inmobi/media/W5;

    .line 113
    .line 114
    .line 115
    move-result-object v9

    .line 116
    invoke-direct {v8, v9}, Lcom/inmobi/media/ue;-><init>(Lcom/inmobi/media/W5;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v6}, Lcom/inmobi/commons/core/configs/AdConfig;->getAdQuality()Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    invoke-direct {v7, v5, v8, v6}, Lcom/inmobi/media/y6;-><init>(Lcom/inmobi/adquality/models/AdQualityResult;Lcom/inmobi/media/ue;Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;)V

    .line 124
    .line 125
    .line 126
    new-instance v6, Lcom/inmobi/media/c0;

    .line 127
    .line 128
    invoke-direct {v6, v0, v5}, Lcom/inmobi/media/c0;-><init>(Lcom/inmobi/media/d0;Lcom/inmobi/adquality/models/AdQualityResult;)V

    .line 129
    .line 130
    .line 131
    const-string v5, "onBeaconHit"

    .line 132
    .line 133
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    const-string v5, "JsonBeaconRequest"

    .line 137
    .line 138
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    const-string v8, "hitBeacon"

    .line 142
    .line 143
    invoke-static {v8, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    invoke-static {v5, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    .line 148
    .line 149
    invoke-virtual {v7}, Lcom/inmobi/media/y6;->f()V

    .line 150
    .line 151
    .line 152
    new-instance v5, Lcom/inmobi/media/tc;

    .line 153
    .line 154
    iget-object v8, v7, Lcom/inmobi/media/y6;->z:Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;

    .line 155
    .line 156
    invoke-virtual {v8}, Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;->getMaxRetries()I

    .line 157
    .line 158
    .line 159
    move-result v8

    .line 160
    iget-object v9, v7, Lcom/inmobi/media/y6;->z:Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;

    .line 161
    .line 162
    invoke-virtual {v9}, Lcom/inmobi/commons/core/configs/AdConfig$AdQualityConfig;->getRetryInterval()I

    .line 163
    .line 164
    .line 165
    move-result v9

    .line 166
    invoke-direct {v5, v8, v9}, Lcom/inmobi/media/tc;-><init>(II)V

    .line 167
    .line 168
    .line 169
    const-string v8, "retryPolicy"

    .line 170
    .line 171
    invoke-static {v5, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    iput-object v5, v7, Lcom/inmobi/media/N9;->w:Lcom/inmobi/media/tc;

    .line 175
    .line 176
    new-instance v5, Lcom/inmobi/media/x6;

    .line 177
    .line 178
    invoke-direct {v5, v6}, Lcom/inmobi/media/x6;-><init>(Lcom/inmobi/media/c0;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v7, v5}, Lcom/inmobi/media/N9;->a(Lkotlin/jvm/functions/Function1;)V

    .line 182
    .line 183
    .line 184
    goto :goto_0

    .line 185
    :cond_2
    iget-object v0, v0, Lcom/inmobi/media/d0;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 186
    .line 187
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 188
    .line 189
    .line 190
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 191
    .line 192
    return-object v0
.end method
