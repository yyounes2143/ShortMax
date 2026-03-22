.class public final Lcom/inmobi/media/L7;
.super Lcom/inmobi/media/Z1;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/inmobi/media/T7;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/T7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/L7;->a:Lcom/inmobi/media/T7;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/inmobi/media/Z1;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/l2;)V
    .locals 4

    const-string v0, "click"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/L7;->a:Lcom/inmobi/media/T7;

    .line 2
    new-instance v0, Lcom/inmobi/media/Yd;

    .line 3
    iget-object v1, p1, Lcom/inmobi/media/T7;->R:Ljava/util/LinkedHashMap;

    if-eqz v1, :cond_0

    .line 4
    const-string v2, "AdImpressionSuccessful"

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/U0;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p1, Lcom/inmobi/media/T7;->i:Lcom/inmobi/media/S6;

    .line 6
    iget-object v2, v2, Lcom/inmobi/media/S6;->f:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Lcom/inmobi/media/T7;->getCreativeId()Ljava/lang/String;

    move-result-object p1

    .line 8
    const-string v3, "inmobiJson"

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/inmobi/media/Yd;-><init>(Lcom/inmobi/media/U0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-string p1, "nativeBeacon"

    const-string v1, "<set-?>"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, v0, Lcom/inmobi/media/Yd;->e:Ljava/lang/String;

    .line 11
    iget-object v2, p0, Lcom/inmobi/media/L7;->a:Lcom/inmobi/media/T7;

    .line 12
    iget-object v2, v2, Lcom/inmobi/media/T7;->w:Lcom/inmobi/media/P0;

    if-eqz v2, :cond_2

    .line 13
    const-string v3, "telemetryOnAdImpression"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iput-object p1, v0, Lcom/inmobi/media/Yd;->e:Ljava/lang/String;

    .line 16
    iget-object p1, v2, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    invoke-virtual {p1}, Lcom/inmobi/media/S0;->Z()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 17
    invoke-virtual {v0}, Lcom/inmobi/media/Yd;->b()V

    goto :goto_1

    .line 18
    :cond_1
    iget-object p1, v2, Lcom/inmobi/media/P0;->a:Lcom/inmobi/media/S0;

    .line 19
    iget-object p1, p1, Lcom/inmobi/media/S0;->D:Lcom/inmobi/media/N;

    .line 20
    invoke-virtual {p1, v0}, Lcom/inmobi/media/N;->a(Lcom/inmobi/media/Yd;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final a(Lcom/inmobi/media/l2;Ljava/lang/String;)V
    .locals 5

    const-string v0, "click"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "error"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/inmobi/media/L7;->a:Lcom/inmobi/media/T7;

    .line 22
    new-instance v0, Lcom/inmobi/media/Yd;

    .line 23
    iget-object v1, p1, Lcom/inmobi/media/T7;->R:Ljava/util/LinkedHashMap;

    const-string v2, "AdImpressionSuccessful"

    if-eqz v1, :cond_0

    .line 24
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/media/U0;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 25
    :goto_0
    iget-object v3, p1, Lcom/inmobi/media/T7;->i:Lcom/inmobi/media/S6;

    .line 26
    iget-object v3, v3, Lcom/inmobi/media/S6;->f:Ljava/lang/String;

    .line 27
    invoke-virtual {p1}, Lcom/inmobi/media/T7;->getCreativeId()Ljava/lang/String;

    move-result-object p1

    .line 28
    const-string v4, "inmobiJson"

    invoke-direct {v0, v1, v3, p1, v4}, Lcom/inmobi/media/Yd;-><init>(Lcom/inmobi/media/U0;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    const-string p1, "<set-?>"

    const-string v1, "nativeBeacon"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object v1, v0, Lcom/inmobi/media/Yd;->e:Ljava/lang/String;

    .line 31
    const-string p1, "reason"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Lcom/inmobi/media/Yd;->a()Ljava/util/LinkedHashMap;

    move-result-object v0

    .line 33
    invoke-static {}, Lcom/inmobi/media/L3;->q()Ljava/lang/String;

    move-result-object v1

    const-string v3, "networkType"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x882

    .line 34
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v3, "errorCode"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object p1, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Pd;

    .line 37
    sget-object p1, Lcom/inmobi/media/Td;->a:Lcom/inmobi/media/Td;

    .line 38
    invoke-static {v2, v0, p1}, Lcom/inmobi/media/Pd;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/Td;)V

    return-void
.end method
