.class public interface abstract Lai/turbolink/sdk/events/TurboLinkEvent$TurboLinkEventCallback;
.super Ljava/lang/Object;
.source "TurboLinkEvent.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/turbolink/sdk/events/TurboLinkEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TurboLinkEventCallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract onFailure(ILjava/lang/String;)V
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onSuccess(Lai/turbolink/sdk/request/response/EventResponse;)V
    .param p1    # Lai/turbolink/sdk/request/response/EventResponse;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
