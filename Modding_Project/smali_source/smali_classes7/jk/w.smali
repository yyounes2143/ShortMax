.class public final Ljk/w;
.super Ljava/lang/Object;
.source "SubscriptionExt.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSubscriptionExt.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SubscriptionExt.kt\ncom/startshorts/androidplayer/utils/ext/SubscriptionExtKt\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,20:1\n1863#2,2:21\n*S KotlinDebug\n*F\n+ 1 SubscriptionExt.kt\ncom/startshorts/androidplayer/utils/ext/SubscriptionExtKt\n*L\n17#1:21,2\n*E\n"
    }
.end annotation


# direct methods
.method public static final a(Lku/j;)V
    .locals 1
    .param p0    # Lku/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-interface {p0}, Lku/j;->d()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    invoke-interface {p0}, Lku/j;->e()V

    .line 13
    .line 14
    .line 15
    :cond_0
    return-void
.end method
