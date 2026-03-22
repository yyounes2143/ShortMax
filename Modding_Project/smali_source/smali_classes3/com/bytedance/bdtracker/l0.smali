.class public Lcom/bytedance/bdtracker/l0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/bytedance/applog/IPresetEventObserver;
.implements Lcom/bytedance/applog/IEventObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/bdtracker/l0$b;
    }
.end annotation


# instance fields
.field public final a:Lcom/bytedance/applog/IEventObserver;

.field public final b:Lcom/bytedance/applog/IPresetEventObserver;


# direct methods
.method public synthetic constructor <init>(Lcom/bytedance/applog/IEventObserver;Lcom/bytedance/applog/IPresetEventObserver;Lcom/bytedance/bdtracker/l0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/bytedance/bdtracker/l0;->a:Lcom/bytedance/applog/IEventObserver;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/bytedance/bdtracker/l0;->b:Lcom/bytedance/applog/IPresetEventObserver;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V
    .locals 10
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lcom/bytedance/bdtracker/l0;->a:Lcom/bytedance/applog/IEventObserver;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    move-object v2, p1

    .line 8
    move-object v3, p2

    .line 9
    move-object v4, p3

    .line 10
    move-wide v5, p4

    .line 11
    move-wide/from16 v7, p6

    .line 12
    .line 13
    move-object/from16 v9, p8

    .line 14
    .line 15
    invoke-interface/range {v1 .. v9}, Lcom/bytedance/applog/IEventObserver;->onEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/l0;->a:Lcom/bytedance/applog/IEventObserver;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/bytedance/applog/IEventObserver;->onEventV3(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onLaunch(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/l0;->b:Lcom/bytedance/applog/IPresetEventObserver;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0, p1}, Lcom/bytedance/applog/IPresetEventObserver;->onLaunch(Lorg/json/JSONObject;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onPageEnter(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/l0;->b:Lcom/bytedance/applog/IPresetEventObserver;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0, p1}, Lcom/bytedance/applog/IPresetEventObserver;->onPageEnter(Lorg/json/JSONObject;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onPageLeave(Lorg/json/JSONObject;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bytedance/bdtracker/l0;->b:Lcom/bytedance/applog/IPresetEventObserver;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-interface {v0, p1}, Lcom/bytedance/applog/IPresetEventObserver;->onPageLeave(Lorg/json/JSONObject;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
