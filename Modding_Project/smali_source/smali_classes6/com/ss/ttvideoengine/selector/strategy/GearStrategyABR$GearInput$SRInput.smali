.class public Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput$SRInput;
.super Ljava/lang/Object;
.source "GearStrategyABR.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/ttvideoengine/selector/strategy/GearStrategyABR$GearInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SRInput"
.end annotation


# instance fields
.field public srBenchmark:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public srConfig:Lcom/ss/ttvideoengine/superresolution/SRStrategyConfig;

.field public srEnabled:I

.field public srSatisfied:I

.field public srSupportBitrateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
