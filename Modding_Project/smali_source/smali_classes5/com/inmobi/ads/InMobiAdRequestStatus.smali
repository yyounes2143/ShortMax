.class public final Lcom/inmobi/ads/InMobiAdRequestStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final AD_ACTIVE_MESSAGE:Ljava/lang/String; = "The Ad Request could not be submitted as the user is viewing another Ad."
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final Companion:Lcom/inmobi/media/o5;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DEVICE_AUDIO_LEVEL_LOW:Ljava/lang/String; = "The Ad Request could not be processed as the device volume level is below threshold."
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final FEATURE_DISABLED:Ljava/lang/String; = "The Ad Request could not be submitted as the Feature is disabled"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final REQUEST_INVALID_MESSAGE:Ljava/lang/String; = "An invalid ad request was sent and was rejected by the Ad Network. Please validate the ad request and try again"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final a:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/inmobi/media/o5;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/inmobi/media/o5;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/inmobi/ads/InMobiAdRequestStatus;->Companion:Lcom/inmobi/media/o5;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V
    .locals 2
    .param p1    # Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "statusCode"

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
    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->a:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    .line 10
    .line 11
    sget-object v0, Lcom/inmobi/ads/c;->a:[I

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    aget v0, v0, v1

    .line 18
    .line 19
    packed-switch v0, :pswitch_data_0

    .line 20
    .line 21
    .line 22
    const-string v0, "InMobiAdRequestStatus"

    .line 23
    .line 24
    const-string v1, "TAG"

    .line 25
    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :pswitch_0
    const-string p1, "The Ad Request could not be processed as the device volume level is below threshold."

    .line 35
    .line 36
    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    .line 37
    .line 38
    goto/16 :goto_0

    .line 39
    .line 40
    :pswitch_1
    const-string p1, "The Ad Request could not be submitted as the Feature is disabled"

    .line 41
    .line 42
    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    .line 43
    .line 44
    goto/16 :goto_0

    .line 45
    .line 46
    :pswitch_2
    const-string p1, "The app is running low on memory, hence resulting in failure"

    .line 47
    .line 48
    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    .line 49
    .line 50
    goto/16 :goto_0

    .line 51
    .line 52
    :pswitch_3
    const-string p1, "InMobi Ad Object is not configured properly Please check if setBannerSize(int widthInDp, int heightInDp) or setLayoutParams(<Layout_Params>) have been configured correctly"

    .line 53
    .line 54
    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :pswitch_4
    const-string p1, "An API call is made from non-ui thread."

    .line 58
    .line 59
    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :pswitch_5
    const-string p1, "The Ad Request is terminated because monetization is disabled."

    .line 63
    .line 64
    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :pswitch_6
    const-string p1, "Null or empty response as parameter is not allowed in load(response)."

    .line 68
    .line 69
    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :pswitch_7
    const-string p1, "An ad load is already in progress, load(response) call in this state is not allowed."

    .line 73
    .line 74
    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :pswitch_8
    const-string p1, "An ad load is already in progress, getSignals() call in this state is not allowed."

    .line 78
    .line 79
    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :pswitch_9
    const-string p1, "Network Request dropped as current request is not GDPR compliant."

    .line 83
    .line 84
    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    .line 85
    .line 86
    goto :goto_0

    .line 87
    :pswitch_a
    const-string p1, "The SDK rejected the ad load request. Multiple load() call on the same object is not allowed if the previous ad request was successful."

    .line 88
    .line 89
    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :pswitch_b
    const-string p1, "The SDK rejected the ad request as one or more required dependencies could not be found. Please ensure you have included the required dependencies."

    .line 93
    .line 94
    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :pswitch_c
    const-string p1, "An ad is no longer available. Please call load() to fetch a fresh ad."

    .line 98
    .line 99
    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    .line 100
    .line 101
    goto :goto_0

    .line 102
    :pswitch_d
    const-string p1, "The Ad Request cannot be done so frequently. Please wait for some time before loading another ad."

    .line 103
    .line 104
    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :pswitch_e
    const-string p1, "The Ad Request could not be submitted as the user is viewing another Ad."

    .line 108
    .line 109
    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    .line 110
    .line 111
    goto :goto_0

    .line 112
    :pswitch_f
    const-string p1, "Ad request successful but no ad served."

    .line 113
    .line 114
    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :pswitch_10
    const-string p1, "The Ad Server encountered an error when processing the ad request. This may be a transient issue. Please try again in a few minutes"

    .line 118
    .line 119
    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :pswitch_11
    const-string p1, "The Ad Request timed out waiting for a response from the network. This can be caused due to a bad network connection. Please try again after a few minutes."

    .line 123
    .line 124
    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    .line 125
    .line 126
    goto :goto_0

    .line 127
    :pswitch_12
    const-string p1, "The SDK is pending response to a previous ad request. Please wait for the previous ad request to complete before requesting for another ad."

    .line 128
    .line 129
    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :pswitch_13
    const-string p1, "An invalid ad request was sent and was rejected by the Ad Network. Please validate the ad request and try again"

    .line 133
    .line 134
    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :pswitch_14
    const-string p1, "The Internet is unreachable. Please check your Internet connection."

    .line 138
    .line 139
    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    .line 140
    .line 141
    goto :goto_0

    .line 142
    :pswitch_15
    const-string p1, "The InMobi SDK encountered an internal error."

    .line 143
    .line 144
    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    .line 145
    .line 146
    :goto_0
    return-void

    .line 147
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->a:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setCustomMessage(Ljava/lang/String;)Lcom/inmobi/ads/InMobiAdRequestStatus;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/inmobi/ads/InMobiAdRequestStatus;->b:Ljava/lang/String;

    .line 4
    .line 5
    :cond_0
    return-object p0
.end method
