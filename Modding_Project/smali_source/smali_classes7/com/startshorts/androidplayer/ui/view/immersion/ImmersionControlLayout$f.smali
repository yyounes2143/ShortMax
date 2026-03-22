.class public final Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout$f;
.super Ljava/lang/Object;
.source "ImmersionControlLayout.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionNameTagView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;->v()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout$f;->a:Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;)V
    .locals 1

    .line 1
    const-string v0, "shortsLabel"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout$f;->a:Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;->q(Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;)Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->a8(Lcom/startshorts/androidplayer/bean/shorts/ShortsLabel;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method
