.class public final Ls1/m;
.super Ljava/lang/Object;
.source "ViewIndexingTrigger.kt"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls1/m$a;,
        Ls1/m$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final b:Ls1/m$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Ls1/m$b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ls1/m$a;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ls1/m$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Ls1/m;->b:Ls1/m$a;

    .line 8
    .line 9
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


# virtual methods
.method public final a(Ls1/m$b;)V
    .locals 1
    .param p1    # Ls1/m$b;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    iput-object p1, p0, Ls1/m;->a:Ls1/m$b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p1

    .line 12
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1    # Landroid/hardware/Sensor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    const-string p2, "sensor"

    .line 9
    .line 10
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1    # Landroid/hardware/SensorEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lo4/a;->d(Ljava/lang/Object;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    const-string v0, "event"

    .line 9
    .line 10
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Ls1/m;->a:Ls1/m$b;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    aget v1, p1, v1

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    aget v2, p1, v2

    .line 24
    .line 25
    const/4 v3, 0x2

    .line 26
    aget p1, p1, v3

    .line 27
    .line 28
    const v3, 0x411ce80a

    .line 29
    .line 30
    .line 31
    div-float/2addr v1, v3

    .line 32
    float-to-double v4, v1

    .line 33
    div-float/2addr v2, v3

    .line 34
    float-to-double v1, v2

    .line 35
    div-float/2addr p1, v3

    .line 36
    float-to-double v6, p1

    .line 37
    mul-double/2addr v4, v4

    .line 38
    mul-double/2addr v1, v1

    .line 39
    add-double/2addr v4, v1

    .line 40
    mul-double/2addr v6, v6

    .line 41
    add-double/2addr v4, v6

    .line 42
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 43
    .line 44
    .line 45
    move-result-wide v1

    .line 46
    const-wide v3, 0x4002666666666666L    # 2.3

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    cmpl-double p1, v1, v3

    .line 52
    .line 53
    if-lez p1, :cond_1

    .line 54
    .line 55
    invoke-interface {v0}, Ls1/m$b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :catchall_0
    move-exception p1

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    :goto_0
    return-void

    .line 62
    :goto_1
    invoke-static {p1, p0}, Lo4/a;->b(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    return-void
.end method
