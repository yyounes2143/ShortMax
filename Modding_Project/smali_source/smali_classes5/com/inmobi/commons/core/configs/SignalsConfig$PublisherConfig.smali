.class public final Lcom/inmobi/commons/core/configs/SignalsConfig$PublisherConfig;
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
    name = "PublisherConfig"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final adSpecificKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final enableAB:Z

.field private final enableMCO:Z

.field private final generalKeys:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final payloadSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/inmobi/commons/core/configs/SignalsConfig$PublisherConfig;->generalKeys:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/inmobi/commons/core/configs/SignalsConfig$PublisherConfig;->adSpecificKeys:Ljava/util/Map;

    .line 17
    .line 18
    const/16 v0, 0x5dc

    .line 19
    .line 20
    iput v0, p0, Lcom/inmobi/commons/core/configs/SignalsConfig$PublisherConfig;->payloadSize:I

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final getAdSpecificKeys()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/SignalsConfig$PublisherConfig;->adSpecificKeys:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getEnableAB()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/SignalsConfig$PublisherConfig;->enableAB:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getEnableMCO()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/SignalsConfig$PublisherConfig;->enableMCO:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getGeneralKeys()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/SignalsConfig$PublisherConfig;->generalKeys:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPayloadSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/SignalsConfig$PublisherConfig;->payloadSize:I

    .line 2
    .line 3
    return v0
.end method
