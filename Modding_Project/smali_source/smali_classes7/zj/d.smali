.class public final synthetic Lzj/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/flexbox/FlexboxLayout;

.field public final synthetic b:Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/flexbox/FlexboxLayout;Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lzj/d;->a:Lcom/google/android/flexbox/FlexboxLayout;

    .line 5
    .line 6
    iput-object p2, p0, Lzj/d;->b:Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;

    .line 7
    .line 8
    iput-boolean p3, p0, Lzj/d;->c:Z

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lzj/d;->a:Lcom/google/android/flexbox/FlexboxLayout;

    .line 2
    .line 3
    iget-object v1, p0, Lzj/d;->b:Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;

    .line 4
    .line 5
    iget-boolean v2, p0, Lzj/d;->c:Z

    .line 6
    .line 7
    invoke-static {v0, v1, v2}, Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;->v(Lcom/google/android/flexbox/FlexboxLayout;Lcom/startshorts/androidplayer/ui/view/shortsV2/menu/ShortsTagView;Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
