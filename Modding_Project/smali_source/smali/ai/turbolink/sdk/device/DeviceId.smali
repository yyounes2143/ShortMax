.class public final Lai/turbolink/sdk/device/DeviceId;
.super Ljava/lang/Object;
.source "DeviceId.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/turbolink/sdk/device/DeviceId$Companion;,
        Lai/turbolink/sdk/device/DeviceId$AdsFetchListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lai/turbolink/sdk/device/DeviceId$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final KEY_TURBOLINK_BUNDLE_DEVICEID:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private ADSIDString:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final _context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isRealId:Z

.field private uniqueId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lai/turbolink/sdk/device/DeviceId$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lai/turbolink/sdk/device/DeviceId$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lai/turbolink/sdk/device/DeviceId;->Companion:Lai/turbolink/sdk/device/DeviceId$Companion;

    .line 8
    .line 9
    const-string v0, "turboLink_bundle_device_id"

    .line 10
    .line 11
    sput-object v0, Lai/turbolink/sdk/device/DeviceId;->KEY_TURBOLINK_BUNDLE_DEVICEID:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

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
    xor-int/lit8 p2, p2, 0x1

    .line 10
    .line 11
    iput-boolean p2, p0, Lai/turbolink/sdk/device/DeviceId;->isRealId:Z

    .line 12
    .line 13
    const-string p2, ""

    .line 14
    .line 15
    iput-object p2, p0, Lai/turbolink/sdk/device/DeviceId;->uniqueId:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p1, p0, Lai/turbolink/sdk/device/DeviceId;->_context:Landroid/content/Context;

    .line 18
    .line 19
    return-void
.end method

.method public static final synthetic access$getKEY_TURBOLINK_BUNDLE_DEVICEID$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/device/DeviceId;->KEY_TURBOLINK_BUNDLE_DEVICEID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private final fetchAdsId(Landroid/content/Context;Lai/turbolink/sdk/device/DeviceId$AdsFetchListener;)V
    .locals 0

    .line 1
    return-void
.end method

.method private final getAndroidID()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/device/DeviceId;->_context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "android_id"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "9774d56d682e549c"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    return-object v0

    .line 22
    :cond_0
    const-string v0, ""

    .line 23
    .line 24
    return-object v0
.end method


# virtual methods
.method public final getAdsId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lai/turbolink/sdk/device/DeviceId;->ADSIDString:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 5
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lai/turbolink/sdk/device/DeviceId;->isRealId:Z

    .line 2
    .line 3
    const-string v1, "randomUUID().toString()"

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    goto :goto_2

    .line 19
    :cond_0
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 20
    .line 21
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getIdSimpleMode()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    sget-object v2, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    .line 26
    .line 27
    iget-object v3, p0, Lai/turbolink/sdk/device/DeviceId;->_context:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getInstance(Landroid/content/Context;)Lai/turbolink/sdk/helpers/AppPrefHelper;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-eqz v2, :cond_1

    .line 34
    .line 35
    sget-object v3, Lai/turbolink/sdk/device/DeviceId;->KEY_TURBOLINK_BUNDLE_DEVICEID:Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v2, v3}, Lai/turbolink/sdk/helpers/AppPrefHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v2, 0x0

    .line 43
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    const-string v4, ""

    .line 48
    .line 49
    if-nez v3, :cond_3

    .line 50
    .line 51
    if-nez v2, :cond_2

    .line 52
    .line 53
    move-object v0, v4

    .line 54
    goto :goto_2

    .line 55
    :cond_2
    move-object v0, v2

    .line 56
    goto :goto_2

    .line 57
    :cond_3
    if-eqz v0, :cond_4

    .line 58
    .line 59
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    const-string v2, "{\n                    UU\u2026tring()\n                }"

    .line 68
    .line 69
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_4
    invoke-direct {p0}, Lai/turbolink/sdk/device/DeviceId;->getAndroidID()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    if-nez v0, :cond_5

    .line 78
    .line 79
    move-object v0, v4

    .line 80
    :cond_5
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_6

    .line 85
    .line 86
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :cond_6
    :goto_2
    sget-object v1, Lai/turbolink/sdk/helpers/AppPrefHelper;->Companion:Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;

    .line 98
    .line 99
    iget-object v2, p0, Lai/turbolink/sdk/device/DeviceId;->_context:Landroid/content/Context;

    .line 100
    .line 101
    invoke-virtual {v1, v2}, Lai/turbolink/sdk/helpers/AppPrefHelper$Companion;->getInstance(Landroid/content/Context;)Lai/turbolink/sdk/helpers/AppPrefHelper;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    if-eqz v1, :cond_7

    .line 106
    .line 107
    sget-object v2, Lai/turbolink/sdk/device/DeviceId;->KEY_TURBOLINK_BUNDLE_DEVICEID:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v1, v2, v0}, Lai/turbolink/sdk/helpers/AppPrefHelper;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_7
    iput-object v0, p0, Lai/turbolink/sdk/device/DeviceId;->uniqueId:Ljava/lang/String;

    .line 113
    .line 114
    return-object v0
.end method

.method public final isRealId()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lai/turbolink/sdk/device/DeviceId;->isRealId:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setAdsId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "adsId"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lai/turbolink/sdk/device/DeviceId;->ADSIDString:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
