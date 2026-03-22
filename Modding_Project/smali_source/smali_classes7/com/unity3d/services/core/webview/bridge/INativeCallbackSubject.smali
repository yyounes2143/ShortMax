.class public interface abstract Lcom/unity3d/services/core/webview/bridge/INativeCallbackSubject;
.super Ljava/lang/Object;
.source "INativeCallbackSubject.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract getCallback(Ljava/lang/String;)Lcom/unity3d/services/core/webview/bridge/NativeCallback;
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end method

.method public abstract remove(Lcom/unity3d/services/core/webview/bridge/NativeCallback;)V
    .param p1    # Lcom/unity3d/services/core/webview/bridge/NativeCallback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
