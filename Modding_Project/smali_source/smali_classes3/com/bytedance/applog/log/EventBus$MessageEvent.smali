.class Lcom/bytedance/applog/log/EventBus$MessageEvent;
.super Ljava/lang/Object;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/applog/log/EventBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MessageEvent"
.end annotation


# instance fields
.field data:Ljava/lang/Object;

.field event:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/applog/log/EventBus$MessageEvent;->event:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytedance/applog/log/EventBus$MessageEvent;->data:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method
