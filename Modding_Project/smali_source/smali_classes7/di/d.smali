.class public final synthetic Ldi/d;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic a:Ldi/f;

.field public final synthetic b:Lcom/startshorts/androidplayer/ui/activity/test/TestActivity;


# direct methods
.method public synthetic constructor <init>(Ldi/f;Lcom/startshorts/androidplayer/ui/activity/test/TestActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ldi/d;->a:Ldi/f;

    .line 5
    .line 6
    iput-object p2, p0, Ldi/d;->b:Lcom/startshorts/androidplayer/ui/activity/test/TestActivity;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ldi/d;->a:Ldi/f;

    .line 2
    .line 3
    iget-object v1, p0, Ldi/d;->b:Lcom/startshorts/androidplayer/ui/activity/test/TestActivity;

    .line 4
    .line 5
    check-cast p1, Landroid/view/View;

    .line 6
    .line 7
    invoke-static {v0, v1, p1}, Lcom/startshorts/androidplayer/ui/activity/test/TestActivity;->K(Ldi/f;Lcom/startshorts/androidplayer/ui/activity/test/TestActivity;Landroid/view/View;)Lkotlin/Unit;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method
