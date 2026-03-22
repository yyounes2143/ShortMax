.class Lcom/applovin/impl/adview/activity/FullscreenAdService$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/applovin/impl/adview/activity/FullscreenAdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/applovin/impl/adview/activity/FullscreenAdService$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/applovin/impl/adview/activity/FullscreenAdService$b;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    :try_start_0
    sget-object v0, Lcom/applovin/adview/AppLovinFullscreenActivity;->parentInterstitialWrapper:Lcom/applovin/impl/m2;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/applovin/impl/k7;->a(D)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    const-string v2, "parentWrapper is null for "

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget p1, p1, Landroid/os/Message;->what:I

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    throw v0

    .line 42
    :cond_1
    invoke-virtual {v0}, Lcom/applovin/impl/m2;->f()Lcom/applovin/impl/sdk/ad/b;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget v2, p1, Landroid/os/Message;->what:I

    .line 47
    .line 48
    sget-object v3, Lcom/applovin/impl/adview/activity/FullscreenAdService$c;->b:Lcom/applovin/impl/adview/activity/FullscreenAdService$c;

    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/applovin/impl/adview/activity/FullscreenAdService$c;->b()I

    .line 51
    .line 52
    .line 53
    move-result v4

    .line 54
    if-ne v2, v4, :cond_2

    .line 55
    .line 56
    new-instance v0, Landroid/os/Bundle;

    .line 57
    .line 58
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v2, "raw_full_ad_response"

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/applovin/impl/sdk/ad/AppLovinAdImpl;->getRawFullResponse()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {v3}, Lcom/applovin/impl/adview/activity/FullscreenAdService$c;->b()I

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    const/4 v2, 0x0

    .line 75
    invoke-static {v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    .line 81
    .line 82
    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    .line 83
    .line 84
    invoke-virtual {p1, v1}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .line 86
    .line 87
    goto/16 :goto_0

    .line 88
    .line 89
    :catch_0
    move-exception p1

    .line 90
    :try_start_2
    const-string v0, "FullscreenAdService"

    .line 91
    .line 92
    const-string v1, "Failed to respond to Fullscreen Activity in another process with ad"

    .line 93
    .line 94
    invoke-static {v0, v1, p1}, Lcom/applovin/impl/sdk/o;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 95
    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_2
    iget v2, p1, Landroid/os/Message;->what:I

    .line 99
    .line 100
    sget-object v3, Lcom/applovin/impl/adview/activity/FullscreenAdService$c;->c:Lcom/applovin/impl/adview/activity/FullscreenAdService$c;

    .line 101
    .line 102
    invoke-virtual {v3}, Lcom/applovin/impl/adview/activity/FullscreenAdService$c;->b()I

    .line 103
    .line 104
    .line 105
    move-result v3

    .line 106
    if-ne v2, v3, :cond_3

    .line 107
    .line 108
    invoke-virtual {v0}, Lcom/applovin/impl/m2;->c()Lcom/applovin/sdk/AppLovinAdDisplayListener;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-static {p1, v1}, Lcom/applovin/impl/q2;->a(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_3
    iget v2, p1, Landroid/os/Message;->what:I

    .line 117
    .line 118
    sget-object v3, Lcom/applovin/impl/adview/activity/FullscreenAdService$c;->d:Lcom/applovin/impl/adview/activity/FullscreenAdService$c;

    .line 119
    .line 120
    invoke-virtual {v3}, Lcom/applovin/impl/adview/activity/FullscreenAdService$c;->b()I

    .line 121
    .line 122
    .line 123
    move-result v3

    .line 124
    if-ne v2, v3, :cond_4

    .line 125
    .line 126
    invoke-virtual {v0}, Lcom/applovin/impl/m2;->b()Lcom/applovin/sdk/AppLovinAdClickListener;

    .line 127
    .line 128
    .line 129
    move-result-object p1

    .line 130
    invoke-static {p1, v1}, Lcom/applovin/impl/q2;->a(Lcom/applovin/sdk/AppLovinAdClickListener;Lcom/applovin/sdk/AppLovinAd;)V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_4
    iget v2, p1, Landroid/os/Message;->what:I

    .line 135
    .line 136
    sget-object v3, Lcom/applovin/impl/adview/activity/FullscreenAdService$c;->e:Lcom/applovin/impl/adview/activity/FullscreenAdService$c;

    .line 137
    .line 138
    invoke-virtual {v3}, Lcom/applovin/impl/adview/activity/FullscreenAdService$c;->b()I

    .line 139
    .line 140
    .line 141
    move-result v3

    .line 142
    if-ne v2, v3, :cond_5

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/applovin/impl/m2;->d()Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    invoke-static {p1, v1}, Lcom/applovin/impl/q2;->a(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAd;)V

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_5
    iget v2, p1, Landroid/os/Message;->what:I

    .line 153
    .line 154
    sget-object v3, Lcom/applovin/impl/adview/activity/FullscreenAdService$c;->f:Lcom/applovin/impl/adview/activity/FullscreenAdService$c;

    .line 155
    .line 156
    invoke-virtual {v3}, Lcom/applovin/impl/adview/activity/FullscreenAdService$c;->b()I

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    if-ne v2, v3, :cond_6

    .line 161
    .line 162
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 163
    .line 164
    .line 165
    move-result-object p1

    .line 166
    const-string v2, "percent_viewed"

    .line 167
    .line 168
    invoke-virtual {p1, v2}, Landroid/os/BaseBundle;->getDouble(Ljava/lang/String;)D

    .line 169
    .line 170
    .line 171
    move-result-wide v2

    .line 172
    const-string v4, "fully_watched"

    .line 173
    .line 174
    invoke-virtual {p1, v4}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    invoke-virtual {v0}, Lcom/applovin/impl/m2;->d()Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-static {v0, v1, v2, v3, p1}, Lcom/applovin/impl/q2;->a(Lcom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lcom/applovin/sdk/AppLovinAd;DZ)V

    .line 183
    .line 184
    .line 185
    goto :goto_0

    .line 186
    :cond_6
    iget v2, p1, Landroid/os/Message;->what:I

    .line 187
    .line 188
    sget-object v3, Lcom/applovin/impl/adview/activity/FullscreenAdService$c;->g:Lcom/applovin/impl/adview/activity/FullscreenAdService$c;

    .line 189
    .line 190
    invoke-virtual {v3}, Lcom/applovin/impl/adview/activity/FullscreenAdService$c;->b()I

    .line 191
    .line 192
    .line 193
    move-result v3

    .line 194
    if-ne v2, v3, :cond_7

    .line 195
    .line 196
    invoke-virtual {v0}, Lcom/applovin/impl/m2;->c()Lcom/applovin/sdk/AppLovinAdDisplayListener;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-static {p1, v1}, Lcom/applovin/impl/q2;->b(Lcom/applovin/sdk/AppLovinAdDisplayListener;Lcom/applovin/sdk/AppLovinAd;)V

    .line 201
    .line 202
    .line 203
    goto :goto_0

    .line 204
    :cond_7
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 205
    .line 206
    .line 207
    :catchall_0
    :goto_0
    return-void
.end method
