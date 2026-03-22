.class public final Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nVisibilityAwareVideoPlayer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VisibilityAwareVideoPlayer.kt\ncom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/VisibilityAwareVideoPlayerKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,65:1\n1#2:66\n*E\n"
    }
.end annotation


# direct methods
.method public static final synthetic a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;Landroid/view/View;)Lkt/b;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/videoplayer/i;->b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;Landroid/view/View;)Lkt/b;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;Landroid/view/View;)Lkt/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;",
            "Landroid/view/View;",
            ")",
            "Lkt/b<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-interface {p0, p1}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/adrenderer/internal/a0;->a(Landroid/view/View;)Lkt/b;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-nez p0, :cond_1

    .line 8
    .line 9
    :cond_0
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-static {p0}, Lkotlinx/coroutines/flow/c;->H(Ljava/lang/Object;)Lkt/b;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    :cond_1
    return-object p0
.end method
