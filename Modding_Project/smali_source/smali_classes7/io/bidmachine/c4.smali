.class Lio/bidmachine/c4;
.super Ljava/lang/Object;
.source "InitialRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/bidmachine/c4$c;,
        Lio/bidmachine/c4$b;
    }
.end annotation


# static fields
.field private static final j:J

.field private static final k:J


# instance fields
.field private final a:Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lwq/k;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final d:Ljava/lang/Runnable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final e:Ljava/util/Queue;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Queue;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lio/bidmachine/c4$c;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private h:Lio/bidmachine/ApiRequest;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/bidmachine/ApiRequest<",
            "Lio/bidmachine/protobuf/InitRequest;",
            "Lio/bidmachine/protobuf/InitResponse;",
            ">;"
        }
    .end annotation
.end field

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 2
    .line 3
    const-wide/16 v1, 0x2

    .line 4
    .line 5
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    sput-wide v1, Lio/bidmachine/c4;->j:J

    .line 10
    .line 11
    const-wide/16 v1, 0x80

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 14
    .line 15
    .line 16
    move-result-wide v0

    .line 17
    sput-wide v0, Lio/bidmachine/c4;->k:J

    .line 18
    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Queue;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/util/Queue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lio/bidmachine/c4;->i:J

    .line 7
    .line 8
    iput-object p1, p0, Lio/bidmachine/c4;->a:Landroid/content/Context;

    .line 9
    .line 10
    iput-object p2, p0, Lio/bidmachine/c4;->b:Ljava/lang/String;

    .line 11
    .line 12
    new-instance p1, Lio/bidmachine/BidMachineTrackingObject;

    .line 13
    .line 14
    invoke-direct {p1}, Lio/bidmachine/BidMachineTrackingObject;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lio/bidmachine/c4;->c:Lwq/k;

    .line 18
    .line 19
    new-instance p1, Lio/bidmachine/c4$b;

    .line 20
    .line 21
    invoke-direct {p1, p0}, Lio/bidmachine/c4$b;-><init>(Lio/bidmachine/c4;)V

    .line 22
    .line 23
    .line 24
    iput-object p1, p0, Lio/bidmachine/c4;->d:Ljava/lang/Runnable;

    .line 25
    .line 26
    new-instance p1, Ljava/util/LinkedList;

    .line 27
    .line 28
    invoke-direct {p1, p3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lio/bidmachine/c4;->e:Ljava/util/Queue;

    .line 32
    .line 33
    new-instance p1, Ljava/util/LinkedList;

    .line 34
    .line 35
    invoke-direct {p1, p3}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 36
    .line 37
    .line 38
    iput-object p1, p0, Lio/bidmachine/c4;->f:Ljava/util/Queue;

    .line 39
    .line 40
    return-void
.end method

.method static synthetic a(Lio/bidmachine/c4;Lio/bidmachine/ApiRequest;)Lio/bidmachine/ApiRequest;
    .locals 0

    .line 1
    iput-object p1, p0, Lio/bidmachine/c4;->h:Lio/bidmachine/ApiRequest;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic b(Lio/bidmachine/c4;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lio/bidmachine/c4;->i:J

    .line 2
    .line 3
    return-wide p1
.end method

.method static synthetic c(Lio/bidmachine/c4;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/c4;->d:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lio/bidmachine/c4;)Lio/bidmachine/c4$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/c4;->g:Lio/bidmachine/c4$c;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lio/bidmachine/c4;)Lwq/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/c4;->c:Lwq/k;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lio/bidmachine/c4;)Ljava/util/Queue;
    .locals 0

    .line 1
    iget-object p0, p0, Lio/bidmachine/c4;->f:Ljava/util/Queue;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lio/bidmachine/c4;)J
    .locals 2

    .line 1
    invoke-direct {p0}, Lio/bidmachine/c4;->j()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method static synthetic h(Lio/bidmachine/c4;)Lio/bidmachine/protobuf/InitRequest;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/c4;->l()Lio/bidmachine/protobuf/InitRequest;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic i(Lio/bidmachine/c4;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/bidmachine/c4;->q()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private j()J
    .locals 4

    .line 1
    iget-wide v0, p0, Lio/bidmachine/c4;->i:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v2, v0, v2

    .line 6
    .line 7
    if-gtz v2, :cond_0

    .line 8
    .line 9
    sget-wide v0, Lio/bidmachine/c4;->j:J

    .line 10
    .line 11
    iput-wide v0, p0, Lio/bidmachine/c4;->i:J

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const-wide/16 v2, 0x2

    .line 15
    .line 16
    mul-long/2addr v0, v2

    .line 17
    iput-wide v0, p0, Lio/bidmachine/c4;->i:J

    .line 18
    .line 19
    sget-wide v2, Lio/bidmachine/c4;->k:J

    .line 20
    .line 21
    cmp-long v0, v0, v2

    .line 22
    .line 23
    if-ltz v0, :cond_1

    .line 24
    .line 25
    iput-wide v2, p0, Lio/bidmachine/c4;->i:J

    .line 26
    .line 27
    :cond_1
    :goto_0
    iget-wide v0, p0, Lio/bidmachine/c4;->i:J

    .line 28
    .line 29
    return-wide v0
.end method

.method private k(Landroid/content/Context;)Lcom/explorestack/protobuf/Struct;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->newBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {p0, p1}, Lio/bidmachine/c4;->m(Landroid/content/Context;)Lcom/explorestack/protobuf/ListValue$Builder;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {v1, p1}, Lcom/explorestack/protobuf/Value$Builder;->setListValue(Lcom/explorestack/protobuf/ListValue$Builder;)Lcom/explorestack/protobuf/Value$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v1, "networks_info"

    .line 22
    .line 23
    invoke-virtual {v0, v1, p1}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    return-object p1
.end method

.method private l()Lio/bidmachine/protobuf/InitRequest;
    .locals 9
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lio/bidmachine/c4;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lio/bidmachine/AdvertisingDataManager;->d(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lio/bidmachine/j2;->e()Lio/bidmachine/j2;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-virtual {v2}, Lio/bidmachine/j2;->u()Lio/bidmachine/v5;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    invoke-virtual {v2}, Lio/bidmachine/j2;->s()Lio/bidmachine/TargetingParams;

    .line 15
    .line 16
    .line 17
    move-result-object v4

    .line 18
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest;->newBuilder()Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lio/bidmachine/c4;->a:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    if-eqz v1, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/InitRequest$Builder;->setBundle(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v1, p0, Lio/bidmachine/c4;->b:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/InitRequest$Builder;->setSellerId(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 36
    .line 37
    .line 38
    sget-object v1, Lcom/explorestack/protobuf/adcom/OS;->OS_ANDROID:Lcom/explorestack/protobuf/adcom/OS;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/InitRequest$Builder;->setOs(Lcom/explorestack/protobuf/adcom/OS;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lfr/c;->h()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/InitRequest$Builder;->setOsv(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Lio/bidmachine/c4;->a:Landroid/content/Context;

    .line 51
    .line 52
    invoke-static {v1}, Lio/bidmachine/core/g;->u(Landroid/content/Context;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/InitRequest$Builder;->setAppVer(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 59
    .line 60
    .line 61
    :cond_1
    const-string v1, "BidMachine"

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/InitRequest$Builder;->setSdk(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 64
    .line 65
    .line 66
    const-string v1, "3.4.0"

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/InitRequest$Builder;->setSdkver(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 69
    .line 70
    .line 71
    iget-object v1, p0, Lio/bidmachine/c4;->a:Landroid/content/Context;

    .line 72
    .line 73
    invoke-virtual {v3}, Lio/bidmachine/v5;->b()Z

    .line 74
    .line 75
    .line 76
    move-result v5

    .line 77
    const/4 v6, 0x1

    .line 78
    xor-int/2addr v5, v6

    .line 79
    invoke-static {v1, v5}, Lio/bidmachine/AdvertisingDataManager;->a(Landroid/content/Context;Z)Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/InitRequest$Builder;->setIfa(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Lio/bidmachine/j2;->j()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v5

    .line 94
    if-nez v5, :cond_2

    .line 95
    .line 96
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/InitRequest$Builder;->setIfv(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 97
    .line 98
    .line 99
    :cond_2
    iget-object v1, p0, Lio/bidmachine/c4;->a:Landroid/content/Context;

    .line 100
    .line 101
    invoke-virtual {v2, v1}, Lio/bidmachine/j2;->I(Landroid/content/Context;)Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/InitRequest$Builder;->setBmIfv(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 106
    .line 107
    .line 108
    invoke-static {}, Lio/bidmachine/SessionManager;->get()Lio/bidmachine/SessionManager;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    invoke-virtual {v1}, Lio/bidmachine/SessionManager;->getSessionId()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/InitRequest$Builder;->setSessionId(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 117
    .line 118
    .line 119
    iget-object v1, p0, Lio/bidmachine/c4;->a:Landroid/content/Context;

    .line 120
    .line 121
    invoke-static {v1}, Lio/bidmachine/DeviceInfo;->obtain(Landroid/content/Context;)Lio/bidmachine/DeviceInfo;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    iget-object v5, v1, Lio/bidmachine/DeviceInfo;->manufacturer:Ljava/lang/String;

    .line 126
    .line 127
    if-eqz v5, :cond_3

    .line 128
    .line 129
    invoke-virtual {v0, v5}, Lio/bidmachine/protobuf/InitRequest$Builder;->setMake(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 130
    .line 131
    .line 132
    :cond_3
    iget-object v5, v1, Lio/bidmachine/DeviceInfo;->model:Ljava/lang/String;

    .line 133
    .line 134
    if-eqz v5, :cond_4

    .line 135
    .line 136
    invoke-virtual {v0, v5}, Lio/bidmachine/protobuf/InitRequest$Builder;->setModel(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 137
    .line 138
    .line 139
    :cond_4
    invoke-virtual {v1}, Lio/bidmachine/DeviceInfo;->getHWV()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v5

    .line 143
    if-eqz v5, :cond_5

    .line 144
    .line 145
    invoke-virtual {v0, v5}, Lio/bidmachine/protobuf/InitRequest$Builder;->setHwv(Ljava/lang/String;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 146
    .line 147
    .line 148
    :cond_5
    iget-boolean v1, v1, Lio/bidmachine/DeviceInfo;->isTablet:Z

    .line 149
    .line 150
    if-eqz v1, :cond_6

    .line 151
    .line 152
    sget-object v1, Lcom/explorestack/protobuf/adcom/DeviceType;->DEVICE_TYPE_TABLET:Lcom/explorestack/protobuf/adcom/DeviceType;

    .line 153
    .line 154
    goto :goto_0

    .line 155
    :cond_6
    sget-object v1, Lcom/explorestack/protobuf/adcom/DeviceType;->DEVICE_TYPE_PHONE_DEVICE:Lcom/explorestack/protobuf/adcom/DeviceType;

    .line 156
    .line 157
    :goto_0
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/InitRequest$Builder;->setDeviceType(Lcom/explorestack/protobuf/adcom/DeviceType;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v3}, Lio/bidmachine/v5;->a()Z

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    const/4 v5, 0x0

    .line 165
    if-eqz v1, :cond_7

    .line 166
    .line 167
    iget-object v1, p0, Lio/bidmachine/c4;->a:Landroid/content/Context;

    .line 168
    .line 169
    invoke-static {v1}, Lfr/c;->b(Landroid/content/Context;)Lcom/explorestack/protobuf/adcom/ConnectionType;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/InitRequest$Builder;->setContype(Lcom/explorestack/protobuf/adcom/ConnectionType;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 174
    .line 175
    .line 176
    move-object v7, v1

    .line 177
    goto :goto_1

    .line 178
    :cond_7
    move-object v7, v5

    .line 179
    :goto_1
    invoke-virtual {v3}, Lio/bidmachine/v5;->c()Z

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    if-eqz v1, :cond_8

    .line 184
    .line 185
    iget-object v1, p0, Lio/bidmachine/c4;->a:Landroid/content/Context;

    .line 186
    .line 187
    invoke-virtual {v4}, Lio/bidmachine/TargetingParams;->getDeviceLocation()Landroid/location/Location;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    invoke-static {v1, v8, v5, v6}, Lfr/e;->b(Landroid/content/Context;Landroid/location/Location;Landroid/location/Location;Z)Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;

    .line 192
    .line 193
    .line 194
    move-result-object v1

    .line 195
    invoke-virtual {v4, v1}, Lio/bidmachine/TargetingParams;->build(Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/InitRequest$Builder;->setGeo(Lcom/explorestack/protobuf/adcom/Context$Geo$Builder;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 199
    .line 200
    .line 201
    :cond_8
    iget-object v1, p0, Lio/bidmachine/c4;->a:Landroid/content/Context;

    .line 202
    .line 203
    const/4 v6, 0x0

    .line 204
    move-object v5, v7

    .line 205
    invoke-static/range {v1 .. v6}, Lio/bidmachine/RequestDataRetriever;->collectContext(Landroid/content/Context;Lio/bidmachine/j2;Lio/bidmachine/v5;Lio/bidmachine/TargetingParams;Lcom/explorestack/protobuf/adcom/ConnectionType;Lio/bidmachine/AdsType;)Lcom/explorestack/protobuf/adcom/Context;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/InitRequest$Builder;->setContext(Lcom/explorestack/protobuf/adcom/Context;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 210
    .line 211
    .line 212
    iget-object v1, p0, Lio/bidmachine/c4;->a:Landroid/content/Context;

    .line 213
    .line 214
    invoke-direct {p0, v1}, Lio/bidmachine/c4;->o(Landroid/content/Context;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/InitRequest$Builder;->setAndroid(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 219
    .line 220
    .line 221
    iget-object v1, p0, Lio/bidmachine/c4;->a:Landroid/content/Context;

    .line 222
    .line 223
    invoke-direct {p0, v1}, Lio/bidmachine/c4;->k(Landroid/content/Context;)Lcom/explorestack/protobuf/Struct;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    invoke-virtual {v0, v1}, Lio/bidmachine/protobuf/InitRequest$Builder;->setExt(Lcom/explorestack/protobuf/Struct;)Lio/bidmachine/protobuf/InitRequest$Builder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest$Builder;->build()Lio/bidmachine/protobuf/InitRequest;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    return-object v0
.end method

.method private m(Landroid/content/Context;)Lcom/explorestack/protobuf/ListValue$Builder;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/ListValue;->newBuilder()Lcom/explorestack/protobuf/ListValue$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p1}, Lio/bidmachine/k4;->e(Landroid/content/Context;)Ljava/util/Map;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lio/bidmachine/l4;

    .line 28
    .line 29
    invoke-virtual {v1}, Lio/bidmachine/l4;->c()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1}, Lio/bidmachine/l4;->d()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    invoke-virtual {v1}, Lio/bidmachine/l4;->a()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-direct {p0, v2, v3, v1}, Lio/bidmachine/c4;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/explorestack/protobuf/Value;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/ListValue$Builder;->addValues(Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/ListValue$Builder;

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const-string p1, "mraid"

    .line 50
    .line 51
    const-string v1, "3.4.0"

    .line 52
    .line 53
    const-string v2, "3.4.0.1"

    .line 54
    .line 55
    invoke-direct {p0, p1, v1, v2}, Lio/bidmachine/c4;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/explorestack/protobuf/Value;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/ListValue$Builder;->addValues(Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/ListValue$Builder;

    .line 60
    .line 61
    .line 62
    const-string p1, "vast"

    .line 63
    .line 64
    invoke-direct {p0, p1, v1, v2}, Lio/bidmachine/c4;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/explorestack/protobuf/Value;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/ListValue$Builder;->addValues(Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/ListValue$Builder;

    .line 69
    .line 70
    .line 71
    const-string p1, "nast"

    .line 72
    .line 73
    const-string v3, "1.0"

    .line 74
    .line 75
    invoke-direct {p0, p1, v3, v2}, Lio/bidmachine/c4;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/explorestack/protobuf/Value;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/ListValue$Builder;->addValues(Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/ListValue$Builder;

    .line 80
    .line 81
    .line 82
    const-string p1, "adaptive_rendering"

    .line 83
    .line 84
    invoke-direct {p0, p1, v1, v2}, Lio/bidmachine/c4;->n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/explorestack/protobuf/Value;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/ListValue$Builder;->addValues(Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/ListValue$Builder;

    .line 89
    .line 90
    .line 91
    return-object v0
.end method

.method private n(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/explorestack/protobuf/Value;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, p2}, Lcom/explorestack/protobuf/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0, p3}, Lcom/explorestack/protobuf/Value$Builder;->setStringValue(Ljava/lang/String;)Lcom/explorestack/protobuf/Value$Builder;

    .line 30
    .line 31
    .line 32
    move-result-object p3

    .line 33
    invoke-virtual {p3}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    .line 34
    .line 35
    .line 36
    move-result-object p3

    .line 37
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->newBuilder()Lcom/explorestack/protobuf/Struct$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const-string v1, "network"

    .line 42
    .line 43
    invoke-virtual {v0, v1, p1}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    const-string v0, "network_version"

    .line 48
    .line 49
    invoke-virtual {p1, v0, p2}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string p2, "network_adapter_version"

    .line 54
    .line 55
    invoke-virtual {p1, p2, p3}, Lcom/explorestack/protobuf/Struct$Builder;->putFields(Ljava/lang/String;Lcom/explorestack/protobuf/Value;)Lcom/explorestack/protobuf/Struct$Builder;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-static {}, Lcom/explorestack/protobuf/Value;->newBuilder()Lcom/explorestack/protobuf/Value$Builder;

    .line 64
    .line 65
    .line 66
    move-result-object p2

    .line 67
    invoke-virtual {p2, p1}, Lcom/explorestack/protobuf/Value$Builder;->setStructValue(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Value$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Value$Builder;->build()Lcom/explorestack/protobuf/Value;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    return-object p1
.end method

.method private o(Landroid/content/Context;)Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-static {p1}, Lio/bidmachine/PlatformData;->get(Landroid/content/Context;)Lio/bidmachine/PlatformData;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;->newBuilder()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p1}, Lio/bidmachine/PlatformData;->getMinSdkVersion()Ljava/lang/Integer;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    new-instance v2, Lio/bidmachine/z3;

    .line 17
    .line 18
    invoke-direct {v2, v0}, Lio/bidmachine/z3;-><init>(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;)V

    .line 19
    .line 20
    .line 21
    invoke-static {v1, v2}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p1, Lio/bidmachine/PlatformData;->kotlinVersion:Ljava/lang/String;

    .line 25
    .line 26
    new-instance v1, Lio/bidmachine/a4;

    .line 27
    .line 28
    invoke-direct {v1, v0}, Lio/bidmachine/a4;-><init>(Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p1, v1}, Lio/bidmachine/core/g;->H(Ljava/lang/Object;Lio/bidmachine/Executable;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0}, Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData$Builder;->build()Lio/bidmachine/protobuf/InitRequest$AndroidPlatformData;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    return-object p1
.end method

.method private q()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lio/bidmachine/c4;->f:Ljava/util/Queue;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lio/bidmachine/c4;->f:Ljava/util/Queue;

    .line 10
    .line 11
    iget-object v1, p0, Lio/bidmachine/c4;->e:Ljava/util/Queue;

    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lio/bidmachine/c4;->f:Ljava/util/Queue;

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Ljava/lang/String;

    .line 23
    .line 24
    return-object v0
.end method


# virtual methods
.method p()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lio/bidmachine/c4;->g:Lio/bidmachine/c4$c;

    .line 3
    .line 4
    iput-object v0, p0, Lio/bidmachine/c4;->h:Lio/bidmachine/ApiRequest;

    .line 5
    .line 6
    return-void
.end method

.method r()V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/bidmachine/c4;->c:Lwq/k;

    .line 2
    .line 3
    sget-object v1, Lio/bidmachine/TrackEventType;->InitLoading:Lio/bidmachine/TrackEventType;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-interface {v0, v1, v2}, Lwq/k;->eventStart(Lio/bidmachine/TrackEventType;Lwq/j;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lio/bidmachine/c4$a;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lio/bidmachine/c4$a;-><init>(Lio/bidmachine/c4;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v0}, Lio/bidmachine/core/g;->X(Ljava/lang/Runnable;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method s(Lio/bidmachine/c4$c;)V
    .locals 0
    .param p1    # Lio/bidmachine/c4$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lio/bidmachine/c4;->g:Lio/bidmachine/c4$c;

    .line 2
    .line 3
    return-void
.end method
