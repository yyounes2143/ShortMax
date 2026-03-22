.class public final Lcom/startshorts/androidplayer/repo/billing/BillingRepo;
.super Ljava/lang/Object;
.source "BillingRepo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBillingRepo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BillingRepo.kt\ncom/startshorts/androidplayer/repo/billing/BillingRepo\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,645:1\n1863#2,2:646\n1863#2,2:648\n1863#2,2:650\n1863#2,2:652\n1863#2,2:654\n1863#2,2:656\n1863#2,2:658\n1863#2,2:660\n*S KotlinDebug\n*F\n+ 1 BillingRepo.kt\ncom/startshorts/androidplayer/repo/billing/BillingRepo\n*L\n489#1:646,2\n503#1:648,2\n519#1:650,2\n533#1:652,2\n549#1:654,2\n559#1:656,2\n587#1:658,2\n595#1:660,2\n*E\n"
    }
.end annotation


# static fields
.field public static final a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static b:Z

.field private static c:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static d:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final e:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final f:Lms/i;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static g:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final h:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static j:I

.field private static k:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static l:Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static m:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static final n:Lms/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lms/i<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static o:J

.field private static p:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 7
    .line 8
    sget-object v0, Lae/a;->a:Lae/a;

    .line 9
    .line 10
    invoke-virtual {v0}, Lae/a;->b()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    sput-boolean v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->b:Z

    .line 15
    .line 16
    const-string v0, ".subs."

    .line 17
    .line 18
    sput-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->c:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, ".sale."

    .line 21
    .line 22
    sput-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->d:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v0, Lgg/j;

    .line 25
    .line 26
    invoke-direct {v0}, Lgg/j;-><init>()V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    sput-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->e:Lms/i;

    .line 34
    .line 35
    new-instance v0, Lgg/k;

    .line 36
    .line 37
    invoke-direct {v0}, Lgg/k;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    sput-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->f:Lms/i;

    .line 45
    .line 46
    new-instance v0, Lgg/l;

    .line 47
    .line 48
    invoke-direct {v0}, Lgg/l;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    sput-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->h:Lms/i;

    .line 56
    .line 57
    const/4 v0, -0x1

    .line 58
    sput v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->j:I

    .line 59
    .line 60
    new-instance v0, Lgg/m;

    .line 61
    .line 62
    invoke-direct {v0}, Lgg/m;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-static {v0}, Lkotlin/c;->b(Lkotlin/jvm/functions/Function0;)Lms/i;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->n:Lms/i;

    .line 70
    .line 71
    const-wide/16 v0, -0x1

    .line 72
    .line 73
    sput-wide v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->o:J

    .line 74
    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 76
    .line 77
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 78
    .line 79
    .line 80
    sput-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 81
    .line 82
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final F()V
    .locals 17

    .line 1
    :try_start_0
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->h:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->isInitialized()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "<get-value>(...)"

    .line 20
    .line 21
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :try_start_1
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v3, "<get-value>(...)"

    .line 30
    .line 31
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    check-cast v0, Ljava/lang/Iterable;

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Ljava/lang/String;

    .line 51
    .line 52
    sget-object v4, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 53
    .line 54
    invoke-direct {v4}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->x()Lgg/c;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v5, v3}, Lgg/c;->e(Ljava/lang/String;)Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;->isValid()Z

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    if-eqz v5, :cond_1

    .line 70
    .line 71
    sget-object v5, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 72
    .line 73
    const-string v7, "BillingRepo"

    .line 74
    .line 75
    new-instance v8, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    const-string v9, "handlePendingLogPurchaseEvents -> "

    .line 81
    .line 82
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v8

    .line 92
    invoke-virtual {v5, v7, v8}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    const/4 v8, 0x4

    .line 99
    const/4 v9, 0x0

    .line 100
    const/4 v7, 0x0

    .line 101
    move-object v5, v3

    .line 102
    invoke-static/range {v4 .. v9}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->P(Lcom/startshorts/androidplayer/repo/billing/BillingRepo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;ILjava/lang/Object;)V

    .line 103
    .line 104
    .line 105
    sget-object v10, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 106
    .line 107
    const-string v11, "log_purchase_event_failed_solved"

    .line 108
    .line 109
    new-instance v12, Landroid/os/Bundle;

    .line 110
    .line 111
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v4, "gpSkuId"

    .line 115
    .line 116
    invoke-virtual {v12, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 120
    .line 121
    const/4 v15, 0x4

    .line 122
    const/16 v16, 0x0

    .line 123
    .line 124
    const-wide/16 v13, 0x0

    .line 125
    .line 126
    invoke-static/range {v10 .. v16}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :catchall_0
    move-exception v0

    .line 131
    goto :goto_2

    .line 132
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    if-eqz v1, :cond_3

    .line 141
    .line 142
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    check-cast v1, Ljava/lang/String;

    .line 147
    .line 148
    sget-object v3, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->h:Lms/i;

    .line 149
    .line 150
    invoke-interface {v3}, Lms/i;->getValue()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    const-string v4, "<get-value>(...)"

    .line 155
    .line 156
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    check-cast v3, Ljava/util/List;

    .line 160
    .line 161
    new-instance v4, Lgg/n;

    .line 162
    .line 163
    invoke-direct {v4, v1}, Lgg/n;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->O(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 167
    .line 168
    .line 169
    goto :goto_1

    .line 170
    :cond_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 171
    .line 172
    :try_start_2
    monitor-exit v2

    .line 173
    goto :goto_4

    .line 174
    :catch_0
    move-exception v0

    .line 175
    goto :goto_3

    .line 176
    :goto_2
    monitor-exit v2

    .line 177
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 178
    :goto_3
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 179
    .line 180
    const-string v2, "BillingRepo"

    .line 181
    .line 182
    new-instance v3, Ljava/lang/StringBuilder;

    .line 183
    .line 184
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    .line 186
    .line 187
    const-string v4, "handlePendingLogPurchaseEvents failed -> "

    .line 188
    .line 189
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    .line 191
    .line 192
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-virtual {v1, v2, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    :goto_4
    return-void
.end method

.method private static final G(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method private final H()V
    .locals 17

    .line 1
    :try_start_0
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->n:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->isInitialized()Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "<get-value>(...)"

    .line 20
    .line 21
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    :try_start_1
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v3, "<get-value>(...)"

    .line 30
    .line 31
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    check-cast v0, Ljava/lang/Iterable;

    .line 35
    .line 36
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    if-eqz v3, :cond_2

    .line 45
    .line 46
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    check-cast v3, Ljava/lang/String;

    .line 51
    .line 52
    sget-object v4, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 53
    .line 54
    invoke-direct {v4}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->x()Lgg/c;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    const/4 v6, 0x0

    .line 62
    invoke-virtual {v5, v3, v6}, Lgg/c;->f(Ljava/lang/String;Z)Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 63
    .line 64
    .line 65
    move-result-object v6

    .line 66
    invoke-virtual {v6}, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;->isValid()Z

    .line 67
    .line 68
    .line 69
    move-result v5

    .line 70
    if-eqz v5, :cond_1

    .line 71
    .line 72
    sget-object v5, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 73
    .line 74
    const-string v7, "BillingRepo"

    .line 75
    .line 76
    new-instance v8, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v9, "handlePendingLogSubsEvents -> "

    .line 82
    .line 83
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    invoke-virtual {v5, v7, v8}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    const/4 v8, 0x4

    .line 100
    const/4 v9, 0x0

    .line 101
    const/4 v7, 0x0

    .line 102
    move-object v5, v3

    .line 103
    invoke-static/range {v4 .. v9}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->R(Lcom/startshorts/androidplayer/repo/billing/BillingRepo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;ILjava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    sget-object v10, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 107
    .line 108
    const-string v11, "log_subs_event_failed_solved"

    .line 109
    .line 110
    new-instance v12, Landroid/os/Bundle;

    .line 111
    .line 112
    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v4, "gpSkuId"

    .line 116
    .line 117
    invoke-virtual {v12, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 121
    .line 122
    const/4 v15, 0x4

    .line 123
    const/16 v16, 0x0

    .line 124
    .line 125
    const-wide/16 v13, 0x0

    .line 126
    .line 127
    invoke-static/range {v10 .. v16}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    .line 132
    goto :goto_2

    .line 133
    :cond_2
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-eqz v1, :cond_3

    .line 142
    .line 143
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    check-cast v1, Ljava/lang/String;

    .line 148
    .line 149
    sget-object v3, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->n:Lms/i;

    .line 150
    .line 151
    invoke-interface {v3}, Lms/i;->getValue()Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    const-string v4, "<get-value>(...)"

    .line 156
    .line 157
    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    check-cast v3, Ljava/util/List;

    .line 161
    .line 162
    new-instance v4, Lgg/o;

    .line 163
    .line 164
    invoke-direct {v4, v1}, Lgg/o;-><init>(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-static {v3, v4}, Lkotlin/collections/CollectionsKt;->O(Ljava/util/List;Lkotlin/jvm/functions/Function1;)Z

    .line 168
    .line 169
    .line 170
    goto :goto_1

    .line 171
    :cond_3
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    .line 173
    :try_start_2
    monitor-exit v2

    .line 174
    goto :goto_4

    .line 175
    :catch_0
    move-exception v0

    .line 176
    goto :goto_3

    .line 177
    :goto_2
    monitor-exit v2

    .line 178
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 179
    :goto_3
    sget-object v1, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 180
    .line 181
    const-string v2, "BillingRepo"

    .line 182
    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    const-string v4, "handlePendingLogSubsEvents failed -> "

    .line 189
    .line 190
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v0

    .line 197
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {v1, v2, v0}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    :goto_4
    return-void
.end method

.method private static final I(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic M(Lcom/startshorts/androidplayer/repo/billing/BillingRepo;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;ILjava/lang/Object;)V
    .locals 9

    .line 1
    and-int/lit8 v0, p7, 0x10

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    move-object v7, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move-object v7, p5

    .line 9
    :goto_0
    and-int/lit8 v0, p7, 0x20

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    move-object v8, v1

    .line 14
    goto :goto_1

    .line 15
    :cond_1
    move-object v8, p6

    .line 16
    :goto_1
    move-object v2, p0

    .line 17
    move-object v3, p1

    .line 18
    move-object v4, p2

    .line 19
    move-object v5, p3

    .line 20
    move-object v6, p4

    .line 21
    invoke-virtual/range {v2 .. v8}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->K(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public static synthetic N(Lcom/startshorts/androidplayer/repo/billing/BillingRepo;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;ILzc/k;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;ILjava/lang/Object;)V
    .locals 15

    .line 1
    move/from16 v0, p12

    .line 2
    .line 3
    and-int/lit8 v1, v0, 0x10

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move-object v8, v2

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    move-object/from16 v8, p5

    .line 11
    .line 12
    :goto_0
    and-int/lit8 v1, v0, 0x20

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    move-object v9, v2

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    move-object/from16 v9, p6

    .line 19
    .line 20
    :goto_1
    and-int/lit8 v1, v0, 0x40

    .line 21
    .line 22
    if-eqz v1, :cond_2

    .line 23
    .line 24
    move-object v10, v2

    .line 25
    goto :goto_2

    .line 26
    :cond_2
    move-object/from16 v10, p7

    .line 27
    .line 28
    :goto_2
    and-int/lit16 v1, v0, 0x80

    .line 29
    .line 30
    if-eqz v1, :cond_3

    .line 31
    .line 32
    const/4 v1, 0x2

    .line 33
    move v11, v1

    .line 34
    goto :goto_3

    .line 35
    :cond_3
    move/from16 v11, p8

    .line 36
    .line 37
    :goto_3
    and-int/lit16 v1, v0, 0x100

    .line 38
    .line 39
    if-eqz v1, :cond_4

    .line 40
    .line 41
    move-object v12, v2

    .line 42
    goto :goto_4

    .line 43
    :cond_4
    move-object/from16 v12, p9

    .line 44
    .line 45
    :goto_4
    and-int/lit16 v1, v0, 0x200

    .line 46
    .line 47
    if-eqz v1, :cond_5

    .line 48
    .line 49
    move-object v13, v2

    .line 50
    goto :goto_5

    .line 51
    :cond_5
    move-object/from16 v13, p10

    .line 52
    .line 53
    :goto_5
    and-int/lit16 v0, v0, 0x400

    .line 54
    .line 55
    if-eqz v0, :cond_6

    .line 56
    .line 57
    move-object v14, v2

    .line 58
    goto :goto_6

    .line 59
    :cond_6
    move-object/from16 v14, p11

    .line 60
    .line 61
    :goto_6
    move-object v3, p0

    .line 62
    move-object/from16 v4, p1

    .line 63
    .line 64
    move-object/from16 v5, p2

    .line 65
    .line 66
    move-object/from16 v6, p3

    .line 67
    .line 68
    move-object/from16 v7, p4

    .line 69
    .line 70
    invoke-virtual/range {v3 .. v14}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->L(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;ILzc/k;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method private final O(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;)V
    .locals 12

    .line 1
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;->isValid()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "gpSkuId"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 10
    .line 11
    new-instance p3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v0, "logPurchaseEvent("

    .line 17
    .line 18
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, ") failed -> invalid priceInfo"

    .line 25
    .line 26
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    const-string v0, "BillingRepo"

    .line 34
    .line 35
    invoke-virtual {p2, v0, p3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 39
    .line 40
    new-instance v4, Landroid/os/Bundle;

    .line 41
    .line 42
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    const/4 v7, 0x4

    .line 51
    const/4 v8, 0x0

    .line 52
    const-string v3, "log_purchase_event_failed"

    .line 53
    .line 54
    const-wide/16 v5, 0x0

    .line 55
    .line 56
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    sget-object p2, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->h:Lms/i;

    .line 60
    .line 61
    invoke-interface {p2}, Lms/i;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    check-cast p2, Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->a:Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;

    .line 72
    .line 73
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;->getGpCurrencyCode()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;->getGpPrice()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    if-nez p3, :cond_1

    .line 82
    .line 83
    const-string v4, ""

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    move-object v4, p3

    .line 87
    :goto_0
    invoke-virtual {v0, v2, v3, v4}, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    sget-object v5, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 91
    .line 92
    new-instance v7, Landroid/os/Bundle;

    .line 93
    .line 94
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v0, "order_no"

    .line 98
    .line 99
    invoke-virtual {v7, v0, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v7, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-string p1, "currencyCode"

    .line 106
    .line 107
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;->getGpCurrencyCode()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p3

    .line 111
    invoke-virtual {v7, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-string p1, "price"

    .line 115
    .line 116
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;->getGpPrice()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p3

    .line 120
    invoke-virtual {v7, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;->getServerPrice()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-lez p1, :cond_2

    .line 132
    .line 133
    const-string p1, "amount"

    .line 134
    .line 135
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;->getServerPrice()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-virtual {v7, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 143
    .line 144
    const/4 v10, 0x4

    .line 145
    const/4 v11, 0x0

    .line 146
    const-string v6, "shorttv_purchase"

    .line 147
    .line 148
    const-wide/16 v8, 0x0

    .line 149
    .line 150
    invoke-static/range {v5 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method static synthetic P(Lcom/startshorts/androidplayer/repo/billing/BillingRepo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->O(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final Q(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;)V
    .locals 12

    .line 1
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;->isValid()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "gpSkuId"

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    sget-object p2, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 10
    .line 11
    new-instance p3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v0, "logSubsEvent("

    .line 17
    .line 18
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v0, ") failed -> invalid priceInfo"

    .line 25
    .line 26
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    const-string v0, "BillingRepo"

    .line 34
    .line 35
    invoke-virtual {p2, v0, p3}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    sget-object v2, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 39
    .line 40
    new-instance v4, Landroid/os/Bundle;

    .line 41
    .line 42
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v4, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 49
    .line 50
    const/4 v7, 0x4

    .line 51
    const/4 v8, 0x0

    .line 52
    const-string v3, "log_subs_event_failed"

    .line 53
    .line 54
    const-wide/16 v5, 0x0

    .line 55
    .line 56
    invoke-static/range {v2 .. v8}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    sget-object p2, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->n:Lms/i;

    .line 60
    .line 61
    invoke-interface {p2}, Lms/i;->getValue()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    check-cast p2, Ljava/util/List;

    .line 66
    .line 67
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    return-void

    .line 71
    :cond_0
    sget-object v0, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->a:Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;

    .line 72
    .line 73
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;->getGpCurrencyCode()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;->getGpPrice()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v3

    .line 81
    if-nez p3, :cond_1

    .line 82
    .line 83
    const-string v4, ""

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_1
    move-object v4, p3

    .line 87
    :goto_0
    invoke-virtual {v0, v2, v3, v4}, Lcom/startshorts/androidplayer/utils/campaign/MatchEventUtil;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    sget-object v5, Lcom/startshorts/androidplayer/manager/event/EventManager;->a:Lcom/startshorts/androidplayer/manager/event/EventManager;

    .line 91
    .line 92
    new-instance v7, Landroid/os/Bundle;

    .line 93
    .line 94
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v0, "order_no"

    .line 98
    .line 99
    invoke-virtual {v7, v0, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v7, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-string p1, "currencyCode"

    .line 106
    .line 107
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;->getGpCurrencyCode()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object p3

    .line 111
    invoke-virtual {v7, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const-string p1, "price"

    .line 115
    .line 116
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;->getGpPrice()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object p3

    .line 120
    invoke-virtual {v7, p1, p3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;->getServerPrice()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    if-lez p1, :cond_2

    .line 132
    .line 133
    const-string p1, "amount"

    .line 134
    .line 135
    invoke-virtual {p2}, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;->getServerPrice()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p2

    .line 139
    invoke-virtual {v7, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 143
    .line 144
    const/4 v10, 0x4

    .line 145
    const/4 v11, 0x0

    .line 146
    const-string v6, "shorttv_subs"

    .line 147
    .line 148
    const-wide/16 v8, 0x0

    .line 149
    .line 150
    invoke-static/range {v5 .. v11}, Lcom/startshorts/androidplayer/manager/event/EventManager;->s0(Lcom/startshorts/androidplayer/manager/event/EventManager;Ljava/lang/String;Landroid/os/Bundle;JILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    return-void
.end method

.method static synthetic R(Lcom/startshorts/androidplayer/repo/billing/BillingRepo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->Q(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final S()Lgg/c;
    .locals 1

    .line 1
    new-instance v0, Lgg/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lgg/c;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final T()Ljava/util/List;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method private static final U()Ljava/util/List;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method private static final V()Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;
    .locals 2

    .line 1
    new-instance v0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$a;

    .line 7
    .line 8
    invoke-direct {v1}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$a;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->r0(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$d;)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$b;

    .line 15
    .line 16
    invoke-direct {v1}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$b;-><init>()V

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->q0(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$c;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$mRemoteDS$2$1$3;

    .line 23
    .line 24
    invoke-direct {v1}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$mRemoteDS$2$1$3;-><init>()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->p0(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS$b;)V

    .line 28
    .line 29
    .line 30
    return-object v0
.end method

.method public static synthetic a()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->T()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic b()Lgg/c;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->S()Lgg/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic c()Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->V()Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->I(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static synthetic e()Ljava/util/List;
    .locals 1

    .line 1
    invoke-static {}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->U()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public static synthetic f(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->G(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static final synthetic g()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic h()Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->g:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic i()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->m:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic j()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic k()Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->l:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic l()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->k:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic m()Lcom/startshorts/androidplayer/bean/subs/SubsSku;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic n(Lcom/startshorts/androidplayer/repo/billing/BillingRepo;)Lgg/c;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->x()Lgg/c;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic o(Lcom/startshorts/androidplayer/repo/billing/BillingRepo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->F()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic p(Lcom/startshorts/androidplayer/repo/billing/BillingRepo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->H()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic q(Lcom/startshorts/androidplayer/repo/billing/BillingRepo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->O(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic r(Lcom/startshorts/androidplayer/repo/billing/BillingRepo;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->Q(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final x()Lgg/c;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->f:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lgg/c;

    .line 8
    .line 9
    return-object v0
.end method

.method private final y()Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;
    .locals 1

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->e:Lms/i;

    .line 2
    .line 3
    invoke-interface {v0}, Lms/i;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final A()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->y()Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->O()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final B()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->y()Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->P()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public final C()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->b:Z

    .line 2
    .line 3
    return v0
.end method

.method public final D(Ljava/lang/String;Lzc/f;)Lkotlinx/coroutines/r;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lzc/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "opId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "purchase"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 12
    .line 13
    new-instance v4, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleCoinPurchase$1;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-direct {v4, p2, p1, v0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleCoinPurchase$1;-><init>(Lzc/f;Ljava/lang/String;Lrs/c;)V

    .line 17
    .line 18
    .line 19
    const/4 v5, 0x2

    .line 20
    const/4 v6, 0x0

    .line 21
    const-string v2, "handleCoinPurchase"

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public final E(ZLjava/lang/String;Ljava/util/List;Lrs/c;)Ljava/lang/Object;
    .locals 27
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lzc/f;",
            ">;",
            "Lrs/c<",
            "-",
            "Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p4

    .line 2
    .line 3
    instance-of v1, v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->p:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->p:I

    .line 20
    .line 21
    move-object/from16 v2, p0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;

    .line 25
    .line 26
    move-object/from16 v2, p0

    .line 27
    .line 28
    invoke-direct {v1, v2, v0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;-><init>(Lcom/startshorts/androidplayer/repo/billing/BillingRepo;Lrs/c;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget-object v0, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->n:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    iget v3, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->p:I

    .line 38
    .line 39
    const/4 v10, 0x3

    .line 40
    const/4 v11, 0x2

    .line 41
    const/4 v4, 0x1

    .line 42
    const/4 v12, 0x0

    .line 43
    const/4 v13, 0x0

    .line 44
    if-eqz v3, :cond_4

    .line 45
    .line 46
    if-eq v3, v4, :cond_3

    .line 47
    .line 48
    if-eq v3, v11, :cond_2

    .line 49
    .line 50
    if-ne v3, v10, :cond_1

    .line 51
    .line 52
    iget-boolean v3, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->h:Z

    .line 53
    .line 54
    iget-object v4, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->m:Ljava/lang/Object;

    .line 55
    .line 56
    check-cast v4, Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 57
    .line 58
    iget-object v5, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->l:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v5, Ljava/util/Iterator;

    .line 61
    .line 62
    iget-object v6, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->k:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast v6, Ljava/util/List;

    .line 65
    .line 66
    iget-object v7, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->j:Ljava/lang/Object;

    .line 67
    .line 68
    check-cast v7, Ljava/util/List;

    .line 69
    .line 70
    iget-object v8, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->i:Ljava/lang/Object;

    .line 71
    .line 72
    check-cast v8, Ljava/lang/String;

    .line 73
    .line 74
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    move/from16 v26, v11

    .line 78
    .line 79
    move-object v11, v0

    .line 80
    move v0, v10

    .line 81
    move/from16 v10, v26

    .line 82
    .line 83
    goto/16 :goto_13

    .line 84
    .line 85
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 86
    .line 87
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 88
    .line 89
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    throw v0

    .line 93
    :cond_2
    iget-boolean v3, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->h:Z

    .line 94
    .line 95
    iget-object v4, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->l:Ljava/lang/Object;

    .line 96
    .line 97
    check-cast v4, Ljava/util/Iterator;

    .line 98
    .line 99
    iget-object v5, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->k:Ljava/lang/Object;

    .line 100
    .line 101
    check-cast v5, Ljava/util/List;

    .line 102
    .line 103
    iget-object v6, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->j:Ljava/lang/Object;

    .line 104
    .line 105
    check-cast v6, Ljava/util/List;

    .line 106
    .line 107
    iget-object v7, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->i:Ljava/lang/Object;

    .line 108
    .line 109
    check-cast v7, Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    check-cast v0, Lkotlin/Result;

    .line 115
    .line 116
    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move v10, v11

    .line 120
    goto/16 :goto_12

    .line 121
    .line 122
    :cond_3
    iget-boolean v3, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->h:Z

    .line 123
    .line 124
    iget-object v4, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->l:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v4, Ljava/util/List;

    .line 127
    .line 128
    iget-object v5, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->k:Ljava/lang/Object;

    .line 129
    .line 130
    check-cast v5, Ljava/util/List;

    .line 131
    .line 132
    iget-object v6, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->j:Ljava/lang/Object;

    .line 133
    .line 134
    check-cast v6, Ljava/util/List;

    .line 135
    .line 136
    iget-object v7, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->i:Ljava/lang/Object;

    .line 137
    .line 138
    check-cast v7, Ljava/lang/String;

    .line 139
    .line 140
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    move-object v11, v4

    .line 144
    move-object v4, v0

    .line 145
    move-object v0, v7

    .line 146
    goto/16 :goto_e

    .line 147
    .line 148
    :cond_4
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    new-instance v0, Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 154
    .line 155
    .line 156
    new-instance v14, Ljava/util/ArrayList;

    .line 157
    .line 158
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .line 160
    .line 161
    new-instance v15, Ljava/util/ArrayList;

    .line 162
    .line 163
    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 164
    .line 165
    .line 166
    new-instance v8, Ljava/util/ArrayList;

    .line 167
    .line 168
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .line 170
    .line 171
    move-object/from16 v3, p3

    .line 172
    .line 173
    check-cast v3, Ljava/lang/Iterable;

    .line 174
    .line 175
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    if-eqz v5, :cond_6

    .line 184
    .line 185
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    check-cast v5, Lzc/f;

    .line 190
    .line 191
    invoke-virtual {v5}, Lzc/f;->d()Ljava/util/List;

    .line 192
    .line 193
    .line 194
    move-result-object v6

    .line 195
    invoke-interface {v6, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v6

    .line 199
    check-cast v6, Ljava/lang/CharSequence;

    .line 200
    .line 201
    sget-object v7, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->c:Ljava/lang/String;

    .line 202
    .line 203
    invoke-static {v6, v7, v13, v11, v12}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    move-result v6

    .line 207
    if-nez v6, :cond_5

    .line 208
    .line 209
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    .line 211
    .line 212
    goto :goto_1

    .line 213
    :cond_5
    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    .line 215
    .line 216
    goto :goto_1

    .line 217
    :cond_6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    if-nez v3, :cond_15

    .line 222
    .line 223
    new-instance v6, Ljava/util/ArrayList;

    .line 224
    .line 225
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 226
    .line 227
    .line 228
    new-instance v7, Ljava/util/ArrayList;

    .line 229
    .line 230
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 231
    .line 232
    .line 233
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 238
    .line 239
    .line 240
    move-result v3

    .line 241
    if-eqz v3, :cond_11

    .line 242
    .line 243
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 244
    .line 245
    .line 246
    move-result-object v3

    .line 247
    check-cast v3, Lzc/f;

    .line 248
    .line 249
    invoke-virtual {v3}, Lzc/f;->d()Ljava/util/List;

    .line 250
    .line 251
    .line 252
    move-result-object v5

    .line 253
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v5

    .line 257
    check-cast v5, Ljava/lang/String;

    .line 258
    .line 259
    invoke-static {v3}, Ljk/q;->a(Lzc/f;)Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 260
    .line 261
    .line 262
    move-result-object v10

    .line 263
    sget-object v4, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->d:Ljava/lang/String;

    .line 264
    .line 265
    invoke-static {v5, v4, v13, v11, v12}, Lkotlin/text/StringsKt;->b0(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    move-result v4

    .line 269
    if-eqz v4, :cond_a

    .line 270
    .line 271
    if-eqz v10, :cond_9

    .line 272
    .line 273
    instance-of v4, v10, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;

    .line 274
    .line 275
    if-eqz v4, :cond_7

    .line 276
    .line 277
    move-object v4, v10

    .line 278
    check-cast v4, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;

    .line 279
    .line 280
    goto :goto_3

    .line 281
    :cond_7
    move-object v4, v12

    .line 282
    :goto_3
    if-eqz v4, :cond_8

    .line 283
    .line 284
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;->getShortPlayId()I

    .line 285
    .line 286
    .line 287
    move-result v4

    .line 288
    goto :goto_4

    .line 289
    :cond_8
    move v4, v13

    .line 290
    :goto_4
    if-eqz v4, :cond_9

    .line 291
    .line 292
    :goto_5
    const/4 v4, 0x1

    .line 293
    goto :goto_6

    .line 294
    :cond_9
    move v4, v13

    .line 295
    goto :goto_6

    .line 296
    :cond_a
    if-eqz v10, :cond_9

    .line 297
    .line 298
    goto :goto_5

    .line 299
    :goto_6
    if-eqz v4, :cond_10

    .line 300
    .line 301
    sget-object v4, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->a:Lcom/startshorts/androidplayer/repo/billing/BillingRepo;

    .line 302
    .line 303
    invoke-direct {v4}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->x()Lgg/c;

    .line 304
    .line 305
    .line 306
    move-result-object v4

    .line 307
    invoke-virtual {v4, v5}, Lgg/c;->e(Ljava/lang/String;)Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;

    .line 308
    .line 309
    .line 310
    move-result-object v4

    .line 311
    new-instance v11, Lcom/startshorts/androidplayer/bean/purchase/GPayCoinsRecover;

    .line 312
    .line 313
    if-eqz v10, :cond_b

    .line 314
    .line 315
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuType()I

    .line 316
    .line 317
    .line 318
    move-result v16

    .line 319
    :goto_7
    move/from16 v17, v16

    .line 320
    .line 321
    goto :goto_8

    .line 322
    :cond_b
    const/16 v16, -0x1

    .line 323
    .line 324
    goto :goto_7

    .line 325
    :goto_8
    if-eqz v10, :cond_d

    .line 326
    .line 327
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuProductId()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v16

    .line 331
    if-nez v16, :cond_c

    .line 332
    .line 333
    goto :goto_a

    .line 334
    :cond_c
    :goto_9
    move-object/from16 v19, v16

    .line 335
    .line 336
    goto :goto_b

    .line 337
    :cond_d
    :goto_a
    const-string v16, ""

    .line 338
    .line 339
    goto :goto_9

    .line 340
    :goto_b
    invoke-virtual {v3}, Lzc/f;->c()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v20

    .line 344
    invoke-virtual {v3}, Lzc/f;->g()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v21

    .line 348
    invoke-virtual {v3}, Lzc/f;->b()Ljava/lang/String;

    .line 349
    .line 350
    .line 351
    move-result-object v22

    .line 352
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;->getGpCurrencyCode()Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v23

    .line 356
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;->getGpPrice()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v24

    .line 360
    instance-of v4, v10, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;

    .line 361
    .line 362
    if-eqz v4, :cond_e

    .line 363
    .line 364
    check-cast v10, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;

    .line 365
    .line 366
    goto :goto_c

    .line 367
    :cond_e
    move-object v10, v12

    .line 368
    :goto_c
    if-eqz v10, :cond_f

    .line 369
    .line 370
    invoke-virtual {v10}, Lcom/startshorts/androidplayer/bean/shorts/ShortDiscountSku;->getShortPlayId()I

    .line 371
    .line 372
    .line 373
    move-result v4

    .line 374
    move/from16 v25, v4

    .line 375
    .line 376
    goto :goto_d

    .line 377
    :cond_f
    move/from16 v25, v13

    .line 378
    .line 379
    :goto_d
    move-object/from16 v16, v11

    .line 380
    .line 381
    move-object/from16 v18, v5

    .line 382
    .line 383
    invoke-direct/range {v16 .. v25}, Lcom/startshorts/androidplayer/bean/purchase/GPayCoinsRecover;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 384
    .line 385
    .line 386
    invoke-interface {v6, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    .line 388
    .line 389
    invoke-virtual {v3}, Lzc/f;->f()Ljava/lang/String;

    .line 390
    .line 391
    .line 392
    move-result-object v3

    .line 393
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 394
    .line 395
    .line 396
    :cond_10
    const/4 v4, 0x1

    .line 397
    const/4 v10, 0x3

    .line 398
    const/4 v11, 0x2

    .line 399
    goto/16 :goto_2

    .line 400
    .line 401
    :cond_11
    sget-object v3, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->a:Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;

    .line 402
    .line 403
    move-object/from16 v0, p2

    .line 404
    .line 405
    iput-object v0, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->i:Ljava/lang/Object;

    .line 406
    .line 407
    iput-object v14, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->j:Ljava/lang/Object;

    .line 408
    .line 409
    iput-object v15, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->k:Ljava/lang/Object;

    .line 410
    .line 411
    iput-object v8, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->l:Ljava/lang/Object;

    .line 412
    .line 413
    move/from16 v10, p1

    .line 414
    .line 415
    iput-boolean v10, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->h:Z

    .line 416
    .line 417
    const/4 v4, 0x1

    .line 418
    iput v4, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->p:I

    .line 419
    .line 420
    move/from16 v4, p1

    .line 421
    .line 422
    move-object/from16 v5, p2

    .line 423
    .line 424
    move-object v11, v8

    .line 425
    move-object v8, v1

    .line 426
    invoke-virtual/range {v3 .. v8}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->i(ZLjava/lang/String;Ljava/util/List;Ljava/util/List;Lrs/c;)Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v3

    .line 430
    if-ne v3, v9, :cond_12

    .line 431
    .line 432
    return-object v9

    .line 433
    :cond_12
    move-object v4, v3

    .line 434
    move v3, v10

    .line 435
    move-object v6, v14

    .line 436
    move-object v5, v15

    .line 437
    :goto_e
    check-cast v4, Ljava/util/List;

    .line 438
    .line 439
    if-eqz v4, :cond_14

    .line 440
    .line 441
    check-cast v4, Ljava/lang/Iterable;

    .line 442
    .line 443
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 444
    .line 445
    .line 446
    move-result-object v4

    .line 447
    :cond_13
    :goto_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 448
    .line 449
    .line 450
    move-result v7

    .line 451
    if-eqz v7, :cond_14

    .line 452
    .line 453
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v7

    .line 457
    check-cast v7, Lcom/startshorts/androidplayer/bean/purchase/GPayCoinsRecoverResult;

    .line 458
    .line 459
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/purchase/GPayCoinsRecoverResult;->getSkuId()Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v8

    .line 463
    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 464
    .line 465
    .line 466
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/purchase/GPayCoinsRecoverResult;->getShortPlayId()I

    .line 467
    .line 468
    .line 469
    move-result v8

    .line 470
    if-lez v8, :cond_13

    .line 471
    .line 472
    invoke-virtual {v7}, Lcom/startshorts/androidplayer/bean/purchase/GPayCoinsRecoverResult;->getShortPlayId()I

    .line 473
    .line 474
    .line 475
    move-result v7

    .line 476
    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    .line 477
    .line 478
    .line 479
    move-result-object v7

    .line 480
    invoke-interface {v11, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    .line 482
    .line 483
    goto :goto_f

    .line 484
    :cond_14
    move-object v15, v5

    .line 485
    move-object v14, v6

    .line 486
    move-object v8, v11

    .line 487
    goto :goto_10

    .line 488
    :cond_15
    move/from16 v10, p1

    .line 489
    .line 490
    move-object/from16 v0, p2

    .line 491
    .line 492
    move-object v11, v8

    .line 493
    move v3, v10

    .line 494
    :goto_10
    move-object v4, v14

    .line 495
    check-cast v4, Ljava/util/Collection;

    .line 496
    .line 497
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    .line 498
    .line 499
    .line 500
    move-result v4

    .line 501
    if-nez v4, :cond_1c

    .line 502
    .line 503
    check-cast v14, Ljava/lang/Iterable;

    .line 504
    .line 505
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 506
    .line 507
    .line 508
    move-result-object v4

    .line 509
    move-object v5, v4

    .line 510
    move-object v6, v8

    .line 511
    move-object v7, v15

    .line 512
    move-object v8, v0

    .line 513
    :cond_16
    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 514
    .line 515
    .line 516
    move-result v0

    .line 517
    if-eqz v0, :cond_1b

    .line 518
    .line 519
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    move-object/from16 v20, v0

    .line 524
    .line 525
    check-cast v20, Lzc/f;

    .line 526
    .line 527
    invoke-static/range {v20 .. v20}, Ljk/q;->b(Lzc/f;)Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 528
    .line 529
    .line 530
    move-result-object v4

    .line 531
    if-nez v4, :cond_19

    .line 532
    .line 533
    invoke-static/range {v20 .. v20}, Ljk/l;->d(Ljava/lang/Object;)Ljava/lang/String;

    .line 534
    .line 535
    .line 536
    move-result-object v0

    .line 537
    sget-object v4, Lcom/startshorts/androidplayer/log/Logger;->a:Lcom/startshorts/androidplayer/log/Logger;

    .line 538
    .line 539
    new-instance v10, Ljava/lang/StringBuilder;

    .line 540
    .line 541
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 542
    .line 543
    .line 544
    const-string v11, "gPayRecoverPremium("

    .line 545
    .line 546
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 547
    .line 548
    .line 549
    invoke-virtual/range {v20 .. v20}, Lzc/f;->d()Ljava/util/List;

    .line 550
    .line 551
    .line 552
    move-result-object v11

    .line 553
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 554
    .line 555
    .line 556
    move-result-object v11

    .line 557
    check-cast v11, Ljava/lang/String;

    .line 558
    .line 559
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    .line 561
    .line 562
    const-string v11, ") failed -> subsSku is null "

    .line 563
    .line 564
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    .line 566
    .line 567
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    .line 569
    .line 570
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 571
    .line 572
    .line 573
    move-result-object v10

    .line 574
    const-string v11, "BillingRepo"

    .line 575
    .line 576
    invoke-virtual {v4, v11, v10}, Lcom/startshorts/androidplayer/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    .line 578
    .line 579
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 580
    .line 581
    .line 582
    move-result v4

    .line 583
    if-nez v4, :cond_18

    .line 584
    .line 585
    sget-object v4, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->a:Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;

    .line 586
    .line 587
    iput-object v8, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->i:Ljava/lang/Object;

    .line 588
    .line 589
    iput-object v7, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->j:Ljava/lang/Object;

    .line 590
    .line 591
    iput-object v6, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->k:Ljava/lang/Object;

    .line 592
    .line 593
    iput-object v5, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->l:Ljava/lang/Object;

    .line 594
    .line 595
    iput-object v12, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->m:Ljava/lang/Object;

    .line 596
    .line 597
    iput-boolean v3, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->h:Z

    .line 598
    .line 599
    const/4 v10, 0x2

    .line 600
    iput v10, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->p:I

    .line 601
    .line 602
    invoke-virtual {v4, v0, v1}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->q(Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 603
    .line 604
    .line 605
    move-result-object v0

    .line 606
    if-ne v0, v9, :cond_17

    .line 607
    .line 608
    return-object v9

    .line 609
    :cond_17
    move-object v4, v5

    .line 610
    move-object v5, v6

    .line 611
    move-object v6, v7

    .line 612
    move-object v7, v8

    .line 613
    :goto_12
    move-object v8, v7

    .line 614
    const/4 v0, 0x3

    .line 615
    move-object v7, v6

    .line 616
    move-object v6, v5

    .line 617
    move-object v5, v4

    .line 618
    goto :goto_11

    .line 619
    :cond_18
    const/4 v10, 0x2

    .line 620
    const/4 v0, 0x3

    .line 621
    goto :goto_11

    .line 622
    :cond_19
    const/4 v10, 0x2

    .line 623
    sget-object v16, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->a:Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;

    .line 624
    .line 625
    iput-object v8, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->i:Ljava/lang/Object;

    .line 626
    .line 627
    iput-object v7, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->j:Ljava/lang/Object;

    .line 628
    .line 629
    iput-object v6, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->k:Ljava/lang/Object;

    .line 630
    .line 631
    iput-object v5, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->l:Ljava/lang/Object;

    .line 632
    .line 633
    iput-object v4, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->m:Ljava/lang/Object;

    .line 634
    .line 635
    iput-boolean v3, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->h:Z

    .line 636
    .line 637
    const/4 v0, 0x3

    .line 638
    iput v0, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleNotAcknowledgedPurchases$1;->p:I

    .line 639
    .line 640
    move/from16 v17, v3

    .line 641
    .line 642
    move-object/from16 v18, v8

    .line 643
    .line 644
    move-object/from16 v19, v4

    .line 645
    .line 646
    move-object/from16 v21, v1

    .line 647
    .line 648
    invoke-virtual/range {v16 .. v21}, Lcom/startshorts/androidplayer/repo/billing/subs/SubsRepo;->e(ZLjava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lzc/f;Lrs/c;)Ljava/lang/Object;

    .line 649
    .line 650
    .line 651
    move-result-object v11

    .line 652
    if-ne v11, v9, :cond_1a

    .line 653
    .line 654
    return-object v9

    .line 655
    :cond_1a
    :goto_13
    check-cast v11, Ljava/lang/Boolean;

    .line 656
    .line 657
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    .line 658
    .line 659
    .line 660
    move-result v11

    .line 661
    if-eqz v11, :cond_16

    .line 662
    .line 663
    invoke-virtual {v4}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 664
    .line 665
    .line 666
    move-result-object v4

    .line 667
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 668
    .line 669
    .line 670
    goto/16 :goto_11

    .line 671
    .line 672
    :cond_1b
    move-object v8, v6

    .line 673
    move-object v15, v7

    .line 674
    :cond_1c
    move-object v0, v15

    .line 675
    check-cast v0, Ljava/util/Collection;

    .line 676
    .line 677
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 678
    .line 679
    .line 680
    move-result v0

    .line 681
    if-nez v0, :cond_1d

    .line 682
    .line 683
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->a:Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;

    .line 684
    .line 685
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->q()Lkotlinx/coroutines/r;

    .line 686
    .line 687
    .line 688
    sget-object v1, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 689
    .line 690
    invoke-virtual {v1, v13}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->h1(Z)V

    .line 691
    .line 692
    .line 693
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/repo/billing/purchase/PurchaseRepo;->u()V

    .line 694
    .line 695
    .line 696
    :cond_1d
    new-instance v0, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;

    .line 697
    .line 698
    invoke-direct {v0, v15, v8}, Lcom/startshorts/androidplayer/bean/purchase/AcknowledgePurchaseResult;-><init>(Ljava/util/List;Ljava/util/List;)V

    .line 699
    .line 700
    .line 701
    return-object v0
.end method

.method public final J(Ljava/lang/String;Lzc/f;)Lkotlinx/coroutines/r;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lzc/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "opId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "purchase"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->a:Lcom/startshorts/androidplayer/utils/CoroutineUtil;

    .line 12
    .line 13
    new-instance v4, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleSubsPurchase$1;

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-direct {v4, p2, p1, v0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$handleSubsPurchase$1;-><init>(Lzc/f;Ljava/lang/String;Lrs/c;)V

    .line 17
    .line 18
    .line 19
    const/4 v5, 0x2

    .line 20
    const/4 v6, 0x0

    .line 21
    const-string v2, "handleSubsPurchase"

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-static/range {v1 .. v6}, Lcom/startshorts/androidplayer/utils/CoroutineUtil;->l(Lcom/startshorts/androidplayer/utils/CoroutineUtil;Ljava/lang/String;ZLkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/r;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method public final K(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;)V
    .locals 15
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v7, p4

    .line 4
    .line 5
    move-object/from16 v0, p5

    .line 6
    .line 7
    const-string v2, "eventScene"

    .line 8
    .line 9
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const-string v2, "activity"

    .line 13
    .line 14
    move-object/from16 v3, p2

    .line 15
    .line 16
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const-string v2, "opId"

    .line 20
    .line 21
    move-object/from16 v4, p3

    .line 22
    .line 23
    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v2, "sku"

    .line 27
    .line 28
    invoke-static {v7, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual/range {p4 .. p4}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getSkuDetails()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    if-nez v5, :cond_0

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    sget-object v2, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 39
    .line 40
    invoke-virtual {v2}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 41
    .line 42
    .line 43
    move-result-wide v8

    .line 44
    sget-wide v10, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->o:J

    .line 45
    .line 46
    sub-long v10, v8, v10

    .line 47
    .line 48
    const-wide/16 v12, 0x3e8

    .line 49
    .line 50
    cmp-long v2, v10, v12

    .line 51
    .line 52
    if-gez v2, :cond_1

    .line 53
    .line 54
    return-void

    .line 55
    :cond_1
    sput-wide v8, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->o:J

    .line 56
    .line 57
    sput-object v7, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->g:Lcom/startshorts/androidplayer/bean/purchase/CoinSku;

    .line 58
    .line 59
    if-nez v0, :cond_2

    .line 60
    .line 61
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    .line 63
    invoke-virtual/range {p4 .. p4}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    sget-object v2, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 72
    .line 73
    invoke-virtual/range {p4 .. p4}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getGpSkuId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-interface {v2, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    :goto_0
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->y()Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    move-object/from16 v2, p6

    .line 85
    .line 86
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->n0(Lcom/startshorts/androidplayer/bean/act/ActResource;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->o0(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual/range {p4 .. p4}, Lcom/startshorts/androidplayer/bean/purchase/CoinSku;->getPayPendingCoinSku()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->y()Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    const/16 v12, 0x7a0

    .line 101
    .line 102
    const/4 v13, 0x0

    .line 103
    const/4 v8, 0x0

    .line 104
    const/4 v9, 0x0

    .line 105
    const/4 v10, 0x0

    .line 106
    const/4 v11, 0x0

    .line 107
    const/4 v14, 0x0

    .line 108
    move-object/from16 v1, p1

    .line 109
    .line 110
    move-object/from16 v2, p2

    .line 111
    .line 112
    move-object/from16 v3, p3

    .line 113
    .line 114
    move-object v4, v6

    .line 115
    move-object v6, v8

    .line 116
    move-object/from16 v7, p4

    .line 117
    .line 118
    move v8, v9

    .line 119
    move-object v9, v10

    .line 120
    move-object v10, v11

    .line 121
    move-object v11, v14

    .line 122
    invoke-static/range {v0 .. v13}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->R(Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ILzc/k;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;ILjava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    return-void
.end method

.method public final L(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;Lcom/startshorts/androidplayer/bean/act/ActResource;Ljava/lang/String;ILzc/k;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V
    .locals 14
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Activity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/startshorts/androidplayer/bean/shorts/BaseEpisode;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/startshorts/androidplayer/bean/act/ActResource;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Lzc/k;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p11    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    move-object v1, p1

    .line 2
    move-object/from16 v7, p4

    .line 3
    .line 4
    move-object/from16 v0, p5

    .line 5
    .line 6
    move-object/from16 v2, p6

    .line 7
    .line 8
    const-string v3, "eventScene"

    .line 9
    .line 10
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v3, "activity"

    .line 14
    .line 15
    move-object/from16 v4, p2

    .line 16
    .line 17
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v3, "opId"

    .line 21
    .line 22
    move-object/from16 v5, p3

    .line 23
    .line 24
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v3, "clickedSku"

    .line 28
    .line 29
    invoke-static {v7, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    sget-object v3, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->a:Lcom/startshorts/androidplayer/repo/account/AccountRepo;

    .line 33
    .line 34
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/repo/account/AccountRepo;->E0()Z

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    if-eqz v3, :cond_0

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->l0()V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_0
    invoke-virtual/range {p4 .. p4}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuDetails()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v6

    .line 48
    if-nez v6, :cond_1

    .line 49
    .line 50
    return-void

    .line 51
    :cond_1
    sget-object v3, Lcom/startshorts/androidplayer/utils/DeviceUtil;->a:Lcom/startshorts/androidplayer/utils/DeviceUtil;

    .line 52
    .line 53
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/utils/DeviceUtil;->L()J

    .line 54
    .line 55
    .line 56
    move-result-wide v8

    .line 57
    sget-wide v10, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->o:J

    .line 58
    .line 59
    sub-long v10, v8, v10

    .line 60
    .line 61
    const-wide/16 v12, 0x3e8

    .line 62
    .line 63
    cmp-long v3, v10, v12

    .line 64
    .line 65
    if-gez v3, :cond_2

    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    sput-wide v8, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->o:J

    .line 69
    .line 70
    sput-object v7, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->i:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 71
    .line 72
    sput p8, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->j:I

    .line 73
    .line 74
    sput-object p10, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->k:Ljava/lang/String;

    .line 75
    .line 76
    sput-object p11, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->l:Lcom/startshorts/androidplayer/bean/subs/SubsSku;

    .line 77
    .line 78
    if-eqz v2, :cond_3

    .line 79
    .line 80
    invoke-virtual/range {p6 .. p6}, Lcom/startshorts/androidplayer/bean/act/ActResource;->getExtendInfo()Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    if-eqz v3, :cond_3

    .line 85
    .line 86
    invoke-virtual {v3}, Lcom/startshorts/androidplayer/bean/act/ActResourceExtraInfo;->getCampaignId()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    goto :goto_0

    .line 91
    :cond_3
    const/4 v3, 0x0

    .line 92
    :goto_0
    sput-object v3, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->m:Ljava/lang/String;

    .line 93
    .line 94
    if-nez v0, :cond_4

    .line 95
    .line 96
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 97
    .line 98
    invoke-virtual/range {p4 .. p4}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v3

    .line 102
    invoke-virtual {v0, v3}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    sget-object v3, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->p:Ljava/util/concurrent/ConcurrentHashMap;

    .line 107
    .line 108
    invoke-virtual/range {p4 .. p4}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getSkuId()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v8

    .line 112
    invoke-interface {v3, v8, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    :goto_1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->y()Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0, v2}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->n0(Lcom/startshorts/androidplayer/bean/act/ActResource;)V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->o0(Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual/range {p4 .. p4}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getOfferToken()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    if-nez v0, :cond_5

    .line 130
    .line 131
    const-string v0, ""

    .line 132
    .line 133
    :cond_5
    move-object v8, v0

    .line 134
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->y()Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    if-nez p7, :cond_6

    .line 139
    .line 140
    invoke-virtual/range {p4 .. p4}, Lcom/startshorts/androidplayer/bean/subs/SubsSku;->getPayPendingSubsSku()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    move-object v9, v2

    .line 145
    goto :goto_2

    .line 146
    :cond_6
    move-object/from16 v9, p7

    .line 147
    .line 148
    :goto_2
    move-object v1, p1

    .line 149
    move-object/from16 v2, p2

    .line 150
    .line 151
    move-object/from16 v3, p3

    .line 152
    .line 153
    move-object v4, v9

    .line 154
    move-object v5, v6

    .line 155
    move-object v6, v8

    .line 156
    move-object/from16 v7, p4

    .line 157
    .line 158
    move/from16 v8, p8

    .line 159
    .line 160
    move-object/from16 v9, p9

    .line 161
    .line 162
    move-object/from16 v10, p10

    .line 163
    .line 164
    move-object/from16 v11, p11

    .line 165
    .line 166
    invoke-virtual/range {v0 .. v11}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->Q(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;ILzc/k;Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;)V

    .line 167
    .line 168
    .line 169
    return-void
.end method

.method public final W(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "opId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "gpSkuId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->y()Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1, p2, p3}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->W(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final X(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/purchase/CoinSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lzc/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "opId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "coinSku"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "purchase"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "priceInfo"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->y()Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->X(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/purchase/CoinSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "opId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "gpSkuId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->y()Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1, p2, p3}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->Y(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final Z(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lzc/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "opId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sku"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "purchase"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "priceInfo"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->y()Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->Z(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final a0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "opId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "gpSkuId"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->y()Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->a0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final b0(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;I)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/subs/SubsSku;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lzc/f;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "opId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "sku"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "purchase"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "priceInfo"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->y()Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    move-object v2, p1

    .line 26
    move-object v3, p2

    .line 27
    move-object v4, p3

    .line 28
    move-object v5, p4

    .line 29
    move v6, p5

    .line 30
    invoke-virtual/range {v1 .. v6}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->b0(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/SubsSku;Lzc/f;Lcom/startshorts/androidplayer/bean/purchase/GPayPriceInfo;I)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public final c0(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "opId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "rechargeUserInfo"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->y()Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->c0(Ljava/lang/String;Lcom/startshorts/androidplayer/bean/subs/GPayExchangePremiumResult$RechargeUserInfo;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final d0(ILrs/c;)Ljava/lang/Object;
    .locals 4
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/lang/Object;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    instance-of v0, p2, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$notifyThirdPartyPayEnable$1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$notifyThirdPartyPayEnable$1;

    .line 7
    .line 8
    iget v1, v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$notifyThirdPartyPayEnable$1;->j:I

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
    iput v1, v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$notifyThirdPartyPayEnable$1;->j:I

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$notifyThirdPartyPayEnable$1;

    .line 21
    .line 22
    invoke-direct {v0, p0, p2}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$notifyThirdPartyPayEnable$1;-><init>(Lcom/startshorts/androidplayer/repo/billing/BillingRepo;Lrs/c;)V

    .line 23
    .line 24
    .line 25
    :goto_0
    iget-object p2, v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$notifyThirdPartyPayEnable$1;->h:Ljava/lang/Object;

    .line 26
    .line 27
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    iget v2, v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$notifyThirdPartyPayEnable$1;->j:I

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
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    check-cast p2, Lkotlin/Result;

    .line 42
    .line 43
    invoke-virtual {p2}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    goto :goto_1

    .line 48
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    .line 51
    .line 52
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p1

    .line 56
    :cond_2
    invoke-static {p2}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->y()Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    iput v3, v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$notifyThirdPartyPayEnable$1;->j:I

    .line 64
    .line 65
    invoke-virtual {p2, p1, v0}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->d0(ILrs/c;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    if-ne p1, v1, :cond_3

    .line 70
    .line 71
    return-object v1

    .line 72
    :cond_3
    :goto_1
    return-object p1
.end method

.method public final e0(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lzc/g;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "opId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "products"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->y()Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->e0(Ljava/lang/String;Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final f0(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "billingListenerId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->y()Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->i0(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final g0(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "id"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->y()Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->j0(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final h0(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/purchase/CoinSku;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->y()Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->l0(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final i0(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/startshorts/androidplayer/bean/subs/SubsSku;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->y()Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->m0(Ljava/util/List;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final j0(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->d:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final k0(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sput-object p1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->c:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final l0()V
    .locals 2

    .line 1
    sget-object v0, Laa/a;->a:Laa/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Laa/a;->d()Ljava/lang/ref/WeakReference;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/hades/aar/activity/IDActivity;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v1, Lgi/c;

    .line 18
    .line 19
    invoke-direct {v1, v0}, Lgi/c;-><init>(Landroid/content/Context;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v1}, Lfi/a;->show()V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public final s(Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Ljava/util/List<",
            "Lzc/f;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->y()Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2, p3}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->s(Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public final t(ZLjava/lang/String;Ljava/lang/String;Lle/g;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lle/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "opId"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "listenerId"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "listener"

    .line 12
    .line 13
    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->y()Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->u(ZLjava/lang/String;Ljava/lang/String;Lle/g;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public final u(Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;Lrs/c;)Ljava/lang/Object;
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;",
            "Lrs/c<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->y()Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1, p2}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->v(Lcom/startshorts/androidplayer/bean/purchase/ConsumeData;Lrs/c;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    if-ne p1, p2, :cond_0

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p1
.end method

.method public final v(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;
    .locals 14
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p10    # Lrs/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lrs/c<",
            "-",
            "Lkotlin/Result<",
            "Lcom/startshorts/androidplayer/bean/order/OtherOrderResult;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v0, p10

    .line 2
    .line 3
    instance-of v1, v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$createOtherOrder$1;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    move-object v1, v0

    .line 8
    check-cast v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$createOtherOrder$1;

    .line 9
    .line 10
    iget v2, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$createOtherOrder$1;->j:I

    .line 11
    .line 12
    const/high16 v3, -0x80000000

    .line 13
    .line 14
    and-int v4, v2, v3

    .line 15
    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    sub-int/2addr v2, v3

    .line 19
    iput v2, v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$createOtherOrder$1;->j:I

    .line 20
    .line 21
    move-object v2, p0

    .line 22
    :goto_0
    move-object v13, v1

    .line 23
    goto :goto_1

    .line 24
    :cond_0
    new-instance v1, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$createOtherOrder$1;

    .line 25
    .line 26
    move-object v2, p0

    .line 27
    invoke-direct {v1, p0, v0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$createOtherOrder$1;-><init>(Lcom/startshorts/androidplayer/repo/billing/BillingRepo;Lrs/c;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :goto_1
    iget-object v0, v13, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$createOtherOrder$1;->h:Ljava/lang/Object;

    .line 32
    .line 33
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->f()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget v3, v13, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$createOtherOrder$1;->j:I

    .line 38
    .line 39
    const/4 v4, 0x1

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    if-ne v3, v4, :cond_1

    .line 43
    .line 44
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 45
    .line 46
    .line 47
    check-cast v0, Lkotlin/Result;

    .line 48
    .line 49
    invoke-virtual {v0}, Lkotlin/Result;->n()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    goto :goto_2

    .line 54
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 55
    .line 56
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 57
    .line 58
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v0

    .line 62
    :cond_2
    invoke-static {v0}, Lkotlin/f;->b(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0}, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->y()Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    iput v4, v13, Lcom/startshorts/androidplayer/repo/billing/BillingRepo$createOtherOrder$1;->j:I

    .line 70
    .line 71
    move-object v4, p1

    .line 72
    move-object/from16 v5, p2

    .line 73
    .line 74
    move/from16 v6, p3

    .line 75
    .line 76
    move-object/from16 v7, p4

    .line 77
    .line 78
    move-object/from16 v8, p5

    .line 79
    .line 80
    move-object/from16 v9, p6

    .line 81
    .line 82
    move-object/from16 v10, p7

    .line 83
    .line 84
    move-object/from16 v11, p8

    .line 85
    .line 86
    move-object/from16 v12, p9

    .line 87
    .line 88
    invoke-virtual/range {v3 .. v13}, Lcom/startshorts/androidplayer/repo/billing/BillingRemoteDS;->z(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lrs/c;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-ne v0, v1, :cond_3

    .line 93
    .line 94
    return-object v1

    .line 95
    :cond_3
    :goto_2
    return-object v0
.end method

.method public final w()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final z()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/repo/billing/BillingRepo;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
