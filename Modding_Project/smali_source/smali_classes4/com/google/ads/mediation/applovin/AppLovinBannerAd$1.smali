.class Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;
.super Ljava/lang/Object;
.source "AppLovinBannerAd.java"

# interfaces
.implements Lcom/google/ads/mediation/applovin/AppLovinInitializer$OnInitializeSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/ads/mediation/applovin/AppLovinBannerAd;->loadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

.field final synthetic val$adSize:Lcom/google/android/gms/ads/AdSize;

.field final synthetic val$appLovinAdSize:Lcom/applovin/sdk/AppLovinAdSize;

.field final synthetic val$serverParameters:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/google/ads/mediation/applovin/AppLovinBannerAd;Landroid/os/Bundle;Lcom/applovin/sdk/AppLovinAdSize;Lcom/google/android/gms/ads/AdSize;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->val$serverParameters:Landroid/os/Bundle;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->val$appLovinAdSize:Lcom/applovin/sdk/AppLovinAdSize;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->val$adSize:Lcom/google/android/gms/ads/AdSize;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public onInitializeSuccess()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/ads/mediation/applovin/AppLovinBannerAd;->access$200(Lcom/google/ads/mediation/applovin/AppLovinBannerAd;)Lcom/google/ads/mediation/applovin/AppLovinInitializer;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 8
    .line 9
    invoke-static {v2}, Lcom/google/ads/mediation/applovin/AppLovinBannerAd;->access$100(Lcom/google/ads/mediation/applovin/AppLovinBannerAd;)Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v1, v2}, Lcom/google/ads/mediation/applovin/AppLovinInitializer;->retrieveSdk(Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v0, v1}, Lcom/google/ads/mediation/applovin/AppLovinBannerAd;->access$002(Lcom/google/ads/mediation/applovin/AppLovinBannerAd;Lcom/applovin/sdk/AppLovinSdk;)Lcom/applovin/sdk/AppLovinSdk;

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 21
    .line 22
    iget-object v1, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->val$serverParameters:Landroid/os/Bundle;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/applovin/mediation/AppLovinUtils;->retrieveZoneId(Landroid/os/Bundle;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/google/ads/mediation/applovin/AppLovinBannerAd;->access$302(Lcom/google/ads/mediation/applovin/AppLovinBannerAd;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Lcom/google/ads/mediation/applovin/AppLovinBannerAd;->access$400()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v2, "Requesting banner of size "

    .line 41
    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->val$appLovinAdSize:Lcom/applovin/sdk/AppLovinAdSize;

    .line 46
    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v2, " for zone: "

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v2, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 56
    .line 57
    invoke-static {v2}, Lcom/google/ads/mediation/applovin/AppLovinBannerAd;->access$300(Lcom/google/ads/mediation/applovin/AppLovinBannerAd;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/google/ads/mediation/applovin/AppLovinBannerAd;->access$600(Lcom/google/ads/mediation/applovin/AppLovinBannerAd;)Lcom/google/ads/mediation/applovin/AppLovinAdFactory;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    iget-object v2, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 78
    .line 79
    invoke-static {v2}, Lcom/google/ads/mediation/applovin/AppLovinBannerAd;->access$000(Lcom/google/ads/mediation/applovin/AppLovinBannerAd;)Lcom/applovin/sdk/AppLovinSdk;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    iget-object v3, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->val$appLovinAdSize:Lcom/applovin/sdk/AppLovinAdSize;

    .line 84
    .line 85
    iget-object v4, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->val$adSize:Lcom/google/android/gms/ads/AdSize;

    .line 86
    .line 87
    iget-object v5, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 88
    .line 89
    invoke-static {v5}, Lcom/google/ads/mediation/applovin/AppLovinBannerAd;->access$100(Lcom/google/ads/mediation/applovin/AppLovinBannerAd;)Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/google/ads/mediation/applovin/AppLovinAdFactory;->createAdView(Lcom/applovin/sdk/AppLovinSdk;Lcom/applovin/sdk/AppLovinAdSize;Lcom/google/android/gms/ads/AdSize;Landroid/content/Context;)Lcom/google/ads/mediation/applovin/AppLovinAdViewWrapper;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-static {v0, v1}, Lcom/google/ads/mediation/applovin/AppLovinBannerAd;->access$502(Lcom/google/ads/mediation/applovin/AppLovinBannerAd;Lcom/google/ads/mediation/applovin/AppLovinAdViewWrapper;)Lcom/google/ads/mediation/applovin/AppLovinAdViewWrapper;

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 101
    .line 102
    invoke-static {v0}, Lcom/google/ads/mediation/applovin/AppLovinBannerAd;->access$500(Lcom/google/ads/mediation/applovin/AppLovinBannerAd;)Lcom/google/ads/mediation/applovin/AppLovinAdViewWrapper;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Lcom/google/ads/mediation/applovin/AppLovinAdViewWrapper;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 112
    .line 113
    invoke-static {v0}, Lcom/google/ads/mediation/applovin/AppLovinBannerAd;->access$500(Lcom/google/ads/mediation/applovin/AppLovinBannerAd;)Lcom/google/ads/mediation/applovin/AppLovinAdViewWrapper;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 118
    .line 119
    invoke-virtual {v0, v1}, Lcom/google/ads/mediation/applovin/AppLovinAdViewWrapper;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 123
    .line 124
    invoke-static {v0}, Lcom/google/ads/mediation/applovin/AppLovinBannerAd;->access$500(Lcom/google/ads/mediation/applovin/AppLovinBannerAd;)Lcom/google/ads/mediation/applovin/AppLovinAdViewWrapper;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    iget-object v1, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Lcom/google/ads/mediation/applovin/AppLovinAdViewWrapper;->setAdViewEventListener(Lcom/applovin/adview/AppLovinAdViewEventListener;)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 134
    .line 135
    invoke-static {v0}, Lcom/google/ads/mediation/applovin/AppLovinBannerAd;->access$300(Lcom/google/ads/mediation/applovin/AppLovinBannerAd;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    if-nez v0, :cond_0

    .line 144
    .line 145
    iget-object v0, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 146
    .line 147
    invoke-static {v0}, Lcom/google/ads/mediation/applovin/AppLovinBannerAd;->access$000(Lcom/google/ads/mediation/applovin/AppLovinBannerAd;)Lcom/applovin/sdk/AppLovinSdk;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 156
    .line 157
    invoke-static {v1}, Lcom/google/ads/mediation/applovin/AppLovinBannerAd;->access$300(Lcom/google/ads/mediation/applovin/AppLovinBannerAd;)Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    iget-object v2, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 162
    .line 163
    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAdForZoneId(Ljava/lang/String;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 164
    .line 165
    .line 166
    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 168
    .line 169
    invoke-static {v0}, Lcom/google/ads/mediation/applovin/AppLovinBannerAd;->access$000(Lcom/google/ads/mediation/applovin/AppLovinBannerAd;)Lcom/applovin/sdk/AppLovinSdk;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->val$appLovinAdSize:Lcom/applovin/sdk/AppLovinAdSize;

    .line 178
    .line 179
    iget-object v2, p0, Lcom/google/ads/mediation/applovin/AppLovinBannerAd$1;->this$0:Lcom/google/ads/mediation/applovin/AppLovinBannerAd;

    .line 180
    .line 181
    invoke-interface {v0, v1, v2}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 182
    .line 183
    .line 184
    :goto_0
    return-void
.end method
