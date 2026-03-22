.class public final Lcom/inmobi/media/R7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/inmobi/media/yb;


# instance fields
.field public final synthetic a:Lcom/inmobi/media/T7;


# direct methods
.method public constructor <init>(Lcom/inmobi/media/T7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/inmobi/media/R7;->a:Lcom/inmobi/media/T7;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "triggerApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 3
    iget-object v1, p0, Lcom/inmobi/media/R7;->a:Lcom/inmobi/media/T7;

    invoke-virtual {v1}, Lcom/inmobi/media/T7;->getCreativeId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "creativeId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-string v1, "trigger"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p0, Lcom/inmobi/media/R7;->a:Lcom/inmobi/media/T7;

    invoke-virtual {p1}, Lcom/inmobi/media/T7;->getImpressionId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "impressionId"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-string p1, "adType"

    const-string v1, "native"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    sget-object p1, Lcom/inmobi/media/Pd;->a:Lcom/inmobi/media/Pd;

    .line 8
    sget-object p1, Lcom/inmobi/media/Td;->a:Lcom/inmobi/media/Td;

    .line 9
    const-string v1, "BlockAutoRedirection"

    invoke-static {v1, v0, p1}, Lcom/inmobi/media/Pd;->b(Ljava/lang/String;Ljava/util/Map;Lcom/inmobi/media/Td;)V

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public final d()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    return v0
.end method

.method public final getViewTouchTimestamp()J
    .locals 2

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    .line 3
    return-wide v0
.end method
