.class public final Lai/turbolink/sdk/events/TurboLinkEventExecute$DefaultImpls;
.super Ljava/lang/Object;
.source "TurboLinkEventExecute.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lai/turbolink/sdk/events/TurboLinkEventExecute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static execute(Lai/turbolink/sdk/events/TurboLinkEventExecute;Lai/turbolink/sdk/TurboLink;Lai/turbolink/sdk/events/TurboLinkEvent;)V
    .locals 0
    .param p0    # Lai/turbolink/sdk/events/TurboLinkEventExecute;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lai/turbolink/sdk/TurboLink;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lai/turbolink/sdk/events/TurboLinkEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p0, "turboLink"

    .line 2
    .line 3
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string p0, "turboLinkEvent"

    .line 7
    .line 8
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
