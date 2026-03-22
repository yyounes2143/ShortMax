.class public Lcom/inmobi/media/X4;
.super Lcom/inmobi/media/Ra;
.source "SourceFile"


# instance fields
.field public final p:I


# direct methods
.method public constructor <init>(Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;BLcom/inmobi/media/z5;)V
    .locals 2

    .line 1
    sget-object v0, Lcom/inmobi/media/S4;->k:Lcom/inmobi/media/P4;

    .line 2
    .line 3
    const-string v1, "visibilityChecker"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/inmobi/media/Ra;-><init>(Lcom/inmobi/media/ff;Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;BLcom/inmobi/media/z5;)V

    .line 9
    .line 10
    .line 11
    const/16 p1, 0x3e8

    .line 12
    .line 13
    iput p1, p0, Lcom/inmobi/media/X4;->p:I

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Ra;->n:Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;->getWebVisibilityThrottleMillis()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v0, p0, Lcom/inmobi/media/X4;->p:I

    .line 11
    .line 12
    :goto_0
    return v0
.end method
