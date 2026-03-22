.class public final Lcom/inmobi/ads/exceptions/VastException;
.super Ljava/lang/Exception;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final mVastErrorCode:I

.field private telemetryErrorCode:S


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/inmobi/ads/exceptions/VastException;->mVastErrorCode:I

    .line 5
    .line 6
    return-void
.end method

.method private final convertVastErrorToTelemetryErrorCode()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/inmobi/ads/exceptions/VastException;->mVastErrorCode:I

    .line 2
    .line 3
    const/16 v1, 0x64

    .line 4
    .line 5
    if-eq v0, v1, :cond_8

    .line 6
    .line 7
    const/16 v1, 0x65

    .line 8
    .line 9
    if-eq v0, v1, :cond_7

    .line 10
    .line 11
    const/16 v1, 0xc9

    .line 12
    .line 13
    if-eq v0, v1, :cond_6

    .line 14
    .line 15
    const/16 v1, 0x195

    .line 16
    .line 17
    if-eq v0, v1, :cond_5

    .line 18
    .line 19
    const/16 v1, 0x384

    .line 20
    .line 21
    if-eq v0, v1, :cond_4

    .line 22
    .line 23
    const/16 v1, 0x258

    .line 24
    .line 25
    if-eq v0, v1, :cond_3

    .line 26
    .line 27
    const/16 v1, 0x259

    .line 28
    .line 29
    if-eq v0, v1, :cond_2

    .line 30
    .line 31
    const/16 v1, 0x25b

    .line 32
    .line 33
    if-eq v0, v1, :cond_1

    .line 34
    .line 35
    const/16 v1, 0x25c

    .line 36
    .line 37
    if-eq v0, v1, :cond_0

    .line 38
    .line 39
    packed-switch v0, :pswitch_data_0

    .line 40
    .line 41
    .line 42
    packed-switch v0, :pswitch_data_1

    .line 43
    .line 44
    .line 45
    const/4 v0, 0x0

    .line 46
    goto :goto_0

    .line 47
    :pswitch_0
    const/16 v0, 0x44

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :pswitch_1
    const/16 v0, 0x41

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :pswitch_2
    const/16 v0, 0x40

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :pswitch_3
    const/16 v0, 0x3e

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :pswitch_4
    const/16 v0, 0x4a

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :pswitch_5
    const/16 v0, 0x49

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :pswitch_6
    const/16 v0, 0x48

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :pswitch_7
    const/16 v0, 0x3f

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_0
    const/16 v0, 0x43

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    const/16 v0, 0x3c

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const/16 v0, 0x17

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_3
    const/16 v0, 0x3d

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    const/16 v0, 0x46

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_5
    const/16 v0, 0x42

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_6
    const/16 v0, 0x47

    .line 90
    .line 91
    goto :goto_0

    .line 92
    :cond_7
    const/16 v0, 0x45

    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_8
    const/16 v0, 0x3b

    .line 96
    .line 97
    :goto_0
    iput-short v0, p0, Lcom/inmobi/ads/exceptions/VastException;->telemetryErrorCode:S

    .line 98
    .line 99
    return-void

    .line 100
    nop

    .line 101
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    :pswitch_data_1
    .packed-switch 0x190
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic getTelemetryErrorCode$annotations()V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public final getTelemetryErrorCode()S
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/inmobi/ads/exceptions/VastException;->convertVastErrorToTelemetryErrorCode()V

    .line 2
    .line 3
    .line 4
    iget-short v0, p0, Lcom/inmobi/ads/exceptions/VastException;->telemetryErrorCode:S

    .line 5
    .line 6
    return v0
.end method
