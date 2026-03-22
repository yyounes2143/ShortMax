.class public final Lcom/appsflyer/internal/AFf1xSDK;
.super Lcom/appsflyer/internal/AFe1fSDK;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFf1xSDK$AFa1uSDK;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/appsflyer/internal/AFe1fSDK<",
        "Lcom/appsflyer/internal/AFa1oSDK;",
        ">;"
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nResolveDdlTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ResolveDdlTask.kt\ncom/appsflyer/internal/components/queue/tasks/ResolveDdlTask\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,278:1\n1#2:279\n1#2:290\n1603#3,9:280\n1855#3:289\n1856#3:291\n1612#3:292\n1855#3,2:296\n3792#4:293\n4307#4,2:294\n*S KotlinDebug\n*F\n+ 1 ResolveDdlTask.kt\ncom/appsflyer/internal/components/queue/tasks/ResolveDdlTask\n*L\n104#1:290\n104#1:280,9\n104#1:289\n104#1:291\n104#1:292\n202#1:296,2\n197#1:293\n197#1:294,2\n*E\n"
    }
.end annotation


# instance fields
.field private AFInAppEventParameterName:I

.field private final AFInAppEventType:Ljava/util/concurrent/CountDownLatch;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private AFKeystoreWrapper:I

.field private final AFLogger:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/appsflyer/internal/AFj1tSDK;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final component2:Lcom/appsflyer/internal/AFa1rSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final copy:Lcom/appsflyer/internal/AFh1xSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final copydefault:Lcom/appsflyer/internal/AFc1oSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final equals:Lcom/appsflyer/internal/AFj1sSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final hashCode:Lcom/appsflyer/internal/AFa1mSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private registerClient:I

.field private final toString:Lcom/appsflyer/internal/AFc1eSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFa1rSDK;Lcom/appsflyer/internal/AFd1zSDK;)V
    .locals 9
    .param p1    # Lcom/appsflyer/internal/AFa1rSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/appsflyer/internal/AFd1zSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sget-object v1, Lcom/appsflyer/internal/AFe1pSDK;->component2:Lcom/appsflyer/internal/AFe1pSDK;

    .line 10
    .line 11
    sget-object v2, Lcom/appsflyer/internal/AFe1pSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFe1pSDK;

    .line 12
    .line 13
    sget-object v3, Lcom/appsflyer/internal/AFe1pSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1pSDK;

    .line 14
    .line 15
    filled-new-array {v2, v3}, [Lcom/appsflyer/internal/AFe1pSDK;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    const-string v3, "DdlSdk"

    .line 20
    .line 21
    invoke-direct {p0, v1, v2, p2, v3}, Lcom/appsflyer/internal/AFe1fSDK;-><init>(Lcom/appsflyer/internal/AFe1pSDK;[Lcom/appsflyer/internal/AFe1pSDK;Lcom/appsflyer/internal/AFd1zSDK;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1xSDK;->component2:Lcom/appsflyer/internal/AFa1rSDK;

    .line 25
    .line 26
    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-direct {p1, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 30
    .line 31
    .line 32
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1xSDK;->AFInAppEventType:Ljava/util/concurrent/CountDownLatch;

    .line 33
    .line 34
    new-instance p1, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1xSDK;->AFLogger:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1zSDK;->AFAdRevenueData()Lcom/appsflyer/internal/AFc1oSDK;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1xSDK;->copydefault:Lcom/appsflyer/internal/AFc1oSDK;

    .line 49
    .line 50
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1zSDK;->force()Lcom/appsflyer/internal/AFc1eSDK;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1xSDK;->toString:Lcom/appsflyer/internal/AFc1eSDK;

    .line 58
    .line 59
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1zSDK;->i()Lcom/appsflyer/internal/AFa1mSDK;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1xSDK;->hashCode:Lcom/appsflyer/internal/AFa1mSDK;

    .line 67
    .line 68
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1zSDK;->areAllFieldsValid()Lcom/appsflyer/internal/AFh1xSDK;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1xSDK;->copy:Lcom/appsflyer/internal/AFh1xSDK;

    .line 76
    .line 77
    invoke-interface {p2}, Lcom/appsflyer/internal/AFd1zSDK;->AFLogger()Lcom/appsflyer/internal/AFj1sSDK;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iput-object p1, p0, Lcom/appsflyer/internal/AFf1xSDK;->equals:Lcom/appsflyer/internal/AFj1sSDK;

    .line 85
    .line 86
    iget-object p1, p1, Lcom/appsflyer/internal/AFj1sSDK;->getRevenue:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 87
    .line 88
    const/4 p2, 0x0

    .line 89
    new-array v2, p2, [Lcom/appsflyer/internal/AFj1tSDK;

    .line 90
    .line 91
    invoke-virtual {p1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    check-cast p1, [Lcom/appsflyer/internal/AFj1tSDK;

    .line 96
    .line 97
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    new-instance v2, Ljava/util/ArrayList;

    .line 101
    .line 102
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .line 104
    .line 105
    array-length v3, p1

    .line 106
    :goto_0
    if-ge p2, v3, :cond_1

    .line 107
    .line 108
    aget-object v4, p1, p2

    .line 109
    .line 110
    if-eqz v4, :cond_0

    .line 111
    .line 112
    iget-object v5, v4, Lcom/appsflyer/internal/AFj1tSDK;->component4:Lcom/appsflyer/internal/AFj1tSDK$AFa1tSDK;

    .line 113
    .line 114
    sget-object v6, Lcom/appsflyer/internal/AFj1tSDK$AFa1tSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFj1tSDK$AFa1tSDK;

    .line 115
    .line 116
    if-eq v5, v6, :cond_0

    .line 117
    .line 118
    invoke-interface {v2, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 125
    .line 126
    .line 127
    move-result p1

    .line 128
    iput p1, p0, Lcom/appsflyer/internal/AFf1xSDK;->AFInAppEventParameterName:I

    .line 129
    .line 130
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    .line 136
    .line 137
    move-result p2

    .line 138
    if-eqz p2, :cond_5

    .line 139
    .line 140
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p2

    .line 144
    check-cast p2, Lcom/appsflyer/internal/AFj1tSDK;

    .line 145
    .line 146
    iget-object v2, p2, Lcom/appsflyer/internal/AFj1tSDK;->component4:Lcom/appsflyer/internal/AFj1tSDK$AFa1tSDK;

    .line 147
    .line 148
    if-nez v2, :cond_2

    .line 149
    .line 150
    const/4 v2, -0x1

    .line 151
    goto :goto_2

    .line 152
    :cond_2
    sget-object v3, Lcom/appsflyer/internal/AFf1xSDK$AFa1uSDK;->getMonetizationNetwork:[I

    .line 153
    .line 154
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 155
    .line 156
    .line 157
    move-result v2

    .line 158
    aget v2, v3, v2

    .line 159
    .line 160
    :goto_2
    if-eq v2, v1, :cond_4

    .line 161
    .line 162
    const/4 v3, 0x2

    .line 163
    if-eq v2, v3, :cond_3

    .line 164
    .line 165
    goto :goto_1

    .line 166
    :cond_3
    new-instance v2, Lcom/appsflyer/internal/w;

    .line 167
    .line 168
    invoke-direct {v2, p2, p0}, Lcom/appsflyer/internal/w;-><init>(Lcom/appsflyer/internal/AFj1tSDK;Lcom/appsflyer/internal/AFf1xSDK;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2, v2}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 172
    .line 173
    .line 174
    goto :goto_1

    .line 175
    :cond_4
    sget-object v3, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 176
    .line 177
    sget-object v4, Lcom/appsflyer/internal/AFg1cSDK;->copy:Lcom/appsflyer/internal/AFg1cSDK;

    .line 178
    .line 179
    iget-object v2, p2, Lcom/appsflyer/internal/AFj1tSDK;->getMediationNetwork:Ljava/util/Map;

    .line 180
    .line 181
    const-string v5, "source"

    .line 182
    .line 183
    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    new-instance v5, Ljava/lang/StringBuilder;

    .line 188
    .line 189
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 193
    .line 194
    .line 195
    const-string v2, " referrer collected earlier"

    .line 196
    .line 197
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v5

    .line 204
    const/4 v7, 0x4

    .line 205
    const/4 v8, 0x0

    .line 206
    const/4 v6, 0x0

    .line 207
    invoke-static/range {v3 .. v8}, Lcom/appsflyer/internal/AFh1ySDK;->d$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 208
    .line 209
    .line 210
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-direct {p0, p2}, Lcom/appsflyer/internal/AFf1xSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFj1tSDK;)V

    .line 214
    .line 215
    .line 216
    goto :goto_1

    .line 217
    :cond_5
    return-void
.end method

.method public static synthetic a(Lcom/appsflyer/internal/AFj1tSDK;Lcom/appsflyer/internal/AFf1xSDK;Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/appsflyer/internal/AFf1xSDK;->getRevenue(Lcom/appsflyer/internal/AFj1tSDK;Lcom/appsflyer/internal/AFf1xSDK;Ljava/util/Observable;Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final equals()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1xSDK;->component2:Lcom/appsflyer/internal/AFa1rSDK;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/appsflyer/internal/AFh1mSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 4
    .line 5
    const-string v1, "referrers"

    .line 6
    .line 7
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v2, v0, Ljava/util/List;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    check-cast v0, Ljava/util/List;

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    const/4 v2, 0x0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    move v0, v2

    .line 28
    :goto_1
    iget v3, p0, Lcom/appsflyer/internal/AFf1xSDK;->AFInAppEventParameterName:I

    .line 29
    .line 30
    if-ge v0, v3, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1xSDK;->component2:Lcom/appsflyer/internal/AFa1rSDK;

    .line 33
    .line 34
    iget-object v0, v0, Lcom/appsflyer/internal/AFh1mSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 35
    .line 36
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    return v0

    .line 44
    :cond_2
    return v2
.end method

.method private static getCurrencyIso4217Code(Lcom/appsflyer/internal/AFb1jSDK;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appsflyer/internal/AFb1jSDK;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/appsflyer/internal/AFb1jSDK;->getRevenue:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 8
    const-string v1, ""

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object p0, p0, Lcom/appsflyer/internal/AFb1jSDK;->getCurrencyIso4217Code:Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    .line 10
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-nez p0, :cond_1

    .line 11
    :cond_0
    const-string/jumbo p0, "type"

    const-string/jumbo v1, "unhashed"

    invoke-static {p0, v1}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    .line 12
    const-string/jumbo v1, "value"

    invoke-static {v1, v0}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    filled-new-array {p0, v0}, [Lkotlin/Pair;

    move-result-object p0

    .line 13
    invoke-static {p0}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private final getCurrencyIso4217Code(Lcom/appsflyer/internal/AFj1tSDK;)V
    .locals 7

    .line 1
    invoke-static {p1}, Lcom/appsflyer/internal/AFf1xSDK;->getRevenue(Lcom/appsflyer/internal/AFj1tSDK;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1xSDK;->AFLogger:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1xSDK;->AFInAppEventType:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 4
    sget-object v1, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v2, Lcom/appsflyer/internal/AFg1cSDK;->copy:Lcom/appsflyer/internal/AFg1cSDK;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added non-organic "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x4

    const/4 v6, 0x0

    const/4 v4, 0x0

    invoke-static/range {v1 .. v6}, Lcom/appsflyer/internal/AFh1ySDK;->d$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void

    .line 5
    :cond_0
    iget p1, p0, Lcom/appsflyer/internal/AFf1xSDK;->AFKeystoreWrapper:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/appsflyer/internal/AFf1xSDK;->AFKeystoreWrapper:I

    iget v0, p0, Lcom/appsflyer/internal/AFf1xSDK;->AFInAppEventParameterName:I

    if-ne p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/appsflyer/internal/AFf1xSDK;->AFInAppEventType:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    return-void
.end method

.method private static final getRevenue(Lcom/appsflyer/internal/AFj1tSDK;Lcom/appsflyer/internal/AFf1xSDK;Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 6

    const-string p3, ""

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 79
    sget-object v1, Lcom/appsflyer/internal/AFg1cSDK;->copy:Lcom/appsflyer/internal/AFg1cSDK;

    .line 80
    iget-object p0, p0, Lcom/appsflyer/internal/AFj1tSDK;->getMediationNetwork:Ljava/util/Map;

    const-string v2, "source"

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " referrer collected via observer"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 81
    invoke-static/range {v0 .. v5}, Lcom/appsflyer/internal/AFh1ySDK;->d$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 82
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/appsflyer/internal/AFj1tSDK;

    invoke-direct {p1, p2}, Lcom/appsflyer/internal/AFf1xSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFj1tSDK;)V

    return-void
.end method

.method private static getRevenue(Lcom/appsflyer/internal/AFj1tSDK;)Z
    .locals 5

    .line 83
    iget-object p0, p0, Lcom/appsflyer/internal/AFj1tSDK;->getMediationNetwork:Ljava/util/Map;

    const-string v0, "click_ts"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Ljava/lang/Long;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/lang/Long;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 84
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-object p0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sub-long/2addr v3, v1

    sget-object p0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {p0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    cmp-long p0, v3, v1

    if-gez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method


# virtual methods
.method public final AFAdRevenueData()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1xSDK;->hashCode:Lcom/appsflyer/internal/AFa1mSDK;

    .line 2
    iget-wide v0, v0, Lcom/appsflyer/internal/AFa1mSDK;->component2:J

    return-wide v0
.end method

.method protected final AFAdRevenueData(Ljava/lang/String;)Lcom/appsflyer/internal/AFd1hSDK;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/appsflyer/internal/AFd1hSDK<",
            "Lcom/appsflyer/internal/AFa1oSDK;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, ""

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget p1, p0, Lcom/appsflyer/internal/AFf1xSDK;->registerClient:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/appsflyer/internal/AFf1xSDK;->registerClient:I

    .line 4
    sget-object v2, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v3, Lcom/appsflyer/internal/AFg1cSDK;->copy:Lcom/appsflyer/internal/AFg1cSDK;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preparing request "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v5, 0x0

    invoke-static/range {v2 .. v7}, Lcom/appsflyer/internal/AFh1ySDK;->d$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/appsflyer/internal/AFf1xSDK;->component2:Lcom/appsflyer/internal/AFa1rSDK;

    .line 6
    iget-object p1, p1, Lcom/appsflyer/internal/AFh1mSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 7
    iget v2, p0, Lcom/appsflyer/internal/AFf1xSDK;->registerClient:I

    const/4 v3, 0x0

    if-ne v2, v1, :cond_4

    .line 8
    iget-object v2, p0, Lcom/appsflyer/internal/AFf1xSDK;->copydefault:Lcom/appsflyer/internal/AFc1oSDK;

    .line 9
    iget-object v2, v2, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1qSDK;

    const-string v4, "appsFlyerCount"

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Lcom/appsflyer/internal/AFc1qSDK;->getRevenue(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v5

    .line 10
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "is_first"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "lang"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string v1, "os"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    const-string/jumbo v1, "type"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1xSDK;->copydefault:Lcom/appsflyer/internal/AFc1oSDK;

    .line 15
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1oSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFc1qSDK;

    invoke-static {v1}, Lcom/appsflyer/internal/AFb1kSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFc1qSDK;)Ljava/lang/String;

    move-result-object v1

    .line 16
    const-string v2, "request_id"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1xSDK;->toString:Lcom/appsflyer/internal/AFc1eSDK;

    .line 18
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1eSDK;->getRevenue:Lcom/appsflyer/internal/AFb1tSDK;

    if-eqz v1, :cond_1

    .line 19
    iget-object v1, v1, Lcom/appsflyer/internal/AFb1tSDK;->AFAdRevenueData:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 20
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "sharing_filter"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    :cond_1
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1xSDK;->copydefault:Lcom/appsflyer/internal/AFc1oSDK;

    .line 22
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1oSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFc1eSDK;

    .line 23
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1eSDK;->component3:Lcom/appsflyer/internal/AFh1rSDK;

    if-eqz v1, :cond_2

    .line 24
    new-instance v2, Lcom/appsflyer/internal/AFb1jSDK;

    .line 25
    iget-object v4, v1, Lcom/appsflyer/internal/AFh1rSDK;->getCurrencyIso4217Code:Ljava/lang/String;

    .line 26
    iget-object v1, v1, Lcom/appsflyer/internal/AFh1rSDK;->getRevenue:Ljava/lang/Boolean;

    .line 27
    invoke-direct {v2, v4, v1}, Lcom/appsflyer/internal/AFb1jSDK;-><init>(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_2
    move-object v2, v3

    .line 28
    :goto_1
    invoke-static {v2}, Lcom/appsflyer/internal/AFf1xSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFb1jSDK;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "gaid"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_3
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1xSDK;->copydefault:Lcom/appsflyer/internal/AFc1oSDK;

    .line 30
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1oSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFc1hSDK;

    .line 31
    iget-object v1, v1, Lcom/appsflyer/internal/AFc1hSDK;->getMonetizationNetwork:Landroid/content/Context;

    .line 32
    invoke-static {v1}, Lcom/appsflyer/internal/AFb1lSDK;->getMediationNetwork(Landroid/content/Context;)Lcom/appsflyer/internal/AFb1jSDK;

    move-result-object v1

    .line 33
    invoke-static {v1}, Lcom/appsflyer/internal/AFf1xSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFb1jSDK;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, "oaid"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 35
    new-instance v4, Ljava/text/SimpleDateFormat;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v6, "yyyy-MM-dd\'T\'HH:mm:ss.SSS"

    invoke-direct {v4, v6, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 36
    const-string v5, "UTC"

    invoke-static {v5}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 37
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 38
    const-string/jumbo v2, "timestamp"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    iget v1, p0, Lcom/appsflyer/internal/AFf1xSDK;->registerClient:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v4, "request_count"

    invoke-interface {p1, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1xSDK;->AFLogger:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 41
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 43
    check-cast v5, Lcom/appsflyer/internal/AFj1tSDK;

    .line 44
    iget-object v6, v5, Lcom/appsflyer/internal/AFj1tSDK;->component4:Lcom/appsflyer/internal/AFj1tSDK$AFa1tSDK;

    .line 45
    sget-object v7, Lcom/appsflyer/internal/AFj1tSDK$AFa1tSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFj1tSDK$AFa1tSDK;

    if-ne v6, v7, :cond_7

    .line 46
    iget-object v6, v5, Lcom/appsflyer/internal/AFj1tSDK;->getMediationNetwork:Ljava/util/Map;

    const-string v7, "referrer"

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_6

    check-cast v6, Ljava/lang/String;

    goto :goto_3

    :cond_6
    move-object v6, v3

    :goto_3
    if-eqz v6, :cond_7

    .line 47
    iget-object v5, v5, Lcom/appsflyer/internal/AFj1tSDK;->getMediationNetwork:Ljava/util/Map;

    const-string v7, "source"

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/String;

    invoke-static {v7, v5}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v5

    .line 48
    const-string/jumbo v7, "value"

    invoke-static {v7, v6}, Lms/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v6

    filled-new-array {v5, v6}, [Lkotlin/Pair;

    move-result-object v5

    .line 49
    invoke-static {v5}, Lkotlin/collections/p0;->m([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v5

    goto :goto_4

    :cond_7
    move-object v5, v3

    :goto_4
    if-eqz v5, :cond_5

    .line 50
    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 51
    :cond_8
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    .line 52
    const-string v1, "referrers"

    invoke-interface {p1, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    :cond_9
    iget-object p1, p0, Lcom/appsflyer/internal/AFf1xSDK;->component2:Lcom/appsflyer/internal/AFa1rSDK;

    .line 54
    new-instance v1, Lcom/appsflyer/internal/AFj1cSDK;

    iget-object v4, p0, Lcom/appsflyer/internal/AFf1xSDK;->copydefault:Lcom/appsflyer/internal/AFc1oSDK;

    const/4 v5, 0x2

    invoke-direct {v1, v4, v3, v5, v3}, Lcom/appsflyer/internal/AFj1cSDK;-><init>(Lcom/appsflyer/internal/AFc1oSDK;Lcom/appsflyer/internal/AFk1zSDK;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 55
    iget-object v3, p0, Lcom/appsflyer/internal/AFe1fSDK;->component1:Lcom/appsflyer/internal/AFf1eSDK;

    invoke-virtual {v3}, Lcom/appsflyer/internal/AFf1eSDK;->getMediationNetwork()Ljava/lang/String;

    move-result-object v3

    .line 56
    iget-object v4, p0, Lcom/appsflyer/internal/AFf1xSDK;->component2:Lcom/appsflyer/internal/AFa1rSDK;

    .line 57
    iget-object v4, v4, Lcom/appsflyer/internal/AFh1mSDK;->AFAdRevenueData:Ljava/util/Map;

    .line 58
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    .line 59
    invoke-virtual {v1, v3, v2}, Lcom/appsflyer/internal/AFj1cSDK;->getMonetizationNetwork(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 60
    iput-object v1, p1, Lcom/appsflyer/internal/AFh1mSDK;->component2:Ljava/lang/String;

    .line 61
    iget-object p1, p0, Lcom/appsflyer/internal/AFf1xSDK;->copy:Lcom/appsflyer/internal/AFh1xSDK;

    iget v1, p0, Lcom/appsflyer/internal/AFf1xSDK;->registerClient:I

    if-lez v1, :cond_c

    if-le v1, v5, :cond_a

    goto :goto_5

    :cond_a
    add-int/lit8 v1, v1, -0x1

    .line 62
    iget-object v2, p1, Lcom/appsflyer/internal/AFh1xSDK;->component3:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    aput-wide v3, v2, v1

    if-nez v1, :cond_d

    .line 63
    iget-wide v2, p1, Lcom/appsflyer/internal/AFh1xSDK;->component4:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-eqz v4, :cond_b

    .line 64
    iget-object v4, p1, Lcom/appsflyer/internal/AFh1xSDK;->getMediationNetwork:Ljava/util/Map;

    iget-object p1, p1, Lcom/appsflyer/internal/AFh1xSDK;->component3:[J

    aget-wide v5, p1, v1

    sub-long/2addr v5, v2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "from_fg"

    invoke-interface {v4, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 65
    :cond_b
    const-string p1, "Metrics: fg ts is missing"

    invoke-static {p1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    goto :goto_6

    .line 66
    :cond_c
    :goto_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v2, "Metrics: Unexpected ddl requestCount = "

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const-string v1, "Unexpected ddl requestCount - start"

    invoke-static {v1, p1}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    :cond_d
    :goto_6
    iget-object p1, p0, Lcom/appsflyer/internal/AFe1fSDK;->component4:Lcom/appsflyer/internal/AFd1nSDK;

    iget-object v1, p0, Lcom/appsflyer/internal/AFf1xSDK;->component2:Lcom/appsflyer/internal/AFa1rSDK;

    invoke-virtual {p1, v1}, Lcom/appsflyer/internal/AFd1nSDK;->getMonetizationNetwork(Lcom/appsflyer/internal/AFa1rSDK;)Lcom/appsflyer/internal/AFd1hSDK;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method protected final a_()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final bridge synthetic component2()Lcom/appsflyer/attribution/AppsFlyerRequestListener;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return-object v0
.end method

.method protected final copydefault()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final getMonetizationNetwork()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    return v0
.end method

.method public final getRevenue()Lcom/appsflyer/internal/AFe1uSDK;
    .locals 15
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, ""

    sget-object v1, Lcom/appsflyer/internal/AFe1uSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFe1uSDK;

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2
    :try_start_0
    invoke-super {p0}, Lcom/appsflyer/internal/AFe1fSDK;->getRevenue()Lcom/appsflyer/internal/AFe1uSDK;

    move-result-object v4

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    :try_start_1
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1xSDK;->copy:Lcom/appsflyer/internal/AFh1xSDK;

    iget v5, p0, Lcom/appsflyer/internal/AFf1xSDK;->registerClient:I

    const-wide/16 v6, 0x0

    const/4 v8, 0x2

    if-lez v5, :cond_2

    if-le v5, v8, :cond_0

    goto :goto_0

    :cond_0
    sub-int/2addr v5, v2

    .line 4
    iget-object v9, v1, Lcom/appsflyer/internal/AFh1xSDK;->component2:[J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    aput-wide v10, v9, v5

    .line 5
    iget-object v9, v1, Lcom/appsflyer/internal/AFh1xSDK;->component3:[J

    aget-wide v10, v9, v5

    cmp-long v9, v10, v6

    if-eqz v9, :cond_1

    .line 6
    iget-object v9, v1, Lcom/appsflyer/internal/AFh1xSDK;->component1:[J

    iget-object v12, v1, Lcom/appsflyer/internal/AFh1xSDK;->component2:[J

    aget-wide v13, v12, v5

    sub-long/2addr v13, v10

    aput-wide v13, v9, v5

    .line 7
    iget-object v1, v1, Lcom/appsflyer/internal/AFh1xSDK;->getMediationNetwork:Ljava/util/Map;

    const-string v5, "net"

    invoke-interface {v1, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v1, v4

    goto/16 :goto_4

    .line 8
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v9, "Metrics: ddlStart["

    invoke-direct {v1, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "] ts is missing"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_2
    :goto_0
    const-string v1, "Unexpected ddl requestCount - end"

    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Metrics: Unexpected ddl requestCount = "

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v9, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v9}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    :goto_1
    sget-object v1, Lcom/appsflyer/internal/AFf1xSDK$AFa1uSDK;->getRevenue:[I

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v1, v1, v5

    if-eq v1, v2, :cond_5

    if-eq v1, v8, :cond_3

    goto/16 :goto_7

    .line 11
    :cond_3
    sget-object v9, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v10, Lcom/appsflyer/internal/AFg1cSDK;->copy:Lcom/appsflyer/internal/AFg1cSDK;

    .line 12
    iget-object v0, p0, Lcom/appsflyer/internal/AFe1fSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFe1wSDK;

    if-eqz v0, :cond_4

    .line 13
    invoke-virtual {v0}, Lcom/appsflyer/internal/AFe1wSDK;->getStatusCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_2

    :cond_4
    move-object v0, v3

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error occurred. Server response code = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x4

    const/4 v14, 0x0

    const/4 v12, 0x0

    invoke-static/range {v9 .. v14}, Lcom/appsflyer/internal/AFh1ySDK;->d$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 14
    new-instance v0, Lcom/appsflyer/deeplink/DeepLinkResult;

    sget-object v1, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->HTTP_STATUS_CODE:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-direct {v0, v3, v1}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    .line 15
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1xSDK;->copy:Lcom/appsflyer/internal/AFh1xSDK;

    iget-object v5, p0, Lcom/appsflyer/internal/AFf1xSDK;->hashCode:Lcom/appsflyer/internal/AFa1mSDK;

    .line 16
    iget-wide v5, v5, Lcom/appsflyer/internal/AFa1mSDK;->component2:J

    .line 17
    invoke-virtual {v1, v0, v5, v6}, Lcom/appsflyer/internal/AFh1xSDK;->getCurrencyIso4217Code(Lcom/appsflyer/deeplink/DeepLinkResult;J)V

    .line 18
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1xSDK;->hashCode:Lcom/appsflyer/internal/AFa1mSDK;

    invoke-virtual {v1, v0}, Lcom/appsflyer/internal/AFa1mSDK;->getRevenue(Lcom/appsflyer/deeplink/DeepLinkResult;)V

    goto/16 :goto_7

    .line 19
    :cond_5
    iget-object v1, p0, Lcom/appsflyer/internal/AFe1fSDK;->areAllFieldsValid:Lcom/appsflyer/internal/AFe1wSDK;

    .line 20
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFe1wSDK;->getBody()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Lcom/appsflyer/internal/AFa1oSDK;

    .line 21
    iget-object v0, v1, Lcom/appsflyer/internal/AFa1oSDK;->getMonetizationNetwork:Lcom/appsflyer/deeplink/DeepLink;

    if-eqz v0, :cond_6

    .line 22
    new-instance v1, Lcom/appsflyer/deeplink/DeepLinkResult;

    invoke-direct {v1, v0, v3}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    .line 23
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1xSDK;->copy:Lcom/appsflyer/internal/AFh1xSDK;

    iget-object v5, p0, Lcom/appsflyer/internal/AFf1xSDK;->hashCode:Lcom/appsflyer/internal/AFa1mSDK;

    .line 24
    iget-wide v5, v5, Lcom/appsflyer/internal/AFa1mSDK;->component2:J

    .line 25
    invoke-virtual {v0, v1, v5, v6}, Lcom/appsflyer/internal/AFh1xSDK;->getCurrencyIso4217Code(Lcom/appsflyer/deeplink/DeepLinkResult;J)V

    .line 26
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1xSDK;->hashCode:Lcom/appsflyer/internal/AFa1mSDK;

    invoke-virtual {v0, v1}, Lcom/appsflyer/internal/AFa1mSDK;->getRevenue(Lcom/appsflyer/deeplink/DeepLinkResult;)V

    goto/16 :goto_7

    .line 27
    :cond_6
    iget v0, p0, Lcom/appsflyer/internal/AFf1xSDK;->registerClient:I

    if-gt v0, v2, :cond_9

    invoke-virtual {v1}, Lcom/appsflyer/internal/AFa1oSDK;->AFAdRevenueData()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/appsflyer/internal/AFf1xSDK;->equals()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 28
    sget-object v8, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v9, Lcom/appsflyer/internal/AFg1cSDK;->copy:Lcom/appsflyer/internal/AFg1cSDK;

    const-string v10, "Waiting for referrers..."

    const/4 v12, 0x4

    const/4 v13, 0x0

    const/4 v11, 0x0

    invoke-static/range {v8 .. v13}, Lcom/appsflyer/internal/AFh1ySDK;->d$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1xSDK;->AFInAppEventType:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 30
    iget-object v0, p0, Lcom/appsflyer/internal/AFf1xSDK;->copy:Lcom/appsflyer/internal/AFh1xSDK;

    .line 31
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 32
    iget-object v1, v0, Lcom/appsflyer/internal/AFh1xSDK;->component2:[J

    const/4 v5, 0x0

    aget-wide v10, v1, v5

    cmp-long v1, v10, v6

    if-eqz v1, :cond_7

    .line 33
    iget-object v0, v0, Lcom/appsflyer/internal/AFh1xSDK;->getMediationNetwork:Ljava/util/Map;

    const-string v1, "rfr_wait"

    sub-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 34
    :cond_7
    const-string v0, "Metrics: ddlEnd[0] ts is missing"

    invoke-static {v0}, Lcom/appsflyer/AFLogger;->afInfoLog(Ljava/lang/String;)V

    .line 35
    :goto_3
    iget v0, p0, Lcom/appsflyer/internal/AFf1xSDK;->AFKeystoreWrapper:I

    iget v1, p0, Lcom/appsflyer/internal/AFf1xSDK;->AFInAppEventParameterName:I

    if-ne v0, v1, :cond_8

    .line 36
    new-instance v0, Lcom/appsflyer/deeplink/DeepLinkResult;

    invoke-direct {v0, v3, v3}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    .line 37
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1xSDK;->copy:Lcom/appsflyer/internal/AFh1xSDK;

    iget-object v5, p0, Lcom/appsflyer/internal/AFf1xSDK;->hashCode:Lcom/appsflyer/internal/AFa1mSDK;

    .line 38
    iget-wide v5, v5, Lcom/appsflyer/internal/AFa1mSDK;->component2:J

    .line 39
    invoke-virtual {v1, v0, v5, v6}, Lcom/appsflyer/internal/AFh1xSDK;->getCurrencyIso4217Code(Lcom/appsflyer/deeplink/DeepLinkResult;J)V

    .line 40
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1xSDK;->hashCode:Lcom/appsflyer/internal/AFa1mSDK;

    invoke-virtual {v1, v0}, Lcom/appsflyer/internal/AFa1mSDK;->getRevenue(Lcom/appsflyer/deeplink/DeepLinkResult;)V

    .line 41
    sget-object v0, Lcom/appsflyer/internal/AFe1uSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFe1uSDK;

    return-object v0

    .line 42
    :cond_8
    invoke-virtual {p0}, Lcom/appsflyer/internal/AFe1fSDK;->getRevenue()Lcom/appsflyer/internal/AFe1uSDK;

    move-result-object v0

    return-object v0

    .line 43
    :cond_9
    new-instance v0, Lcom/appsflyer/deeplink/DeepLinkResult;

    invoke-direct {v0, v3, v3}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    .line 44
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1xSDK;->copy:Lcom/appsflyer/internal/AFh1xSDK;

    iget-object v5, p0, Lcom/appsflyer/internal/AFf1xSDK;->hashCode:Lcom/appsflyer/internal/AFa1mSDK;

    .line 45
    iget-wide v5, v5, Lcom/appsflyer/internal/AFa1mSDK;->component2:J

    .line 46
    invoke-virtual {v1, v0, v5, v6}, Lcom/appsflyer/internal/AFh1xSDK;->getCurrencyIso4217Code(Lcom/appsflyer/deeplink/DeepLinkResult;J)V

    .line 47
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1xSDK;->hashCode:Lcom/appsflyer/internal/AFa1mSDK;

    invoke-virtual {v1, v0}, Lcom/appsflyer/internal/AFa1mSDK;->getRevenue(Lcom/appsflyer/deeplink/DeepLinkResult;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_7

    :catch_1
    move-exception v0

    .line 48
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    .line 49
    instance-of v5, v4, Ljava/lang/InterruptedException;

    if-eqz v5, :cond_a

    goto :goto_5

    .line 50
    :cond_a
    instance-of v2, v4, Ljava/io/InterruptedIOException;

    :goto_5
    if-eqz v2, :cond_b

    .line 51
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    const-string v1, "[DDL] Timeout"

    invoke-static {v1, v0}, Lcom/appsflyer/AFLogger;->afErrorLogForExcManagerOnly(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    sget-object v4, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    .line 53
    sget-object v5, Lcom/appsflyer/internal/AFg1cSDK;->copy:Lcom/appsflyer/internal/AFg1cSDK;

    .line 54
    iget v0, p0, Lcom/appsflyer/internal/AFf1xSDK;->registerClient:I

    .line 55
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1xSDK;->hashCode:Lcom/appsflyer/internal/AFa1mSDK;

    .line 56
    iget-wide v1, v1, Lcom/appsflyer/internal/AFa1mSDK;->component2:J

    .line 57
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Timeout, didn\'t manage to find deferred deeplink after "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " attempt(s) within "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " milliseconds"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    .line 58
    invoke-static/range {v4 .. v9}, Lcom/appsflyer/internal/AFh1ySDK;->d$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 59
    new-instance v0, Lcom/appsflyer/deeplink/DeepLinkResult;

    sget-object v1, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->TIMEOUT:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-direct {v0, v3, v1}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    .line 60
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1xSDK;->copy:Lcom/appsflyer/internal/AFh1xSDK;

    iget-object v2, p0, Lcom/appsflyer/internal/AFf1xSDK;->hashCode:Lcom/appsflyer/internal/AFa1mSDK;

    .line 61
    iget-wide v2, v2, Lcom/appsflyer/internal/AFa1mSDK;->component2:J

    .line 62
    invoke-virtual {v1, v0, v2, v3}, Lcom/appsflyer/internal/AFh1xSDK;->getCurrencyIso4217Code(Lcom/appsflyer/deeplink/DeepLinkResult;J)V

    .line 63
    iget-object v1, p0, Lcom/appsflyer/internal/AFf1xSDK;->hashCode:Lcom/appsflyer/internal/AFa1mSDK;

    invoke-virtual {v1, v0}, Lcom/appsflyer/internal/AFa1mSDK;->getRevenue(Lcom/appsflyer/deeplink/DeepLinkResult;)V

    .line 64
    sget-object v4, Lcom/appsflyer/internal/AFe1uSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFe1uSDK;

    goto :goto_7

    .line 65
    :cond_b
    instance-of v2, v4, Ljava/io/IOException;

    if-eqz v2, :cond_c

    .line 66
    sget-object v4, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v5, Lcom/appsflyer/internal/AFg1cSDK;->copy:Lcom/appsflyer/internal/AFg1cSDK;

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v6, "Http Exception: the request was not sent to the server"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/appsflyer/internal/AFh1ySDK;->d$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 67
    new-instance v0, Lcom/appsflyer/deeplink/DeepLinkResult;

    sget-object v2, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->NETWORK:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-direct {v0, v3, v2}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    .line 68
    iget-object v2, p0, Lcom/appsflyer/internal/AFf1xSDK;->copy:Lcom/appsflyer/internal/AFh1xSDK;

    iget-object v3, p0, Lcom/appsflyer/internal/AFf1xSDK;->hashCode:Lcom/appsflyer/internal/AFa1mSDK;

    .line 69
    iget-wide v3, v3, Lcom/appsflyer/internal/AFa1mSDK;->component2:J

    .line 70
    invoke-virtual {v2, v0, v3, v4}, Lcom/appsflyer/internal/AFh1xSDK;->getCurrencyIso4217Code(Lcom/appsflyer/deeplink/DeepLinkResult;J)V

    .line 71
    iget-object v2, p0, Lcom/appsflyer/internal/AFf1xSDK;->hashCode:Lcom/appsflyer/internal/AFa1mSDK;

    invoke-virtual {v2, v0}, Lcom/appsflyer/internal/AFa1mSDK;->getRevenue(Lcom/appsflyer/deeplink/DeepLinkResult;)V

    goto :goto_6

    .line 72
    :cond_c
    sget-object v4, Lcom/appsflyer/AFLogger;->INSTANCE:Lcom/appsflyer/AFLogger;

    sget-object v5, Lcom/appsflyer/internal/AFg1cSDK;->copy:Lcom/appsflyer/internal/AFg1cSDK;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected Exception: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x4

    const/4 v9, 0x0

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lcom/appsflyer/internal/AFh1ySDK;->d$default(Lcom/appsflyer/internal/AFh1ySDK;Lcom/appsflyer/internal/AFg1cSDK;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 73
    new-instance v0, Lcom/appsflyer/deeplink/DeepLinkResult;

    sget-object v2, Lcom/appsflyer/deeplink/DeepLinkResult$Error;->UNEXPECTED:Lcom/appsflyer/deeplink/DeepLinkResult$Error;

    invoke-direct {v0, v3, v2}, Lcom/appsflyer/deeplink/DeepLinkResult;-><init>(Lcom/appsflyer/deeplink/DeepLink;Lcom/appsflyer/deeplink/DeepLinkResult$Error;)V

    .line 74
    iget-object v2, p0, Lcom/appsflyer/internal/AFf1xSDK;->copy:Lcom/appsflyer/internal/AFh1xSDK;

    iget-object v3, p0, Lcom/appsflyer/internal/AFf1xSDK;->hashCode:Lcom/appsflyer/internal/AFa1mSDK;

    .line 75
    iget-wide v3, v3, Lcom/appsflyer/internal/AFa1mSDK;->component2:J

    .line 76
    invoke-virtual {v2, v0, v3, v4}, Lcom/appsflyer/internal/AFh1xSDK;->getCurrencyIso4217Code(Lcom/appsflyer/deeplink/DeepLinkResult;J)V

    .line 77
    iget-object v2, p0, Lcom/appsflyer/internal/AFf1xSDK;->hashCode:Lcom/appsflyer/internal/AFa1mSDK;

    invoke-virtual {v2, v0}, Lcom/appsflyer/internal/AFa1mSDK;->getRevenue(Lcom/appsflyer/deeplink/DeepLinkResult;)V

    :goto_6
    move-object v4, v1

    :goto_7
    return-object v4
.end method
