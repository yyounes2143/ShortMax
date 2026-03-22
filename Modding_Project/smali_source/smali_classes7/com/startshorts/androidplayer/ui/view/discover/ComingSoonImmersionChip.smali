.class public final Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonImmersionChip;
.super Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;
.source "ComingSoonImmersionChip.kt"

# interfaces
.implements Loj/a;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/discover/ComingSoonChip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public K()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "watch_trailer"

    .line 2
    .line 3
    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_coming_soon_immersion_chip:I

    .line 2
    .line 3
    return v0
.end method

.method public getType()Lcom/startshorts/androidplayer/ui/view/immersion/notification/ImmersionNotificationType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/ui/view/immersion/notification/ImmersionNotificationType;->TRAILER_RESERVATION:Lcom/startshorts/androidplayer/ui/view/immersion/notification/ImmersionNotificationType;

    .line 2
    .line 3
    return-object v0
.end method

.method public v()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget v1, Lcom/startshorts/androidplayer/R$color;->color_immersion_activity_bg_remind_me:I

    .line 6
    .line 7
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public w()F
    .locals 1

    .line 1
    sget-object v0, Lfk/z;->a:Lfk/z;

    .line 2
    .line 3
    invoke-virtual {v0}, Lfk/z;->g()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    int-to-float v0, v0

    .line 8
    return v0
.end method

.method public x()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x106000b

    .line 6
    .line 7
    .line 8
    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method
