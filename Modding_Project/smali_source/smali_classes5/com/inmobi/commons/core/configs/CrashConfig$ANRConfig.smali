.class public final Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/core/configs/CrashConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ANRConfig"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private appExitReason:Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private watchdog:Lcom/inmobi/commons/core/configs/CrashConfig$WatchDogConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;->appExitReason:Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;

    .line 10
    .line 11
    new-instance v0, Lcom/inmobi/commons/core/configs/CrashConfig$WatchDogConfig;

    .line 12
    .line 13
    invoke-direct {v0}, Lcom/inmobi/commons/core/configs/CrashConfig$WatchDogConfig;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;->watchdog:Lcom/inmobi/commons/core/configs/CrashConfig$WatchDogConfig;

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getAppExitReason()Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;->appExitReason:Lcom/inmobi/commons/core/configs/CrashConfig$AppExitReasonConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWatchdog()Lcom/inmobi/commons/core/configs/CrashConfig$WatchDogConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/CrashConfig$ANRConfig;->watchdog:Lcom/inmobi/commons/core/configs/CrashConfig$WatchDogConfig;

    .line 2
    .line 3
    return-object v0
.end method
