.class public final Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;
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
    name = "UnifiedIdServiceConfig"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private enabled:Z

.field private maxRetries:I

.field private retryInterval:I

.field private timeout:I

.field private url:Ljava/lang/String;
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
    const-string v0, "https://unif-id.ssp.inmobi.com/fetch"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;->url:Ljava/lang/String;

    .line 7
    .line 8
    const/16 v0, 0xa

    .line 9
    .line 10
    iput v0, p0, Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;->timeout:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final getMaxRetries()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;->maxRetries:I

    .line 2
    .line 3
    return v0
.end method

.method public final getRetryInterval()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;->retryInterval:I

    .line 2
    .line 3
    return v0
.end method

.method public final getTimeout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;->timeout:I

    .line 2
    .line 3
    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;->enabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;->url:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;->maxRetries:I

    .line 10
    .line 11
    if-ltz v0, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;->timeout:I

    .line 14
    .line 15
    if-ltz v0, :cond_0

    .line 16
    .line 17
    iget v0, p0, Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;->retryInterval:I

    .line 18
    .line 19
    if-ltz v0, :cond_0

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    :goto_0
    return v0
.end method

.method public final setMaxRetries(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;->maxRetries:I

    .line 2
    .line 3
    return-void
.end method

.method public final setRetryInterval(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;->retryInterval:I

    .line 2
    .line 3
    return-void
.end method

.method public final setTimeout(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;->timeout:I

    .line 2
    .line 3
    return-void
.end method

.method public final setUrl(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/SignalsConfig$UnifiedIdServiceConfig;->url:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method
