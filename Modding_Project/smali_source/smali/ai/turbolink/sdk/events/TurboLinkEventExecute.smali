.class public interface abstract Lai/turbolink/sdk/events/TurboLinkEventExecute;
.super Ljava/lang/Object;
.source "TurboLinkEventExecute.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lai/turbolink/sdk/events/TurboLinkEventExecute$DefaultImpls;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# virtual methods
.method public abstract execute(Lai/turbolink/sdk/TurboLink;Lai/turbolink/sdk/events/TurboLinkEvent;)V
    .param p1    # Lai/turbolink/sdk/TurboLink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lai/turbolink/sdk/events/TurboLinkEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method
