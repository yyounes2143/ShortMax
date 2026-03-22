.class public final Lrq/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrq/m0$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public static final a(Lio/bidmachine/rendering/model/ScaleType;)Landroid/widget/ImageView$ScaleType;
    .locals 2
    .param p0    # Lio/bidmachine/rendering/model/ScaleType;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    move p0, v0

    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object v1, Lrq/m0$a;->$EnumSwitchMapping$0:[I

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    aget p0, v1, p0

    .line 13
    .line 14
    :goto_0
    if-eq p0, v0, :cond_4

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    if-eq p0, v0, :cond_4

    .line 18
    .line 19
    const/4 v0, 0x2

    .line 20
    if-eq p0, v0, :cond_3

    .line 21
    .line 22
    const/4 v0, 0x3

    .line 23
    if-eq p0, v0, :cond_2

    .line 24
    .line 25
    const/4 v0, 0x4

    .line 26
    if-ne p0, v0, :cond_1

    .line 27
    .line 28
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    new-instance p0, Lkotlin/NoWhenBranchMatchedException;

    .line 32
    .line 33
    invoke-direct {p0}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    .line 34
    .line 35
    .line 36
    throw p0

    .line 37
    :cond_2
    sget-object p0, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_3
    sget-object p0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_4
    const/4 p0, 0x0

    .line 44
    :goto_1
    return-object p0
.end method
