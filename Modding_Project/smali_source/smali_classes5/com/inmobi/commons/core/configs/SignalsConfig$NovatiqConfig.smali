.class public final Lcom/inmobi/commons/core/configs/SignalsConfig$NovatiqConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/core/configs/SignalsConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NovatiqConfig"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private beaconUrl:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private carrierNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isNovatiqEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/inmobi/commons/core/configs/SignalsConfig$NovatiqConfig;->isNovatiqEnabled:Z

    .line 6
    .line 7
    invoke-static {}, Lkotlin/collections/CollectionsKt;->n()Ljava/util/List;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/inmobi/commons/core/configs/SignalsConfig$NovatiqConfig;->carrierNames:Ljava/util/List;

    .line 12
    .line 13
    const-string v0, "https://spadsync.com/sync"

    .line 14
    .line 15
    iput-object v0, p0, Lcom/inmobi/commons/core/configs/SignalsConfig$NovatiqConfig;->beaconUrl:Ljava/lang/String;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final getBeaconUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/SignalsConfig$NovatiqConfig;->beaconUrl:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCarrierNames()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/SignalsConfig$NovatiqConfig;->carrierNames:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isNovatiqEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/SignalsConfig$NovatiqConfig;->isNovatiqEnabled:Z

    .line 2
    .line 3
    return v0
.end method
