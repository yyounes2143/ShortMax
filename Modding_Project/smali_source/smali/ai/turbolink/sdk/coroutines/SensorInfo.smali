.class public final Lai/turbolink/sdk/coroutines/SensorInfo;
.super Ljava/lang/Object;
.source "SensorInfo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final INSTANCE:Lai/turbolink/sdk/coroutines/SensorInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final gravityListener:Lai/turbolink/sdk/coroutines/SensorInfo$gravityListener$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static gravitySensor:Landroid/hardware/Sensor;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private static sensorManager:Landroid/hardware/SensorManager;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lai/turbolink/sdk/coroutines/SensorInfo;

    .line 2
    .line 3
    invoke-direct {v0}, Lai/turbolink/sdk/coroutines/SensorInfo;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lai/turbolink/sdk/coroutines/SensorInfo;->INSTANCE:Lai/turbolink/sdk/coroutines/SensorInfo;

    .line 7
    .line 8
    new-instance v0, Lai/turbolink/sdk/coroutines/SensorInfo$gravityListener$1;

    .line 9
    .line 10
    invoke-direct {v0}, Lai/turbolink/sdk/coroutines/SensorInfo$gravityListener$1;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lai/turbolink/sdk/coroutines/SensorInfo;->gravityListener:Lai/turbolink/sdk/coroutines/SensorInfo$gravityListener$1;

    .line 14
    .line 15
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getGravityStatus()Z
    .locals 1

    .line 1
    sget-object v0, Lai/turbolink/sdk/coroutines/SensorInfo;->gravitySensor:Landroid/hardware/Sensor;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x1

    .line 8
    return v0
.end method

.method public final initGravity(Landroid/content/Context;)V
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
    const-string v0, "sensor"

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "null cannot be cast to non-null type android.hardware.SensorManager"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    check-cast p1, Landroid/hardware/SensorManager;

    .line 18
    .line 19
    sput-object p1, Lai/turbolink/sdk/coroutines/SensorInfo;->sensorManager:Landroid/hardware/SensorManager;

    .line 20
    .line 21
    if-eqz p1, :cond_0

    .line 22
    .line 23
    const/16 v0, 0x9

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    :goto_0
    sput-object p1, Lai/turbolink/sdk/coroutines/SensorInfo;->gravitySensor:Landroid/hardware/Sensor;

    .line 32
    .line 33
    return-void
.end method

.method public final registerListener()V
    .locals 4

    .line 1
    sget-object v0, Lai/turbolink/sdk/coroutines/SensorInfo;->gravitySensor:Landroid/hardware/Sensor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lai/turbolink/sdk/coroutines/SensorInfo;->sensorManager:Landroid/hardware/SensorManager;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    sget-object v2, Lai/turbolink/sdk/coroutines/SensorInfo;->gravityListener:Lai/turbolink/sdk/coroutines/SensorInfo$gravityListener$1;

    .line 10
    .line 11
    const/4 v3, 0x2

    .line 12
    invoke-virtual {v1, v2, v0, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method

.method public final unRegisterListener()V
    .locals 2

    .line 1
    sget-object v0, Lai/turbolink/sdk/coroutines/SensorInfo;->sensorManager:Landroid/hardware/SensorManager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    sget-object v1, Lai/turbolink/sdk/coroutines/SensorInfo;->gravityListener:Lai/turbolink/sdk/coroutines/SensorInfo$gravityListener$1;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 8
    .line 9
    .line 10
    :cond_0
    return-void
.end method
