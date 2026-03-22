.class public interface abstract Lcom/vungle/ads/internal/task/JobRunner;
.super Ljava/lang/Object;
.source "JobRunner.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract cancelPendingJob(Ljava/lang/String;)V
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract execute(Lcom/vungle/ads/internal/task/JobInfo;)V
    .param p1    # Lcom/vungle/ads/internal/task/JobInfo;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
