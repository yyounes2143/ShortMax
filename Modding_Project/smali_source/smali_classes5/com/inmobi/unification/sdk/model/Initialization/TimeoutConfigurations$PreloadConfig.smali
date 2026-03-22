.class public final Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$PreloadConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private audio:Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdPreloadConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private banner:Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdPreloadConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private int:Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdPreloadConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private native:Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdPreloadConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v6, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdPreloadConfig;

    .line 5
    .line 6
    sget-object v0, Lcom/inmobi/media/ne;->Companion:Lcom/inmobi/media/le;

    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/inmobi/media/ne;->K()Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {}, Lcom/inmobi/media/ne;->J()Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {}, Lcom/inmobi/media/ne;->H()Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-static {}, Lcom/inmobi/media/ne;->L()Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-static {}, Lcom/inmobi/media/ne;->I()Lorg/json/JSONObject;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    move-object v0, v6

    .line 32
    invoke-direct/range {v0 .. v5}, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdPreloadConfig;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 33
    .line 34
    .line 35
    iput-object v6, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$PreloadConfig;->banner:Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdPreloadConfig;

    .line 36
    .line 37
    new-instance v0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdPreloadConfig;

    .line 38
    .line 39
    invoke-static {}, Lcom/inmobi/media/ne;->O()Lorg/json/JSONObject;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    invoke-static {}, Lcom/inmobi/media/ne;->N()Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    invoke-static {}, Lcom/inmobi/media/ne;->Q()Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    move-result-object v10

    .line 51
    invoke-static {}, Lcom/inmobi/media/ne;->P()Lorg/json/JSONObject;

    .line 52
    .line 53
    .line 54
    move-result-object v11

    .line 55
    invoke-static {}, Lcom/inmobi/media/ne;->M()Lorg/json/JSONObject;

    .line 56
    .line 57
    .line 58
    move-result-object v12

    .line 59
    move-object v7, v0

    .line 60
    invoke-direct/range {v7 .. v12}, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdPreloadConfig;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 61
    .line 62
    .line 63
    iput-object v0, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$PreloadConfig;->int:Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdPreloadConfig;

    .line 64
    .line 65
    new-instance v0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdPreloadConfig;

    .line 66
    .line 67
    invoke-static {}, Lcom/inmobi/media/ne;->T()Lorg/json/JSONObject;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-static {}, Lcom/inmobi/media/ne;->S()Lorg/json/JSONObject;

    .line 72
    .line 73
    .line 74
    move-result-object v3

    .line 75
    invoke-static {}, Lcom/inmobi/media/ne;->V()Lorg/json/JSONObject;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-static {}, Lcom/inmobi/media/ne;->U()Lorg/json/JSONObject;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-static {}, Lcom/inmobi/media/ne;->R()Lorg/json/JSONObject;

    .line 84
    .line 85
    .line 86
    move-result-object v6

    .line 87
    move-object v1, v0

    .line 88
    invoke-direct/range {v1 .. v6}, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdPreloadConfig;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 89
    .line 90
    .line 91
    iput-object v0, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$PreloadConfig;->native:Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdPreloadConfig;

    .line 92
    .line 93
    new-instance v0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdPreloadConfig;

    .line 94
    .line 95
    invoke-static {}, Lcom/inmobi/media/ne;->E()Lorg/json/JSONObject;

    .line 96
    .line 97
    .line 98
    move-result-object v8

    .line 99
    invoke-static {}, Lcom/inmobi/media/ne;->D()Lorg/json/JSONObject;

    .line 100
    .line 101
    .line 102
    move-result-object v9

    .line 103
    invoke-static {}, Lcom/inmobi/media/ne;->G()Lorg/json/JSONObject;

    .line 104
    .line 105
    .line 106
    move-result-object v10

    .line 107
    invoke-static {}, Lcom/inmobi/media/ne;->F()Lorg/json/JSONObject;

    .line 108
    .line 109
    .line 110
    move-result-object v11

    .line 111
    invoke-static {}, Lcom/inmobi/media/ne;->C()Lorg/json/JSONObject;

    .line 112
    .line 113
    .line 114
    move-result-object v12

    .line 115
    move-object v7, v0

    .line 116
    invoke-direct/range {v7 .. v12}, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdPreloadConfig;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 117
    .line 118
    .line 119
    iput-object v0, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$PreloadConfig;->audio:Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdPreloadConfig;

    .line 120
    .line 121
    return-void
.end method


# virtual methods
.method public final getAudio()Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdPreloadConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$PreloadConfig;->audio:Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdPreloadConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBanner()Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdPreloadConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$PreloadConfig;->banner:Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdPreloadConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInterstitial()Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdPreloadConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$PreloadConfig;->int:Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdPreloadConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNative()Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdPreloadConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$PreloadConfig;->native:Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdPreloadConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$PreloadConfig;->banner:Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdPreloadConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdPreloadConfig;->isValid()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$PreloadConfig;->int:Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdPreloadConfig;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdPreloadConfig;->isValid()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$PreloadConfig;->native:Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdPreloadConfig;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdPreloadConfig;->isValid()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$PreloadConfig;->audio:Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdPreloadConfig;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdPreloadConfig;->isValid()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    :goto_0
    return v0
.end method
