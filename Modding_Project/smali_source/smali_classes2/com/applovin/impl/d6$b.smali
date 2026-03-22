.class Lcom/applovin/impl/d6$b;
.super Lcom/applovin/impl/g5;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/d6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field private final g:J

.field private final h:I

.field private final i:Lcom/applovin/impl/v2;

.field private final j:Ljava/util/List;

.field final synthetic k:Lcom/applovin/impl/d6;


# direct methods
.method private constructor <init>(Lcom/applovin/impl/d6;ILjava/util/List;)V
    .locals 2

    .line 2
    iput-object p1, p0, Lcom/applovin/impl/d6$b;->k:Lcom/applovin/impl/d6;

    .line 3
    invoke-static {p1}, Lcom/applovin/impl/d6;->a(Lcom/applovin/impl/d6;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/applovin/impl/d6;->b(Lcom/applovin/impl/d6;)Lcom/applovin/impl/sdk/k;

    move-result-object v1

    invoke-static {p1}, Lcom/applovin/impl/d6;->d(Lcom/applovin/impl/d6;)Lcom/applovin/impl/x2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/applovin/impl/x2;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/applovin/impl/g5;-><init>(Ljava/lang/String;Lcom/applovin/impl/sdk/k;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/applovin/impl/d6$b;->g:J

    .line 5
    iput p2, p0, Lcom/applovin/impl/d6$b;->h:I

    .line 6
    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/applovin/impl/v2;

    iput-object p1, p0, Lcom/applovin/impl/d6$b;->i:Lcom/applovin/impl/v2;

    .line 7
    iput-object p3, p0, Lcom/applovin/impl/d6$b;->j:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/d6;ILjava/util/List;Lcom/applovin/impl/d6$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/d6$b;-><init>(Lcom/applovin/impl/d6;ILjava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/d6$b;)Lcom/applovin/impl/sdk/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    return-object p0
.end method

.method static synthetic a(Lcom/applovin/impl/d6$b;Lcom/applovin/impl/v2;Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;JLcom/applovin/mediation/MaxError;)V
    .locals 0

    .line 2
    invoke-direct/range {p0 .. p5}, Lcom/applovin/impl/d6$b;->a(Lcom/applovin/impl/v2;Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;JLcom/applovin/mediation/MaxError;)V

    return-void
.end method

.method static synthetic a(Lcom/applovin/impl/d6$b;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/applovin/impl/d6$b;->b(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/applovin/impl/v2;Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;JLcom/applovin/mediation/MaxError;)V
    .locals 10

    .line 4
    invoke-virtual {p1}, Lcom/applovin/impl/v2;->U()Z

    move-result v4

    .line 5
    invoke-virtual {p1}, Lcom/applovin/impl/h3;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/applovin/impl/t3;->a(Ljava/lang/String;)Lcom/applovin/mediation/MaxMediatedNetworkInfo;

    move-result-object v2

    .line 6
    new-instance v9, Lcom/applovin/impl/mediation/MaxNetworkResponseInfoImpl;

    invoke-virtual {p1}, Lcom/applovin/impl/v2;->F()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {p1}, Lcom/applovin/impl/v2;->C()Ljava/lang/String;

    move-result-object v7

    move-object v0, v9

    move-object v1, p2

    move-wide v5, p3

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/applovin/impl/mediation/MaxNetworkResponseInfoImpl;-><init>(Lcom/applovin/mediation/MaxNetworkResponseInfo$AdLoadState;Lcom/applovin/mediation/MaxMediatedNetworkInfo;Landroid/os/Bundle;ZJLjava/lang/String;Lcom/applovin/mediation/MaxError;)V

    .line 7
    iget-object p1, p0, Lcom/applovin/impl/d6$b;->k:Lcom/applovin/impl/d6;

    invoke-static {p1}, Lcom/applovin/impl/d6;->c(Lcom/applovin/impl/d6;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic b(Lcom/applovin/impl/d6$b;)I
    .locals 0

    .line 2
    iget p0, p0, Lcom/applovin/impl/d6$b;->h:I

    return p0
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method static synthetic c(Lcom/applovin/impl/d6$b;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/d6$b;->j:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/applovin/impl/d6$b;)Lcom/applovin/impl/sdk/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/applovin/impl/d6$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/applovin/impl/d6$b;)Lcom/applovin/impl/sdk/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/applovin/impl/d6$b;)Lcom/applovin/impl/v2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/d6$b;->i:Lcom/applovin/impl/v2;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/applovin/impl/d6$b;)Lcom/applovin/impl/sdk/k;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Lcom/applovin/impl/d6$b;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/applovin/impl/d6$b;->g:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic j(Lcom/applovin/impl/d6$b;)Lcom/applovin/impl/sdk/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k(Lcom/applovin/impl/d6$b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/applovin/impl/d6$b;->k:Lcom/applovin/impl/d6;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/applovin/impl/d6;->d(Lcom/applovin/impl/d6;)Lcom/applovin/impl/x2;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/applovin/impl/x2;->b()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/applovin/impl/d6$b;->k:Lcom/applovin/impl/d6;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/applovin/impl/d6;->d(Lcom/applovin/impl/d6;)Lcom/applovin/impl/x2;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/applovin/impl/x2;->a()Lcom/applovin/mediation/MaxAdFormat;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    iget-object v2, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 30
    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v5, "Loading ad "

    .line 37
    .line 38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v5, p0, Lcom/applovin/impl/d6$b;->h:I

    .line 42
    .line 43
    add-int/lit8 v5, v5, 0x1

    .line 44
    .line 45
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v5, " of "

    .line 49
    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    iget-object v5, p0, Lcom/applovin/impl/d6$b;->j:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 56
    .line 57
    .line 58
    move-result v5

    .line 59
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const-string v5, " from "

    .line 63
    .line 64
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget-object v5, p0, Lcom/applovin/impl/d6$b;->i:Lcom/applovin/impl/v2;

    .line 68
    .line 69
    invoke-virtual {v5}, Lcom/applovin/impl/h3;->c()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v5, " for "

    .line 77
    .line 78
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v5, " ad unit "

    .line 89
    .line 90
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    invoke-virtual {v2, v3, v4}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :cond_0
    const-string v2, "started to load ad"

    .line 104
    .line 105
    invoke-direct {p0, v2}, Lcom/applovin/impl/d6$b;->b(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget-object v2, p0, Lcom/applovin/impl/d6$b;->k:Lcom/applovin/impl/d6;

    .line 109
    .line 110
    invoke-static {v2}, Lcom/applovin/impl/d6;->e(Lcom/applovin/impl/d6;)Ljava/lang/ref/WeakReference;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    check-cast v2, Landroid/content/Context;

    .line 119
    .line 120
    instance-of v3, v2, Landroid/app/Activity;

    .line 121
    .line 122
    if-eqz v3, :cond_1

    .line 123
    .line 124
    check-cast v2, Landroid/app/Activity;

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :cond_1
    iget-object v2, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 128
    .line 129
    invoke-virtual {v2}, Lcom/applovin/impl/sdk/k;->v0()Landroid/app/Activity;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    :goto_0
    iget-object v3, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 134
    .line 135
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->a0()Lcom/applovin/impl/sdk/p;

    .line 136
    .line 137
    .line 138
    move-result-object v3

    .line 139
    iget-object v4, p0, Lcom/applovin/impl/d6$b;->i:Lcom/applovin/impl/v2;

    .line 140
    .line 141
    invoke-virtual {v3, v4}, Lcom/applovin/impl/sdk/p;->b(Lcom/applovin/impl/v2;)V

    .line 142
    .line 143
    .line 144
    iget-object v3, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 145
    .line 146
    invoke-virtual {v3}, Lcom/applovin/impl/sdk/k;->X()Lcom/applovin/impl/mediation/MediationServiceImpl;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    iget-object v4, p0, Lcom/applovin/impl/d6$b;->i:Lcom/applovin/impl/v2;

    .line 151
    .line 152
    new-instance v5, Lcom/applovin/impl/d6$b$a;

    .line 153
    .line 154
    iget-object v6, p0, Lcom/applovin/impl/d6$b;->k:Lcom/applovin/impl/d6;

    .line 155
    .line 156
    invoke-static {v6}, Lcom/applovin/impl/d6;->f(Lcom/applovin/impl/d6;)Lcom/applovin/impl/mediation/ads/a$a;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    invoke-direct {v5, p0, v6, v1, v0}, Lcom/applovin/impl/d6$b$a;-><init>(Lcom/applovin/impl/d6$b;Lcom/applovin/impl/mediation/ads/a$a;Lcom/applovin/mediation/MaxAdFormat;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    invoke-virtual {v3, v0, v4, v2, v5}, Lcom/applovin/impl/mediation/MediationServiceImpl;->loadThirdPartyMediatedAd(Ljava/lang/String;Lcom/applovin/impl/v2;Landroid/app/Activity;Lcom/applovin/impl/mediation/ads/a$a;)V

    .line 164
    .line 165
    .line 166
    return-void
.end method
