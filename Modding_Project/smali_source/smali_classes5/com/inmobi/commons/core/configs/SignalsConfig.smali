.class public final Lcom/inmobi/commons/core/configs/SignalsConfig;
.super Lcom/inmobi/commons/core/configs/Config;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/core/configs/SignalsConfig$CellIceConfig;,
        Lcom/inmobi/commons/core/configs/SignalsConfig$IceConfig;,
        Lcom/inmobi/commons/core/configs/SignalsConfig$NovatiqConfig;,
        Lcom/inmobi/commons/core/configs/SignalsConfig$PublisherConfig;,
        Lcom/inmobi/commons/core/configs/SignalsConfig$Purchases;,
        Lcom/inmobi/commons/core/configs/SignalsConfig$SessionConfig;,
        Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final Companion:Lcom/inmobi/commons/core/configs/f;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;
    .annotation runtime Lcom/inmobi/media/Z4;
    .end annotation
.end field

.field private ext:Lorg/json/JSONObject;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private ice:Lcom/inmobi/commons/core/configs/SignalsConfig$IceConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private kA:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private novatiqConfig:Lcom/inmobi/commons/core/configs/SignalsConfig$NovatiqConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private publisher:Lcom/inmobi/commons/core/configs/SignalsConfig$PublisherConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private purchases:Lcom/inmobi/commons/core/configs/SignalsConfig$Purchases;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private session:Lcom/inmobi/commons/core/configs/SignalsConfig$SessionConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private unifiedIdServiceConfig:Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private vAK:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/inmobi/commons/core/configs/f;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/inmobi/commons/core/configs/f;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/inmobi/commons/core/configs/SignalsConfig;->Companion:Lcom/inmobi/commons/core/configs/f;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1}, Lcom/inmobi/commons/core/configs/Config;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const-string p1, "SignalsConfig"

    .line 5
    .line 6
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/SignalsConfig;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    new-instance p1, Lcom/inmobi/commons/core/configs/SignalsConfig$IceConfig;

    .line 9
    .line 10
    invoke-direct {p1}, Lcom/inmobi/commons/core/configs/SignalsConfig$IceConfig;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/SignalsConfig;->ice:Lcom/inmobi/commons/core/configs/SignalsConfig$IceConfig;

    .line 14
    .line 15
    new-instance p1, Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;

    .line 16
    .line 17
    invoke-direct {p1}, Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/SignalsConfig;->unifiedIdServiceConfig:Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;

    .line 21
    .line 22
    new-instance p1, Lcom/inmobi/commons/core/configs/SignalsConfig$NovatiqConfig;

    .line 23
    .line 24
    invoke-direct {p1}, Lcom/inmobi/commons/core/configs/SignalsConfig$NovatiqConfig;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/SignalsConfig;->novatiqConfig:Lcom/inmobi/commons/core/configs/SignalsConfig$NovatiqConfig;

    .line 28
    .line 29
    new-instance p1, Lcom/inmobi/commons/core/configs/SignalsConfig$SessionConfig;

    .line 30
    .line 31
    invoke-direct {p1}, Lcom/inmobi/commons/core/configs/SignalsConfig$SessionConfig;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/SignalsConfig;->session:Lcom/inmobi/commons/core/configs/SignalsConfig$SessionConfig;

    .line 35
    .line 36
    new-instance p1, Lcom/inmobi/commons/core/configs/SignalsConfig$PublisherConfig;

    .line 37
    .line 38
    invoke-direct {p1}, Lcom/inmobi/commons/core/configs/SignalsConfig$PublisherConfig;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/SignalsConfig;->publisher:Lcom/inmobi/commons/core/configs/SignalsConfig$PublisherConfig;

    .line 42
    .line 43
    const-string p1, "wWFMAWbSEtvl5VxZbQGMK7"

    .line 44
    .line 45
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/SignalsConfig;->kA:Ljava/lang/String;

    .line 46
    .line 47
    const/4 p1, 0x1

    .line 48
    iput p1, p0, Lcom/inmobi/commons/core/configs/SignalsConfig;->vAK:I

    .line 49
    .line 50
    new-instance p1, Lcom/inmobi/commons/core/configs/SignalsConfig$Purchases;

    .line 51
    .line 52
    invoke-direct {p1}, Lcom/inmobi/commons/core/configs/SignalsConfig$Purchases;-><init>()V

    .line 53
    .line 54
    .line 55
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/SignalsConfig;->purchases:Lcom/inmobi/commons/core/configs/SignalsConfig$Purchases;

    .line 56
    .line 57
    return-void
.end method


# virtual methods
.method public final getAK()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/SignalsConfig;->kA:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getAKV()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/SignalsConfig;->vAK:I

    .line 2
    .line 3
    return v0
.end method

.method public final getExt()Lorg/json/JSONObject;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/SignalsConfig;->ext:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getIceConfig()Lcom/inmobi/commons/core/configs/SignalsConfig$IceConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/SignalsConfig;->ice:Lcom/inmobi/commons/core/configs/SignalsConfig$IceConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNovatiqConfig()Lcom/inmobi/commons/core/configs/SignalsConfig$NovatiqConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/SignalsConfig;->novatiqConfig:Lcom/inmobi/commons/core/configs/SignalsConfig$NovatiqConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPublisherConfig()Lcom/inmobi/commons/core/configs/SignalsConfig$PublisherConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/SignalsConfig;->publisher:Lcom/inmobi/commons/core/configs/SignalsConfig$PublisherConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPurchases()Lcom/inmobi/commons/core/configs/SignalsConfig$Purchases;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/SignalsConfig;->purchases:Lcom/inmobi/commons/core/configs/SignalsConfig$Purchases;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSessionConfig()Lcom/inmobi/commons/core/configs/SignalsConfig$SessionConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/SignalsConfig;->session:Lcom/inmobi/commons/core/configs/SignalsConfig$SessionConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "signals"

    .line 2
    .line 3
    return-object v0
.end method

.method public final getUnifiedIdServiceConfig()Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/SignalsConfig;->unifiedIdServiceConfig:Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/SignalsConfig;->ice:Lcom/inmobi/commons/core/configs/SignalsConfig$IceConfig;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/SignalsConfig$IceConfig;->isValid()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/SignalsConfig;->unifiedIdServiceConfig:Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;->isValid()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public final setPurchases(Lcom/inmobi/commons/core/configs/SignalsConfig$Purchases;)V
    .locals 1
    .param p1    # Lcom/inmobi/commons/core/configs/SignalsConfig$Purchases;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/SignalsConfig;->purchases:Lcom/inmobi/commons/core/configs/SignalsConfig$Purchases;

    .line 7
    .line 8
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/inmobi/commons/core/configs/SignalsConfig;->Companion:Lcom/inmobi/commons/core/configs/f;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/inmobi/commons/core/configs/f;->a()Lcom/inmobi/media/q6;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0}, Lcom/inmobi/media/q6;->a(Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/SignalsConfig;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    const-string v1, "TAG"

    .line 19
    .line 20
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance v0, Lorg/json/JSONObject;

    .line 24
    .line 25
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 26
    .line 27
    .line 28
    :cond_0
    return-object v0
.end method
