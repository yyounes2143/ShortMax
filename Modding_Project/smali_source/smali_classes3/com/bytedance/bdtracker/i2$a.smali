.class public final Lcom/bytedance/bdtracker/i2$a;
.super Lkotlin/jvm/internal/Lambda;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/bdtracker/i2;-><init>(Landroid/os/Looper;Ljava/lang/String;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/bytedance/applog/aggregation/IAggregation;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:Landroid/os/Looper;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bytedance/bdtracker/i2$a;->a:Ljava/lang/String;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/bytedance/bdtracker/i2$a;->b:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/bytedance/bdtracker/i2$a;->c:Landroid/os/Looper;

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
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    const-string v0, "applog-aggregation-"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/bytedance/bdtracker/a;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/bytedance/bdtracker/i2$a;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sget-object v1, Lcom/bytedance/applog/aggregation/IAggregation;->Companion:Lcom/bytedance/applog/aggregation/IAggregation$Companion;

    .line 17
    .line 18
    new-instance v2, Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;

    .line 19
    .line 20
    iget-object v3, p0, Lcom/bytedance/bdtracker/i2$a;->b:Landroid/content/Context;

    .line 21
    .line 22
    invoke-direct {v2, v3, v0}, Lcom/bytedance/applog/aggregation/MetricsSQLiteCache;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/bytedance/bdtracker/i2$a;->c:Landroid/os/Looper;

    .line 26
    .line 27
    invoke-virtual {v1, v2, v0}, Lcom/bytedance/applog/aggregation/IAggregation$Companion;->newInstance(Lcom/bytedance/applog/aggregation/IMetricsCache;Landroid/os/Looper;)Lcom/bytedance/applog/aggregation/IAggregation;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method
