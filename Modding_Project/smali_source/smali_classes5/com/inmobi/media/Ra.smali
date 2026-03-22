.class public Lcom/inmobi/media/Ra;
.super Lcom/inmobi/media/lf;
.source "SourceFile"


# instance fields
.field public final n:Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;

.field public final o:I


# direct methods
.method public constructor <init>(Lcom/inmobi/media/ff;Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;BLcom/inmobi/media/z5;)V
    .locals 1

    .line 1
    const-string v0, "visibilityChecker"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p3, p4}, Lcom/inmobi/media/lf;-><init>(Lcom/inmobi/media/ff;BLcom/inmobi/media/z5;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Lcom/inmobi/media/Ra;->n:Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;

    .line 10
    .line 11
    const/16 p1, 0x64

    .line 12
    .line 13
    iput p1, p0, Lcom/inmobi/media/Ra;->o:I

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
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/AdConfig$ViewabilityConfig;->getVisibilityThrottleMillis()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget v0, p0, Lcom/inmobi/media/Ra;->o:I

    .line 11
    .line 12
    :goto_0
    return v0
.end method

.method public final d()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/inmobi/media/lf;->g()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
