.class public final Lcom/startshorts/androidplayer/utils/ext/LifeCycleExtKt;
.super Ljava/lang/Object;
.source "LifeCycleExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final a(Landroidx/lifecycle/Lifecycle;)Landroidx/lifecycle/LifecycleOwner;
    .locals 1
    .param p0    # Landroidx/lifecycle/Lifecycle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/startshorts/androidplayer/utils/ext/LifeCycleExtKt$toLifecycleOwner$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/startshorts/androidplayer/utils/ext/LifeCycleExtKt$toLifecycleOwner$1;-><init>(Landroidx/lifecycle/Lifecycle;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
