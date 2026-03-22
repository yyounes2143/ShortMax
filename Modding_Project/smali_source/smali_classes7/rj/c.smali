.class public final synthetic Lrj/c;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method public synthetic constructor <init>(Lcom/airbnb/lottie/LottieAnimationView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lrj/c;->a:Lcom/airbnb/lottie/LottieAnimationView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lrj/c;->a:Lcom/airbnb/lottie/LottieAnimationView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/startshorts/androidplayer/ui/view/pagestate/SLoadingView;->v(Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
