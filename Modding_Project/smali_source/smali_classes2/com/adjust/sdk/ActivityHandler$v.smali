.class Lcom/adjust/sdk/ActivityHandler$v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/adjust/sdk/ActivityHandler;->updateAdidI(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/ArrayList;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/adjust/sdk/ActivityHandler$v;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/adjust/sdk/ActivityHandler$v;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/adjust/sdk/ActivityHandler$v;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    :cond_0
    :goto_0
    if-ge v2, v1, :cond_3

    .line 9
    .line 10
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    add-int/lit8 v2, v2, 0x1

    .line 15
    .line 16
    check-cast v3, Lcom/adjust/sdk/AdjustTimeoutCallback;

    .line 17
    .line 18
    if-eqz v3, :cond_0

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/adjust/sdk/AdjustTimeoutCallback;->getTimeoutTimer()Lcom/adjust/sdk/scheduler/TimerOnce;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    if-eqz v4, :cond_1

    .line 25
    .line 26
    invoke-virtual {v4}, Lcom/adjust/sdk/scheduler/TimerOnce;->cancel()V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {v3}, Lcom/adjust/sdk/AdjustTimeoutCallback;->getOnAdidReadListener()Lcom/adjust/sdk/OnAdidReadListener;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    if-eqz v4, :cond_2

    .line 34
    .line 35
    iget-object v5, p0, Lcom/adjust/sdk/ActivityHandler$v;->b:Ljava/lang/String;

    .line 36
    .line 37
    invoke-interface {v4, v5}, Lcom/adjust/sdk/OnAdidReadListener;->onAdidRead(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    const/4 v4, 0x0

    .line 41
    invoke-virtual {v3, v4}, Lcom/adjust/sdk/AdjustTimeoutCallback;->setOnAdidReadListener(Lcom/adjust/sdk/OnAdidReadListener;)V

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_3
    return-void
.end method
