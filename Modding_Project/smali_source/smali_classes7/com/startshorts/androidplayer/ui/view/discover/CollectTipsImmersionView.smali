.class public final Lcom/startshorts/androidplayer/ui/view/discover/CollectTipsImmersionView;
.super Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;
.source "CollectTipsImmersionView.kt"

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
    invoke-direct {p0, p1, p2}, Lcom/startshorts/androidplayer/ui/view/base/BaseConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public getLayoutResource()I
    .locals 1

    .line 1
    sget v0, Lcom/startshorts/androidplayer/R$layout;->view_immersion_collect_tips:I

    .line 2
    .line 3
    return v0
.end method

.method public getType()Lcom/startshorts/androidplayer/ui/view/immersion/notification/ImmersionNotificationType;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    sget-object v0, Lcom/startshorts/androidplayer/ui/view/immersion/notification/ImmersionNotificationType;->SHORTS_COLLECTION:Lcom/startshorts/androidplayer/ui/view/immersion/notification/ImmersionNotificationType;

    .line 2
    .line 3
    return-object v0
.end method

.method public u(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    const-string p2, "context"

    .line 2
    .line 3
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget p1, Lcom/startshorts/androidplayer/R$drawable;->bg_immersion_collect_tips:I

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 9
    .line 10
    .line 11
    sget-object p1, Lfk/z;->a:Lfk/z;

    .line 12
    .line 13
    invoke-virtual {p1}, Lfk/z;->m()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    invoke-virtual {p1}, Lfk/z;->m()I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    const/4 p3, 0x0

    .line 22
    invoke-virtual {p0, p3, p2, p3, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
