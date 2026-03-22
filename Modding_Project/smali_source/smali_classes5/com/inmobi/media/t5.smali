.class public final Lcom/inmobi/media/t5;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/inmobi/ads/InMobiBanner;

.field public final synthetic b:Lcom/inmobi/ads/controllers/PublisherCallbacks;

.field public final synthetic c:Z


# direct methods
.method public constructor <init>(Lcom/inmobi/ads/InMobiBanner;Lcom/inmobi/ads/controllers/PublisherCallbacks;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/t5;->a:Lcom/inmobi/ads/InMobiBanner;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/inmobi/media/t5;->b:Lcom/inmobi/ads/controllers/PublisherCallbacks;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/inmobi/media/t5;->c:Z

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/t5;->a:Lcom/inmobi/ads/InMobiBanner;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/inmobi/ads/InMobiBanner;->access$cancelScheduledRefresh(Lcom/inmobi/ads/InMobiBanner;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/inmobi/media/t5;->a:Lcom/inmobi/ads/InMobiBanner;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/inmobi/ads/InMobiBanner;->access$checkForRefreshRate(Lcom/inmobi/ads/InMobiBanner;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/inmobi/media/t5;->a:Lcom/inmobi/ads/InMobiBanner;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiBanner;->getMAdManager$media_release()Lcom/inmobi/media/R1;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/inmobi/media/t5;->b:Lcom/inmobi/ads/controllers/PublisherCallbacks;

    .line 23
    .line 24
    iget-object v2, p0, Lcom/inmobi/media/t5;->a:Lcom/inmobi/ads/InMobiBanner;

    .line 25
    .line 26
    invoke-static {v2}, Lcom/inmobi/ads/InMobiBanner;->access$getFrameSizeString(Lcom/inmobi/ads/InMobiBanner;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    iget-boolean v3, p0, Lcom/inmobi/media/t5;->c:Z

    .line 31
    .line 32
    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/media/R1;->a(Lcom/inmobi/ads/controllers/PublisherCallbacks;Ljava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    :cond_0
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 36
    .line 37
    return-object v0
.end method
