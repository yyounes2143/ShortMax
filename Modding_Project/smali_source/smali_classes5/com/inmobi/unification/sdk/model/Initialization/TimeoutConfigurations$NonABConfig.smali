.class public final Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$NonABConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private audio:Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdNonABConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private banner:Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdNonABConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private int:Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdNonABConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private native:Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdNonABConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdNonABConfig;

    .line 5
    .line 6
    sget-object v1, Lcom/inmobi/media/ne;->Companion:Lcom/inmobi/media/le;

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    invoke-static {}, Lcom/inmobi/media/ne;->t()Lorg/json/JSONObject;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {}, Lcom/inmobi/media/ne;->r()Lorg/json/JSONObject;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {}, Lcom/inmobi/media/ne;->s()Lorg/json/JSONObject;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-static {}, Lcom/inmobi/media/ne;->q()Lorg/json/JSONObject;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdNonABConfig;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$NonABConfig;->banner:Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdNonABConfig;

    .line 31
    .line 32
    new-instance v0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdNonABConfig;

    .line 33
    .line 34
    invoke-static {}, Lcom/inmobi/media/ne;->x()Lorg/json/JSONObject;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-static {}, Lcom/inmobi/media/ne;->v()Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-static {}, Lcom/inmobi/media/ne;->w()Lorg/json/JSONObject;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-static {}, Lcom/inmobi/media/ne;->u()Lorg/json/JSONObject;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdNonABConfig;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 51
    .line 52
    .line 53
    iput-object v0, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$NonABConfig;->int:Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdNonABConfig;

    .line 54
    .line 55
    new-instance v0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdNonABConfig;

    .line 56
    .line 57
    invoke-static {}, Lcom/inmobi/media/ne;->B()Lorg/json/JSONObject;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-static {}, Lcom/inmobi/media/ne;->z()Lorg/json/JSONObject;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {}, Lcom/inmobi/media/ne;->A()Lorg/json/JSONObject;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-static {}, Lcom/inmobi/media/ne;->y()Lorg/json/JSONObject;

    .line 70
    .line 71
    .line 72
    move-result-object v4

    .line 73
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdNonABConfig;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 74
    .line 75
    .line 76
    iput-object v0, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$NonABConfig;->native:Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdNonABConfig;

    .line 77
    .line 78
    new-instance v0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdNonABConfig;

    .line 79
    .line 80
    invoke-static {}, Lcom/inmobi/media/ne;->p()Lorg/json/JSONObject;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-static {}, Lcom/inmobi/media/ne;->n()Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-static {}, Lcom/inmobi/media/ne;->o()Lorg/json/JSONObject;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-static {}, Lcom/inmobi/media/ne;->m()Lorg/json/JSONObject;

    .line 93
    .line 94
    .line 95
    move-result-object v4

    .line 96
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdNonABConfig;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 97
    .line 98
    .line 99
    iput-object v0, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$NonABConfig;->audio:Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdNonABConfig;

    .line 100
    .line 101
    return-void
.end method


# virtual methods
.method public final getAudio()Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdNonABConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$NonABConfig;->audio:Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdNonABConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBanner()Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdNonABConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$NonABConfig;->banner:Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdNonABConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getInterstitial()Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdNonABConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$NonABConfig;->int:Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdNonABConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNative()Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdNonABConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$NonABConfig;->native:Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdNonABConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$NonABConfig;->banner:Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdNonABConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdNonABConfig;->isValid()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$NonABConfig;->int:Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdNonABConfig;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdNonABConfig;->isValid()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$NonABConfig;->native:Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdNonABConfig;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdNonABConfig;->isValid()Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$NonABConfig;->audio:Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdNonABConfig;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/inmobi/unification/sdk/model/Initialization/TimeoutConfigurations$AdNonABConfig;->isValid()Z

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
