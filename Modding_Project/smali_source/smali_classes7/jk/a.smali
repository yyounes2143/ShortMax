.class public final Ljk/a;
.super Ljava/lang/Object;
.source "AdExt.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljk/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final a(Lcom/hades/aar/admanager/core/AdFormat;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/hades/aar/admanager/core/AdFormat;
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
    sget-object v0, Ljk/a$a;->$EnumSwitchMapping$0:[I

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    aget p0, v0, p0

    .line 13
    .line 14
    packed-switch p0, :pswitch_data_0

    .line 15
    .line 16
    .line 17
    const-string p0, "unknown"

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :pswitch_0
    const-string p0, "5"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :pswitch_1
    const-string p0, "4"

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :pswitch_2
    const-string p0, "3"

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :pswitch_3
    const-string p0, "1"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :pswitch_4
    const-string p0, "2"

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :pswitch_5
    const-string p0, "0"

    .line 36
    .line 37
    :goto_0
    return-object p0

    .line 38
    nop

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final b(Lca/d;)Ljava/lang/String;
    .locals 1
    .param p0    # Lca/d;
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
    invoke-virtual {p0}, Lca/d;->d()Lcom/hades/aar/admanager/core/AdAggregatedSdk;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Ljk/a;->d(Lcom/hades/aar/admanager/core/AdAggregatedSdk;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static final c(Lca/e;)Ljava/lang/String;
    .locals 1
    .param p0    # Lca/e;
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
    invoke-virtual {p0}, Lca/e;->c()Lcom/hades/aar/admanager/core/AdAggregatedSdk;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    invoke-static {p0}, Ljk/a;->d(Lcom/hades/aar/admanager/core/AdAggregatedSdk;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    return-object p0
.end method

.method public static final d(Lcom/hades/aar/admanager/core/AdAggregatedSdk;)Ljava/lang/String;
    .locals 1
    .param p0    # Lcom/hades/aar/admanager/core/AdAggregatedSdk;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/manager/ad/AdHelper;->a:Lcom/startshorts/androidplayer/manager/ad/AdHelper;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/startshorts/androidplayer/manager/ad/AdHelper;->k(Lcom/hades/aar/admanager/core/AdAggregatedSdk;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    return-object p0
.end method
