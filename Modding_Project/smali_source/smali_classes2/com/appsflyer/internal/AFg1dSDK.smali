.class public final Lcom/appsflyer/internal/AFg1dSDK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/AFg1dSDK$AFa1zSDK;
    }
.end annotation


# instance fields
.field private final AFAdRevenueData:Ljava/lang/String;

.field private getMediationNetwork:Ljava/lang/StringBuilder;

.field private final getMonetizationNetwork:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/appsflyer/internal/AFg1dSDK$AFa1zSDK;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMonetizationNetwork:Ljava/util/List;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/appsflyer/internal/AFg1dSDK;->AFAdRevenueData:Ljava/lang/String;

    .line 20
    .line 21
    return-void
.end method

.method private AFAdRevenueData()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appsflyer/internal/AFg1mSDK;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMonetizationNetwork:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork()Lcom/appsflyer/internal/AFg1dSDK$AFa1zSDK;

    move-result-object v0

    .line 15
    sget-object v1, Lcom/appsflyer/internal/AFg1dSDK$AFa1zSDK;->getMonetizationNetwork:Lcom/appsflyer/internal/AFg1dSDK$AFa1zSDK;

    if-ne v0, v1, :cond_1

    .line 16
    sget-object v0, Lcom/appsflyer/internal/AFg1dSDK$AFa1zSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFg1dSDK$AFa1zSDK;

    .line 17
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMonetizationNetwork:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 18
    :cond_1
    sget-object v1, Lcom/appsflyer/internal/AFg1dSDK$AFa1zSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFg1dSDK$AFa1zSDK;

    if-ne v0, v1, :cond_2

    .line 19
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void

    .line 20
    :cond_2
    sget-object v1, Lcom/appsflyer/internal/AFg1dSDK$AFa1zSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFg1dSDK$AFa1zSDK;

    if-ne v0, v1, :cond_3

    .line 21
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    sget-object v0, Lcom/appsflyer/internal/AFg1dSDK$AFa1zSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFg1dSDK$AFa1zSDK;

    .line 23
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMonetizationNetwork:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 24
    :cond_3
    sget-object v1, Lcom/appsflyer/internal/AFg1dSDK$AFa1zSDK;->component4:Lcom/appsflyer/internal/AFg1dSDK$AFa1zSDK;

    if-ne v0, v1, :cond_4

    return-void

    .line 25
    :cond_4
    new-instance v0, Lcom/appsflyer/internal/AFg1mSDK;

    const-string v1, "Nesting problem"

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFg1mSDK;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getMediationNetwork()Lcom/appsflyer/internal/AFg1dSDK$AFa1zSDK;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appsflyer/internal/AFg1mSDK;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMonetizationNetwork:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMonetizationNetwork:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/appsflyer/internal/AFg1dSDK$AFa1zSDK;

    return-object v0

    .line 8
    :cond_0
    new-instance v0, Lcom/appsflyer/internal/AFg1mSDK;

    const-string v1, "Nesting problem"

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFg1mSDK;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method final AFAdRevenueData(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_4

    .line 3
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0xc

    if-eq v3, v4, :cond_3

    const/16 v4, 0xd

    if-eq v3, v4, :cond_2

    const/16 v4, 0x22

    const/16 v5, 0x5c

    if-eq v3, v4, :cond_1

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1

    if-eq v3, v5, :cond_1

    packed-switch v3, :pswitch_data_0

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_0

    .line 4
    iget-object v4, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "\\u%04x"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 5
    :cond_0
    iget-object v4, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 6
    :pswitch_0
    iget-object v3, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    const-string v4, "\\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 7
    :pswitch_1
    iget-object v3, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    const-string v4, "\\t"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 8
    :pswitch_2
    iget-object v3, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    const-string v4, "\\b"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 9
    :cond_1
    iget-object v4, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 10
    :cond_2
    iget-object v3, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    const-string v4, "\\r"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 11
    :cond_3
    iget-object v3, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    const-string v4, "\\f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_4
    iget-object p1, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final getCurrencyIso4217Code(Ljava/lang/Object;)Lcom/appsflyer/internal/AFg1dSDK;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appsflyer/internal/AFg1mSDK;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMonetizationNetwork:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_7

    .line 8
    .line 9
    const-string v0, ""

    .line 10
    .line 11
    const/16 v1, 0x30

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    add-int/lit16 v0, v0, 0x144

    .line 19
    .line 20
    invoke-static {v2, v2}, Landroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    add-int/lit16 v1, v1, 0x7bc7

    .line 25
    .line 26
    int-to-char v1, v1

    .line 27
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    shr-int/lit8 v2, v2, 0x8

    .line 32
    .line 33
    add-int/lit8 v2, v2, 0x24

    .line 34
    .line 35
    invoke-static {v0, v1, v2}, Lcom/appsflyer/internal/AFa1hSDK;->getRevenue(ICI)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Ljava/lang/Class;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    .line 47
    :try_start_0
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sget-object v1, Lcom/appsflyer/internal/AFa1hSDK;->d:Ljava/util/Map;

    .line 52
    .line 53
    const v2, -0x30570ec2

    .line 54
    .line 55
    .line 56
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    if-eqz v3, :cond_0

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 68
    .line 69
    .line 70
    move-result-wide v3

    .line 71
    const-wide/16 v5, 0x0

    .line 72
    .line 73
    cmp-long v3, v3, v5

    .line 74
    .line 75
    add-int/lit16 v3, v3, 0x142

    .line 76
    .line 77
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    .line 78
    .line 79
    .line 80
    move-result-wide v7

    .line 81
    cmp-long v4, v7, v5

    .line 82
    .line 83
    add-int/lit16 v4, v4, 0x7bc6

    .line 84
    .line 85
    int-to-char v4, v4

    .line 86
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollFriction()F

    .line 87
    .line 88
    .line 89
    move-result v5

    .line 90
    const/4 v6, 0x0

    .line 91
    cmpl-float v5, v5, v6

    .line 92
    .line 93
    add-int/lit8 v5, v5, 0x23

    .line 94
    .line 95
    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/AFa1hSDK;->getRevenue(ICI)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    check-cast v3, Ljava/lang/Class;

    .line 100
    .line 101
    const-string v4, "getCurrencyIso4217Code"

    .line 102
    .line 103
    const-class v5, Lcom/appsflyer/internal/AFg1dSDK;

    .line 104
    .line 105
    filled-new-array {v5}, [Ljava/lang/Class;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    :goto_0
    check-cast v3, Ljava/lang/reflect/Method;

    .line 121
    .line 122
    invoke-virtual {v3, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .line 124
    .line 125
    return-object p0

    .line 126
    :catchall_0
    move-exception p1

    .line 127
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    if-eqz v0, :cond_1

    .line 132
    .line 133
    throw v0

    .line 134
    :cond_1
    throw p1

    .line 135
    :cond_2
    instance-of v0, p1, Lcom/appsflyer/internal/AFg1gSDK;

    .line 136
    .line 137
    if-eqz v0, :cond_3

    .line 138
    .line 139
    check-cast p1, Lcom/appsflyer/internal/AFg1gSDK;

    .line 140
    .line 141
    invoke-virtual {p1, p0}, Lcom/appsflyer/internal/AFg1gSDK;->getCurrencyIso4217Code(Lcom/appsflyer/internal/AFg1dSDK;)V

    .line 142
    .line 143
    .line 144
    return-object p0

    .line 145
    :cond_3
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1dSDK;->AFAdRevenueData()V

    .line 146
    .line 147
    .line 148
    if-eqz p1, :cond_6

    .line 149
    .line 150
    instance-of v0, p1, Ljava/lang/Boolean;

    .line 151
    .line 152
    if-nez v0, :cond_6

    .line 153
    .line 154
    sget-object v0, Lcom/appsflyer/internal/AFg1gSDK;->getRevenue:Ljava/lang/Object;

    .line 155
    .line 156
    if-ne p1, v0, :cond_4

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_4
    instance-of v0, p1, Ljava/lang/Number;

    .line 160
    .line 161
    if-eqz v0, :cond_5

    .line 162
    .line 163
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    .line 164
    .line 165
    check-cast p1, Ljava/lang/Number;

    .line 166
    .line 167
    invoke-static {p1}, Lcom/appsflyer/internal/AFg1gSDK;->getCurrencyIso4217Code(Ljava/lang/Number;)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    goto :goto_2

    .line 175
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {p0, p1}, Lcom/appsflyer/internal/AFg1dSDK;->AFAdRevenueData(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    :goto_2
    return-object p0

    .line 189
    :cond_7
    new-instance p1, Lcom/appsflyer/internal/AFg1mSDK;

    .line 190
    .line 191
    const-string v0, "Nesting problem"

    .line 192
    .line 193
    invoke-direct {p1, v0}, Lcom/appsflyer/internal/AFg1mSDK;-><init>(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    throw p1
.end method

.method public final getMediationNetwork(Lcom/appsflyer/internal/AFg1dSDK$AFa1zSDK;Ljava/lang/String;)Lcom/appsflyer/internal/AFg1dSDK;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appsflyer/internal/AFg1mSDK;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMonetizationNetwork:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lcom/appsflyer/internal/AFg1mSDK;

    const-string p2, "Nesting problem: multiple top-level roots"

    invoke-direct {p1, p2}, Lcom/appsflyer/internal/AFg1mSDK;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1dSDK;->AFAdRevenueData()V

    .line 4
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMonetizationNetwork:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final getMonetizationNetwork(Lcom/appsflyer/internal/AFg1dSDK$AFa1zSDK;Lcom/appsflyer/internal/AFg1dSDK$AFa1zSDK;Ljava/lang/String;)Lcom/appsflyer/internal/AFg1dSDK;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appsflyer/internal/AFg1mSDK;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork()Lcom/appsflyer/internal/AFg1dSDK$AFa1zSDK;

    move-result-object v0

    if-eq v0, p2, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lcom/appsflyer/internal/AFg1mSDK;

    const-string p2, "Nesting problem"

    invoke-direct {p1, p2}, Lcom/appsflyer/internal/AFg1mSDK;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMonetizationNetwork:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method final getMonetizationNetwork()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/appsflyer/internal/AFg1mSDK;
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork()Lcom/appsflyer/internal/AFg1dSDK$AFa1zSDK;

    move-result-object v0

    .line 6
    sget-object v1, Lcom/appsflyer/internal/AFg1dSDK$AFa1zSDK;->getMediationNetwork:Lcom/appsflyer/internal/AFg1dSDK$AFa1zSDK;

    if-ne v0, v1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 8
    :cond_0
    sget-object v1, Lcom/appsflyer/internal/AFg1dSDK$AFa1zSDK;->getRevenue:Lcom/appsflyer/internal/AFg1dSDK$AFa1zSDK;

    if-ne v0, v1, :cond_1

    .line 9
    :goto_0
    sget-object v0, Lcom/appsflyer/internal/AFg1dSDK$AFa1zSDK;->getCurrencyIso4217Code:Lcom/appsflyer/internal/AFg1dSDK$AFa1zSDK;

    .line 10
    iget-object v1, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMonetizationNetwork:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 11
    :cond_1
    new-instance v0, Lcom/appsflyer/internal/AFg1mSDK;

    const-string v1, "Nesting problem"

    invoke-direct {v0, v1}, Lcom/appsflyer/internal/AFg1mSDK;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    return-object v0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/appsflyer/internal/AFg1dSDK;->getMediationNetwork:Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    return-object v0
.end method
