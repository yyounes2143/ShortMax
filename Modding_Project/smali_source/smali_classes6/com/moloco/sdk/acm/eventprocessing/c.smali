.class public final Lcom/moloco/sdk/acm/eventprocessing/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/moloco/sdk/acm/eventprocessing/b;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDBWorkRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DBWorkRequest.kt\ncom/moloco/sdk/acm/eventprocessing/DBWorkRequestImpl\n+ 2 OneTimeWorkRequest.kt\nandroidx/work/OneTimeWorkRequestKt\n*L\n1#1,134:1\n104#2:135\n*S KotlinDebug\n*F\n+ 1 DBWorkRequest.kt\ncom/moloco/sdk/acm/eventprocessing/DBWorkRequestImpl\n*L\n69#1:135\n*E\n"
    }
.end annotation


# instance fields
.field public final a:Lcom/moloco/sdk/acm/h;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/moloco/sdk/acm/h;Landroid/content/Context;)V
    .locals 1
    .param p1    # Lcom/moloco/sdk/acm/h;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "context"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/moloco/sdk/acm/eventprocessing/c;->a:Lcom/moloco/sdk/acm/h;

    .line 15
    .line 16
    iput-object p2, p0, Lcom/moloco/sdk/acm/eventprocessing/c;->b:Landroid/content/Context;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public a()V
    .locals 11

    .line 1
    new-instance v0, Landroidx/work/Constraints$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/work/Constraints$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Landroidx/work/NetworkType;->CONNECTED:Landroidx/work/NetworkType;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroidx/work/Constraints$Builder;->setRequiredNetworkType(Landroidx/work/NetworkType;)Landroidx/work/Constraints$Builder;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroidx/work/Constraints$Builder;->build()Landroidx/work/Constraints;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/moloco/sdk/acm/eventprocessing/c;->a:Lcom/moloco/sdk/acm/h;

    .line 17
    .line 18
    invoke-virtual {v1}, Lcom/moloco/sdk/acm/h;->d()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string/jumbo v2, "url"

    .line 23
    .line 24
    .line 25
    invoke-static {v2, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 26
    .line 27
    .line 28
    move-result-object v3

    .line 29
    iget-object v1, p0, Lcom/moloco/sdk/acm/eventprocessing/c;->a:Lcom/moloco/sdk/acm/h;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/moloco/sdk/acm/h;->c()Ljava/util/Map;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const-string v2, "AppKey"

    .line 36
    .line 37
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v2, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    iget-object v1, p0, Lcom/moloco/sdk/acm/eventprocessing/c;->a:Lcom/moloco/sdk/acm/h;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/moloco/sdk/acm/h;->c()Ljava/util/Map;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, "AppBundle"

    .line 52
    .line 53
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-static {v2, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 58
    .line 59
    .line 60
    move-result-object v5

    .line 61
    iget-object v1, p0, Lcom/moloco/sdk/acm/eventprocessing/c;->a:Lcom/moloco/sdk/acm/h;

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/moloco/sdk/acm/h;->c()Ljava/util/Map;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const-string v2, "AppVersion"

    .line 68
    .line 69
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v2, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    iget-object v1, p0, Lcom/moloco/sdk/acm/eventprocessing/c;->a:Lcom/moloco/sdk/acm/h;

    .line 78
    .line 79
    invoke-virtual {v1}, Lcom/moloco/sdk/acm/h;->c()Ljava/util/Map;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const-string v2, "OS"

    .line 84
    .line 85
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-static {v2, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    iget-object v1, p0, Lcom/moloco/sdk/acm/eventprocessing/c;->a:Lcom/moloco/sdk/acm/h;

    .line 94
    .line 95
    invoke-virtual {v1}, Lcom/moloco/sdk/acm/h;->c()Ljava/util/Map;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const-string v2, "osv"

    .line 100
    .line 101
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-static {v2, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 106
    .line 107
    .line 108
    move-result-object v8

    .line 109
    iget-object v1, p0, Lcom/moloco/sdk/acm/eventprocessing/c;->a:Lcom/moloco/sdk/acm/h;

    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/moloco/sdk/acm/h;->c()Ljava/util/Map;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    const-string v2, "SdkVersion"

    .line 116
    .line 117
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-static {v2, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 122
    .line 123
    .line 124
    move-result-object v9

    .line 125
    iget-object v1, p0, Lcom/moloco/sdk/acm/eventprocessing/c;->a:Lcom/moloco/sdk/acm/h;

    .line 126
    .line 127
    invoke-virtual {v1}, Lcom/moloco/sdk/acm/h;->c()Ljava/util/Map;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    const-string v2, "Mediator"

    .line 132
    .line 133
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-static {v2, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    .line 138
    .line 139
    .line 140
    move-result-object v10

    .line 141
    filled-new-array/range {v3 .. v10}, [Lkotlin/Pair;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-static {v1}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-static {v1}, Lcom/moloco/sdk/acm/eventprocessing/d;->a(Ljava/util/Map;)Landroidx/work/Data;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    if-nez v1, :cond_0

    .line 154
    .line 155
    return-void

    .line 156
    :cond_0
    new-instance v2, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 157
    .line 158
    const-class v3, Lcom/moloco/sdk/acm/eventprocessing/DBRequestWorker;

    .line 159
    .line 160
    invoke-direct {v2, v3}, Landroidx/work/OneTimeWorkRequest$Builder;-><init>(Ljava/lang/Class;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2, v0}, Landroidx/work/WorkRequest$Builder;->setConstraints(Landroidx/work/Constraints;)Landroidx/work/WorkRequest$Builder;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    check-cast v0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 168
    .line 169
    invoke-virtual {v0, v1}, Landroidx/work/WorkRequest$Builder;->setInputData(Landroidx/work/Data;)Landroidx/work/WorkRequest$Builder;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    check-cast v0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 174
    .line 175
    sget-object v1, Landroidx/work/BackoffPolicy;->EXPONENTIAL:Landroidx/work/BackoffPolicy;

    .line 176
    .line 177
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 178
    .line 179
    const-wide/16 v3, 0x2710

    .line 180
    .line 181
    invoke-virtual {v0, v1, v3, v4, v2}, Landroidx/work/WorkRequest$Builder;->setBackoffCriteria(Landroidx/work/BackoffPolicy;JLjava/util/concurrent/TimeUnit;)Landroidx/work/WorkRequest$Builder;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    check-cast v0, Landroidx/work/OneTimeWorkRequest$Builder;

    .line 186
    .line 187
    invoke-virtual {v0}, Landroidx/work/WorkRequest$Builder;->build()Landroidx/work/WorkRequest;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    check-cast v0, Landroidx/work/OneTimeWorkRequest;

    .line 192
    .line 193
    iget-object v1, p0, Lcom/moloco/sdk/acm/eventprocessing/c;->b:Landroid/content/Context;

    .line 194
    .line 195
    invoke-static {v1}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    invoke-virtual {v1, v0}, Landroidx/work/WorkManager;->enqueue(Landroidx/work/WorkRequest;)Landroidx/work/Operation;

    .line 200
    .line 201
    .line 202
    return-void
.end method
