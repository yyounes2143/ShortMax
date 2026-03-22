.class public final Lcom/inmobi/ads/d;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic a:Lcom/inmobi/ads/InMobiBanner;

.field public final synthetic b:[B


# direct methods
.method public constructor <init>(Lcom/inmobi/ads/InMobiBanner;[B)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/ads/d;->a:Lcom/inmobi/ads/InMobiBanner;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/inmobi/ads/d;->b:[B

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/ads/d;->a:Lcom/inmobi/ads/InMobiBanner;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiBanner;->getMAdManager$media_release()Lcom/inmobi/media/R1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/inmobi/media/we;->p()Lcom/inmobi/media/z5;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-static {}, Lcom/inmobi/ads/InMobiBanner;->access$getTAG$cp()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, "access$getTAG$cp(...)"

    .line 20
    .line 21
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    check-cast v0, Lcom/inmobi/media/A5;

    .line 25
    .line 26
    const-string v2, "load with response"

    .line 27
    .line 28
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/d;->a:Lcom/inmobi/ads/InMobiBanner;

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiBanner;->getMAdManager$media_release()Lcom/inmobi/media/R1;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v1, p0, Lcom/inmobi/ads/d;->b:[B

    .line 40
    .line 41
    iget-object v2, p0, Lcom/inmobi/ads/d;->a:Lcom/inmobi/ads/InMobiBanner;

    .line 42
    .line 43
    invoke-static {v2}, Lcom/inmobi/ads/InMobiBanner;->access$getCallbacks$p(Lcom/inmobi/ads/InMobiBanner;)Lcom/inmobi/ads/InMobiBanner$a;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/R1;->a([BLcom/inmobi/ads/controllers/PublisherCallbacks;)V

    .line 48
    .line 49
    .line 50
    :cond_1
    sget-object v0, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 51
    .line 52
    return-object v0
.end method
