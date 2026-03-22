.class public interface abstract Lio/bidmachine/ContextProvider;
.super Ljava/lang/Object;
.source "ContextProvider.java"


# virtual methods
.method public abstract getActivity()Landroid/app/Activity;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract getApplicationContext()Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getContext()Landroid/content/Context;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method
