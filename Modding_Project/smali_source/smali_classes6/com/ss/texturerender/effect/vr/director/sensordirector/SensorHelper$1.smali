.class Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper$1;
.super Ljava/lang/Object;
.source "SensorHelper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;


# direct methods
.method constructor <init>(Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper$1;->this$0:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper$1;->this$0:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->access$000(Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper$1;->this$0:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->access$000(Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;)Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroid/hardware/SensorEventListener;

    .line 29
    .line 30
    invoke-interface {v2, p1, p2}, Landroid/hardware/SensorEventListener;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p1
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper$1;->this$0:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->access$000(Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper$1;->this$0:Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;

    .line 9
    .line 10
    invoke-static {v1}, Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;->access$000(Lcom/ss/texturerender/effect/vr/director/sensordirector/SensorHelper;)Ljava/util/ArrayList;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    if-eqz v2, :cond_0

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    check-cast v2, Landroid/hardware/SensorEventListener;

    .line 29
    .line 30
    invoke-interface {v2, p1}, Landroid/hardware/SensorEventListener;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p1

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p1
.end method
