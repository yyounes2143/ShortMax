.class public final Lcom/inmobi/commons/core/configs/AdConfig$ContextualDataConfig;
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
    name = "ContextualDataConfig"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private expiryTime:I

.field private maxAdRecords:I

.field private skipFields:Ljava/util/List;
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
    iput v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$ContextualDataConfig;->maxAdRecords:I

    .line 6
    .line 7
    sget-object v0, Lcom/inmobi/commons/core/configs/AdConfig;->Companion:Lcom/inmobi/commons/core/configs/b;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    invoke-static {}, Lcom/inmobi/commons/core/configs/AdConfig;->access$getDEFAULT_CONTEXTUAL_DATA_SKIP_FIELDS$cp()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$ContextualDataConfig;->skipFields:Ljava/util/List;

    .line 17
    .line 18
    const v0, 0x15180

    .line 19
    .line 20
    .line 21
    iput v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$ContextualDataConfig;->expiryTime:I

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public final getExpiryTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$ContextualDataConfig;->expiryTime:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMaxAdRecords()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$ContextualDataConfig;->maxAdRecords:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSkipFields()Ljava/util/List;
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
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$ContextualDataConfig;->skipFields:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isValid()Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$ContextualDataConfig;->maxAdRecords:I

    .line 2
    .line 3
    if-ltz v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/inmobi/commons/core/configs/AdConfig$ContextualDataConfig;->expiryTime:I

    .line 6
    .line 7
    if-ltz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    :goto_0
    return v0
.end method
