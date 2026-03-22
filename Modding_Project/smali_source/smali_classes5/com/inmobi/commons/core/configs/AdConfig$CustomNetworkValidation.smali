.class public final Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;
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
    name = "CustomNetworkValidation"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private enabled:Z

.field private nonValidatedExpiry:J

.field private refreshDebounceTime:J

.field private urlDomain:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private validatedExpiry:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "supply.inmobicdn.net"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;->urlDomain:Ljava/lang/String;

    .line 7
    .line 8
    const-wide/16 v0, 0x3e8

    .line 9
    .line 10
    iput-wide v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;->refreshDebounceTime:J

    .line 11
    .line 12
    const-wide/32 v0, 0x1d4c0

    .line 13
    .line 14
    .line 15
    iput-wide v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;->validatedExpiry:J

    .line 16
    .line 17
    const-wide/16 v0, 0x7530

    .line 18
    .line 19
    iput-wide v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;->nonValidatedExpiry:J

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public final getEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;->enabled:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getNonValidatedExpiry()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;->nonValidatedExpiry:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getRefreshDebounceTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;->refreshDebounceTime:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getUrlDomain()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;->urlDomain:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getValidatedExpiry()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;->validatedExpiry:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final setEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;->enabled:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setNonValidatedExpiry(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;->nonValidatedExpiry:J

    .line 2
    .line 3
    return-void
.end method

.method public final setRefreshDebounceTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;->refreshDebounceTime:J

    .line 2
    .line 3
    return-void
.end method

.method public final setUrlDomain(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;->urlDomain:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setValidatedExpiry(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/inmobi/commons/core/configs/AdConfig$CustomNetworkValidation;->validatedExpiry:J

    .line 2
    .line 3
    return-void
.end method
