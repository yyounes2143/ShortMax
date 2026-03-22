.class public final Lai/turbolink/sdk/device/DeviceInfo$Companion;
.super Ljava/lang/Object;
.source "DeviceInfo.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/turbolink/sdk/device/DeviceInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lai/turbolink/sdk/device/DeviceInfo$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance()Lai/turbolink/sdk/device/DeviceInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    sget-object v0, Lai/turbolink/sdk/TurboLink;->Companion:Lai/turbolink/sdk/TurboLink$Companion;

    .line 2
    .line 3
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink$Companion;->getInstance()Lai/turbolink/sdk/TurboLink;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lai/turbolink/sdk/TurboLink;->getDeviceInfo()Lai/turbolink/sdk/device/DeviceInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    return-object v0
.end method
