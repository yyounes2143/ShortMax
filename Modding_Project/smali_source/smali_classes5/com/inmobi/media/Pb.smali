.class public final Lcom/inmobi/media/Pb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/e2;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/ec;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/ec;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/Pb;->a:Lcom/inmobi/media/ec;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/inmobi/media/Pb;->a:Lcom/inmobi/media/ec;

    .line 6
    iget-object v0, v0, Lcom/inmobi/media/ec;->i:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    .line 7
    sget-object v1, Lcom/inmobi/media/ec;->a1:Ljava/lang/String;

    .line 8
    const-string v2, "access$getTAG$cp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "onCCTScreenDismissed"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Pb;->a:Lcom/inmobi/media/ec;

    invoke-virtual {v0}, Lcom/inmobi/media/ec;->z()V

    return-void
.end method

.method public final a(IIIII)V
    .locals 4

    .line 10
    iget-object v0, p0, Lcom/inmobi/media/Pb;->a:Lcom/inmobi/media/ec;

    .line 11
    iget-object v0, v0, Lcom/inmobi/media/ec;->i:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    .line 12
    sget-object v1, Lcom/inmobi/media/ec;->a1:Ljava/lang/String;

    .line 13
    const-string v2, "access$getTAG$cp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "onCCTLayout"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Pb;->a:Lcom/inmobi/media/ec;

    .line 15
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 16
    const-string v2, "event"

    const-string v3, "customTabLayout"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 17
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 18
    invoke-static {p1}, Lcom/inmobi/media/B2;->a(I)I

    move-result p1

    const-string v3, "left"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 19
    invoke-static {p2}, Lcom/inmobi/media/B2;->a(I)I

    move-result p1

    const-string p2, "top"

    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 20
    invoke-static {p3}, Lcom/inmobi/media/B2;->a(I)I

    move-result p1

    const-string p2, "right"

    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 21
    invoke-static {p4}, Lcom/inmobi/media/B2;->a(I)I

    move-result p1

    const-string p2, "bottom"

    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 22
    const-string p1, "state"

    invoke-virtual {v2, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 23
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    .line 24
    const-string p1, "layout"

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    const-string p1, "jsonObject"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    iget-object p1, v0, Lcom/inmobi/media/ec;->i:Lcom/inmobi/media/z5;

    if-eqz p1, :cond_1

    sget-object p2, Lcom/inmobi/media/ec;->a1:Ljava/lang/String;

    .line 28
    const-string p3, "TAG"

    const-string p4, "onCTLifeCycleEvent "

    invoke-static {v0, p2, p3, p4}, Lcom/inmobi/media/Ob;->a(Lcom/inmobi/media/ec;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 29
    check-cast p1, Lcom/inmobi/media/A5;

    invoke-virtual {p1, p2, p3}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "window.imraid.broadcastEvent(\'onCTLifeCycleEvent\', "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ");"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/inmobi/media/ec;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;)V
    .locals 2

    const-string v0, "landingPageFunnelState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/inmobi/media/Pb;->a:Lcom/inmobi/media/ec;

    invoke-virtual {v0}, Lcom/inmobi/media/X1;->getLandingPageHandler()Lcom/inmobi/media/M6;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    const-string v1, "funnelState"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v1, Lcom/inmobi/media/L6;

    invoke-direct {v1, v0}, Lcom/inmobi/media/L6;-><init>(Lcom/inmobi/media/M6;)V

    invoke-static {p1, p2, p3, v1}, Lcom/inmobi/media/J6;->a(Lcom/inmobi/media/F6;Lcom/inmobi/media/R6;Ljava/lang/Integer;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R6;)V
    .locals 1

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "api"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Pb;->a:Lcom/inmobi/media/ec;

    invoke-virtual {v0}, Lcom/inmobi/media/X1;->getLandingPageHandler()Lcom/inmobi/media/M6;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/inmobi/media/M6;->a(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/media/R6;)I

    return-void
.end method

.method public final a(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "jsonObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/inmobi/media/Pb;->a:Lcom/inmobi/media/ec;

    .line 32
    iget-object v0, v0, Lcom/inmobi/media/ec;->i:Lcom/inmobi/media/z5;

    if-eqz v0, :cond_0

    .line 33
    sget-object v1, Lcom/inmobi/media/ec;->a1:Ljava/lang/String;

    .line 34
    const-string v2, "access$getTAG$cp(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/inmobi/media/A5;

    const-string v2, "onCCTLifeCycleEvent"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Pb;->a:Lcom/inmobi/media/ec;

    invoke-virtual {v0, p1}, Lcom/inmobi/media/ec;->a(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Pb;->a:Lcom/inmobi/media/ec;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/inmobi/media/ec;->i:Lcom/inmobi/media/z5;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lcom/inmobi/media/ec;->a1:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "access$getTAG$cp(...)"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    check-cast v0, Lcom/inmobi/media/A5;

    .line 15
    .line 16
    const-string v2, "onCCTScreenDisplayed"

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Pb;->a:Lcom/inmobi/media/ec;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/inmobi/media/ec;->getListener()Lcom/inmobi/media/gc;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/inmobi/media/Pb;->a:Lcom/inmobi/media/ec;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/inmobi/media/gc;->e(Lcom/inmobi/media/ec;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/inmobi/media/Pb;->a:Lcom/inmobi/media/ec;

    .line 33
    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-static {v0, v1, v1, v1}, Lcom/inmobi/media/ec;->a(Lcom/inmobi/media/ec;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/inmobi/media/Pb;->a:Lcom/inmobi/media/ec;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/inmobi/media/ec;->i:Lcom/inmobi/media/z5;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v1, Lcom/inmobi/media/ec;->a1:Ljava/lang/String;

    .line 8
    .line 9
    const-string v2, "access$getTAG$cp(...)"

    .line 10
    .line 11
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    check-cast v0, Lcom/inmobi/media/A5;

    .line 15
    .line 16
    const-string v2, "onCCTPageLoadedSuccessfully"

    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/media/A5;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/inmobi/media/Pb;->a:Lcom/inmobi/media/ec;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/inmobi/media/ec;->p()V

    .line 24
    .line 25
    .line 26
    return-void
.end method
