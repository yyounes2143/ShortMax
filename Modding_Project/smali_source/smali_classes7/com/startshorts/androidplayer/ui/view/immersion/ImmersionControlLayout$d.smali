.class public final Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout$d;
.super Ljava/lang/Object;
.source "ImmersionControlLayout.kt"

# interfaces
.implements Lcom/startshorts/androidplayer/ui/view/immersion/menu/ImmersionIconTextView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;->t()V
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
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout$d;->a:Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout$d;->a:Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;->q(Lcom/startshorts/androidplayer/ui/view/immersion/ImmersionControlLayout;)Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/startshorts/androidplayer/ui/activity/immersion/ImmersionActivity;->Y7()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
