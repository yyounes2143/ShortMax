.class public final synthetic Lcom/startshorts/androidplayer/ui/fragment/immersion/i;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/google/android/flexbox/FlexboxLayout;

.field public final synthetic b:Lkotlin/jvm/internal/Ref$BooleanRef;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/flexbox/FlexboxLayout;Lkotlin/jvm/internal/Ref$BooleanRef;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/i;->a:Lcom/google/android/flexbox/FlexboxLayout;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/i;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/i;->a:Lcom/google/android/flexbox/FlexboxLayout;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/startshorts/androidplayer/ui/fragment/immersion/i;->b:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/startshorts/androidplayer/ui/fragment/immersion/ImmersionBackShortsFragment;->L(Lcom/google/android/flexbox/FlexboxLayout;Lkotlin/jvm/internal/Ref$BooleanRef;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
