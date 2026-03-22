.class public final Lcom/moloco/sdk/internal/services/events/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/moloco/sdk/internal/services/events/b$a;
    }
.end annotation


# direct methods
.method public static final a(Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c$a;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;
    .locals 1
    .param p0    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$c$a;
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
    sget-object v0, Lcom/moloco/sdk/internal/services/events/b$a;->a:[I

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
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 18
    .line 19
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 20
    .line 21
    .line 22
    throw p0

    .line 23
    :pswitch_0
    sget-object p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->AD_BADGE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :pswitch_1
    sget-object p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->REPLAY:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :pswitch_2
    sget-object p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->CTA:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :pswitch_3
    sget-object p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->UNMUTE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :pswitch_4
    sget-object p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->MUTE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :pswitch_5
    sget-object p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->DEC_SKIP:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_6
    sget-object p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->SKIP:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :pswitch_7
    sget-object p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->CLOSE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_8
    sget-object p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;->NONE:Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Button$Type;

    .line 48
    .line 49
    :goto_0
    return-object p0

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final b(Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$f;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;
    .locals 2
    .param p0    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$f;
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
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;->newBuilder()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position$a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$f;->a()F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position$a;->a(F)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position$a;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$f;->b()F

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-virtual {v0, p0}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position$a;->b(F)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position$a;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string v0, "build(...)"

    .line 29
    .line 30
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    check-cast p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Position;

    .line 34
    .line 35
    return-object p0
.end method

.method public static final c(Lcom/moloco/sdk/internal/services/e;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;
    .locals 2
    .param p0    # Lcom/moloco/sdk/internal/services/e;
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
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;->newBuilder()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size$a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/services/e;->e()F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size$a;->b(F)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size$a;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/moloco/sdk/internal/services/e;->c()F

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-virtual {v0, p0}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size$a;->a(F)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size$a;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string v0, "build(...)"

    .line 29
    .line 30
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    check-cast p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;

    .line 34
    .line 35
    return-object p0
.end method

.method public static final d(Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$g;)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;
    .locals 2
    .param p0    # Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$g;
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
    invoke-static {}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;->newBuilder()Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size$a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$g;->b()F

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size$a;->b(F)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size$a;

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/moloco/sdk/xenoss/sdkdevkit/android/core/services/a$a$g;->a()F

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    invoke-virtual {v0, p0}, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size$a;->a(F)Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size$a;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->build()Lcom/google/protobuf/GeneratedMessageLite;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string v0, "build(...)"

    .line 29
    .line 30
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    check-cast p0, Lcom/moloco/sdk/UserIntent$UserAdInteractionExt$Size;

    .line 34
    .line 35
    return-object p0
.end method
