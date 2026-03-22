.class final Lcom/applovin/impl/f6$c;
.super Lcom/applovin/impl/f6;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/f6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final i:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/applovin/impl/p7;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/applovin/impl/f6;-><init>(Lcom/applovin/impl/p7;Lcom/applovin/sdk/AppLovinAdLoadListener;Lcom/applovin/impl/sdk/k;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/applovin/impl/p7;->b()Lorg/json/JSONObject;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    iput-object p1, p0, Lcom/applovin/impl/f6$c;->i:Lorg/json/JSONObject;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 10
    .line 11
    const-string v2, "Processing SDK JSON response..."

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/applovin/impl/f6$c;->i:Lorg/json/JSONObject;

    .line 17
    .line 18
    const-string/jumbo v1, "xml"

    .line 19
    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-static {v0, v1, v2}, Lcom/applovin/impl/sdk/utils/JsonUtils;->getString(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_5

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    iget-object v2, p0, Lcom/applovin/impl/g5;->a:Lcom/applovin/impl/sdk/k;

    .line 37
    .line 38
    sget-object v3, Lcom/applovin/impl/v4;->F4:Lcom/applovin/impl/v4;

    .line 39
    .line 40
    invoke-virtual {v2, v3}, Lcom/applovin/impl/sdk/k;->a(Lcom/applovin/impl/v4;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    check-cast v2, Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-ge v1, v2, :cond_3

    .line 51
    .line 52
    invoke-virtual {p0, v0}, Lcom/applovin/impl/f6;->b(Ljava/lang/String;)Lcom/applovin/impl/m8;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Lcom/applovin/impl/f6;->a(Lcom/applovin/impl/m8;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_2

    .line 67
    .line 68
    iget-object v1, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 69
    .line 70
    iget-object v2, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 71
    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v4, "Unable to process XML: "

    .line 78
    .line 79
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v1, v2, v3}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :cond_2
    invoke-virtual {p0, v0}, Lcom/applovin/impl/f6;->c(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sget-object v0, Lcom/applovin/impl/q7;->f:Lcom/applovin/impl/q7;

    .line 96
    .line 97
    invoke-virtual {p0, v0}, Lcom/applovin/impl/f6;->a(Lcom/applovin/impl/q7;)V

    .line 98
    .line 99
    .line 100
    goto :goto_0

    .line 101
    :cond_3
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_4

    .line 106
    .line 107
    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 108
    .line 109
    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 110
    .line 111
    const-string v2, "VAST response is over max length"

    .line 112
    .line 113
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    :cond_4
    sget-object v0, Lcom/applovin/impl/q7;->f:Lcom/applovin/impl/q7;

    .line 117
    .line 118
    invoke-virtual {p0, v0}, Lcom/applovin/impl/f6;->a(Lcom/applovin/impl/q7;)V

    .line 119
    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_5
    invoke-static {}, Lcom/applovin/impl/sdk/o;->a()Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-eqz v0, :cond_6

    .line 127
    .line 128
    iget-object v0, p0, Lcom/applovin/impl/g5;->c:Lcom/applovin/impl/sdk/o;

    .line 129
    .line 130
    iget-object v1, p0, Lcom/applovin/impl/g5;->b:Ljava/lang/String;

    .line 131
    .line 132
    const-string v2, "No VAST response received."

    .line 133
    .line 134
    invoke-virtual {v0, v1, v2}, Lcom/applovin/impl/sdk/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    :cond_6
    sget-object v0, Lcom/applovin/impl/q7;->j:Lcom/applovin/impl/q7;

    .line 138
    .line 139
    invoke-virtual {p0, v0}, Lcom/applovin/impl/f6;->a(Lcom/applovin/impl/q7;)V

    .line 140
    .line 141
    .line 142
    :goto_0
    return-void
.end method
