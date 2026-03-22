.class public interface abstract Lcom/vungle/ads/internal/task/Job;
.super Ljava/lang/Object;
.source "Job.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/ads/internal/task/Job$Result;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract onRunJob(Landroid/os/Bundle;Lcom/vungle/ads/internal/task/JobRunner;)I
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/vungle/ads/internal/task/JobRunner;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
