.class public final Lcom/inmobi/media/ac;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/ec;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/ec;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/ac;->a:Lcom/inmobi/media/ec;

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/inmobi/media/de;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/inmobi/media/ac;->a:Lcom/inmobi/media/ec;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/inmobi/media/ec;->getAdConfig()Lcom/inmobi/commons/core/configs/AdConfig;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig;->getRendering()Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/AdConfig$RenderingConfig;->getScrollThrottleInterval()J

    .line 14
    .line 15
    .line 16
    move-result-wide v1

    .line 17
    invoke-direct {v0, v1, v2}, Lcom/inmobi/media/de;-><init>(J)V

    .line 18
    .line 19
    .line 20
    return-object v0
.end method
