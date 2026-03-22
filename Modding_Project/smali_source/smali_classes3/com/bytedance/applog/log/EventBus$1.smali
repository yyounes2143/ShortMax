.class final Lcom/bytedance/applog/log/EventBus$1;
.super Lcom/bytedance/applog/log/AbsSingleton;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/applog/log/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/applog/log/AbsSingleton<",
        "Lcom/bytedance/applog/log/EventBus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bytedance/applog/log/AbsSingleton;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected varargs create([Ljava/lang/Object;)Lcom/bytedance/applog/log/EventBus;
    .locals 0

    .line 2
    new-instance p1, Lcom/bytedance/applog/log/EventBus;

    invoke-direct {p1}, Lcom/bytedance/applog/log/EventBus;-><init>()V

    return-object p1
.end method

.method protected bridge synthetic create([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/bytedance/applog/log/EventBus$1;->create([Ljava/lang/Object;)Lcom/bytedance/applog/log/EventBus;

    move-result-object p1

    return-object p1
.end method
