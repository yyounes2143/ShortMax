.class public interface abstract Lio/bidmachine/ExpirationHandler$TaskScheduler;
.super Ljava/lang/Object;
.source "ExpirationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/ExpirationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TaskScheduler"
.end annotation


# virtual methods
.method public abstract cancelTask(Ljr/b;)V
    .param p1    # Ljr/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract scheduleTask(Ljr/b;J)V
    .param p1    # Ljr/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
