.class public final Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/core/configs/AdConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OmidConfig"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private expiry:J

.field private maxRetries:I

.field private omidEnabled:Z

.field private partnerKey:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private retryInterval:I

.field private url:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private webViewRetainTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/32 v0, 0x69780

    .line 5
    .line 6
    .line 7
    iput-wide v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;->expiry:J

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    iput v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;->maxRetries:I

    .line 11
    .line 12
    const/16 v0, 0x3c

    .line 13
    .line 14
    iput v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;->retryInterval:I

    .line 15
    .line 16
    const-string v0, "Inmobi"

    .line 17
    .line 18
    iput-object v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;->partnerKey:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "https://supply.inmobicdn.net/javascript/1.5.5/omsdk-service.js"

    .line 21
    .line 22
    iput-object v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;->url:Ljava/lang/String;

    .line 23
    .line 24
    const/4 v0, 0x1

    .line 25
    iput-boolean v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;->omidEnabled:Z

    .line 26
    .line 27
    const-wide/16 v0, 0x3e8

    .line 28
    .line 29
    iput-wide v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;->webViewRetainTime:J

    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public final getExpiry()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;->expiry:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getMaxRetries()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;->maxRetries:I

    .line 2
    .line 3
    return v0
.end method

.method public final getOmidEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;->omidEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getPartnerKey()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;->partnerKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getRetryInterval()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;->retryInterval:I

    .line 2
    .line 3
    return v0
.end method

.method public final getUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;->url:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWebViewRetainTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;->webViewRetainTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final isOmidEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;->omidEnabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isValid()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;->getMaxRetries()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ltz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;->getRetryInterval()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-ltz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;->getUrl()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/text/StringsKt;->v1(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    invoke-static {v0}, Lcom/inmobi/media/B2;->a(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x1

    .line 34
    if-ne v0, v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;->getPartnerKey()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-nez v0, :cond_0

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_0
    const/4 v1, 0x0

    .line 48
    :goto_0
    return v1
.end method

.method public final setOmidEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/inmobi/commons/core/configs/AdConfig$OmidConfig;->omidEnabled:Z

    .line 2
    .line 3
    return-void
.end method
