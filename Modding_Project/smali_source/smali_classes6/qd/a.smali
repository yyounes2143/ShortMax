.class public final synthetic Lqd/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;

.field public final synthetic b:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;


# direct methods
.method public synthetic constructor <init>(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lqd/a;->a:Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;

    .line 5
    .line 6
    iput-object p2, p0, Lqd/a;->b:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lqd/a;->a:Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;

    .line 2
    .line 3
    iget-object v1, p0, Lqd/a;->b:Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/adapter/subs/SubsTypeAdapter;->o(Lcom/startshorts/androidplayer/ui/view/banner/BaseViewHolder;Lcom/startshorts/androidplayer/ui/view/base/GradientTextView;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
