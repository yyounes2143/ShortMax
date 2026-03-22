.class public abstract Lai/turbolink/sdk/device/SystemObserver;
.super Ljava/lang/Object;
.source "SystemObserver.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/turbolink/sdk/device/SystemObserver$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lai/turbolink/sdk/device/SystemObserver$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static systemBatteryCapacity:I

.field private static systemBatteryStatusStr:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lai/turbolink/sdk/device/SystemObserver$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lai/turbolink/sdk/device/SystemObserver$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lai/turbolink/sdk/device/SystemObserver;->Companion:Lai/turbolink/sdk/device/SystemObserver$Companion;

    .line 8
    .line 9
    const-string v0, "unknown"

    .line 10
    .line 11
    sput-object v0, Lai/turbolink/sdk/device/SystemObserver;->systemBatteryStatusStr:Ljava/lang/String;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$getSystemBatteryCapacity$cp()I
    .locals 1

    .line 1
    sget v0, Lai/turbolink/sdk/device/SystemObserver;->systemBatteryCapacity:I

    .line 2
    .line 3
    return v0
.end method

.method public static final synthetic access$getSystemBatteryStatusStr$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/device/SystemObserver;->systemBatteryStatusStr:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static final synthetic access$setSystemBatteryCapacity$cp(I)V
    .locals 0

    .line 1
    sput p0, Lai/turbolink/sdk/device/SystemObserver;->systemBatteryCapacity:I

    .line 2
    .line 3
    return-void
.end method

.method public static final synthetic access$setSystemBatteryStatusStr$cp(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lai/turbolink/sdk/device/SystemObserver;->systemBatteryStatusStr:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
