.class public final Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$b$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "MainTabLayout.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$b;-><init>(Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field final synthetic a:Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$b;


# direct methods
.method constructor <init>(Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$b$a;->a:Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$b;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    const-string v0, "e"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$b$a;->a:Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$b;

    .line 7
    .line 8
    invoke-static {p1}, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$b;->a(Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$b;)Lkotlin/jvm/functions/Function0;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    return p1
.end method
