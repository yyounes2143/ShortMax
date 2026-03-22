.class public final Lcom/inmobi/media/M;
.super Lcom/inmobi/media/Z1;
.source "SourceFile"


# instance fields
.field public final a:Lcom/inmobi/media/N;

.field public final b:Lcom/inmobi/media/Yd;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/N;Lcom/inmobi/media/Yd;)V
    .locals 1

    .line 1
    const-string v0, "adImpressionCallbackHandler"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lcom/inmobi/media/Z1;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lcom/inmobi/media/M;->a:Lcom/inmobi/media/N;

    .line 10
    .line 11
    iput-object p2, p0, Lcom/inmobi/media/M;->b:Lcom/inmobi/media/Yd;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lcom/inmobi/media/l2;)V
    .locals 1

    const-string v0, "click"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/inmobi/media/M;->a:Lcom/inmobi/media/N;

    iget-object v0, p0, Lcom/inmobi/media/M;->b:Lcom/inmobi/media/Yd;

    invoke-virtual {p1, v0}, Lcom/inmobi/media/N;->a(Lcom/inmobi/media/Yd;)V

    return-void
.end method

.method public final a(Lcom/inmobi/media/l2;Ljava/lang/String;)V
    .locals 3

    const-string v0, "click"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "error"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/inmobi/media/M;->b:Lcom/inmobi/media/Yd;

    .line 3
    const-string v0, "reason"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/inmobi/media/Yd;->a()Ljava/util/LinkedHashMap;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/inmobi/media/L3;->q()Ljava/lang/String;

    move-result-object v1

    const-string v2, "networkType"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x882

    .line 6
    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const-string v2, "errorCode"

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object p2, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Pd;

    .line 9
    sget-object p2, Lcom/inmobi/media/Td;->a:Lcom/inmobi/media/Td;

    .line 10
    const-string v0, "AdImpressionSuccessful"

    invoke-static {v0, p1, p2}, Lcom/inmobi/media/Pd;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/Td;)V

    return-void
.end method
