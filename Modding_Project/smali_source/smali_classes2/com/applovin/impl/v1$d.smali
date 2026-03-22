.class Lcom/applovin/impl/v1$d;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/applovin/impl/v1;-><init>(Lcom/applovin/impl/sdk/ad/b;Landroid/app/Activity;Ljava/util/Map;Lcom/applovin/impl/sdk/k;Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/applovin/impl/sdk/k;

.field final synthetic b:Lcom/applovin/impl/v1;


# direct methods
.method constructor <init>(Lcom/applovin/impl/v1;Landroid/os/Handler;Lcom/applovin/impl/sdk/k;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/applovin/impl/v1$d;->b:Lcom/applovin/impl/v1;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/applovin/impl/v1$d;->a:Lcom/applovin/impl/sdk/k;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/applovin/impl/v1$d;->a:Lcom/applovin/impl/sdk/k;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/k;->q()Lcom/applovin/impl/sdk/i;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/applovin/impl/sdk/i;->b()Ljava/lang/Float;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/applovin/impl/v1$d;->b:Lcom/applovin/impl/v1;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/applovin/impl/v1;->c(Lcom/applovin/impl/v1;)Ljava/lang/Float;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/applovin/impl/v1$d;->b:Lcom/applovin/impl/v1;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/applovin/impl/v1;->c(Lcom/applovin/impl/v1;)Ljava/lang/Float;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    iget-object v1, p0, Lcom/applovin/impl/v1$d;->b:Lcom/applovin/impl/v1;

    .line 38
    .line 39
    invoke-static {v1}, Lcom/applovin/impl/v1;->c(Lcom/applovin/impl/v1;)Ljava/lang/Float;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    cmpl-float v0, v0, v1

    .line 48
    .line 49
    if-lez v0, :cond_0

    .line 50
    .line 51
    const-string/jumbo v0, "volume_up"

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_0
    const-string/jumbo v0, "volume_down"

    .line 56
    .line 57
    .line 58
    :goto_0
    new-instance v1, Lorg/json/JSONObject;

    .line 59
    .line 60
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    float-to-double v2, v2

    .line 68
    const-string/jumbo v4, "volume"

    .line 69
    .line 70
    .line 71
    invoke-static {v1, v4, v2, v3}, Lcom/applovin/impl/sdk/utils/JsonUtils;->putDouble(Lorg/json/JSONObject;Ljava/lang/String;D)V

    .line 72
    .line 73
    .line 74
    new-instance v2, Ljava/lang/StringBuilder;

    .line 75
    .line 76
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v3, "javascript:al_onVolumeChangedEvent(\'"

    .line 80
    .line 81
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    const-string v0, "\',"

    .line 88
    .line 89
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    const-string v0, ");"

    .line 96
    .line 97
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/applovin/impl/v1$d;->b:Lcom/applovin/impl/v1;

    .line 105
    .line 106
    invoke-virtual {v1, v0}, Lcom/applovin/impl/v1;->e(Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/applovin/impl/v1$d;->b:Lcom/applovin/impl/v1;

    .line 110
    .line 111
    invoke-static {v0, p1}, Lcom/applovin/impl/v1;->a(Lcom/applovin/impl/v1;Ljava/lang/Float;)Ljava/lang/Float;

    .line 112
    .line 113
    .line 114
    :cond_1
    return-void
.end method
