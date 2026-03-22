.class final Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$b;
.super Ljava/lang/Object;
.source "MainTabLayout.kt"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field private final a:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final b:Landroid/view/GestureDetector;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field final synthetic c:Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;


# direct methods
.method public constructor <init>(Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1    # Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "onDoubleTap"

    .line 7
    .line 8
    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$b;->c:Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p3, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$b;->a:Lkotlin/jvm/functions/Function0;

    .line 17
    .line 18
    new-instance p1, Landroid/view/GestureDetector;

    .line 19
    .line 20
    new-instance p3, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$b$a;

    .line 21
    .line 22
    invoke-direct {p3, p0}, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$b$a;-><init>(Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$b;)V

    .line 23
    .line 24
    .line 25
    invoke-direct {p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 26
    .line 27
    .line 28
    iput-object p1, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$b;->b:Landroid/view/GestureDetector;

    .line 29
    .line 30
    return-void
.end method

.method public static final synthetic a(Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$b;)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$b;->a:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    const-string p1, "event"

    .line 2
    .line 3
    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/startshorts/androidplayer/ui/view/main/tab/MainTabLayout$b;->b:Landroid/view/GestureDetector;

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method
