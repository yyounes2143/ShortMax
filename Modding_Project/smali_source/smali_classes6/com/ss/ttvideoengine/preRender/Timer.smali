.class public interface abstract Lcom/ss/ttvideoengine/preRender/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/ttvideoengine/preRender/Timer$TimerListener;
    }
.end annotation


# virtual methods
.method public abstract addTimerListener(Lcom/ss/ttvideoengine/preRender/Timer$TimerListener;)V
.end method

.method public abstract removeTimerListener(Lcom/ss/ttvideoengine/preRender/Timer$TimerListener;)V
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
