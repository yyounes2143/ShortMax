.class public final Lcom/startshorts/androidplayer/manager/dialog/home/c$a;
.super Ljava/lang/Object;
.source "IHomeDialogProcessor.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/manager/dialog/home/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static a(Lcom/startshorts/androidplayer/manager/dialog/home/c;Lcom/startshorts/androidplayer/ui/activity/MainActivity;)Z
    .locals 0
    .param p0    # Lcom/startshorts/androidplayer/manager/dialog/home/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p1    # Lcom/startshorts/androidplayer/ui/activity/MainActivity;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string p0, "activity"

    .line 2
    .line 3
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object p0, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->a:Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/manager/configure/abtest/ABTestFactory;->h1()Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lcom/startshorts/androidplayer/bean/configure/abtest/ABTestConfig;->isEnable()Lkotlin/jvm/functions/Function0;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    check-cast p0, Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result p0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->r0()Z

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p1}, Lcom/startshorts/androidplayer/ui/activity/MainActivity;->p0()Z

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    :goto_0
    return p0
.end method

.method public static b(Lcom/startshorts/androidplayer/manager/dialog/home/c;)Z
    .locals 0
    .param p0    # Lcom/startshorts/androidplayer/manager/dialog/home/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method
