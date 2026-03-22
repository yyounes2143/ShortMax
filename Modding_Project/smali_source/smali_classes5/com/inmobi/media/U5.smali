.class public final Lcom/inmobi/media/U5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/Pc;

.field public final b:Lcom/inmobi/media/Pc;

.field public final c:Lcom/inmobi/media/Pc;

.field public final d:Lcom/inmobi/media/Pc;


# direct methods
.method public constructor <init>(Lcom/inmobi/commons/core/configs/CrashConfig;)V
    .locals 3

    .line 1
    const-string v0, "config"

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
    new-instance v0, Lcom/inmobi/media/Pc;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/CrashConfig;->getCrashConfig()Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/CrashConfig$CrashIncidentConfig;->getSamplingPercent()D

    .line 16
    .line 17
    .line 18
    move-result-wide v1

    .line 19
    invoke-direct {v0, v1, v2}, Lcom/inmobi/media/Pc;-><init>(D)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcom/inmobi/media/U5;->a:Lcom/inmobi/media/Pc;

    .line 23
    .line 24
    new-instance v0, Lcom/inmobi/media/Pc;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/CrashConfig;->getCatchConfig()Lcom/inmobi/commons/core/configs/CrashConfig$CatchConfig;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/CrashConfig$CatchConfig;->getSamplingPercent()D

    .line 31
    .line 32
    .line 33
    move-result-wide v1

    .line 34
    invoke-direct {v0, v1, v2}, Lcom/inmobi/media/Pc;-><init>(D)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/inmobi/media/U5;->b:Lcom/inmobi/media/Pc;

    .line 38
    .line 39
    new-instance v0, Lcom/inmobi/media/Pc;

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/CrashConfig;->getANRConfig()Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;->getWatchdog()Lcom/inmobi/commons/core/configs/CrashConfig$WatchDogConfig;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/CrashConfig$WatchDogConfig;->getSamplingPercent()D

    .line 50
    .line 51
    .line 52
    move-result-wide v1

    .line 53
    invoke-direct {v0, v1, v2}, Lcom/inmobi/media/Pc;-><init>(D)V

    .line 54
    .line 55
    .line 56
    iput-object v0, p0, Lcom/inmobi/media/U5;->c:Lcom/inmobi/media/Pc;

    .line 57
    .line 58
    new-instance v0, Lcom/inmobi/media/Pc;

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/CrashConfig;->getANRConfig()Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;->getAppExitReason()Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;->getSamplingPercent()D

    .line 69
    .line 70
    .line 71
    move-result-wide v1

    .line 72
    invoke-direct {v0, v1, v2}, Lcom/inmobi/media/Pc;-><init>(D)V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lcom/inmobi/media/U5;->d:Lcom/inmobi/media/Pc;

    .line 76
    .line 77
    return-void
.end method
