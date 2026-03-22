.class public final Lai/turbolink/sdk/device/DeviceId$Companion;
.super Ljava/lang/Object;
.source "DeviceId.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/turbolink/sdk/device/DeviceId;
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
    invoke-direct {p0}, Lai/turbolink/sdk/device/DeviceId$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getKEY_TURBOLINK_BUNDLE_DEVICEID()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-static {}, Lai/turbolink/sdk/device/DeviceId;->access$getKEY_TURBOLINK_BUNDLE_DEVICEID$cp()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
