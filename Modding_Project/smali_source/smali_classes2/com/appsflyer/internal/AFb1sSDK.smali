.class public final Lcom/appsflyer/internal/AFb1sSDK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final AFAdRevenueData:Lcom/appsflyer/internal/AFh1mSDK;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final getRevenue:[B
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/appsflyer/internal/AFh1mSDK;[B)V
    .locals 1
    .param p1    # Lcom/appsflyer/internal/AFh1mSDK;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # [B
        .annotation build Lorg/jetbrains/annotations/Nullable;
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/appsflyer/internal/AFb1sSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFh1mSDK;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/appsflyer/internal/AFb1sSDK;->getRevenue:[B

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final afInfoLog()V
    .locals 10

    .line 1
    :try_start_0
    sget-object v0, Lcom/appsflyer/internal/AFa1hSDK;->d:Ljava/util/Map;

    .line 2
    .line 3
    const v1, -0x76de88c2

    .line 4
    .line 5
    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    const/4 v3, 0x0

    .line 15
    const v4, 0xe39f

    .line 16
    .line 17
    .line 18
    const/4 v5, 0x0

    .line 19
    if-eqz v2, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {v5}, Landroid/telephony/cdma/CdmaCellLocation;->convertQuartSecToDecDegrees(I)D

    .line 23
    .line 24
    .line 25
    move-result-wide v6

    .line 26
    const-wide/16 v8, 0x0

    .line 27
    .line 28
    cmpl-double v2, v6, v8

    .line 29
    .line 30
    add-int/lit8 v2, v2, 0x58

    .line 31
    .line 32
    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    .line 33
    .line 34
    .line 35
    move-result v6

    .line 36
    shr-int/lit8 v6, v6, 0x10

    .line 37
    .line 38
    sub-int v6, v4, v6

    .line 39
    .line 40
    int-to-char v6, v6

    .line 41
    invoke-static {}, Landroid/media/AudioTrack;->getMinVolume()F

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    const/4 v8, 0x0

    .line 46
    cmpl-float v7, v7, v8

    .line 47
    .line 48
    rsub-int/lit8 v7, v7, 0x25

    .line 49
    .line 50
    invoke-static {v2, v6, v7}, Lcom/appsflyer/internal/AFa1hSDK;->getRevenue(ICI)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    check-cast v2, Ljava/lang/Class;

    .line 55
    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    :goto_0
    check-cast v2, Ljava/lang/reflect/Constructor;

    .line 68
    .line 69
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    iget-object v2, p0, Lcom/appsflyer/internal/AFb1sSDK;->AFAdRevenueData:Lcom/appsflyer/internal/AFh1mSDK;

    .line 74
    .line 75
    iget-object v3, p0, Lcom/appsflyer/internal/AFb1sSDK;->getRevenue:[B

    .line 76
    .line 77
    const/4 v6, 0x2

    .line 78
    :try_start_1
    new-array v6, v6, [Ljava/lang/Object;

    .line 79
    .line 80
    const/4 v7, 0x1

    .line 81
    aput-object v3, v6, v7

    .line 82
    .line 83
    aput-object v2, v6, v5

    .line 84
    .line 85
    const v2, 0x7dfc659b

    .line 86
    .line 87
    .line 88
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    if-eqz v3, :cond_1

    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    const/16 v3, 0x30

    .line 100
    .line 101
    invoke-static {v3}, Landroid/text/AndroidCharacter;->getMirror(C)C

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    rsub-int v3, v3, 0x88

    .line 106
    .line 107
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    .line 108
    .line 109
    .line 110
    move-result v5

    .line 111
    shr-int/lit8 v5, v5, 0x10

    .line 112
    .line 113
    sub-int/2addr v4, v5

    .line 114
    int-to-char v4, v4

    .line 115
    invoke-static {}, Landroid/view/KeyEvent;->getMaxKeyCode()I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    shr-int/lit8 v5, v5, 0x10

    .line 120
    .line 121
    rsub-int/lit8 v5, v5, 0x25

    .line 122
    .line 123
    invoke-static {v3, v4, v5}, Lcom/appsflyer/internal/AFa1hSDK;->getRevenue(ICI)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    check-cast v3, Ljava/lang/Class;

    .line 128
    .line 129
    const-string v4, "getMonetizationNetwork"

    .line 130
    .line 131
    const-class v5, Lcom/appsflyer/internal/AFh1mSDK;

    .line 132
    .line 133
    const-class v7, [B

    .line 134
    .line 135
    filled-new-array {v5, v7}, [Ljava/lang/Class;

    .line 136
    .line 137
    .line 138
    move-result-object v5

    .line 139
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 140
    .line 141
    .line 142
    move-result-object v3

    .line 143
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    :goto_1
    check-cast v3, Ljava/lang/reflect/Method;

    .line 151
    .line 152
    invoke-virtual {v3, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    .line 154
    .line 155
    return-void

    .line 156
    :catchall_0
    move-exception v0

    .line 157
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    if-eqz v1, :cond_2

    .line 162
    .line 163
    throw v1

    .line 164
    :cond_2
    throw v0
.end method
