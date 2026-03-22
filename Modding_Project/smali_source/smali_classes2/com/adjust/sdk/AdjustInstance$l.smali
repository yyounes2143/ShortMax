.class Lcom/adjust/sdk/AdjustInstance$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/AdjustInstance;->getAttributionWithTimeout(Landroid/content/Context;JLcom/adjust/sdk/OnAttributionReadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Lcom/adjust/sdk/OnAttributionReadListener;

.field public final synthetic c:J

.field public final synthetic d:Lcom/adjust/sdk/AdjustInstance;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/AdjustInstance;Landroid/content/Context;Lcom/adjust/sdk/OnAttributionReadListener;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/adjust/sdk/AdjustInstance$l;->d:Lcom/adjust/sdk/AdjustInstance;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/adjust/sdk/AdjustInstance$l;->a:Landroid/content/Context;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/adjust/sdk/AdjustInstance$l;->b:Lcom/adjust/sdk/OnAttributionReadListener;

    .line 6
    .line 7
    iput-wide p4, p0, Lcom/adjust/sdk/AdjustInstance$l;->c:J

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/AdjustInstance$l;->a:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/adjust/sdk/Util;->getAttributionFromAttributionFile(Landroid/content/Context;)Lcom/adjust/sdk/AdjustAttribution;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    new-instance v1, Landroid/os/Handler;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/adjust/sdk/AdjustInstance$l;->a:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 18
    .line 19
    .line 20
    new-instance v2, Lcom/adjust/sdk/h1;

    .line 21
    .line 22
    invoke-direct {v2, p0, v0}, Lcom/adjust/sdk/h1;-><init>(Lcom/adjust/sdk/AdjustInstance$l;Lcom/adjust/sdk/AdjustAttribution;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    iget-wide v0, p0, Lcom/adjust/sdk/AdjustInstance$l;->c:J

    .line 30
    .line 31
    iget-object v2, p0, Lcom/adjust/sdk/AdjustInstance$l;->b:Lcom/adjust/sdk/OnAttributionReadListener;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/adjust/sdk/AdjustInstance$l;->d:Lcom/adjust/sdk/AdjustInstance;

    .line 34
    .line 35
    invoke-static {v3}, Lcom/adjust/sdk/AdjustInstance;->access$100(Lcom/adjust/sdk/AdjustInstance;)Ljava/util/ArrayList;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    iget-object v4, p0, Lcom/adjust/sdk/AdjustInstance$l;->a:Landroid/content/Context;

    .line 40
    .line 41
    invoke-static {v0, v1, v2, v3, v4}, Lcom/adjust/sdk/ActivityHandler;->queueGetAttributionWithTimeout(JLcom/adjust/sdk/OnAttributionReadListener;Ljava/util/ArrayList;Landroid/content/Context;)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
